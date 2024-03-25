Return-Path: <devicetree+bounces-52907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 803C188A60A
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:16:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0826C1F632E5
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78D2C13C666;
	Mon, 25 Mar 2024 12:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EHB0+G81"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5FC137C44
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 12:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711370041; cv=none; b=hJQ7tULgovMbbwQN0dhRLWnvx8j4HyIVNTn6eYudR4fPrvfxqQXDn0oqPC2kB990DY+/Dae735X+KmYukiC2LpEWDO2aakpfaqb7Eh7l/RkVHfnvK4Jx2jwUJ3t03JDv1rbXt4Wb8bQuejB7eY1BbuQRC6UMngj78deSeTA5uMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711370041; c=relaxed/simple;
	bh=HEkrLhhRRUjJmnvU23W480E8X/VNsYOMU/gxm5X8yQg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iGUaf3PXN7EbFw+O9IrQTeuO4qz4rpM+AfRjPqyBN0udCn5G4rjDX/LBOhb2JwuAVJeP83jAe6RXjS2QM8TWrV/6Gav1EdOjde5xL6FBULmNZr2ukcwvkTlKydH4kIKrhbcWmrFBsQo69kR2fR+V6NzznCeUs7ax+MaixMD+k9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EHB0+G81; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-56c0a249bacso1333649a12.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 05:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711370034; x=1711974834; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eZg1upjIEPOUaPSwFv7osGLwaVnVPmPJA02WN7iv0AQ=;
        b=EHB0+G81zYtTAr/OmzJAsPTDpxKEfJaIbvJLLmXjJuvEZ2Cl0sz5CXXdBcgE9WDFoA
         BbBwXqyJfSvGoykAeZGKk0Ts6f7iF88FB6kQxOl1vWTVq82yxkLi2tA2XoAe1YI8GWpN
         mG+yd3+0hlH6GyqfEf5QXJiwtuigT67jUJmGPDC/aCX7tkUML3yx2Qsb4MRT7GJ05XdR
         kZhYFd5EaU2Uqf+1Uv3p89+eqRqFhno0BLHth+Pzt4+4JzUeDv3X9XkmrACi0KdqiR5D
         9OjV+elnol2Kcaqbp4MRP591jzyqj4sFo0N4Xkifzdr4R2huApn2HA+5bqAatqAKikRl
         kxvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711370034; x=1711974834;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eZg1upjIEPOUaPSwFv7osGLwaVnVPmPJA02WN7iv0AQ=;
        b=dPuz5tHhqfaHzfQ3VYr3Y/gS7lZOkEbu2aMD47G+1VAtmyuGxwkSPWtRdDYQ3ZQlvb
         mHfusPtQwlgC7WZqbHdn7Vh5k8I5kA+w2f+IrVu3phlWbbR+7kvSljw0HkkZQzphAcDF
         AHfFbZGd2IPcvOnbvON9ctn6Psz4iRhbBHlL6L+MJLIss5KAGEICqkLjJE3AHIOZFdy4
         EnnVdueno05q7kYD88uQyeccJlxrNtVed0VUgpMzCYEszWL7IrnFkjZAtZ12P2LxBi+v
         hGRMtRnI4GlsY6OH4Ma0fF9nR2sBuTD826Ly1sGbXPNA6fEupvwgVxzAz2pOW/1D9ARy
         UIzA==
X-Forwarded-Encrypted: i=1; AJvYcCWeZJ1EkV7fTIMNjxQfffVbtTYSjbsKz6HgCRzIIWWg9z/kiLnN6jJVmpM4eF5JfC723soKgRoGfct6hfEtRi451x9lfQbfsFNhgQ==
X-Gm-Message-State: AOJu0YzHCOly+HMnxHZwzP4xhSB9kGYG4ydiLFBGhcslj3ycL8pUvhiS
	62rQQiZR9cZ8uwjOK09xRQlk4pDKUWsw85+nHP0hdsFQIouJ3LXjbjT7C9dfuLA=
