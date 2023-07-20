function CheckAdd() {

	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var category = document.getElementById("category");
	var mtitle = document.getElementById("mtitle");
		
	// 상품명 체크
	if (name.value.length < 4 || name.value.length > 12) {
		alert("[상품명]\n최소 4자에서 최대 12자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	// 상품 가격 체크
	if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
		alert("[가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}

	if (unitPrice.value < 0) {
		alert("[가격]\n음수를 입력할 수 없습니다");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	if (mtitle.value.length < 4 || mtitle.value.length > 30) {
		alert("[제목]\n최소 4자에서 최대 30자까지 입력하세요");
		mtitle.select();
		mtitle.focus();
		return false;
	}
	if (category.value.length < 4 || category.value.length > 30) {
		alert("[유형]\n최소 4자에서 최대 30자까지 입력하세요");
		category.select();
		category.focus();
		return false;
	}

	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.newflower.submit()
}
