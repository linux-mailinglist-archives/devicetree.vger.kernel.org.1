Return-Path: <devicetree+bounces-36847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 147D4842DCB
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 21:28:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C238528AB54
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 20:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D1A762F6;
	Tue, 30 Jan 2024 20:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="ii+Kiv4W"
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com [91.218.175.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B61D762C4
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 20:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706646487; cv=none; b=DV9pK2wIf9Jn6P7ZP2L7Hs+IZ3as9LIM7RWJrGbNH+r5yfASDZ6Pxs4ehW0OP+oU/wdqZU1myZZCESHzqZVuKmF1K2OTJA0s/MB6Z8OZykuddkcFNQWgQ7Y1A16rBXF0jIPTTy2IFi/QfMdQ0tAH7j/AW9AJ8WrMLhOJJNPBBk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706646487; c=relaxed/simple;
	bh=vADWw5yytIupWyFxk9xl9zmpgN2AJHIwEv3Q10yQ3iI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t9qmba7OJ1IkMTfXaeSwBjIoIlqKS9CPcZZGivbSmwCTmPkT7AwIoTr0iadPJaMorOAg557sUk41h9Iu0l/TyMBA4mDOVMV4uHzBJVVaoYD8+Cx0rWb0bbgeEMKbIoe9vMuTxWTPi/HAV7kvhdX2RIUwX1XhnZpB0PlqoB5pt3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=ii+Kiv4W; arc=none smtp.client-ip=91.218.175.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1706646482;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wjiLWD5T1UoAqkaS2+4BefM1F9H7t48Ue5JQPbUSApw=;
	b=ii+Kiv4WgjKMAEzoLVwMnhv9WY04kJok21Epp6ok787bN+gJsiMPK8np9zLyvlgfsdvDUI
	ugN33yiXT/ZHVH8/vWKYOfBkwmDMzhjb/Bmh9wQY/mXSIiudIwXk24Tm/p5zsTx58i/Lwz
	vptYh4BstCA8EoWod8URYBT68WUjNE/WdySRYZhlkeKnQPKGYtqPO+R/KKn7YH/I8Ba+es
	P6cN32qzmO52VUaJkjJNyRzii9G3FbICdJQ4CdvC87/WaSusEddEzxB4bHhAB19Id1pBXm
	wvnsvjkK8KzwJ3BaK+S22OC0cpbqmIGpsdmWZFmJ2EqCSGrWHUABMSUPjEbPwQ==
From: Anton Bambura <jenneron@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/5] arm64: dts: qcom: sc8180x-lenovo-flex-5g: fix GPU firmware path
Date: Tue, 30 Jan 2024 22:27:51 +0200
Message-ID: <20240130202755.2289952-2-jenneron@postmarketos.org>
In-Reply-To: <20240130202755.2289952-1-jenneron@postmarketos.org>
References: <20240130202755.2289952-1-jenneron@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Fix GPU firmware path so it uses model-specific directory.

Signed-off-by: Anton Bambura <jenneron@postmarketos.org>
---
 arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
index 0c22f3efec20..49b740c54674 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
+++ b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
@@ -350,7 +350,7 @@ &gpu {
 
 	zap-shader {
 		memory-region = <&gpu_mem>;
-		firmware-name = "qcom/sc8180x/qcdxkmsuc8180.mbn";
+		firmware-name = "qcom/sc8180x/LENOVO/82AK/qcdxkmsuc8180.mbn";
 	};
 };
 
-- 
2.42.0