X-Google-Smtp-Source: AGHT+IGmNf0RUIWn6ph3r7Da/55t3j9lg9CcqsBNxnZlh/fecDcW4+l8yAnomJUiqzHts9TgxdM0iQ==
X-Received: by 2002:a50:8e54:0:b0:568:d1a2:8ff with SMTP id 20-20020a508e54000000b00568d1a208ffmr4003552edx.34.1711370034069;
        Mon, 25 Mar 2024 05:33:54 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id es9-20020a056402380900b00568d60cfbccsm2933383edb.42.2024.03.25.05.33.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 05:33:53 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/2] arm64: dts: qcom: x1e80100-crd: switch WSA8845 speakers to shared reset-gpio
Date: Mon, 25 Mar 2024 13:33:48 +0100
Message-Id: <20240325123348.45249-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325123348.45249-1-krzysztof.kozlowski@linaro.org>
References: <20240325123348.45249-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Each pair of WSA8845 speakers share the powerdown SD_N GPIO, thus this
GPIO is specified twice in each WSA8845 device node.  Such DTS was added
hoping non-exclusive GPIO usage would be accepted, but it turned out
otherwise: it is not supported by the Linux kernel.

Linux kernel however supports sharing reset GPIOs, when used via the
reset controller framework as implemented in commit 26c8a435fce6 ("ASoC:
dt-bindings: qcom,wsa8840: Add reset-gpios for shared line") and
commit c721f189e89c ("reset: Instantiate reset GPIO controller for
shared reset-gpios").

Convert the property with shutdown GPIO to "reset-gpios" to use
mentioned Linux kernel feature.  This allows to bring all four speakers
out of reset.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Rb tag.
2. Fix typo in commit msg (bia->via)

Patch #3 in the series was already applied.

v1: https://lore.kernel.org/all/20240227142725.625561-1-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index d7ba45953277..266a461f4882 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -802,13 +802,14 @@ &smb2360_2_eusb2_repeater {
 &swr0 {
 	status = "okay";
 
+	pinctrl-0 = <&wsa_swr_active>, <&spkr_01_sd_n_active>;
+	pinctrl-names = "default";
+
 	/* WSA8845, Left Woofer */
 	left_woofer: speaker@0,0 {
 		compatible = "sdw20217020400";
 		reg = <0 0>;
-		pinctrl-0 = <&spkr_01_sd_n_active>;
-		pinctrl-names = "default";
-		powerdown-gpios = <&lpass_tlmm 12 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&lpass_tlmm 12 GPIO_ACTIVE_LOW>;
 		#sound-dai-cells = <0>;
 		sound-name-prefix = "WooferLeft";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
@@ -819,8 +820,7 @@ left_woofer: speaker@0,0 {
 	left_tweeter: speaker@0,1 {
 		compatible = "sdw20217020400";
 		reg = <0 1>;
-		/* pinctrl in left_woofer node because of sharing the GPIO*/
-		powerdown-gpios = <&lpass_tlmm 12 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&lpass_tlmm 12 GPIO_ACTIVE_LOW>;
 		#sound-dai-cells = <0>;
 		sound-name-prefix = "TwitterLeft";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
@@ -853,13 +853,14 @@ wcd_tx: codec@0,3 {
 &swr3 {
 	status = "okay";
 
+	pinctrl-0 = <&wsa2_swr_active>, <&spkr_23_sd_n_active>;
+	pinctrl-names = "default";
+
 	/* WSA8845, Right Woofer */
 	right_woofer: speaker@0,0 {
 		compatible = "sdw20217020400";
 		reg = <0 0>;
-		pinctrl-0 = <&spkr_23_sd_n_active>;
-		pinctrl-names = "default";
-		powerdown-gpios = <&lpass_tlmm 13 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&lpass_tlmm 13 GPIO_ACTIVE_LOW>;
 		#sound-dai-cells = <0>;
 		sound-name-prefix = "WooferRight";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
@@ -870,8 +871,7 @@ right_woofer: speaker@0,0 {
 	right_tweeter: speaker@0,1 {
 		compatible = "sdw20217020400";
 		reg = <0 1>;
-		/* pinctrl in right_woofer node because of sharing the GPIO*/
-		powerdown-gpios = <&lpass_tlmm 13 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&lpass_tlmm 13 GPIO_ACTIVE_LOW>;
 		#sound-dai-cells = <0>;
 		sound-name-prefix = "TwitterRight";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
-- 
2.34.1


