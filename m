Return-Path: <devicetree+bounces-46417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA40869807
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 15:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9C4F292739
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 14:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD502145B01;
	Tue, 27 Feb 2024 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IVaU9pZj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADFF1145328
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 14:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709044053; cv=none; b=ESfD+90mI22Ai7xcHkF2yrBF56x6GUgF7taFVQSfkPeLMzS0uyEffqFRDmkaPx0+XtN8yGecsVY/vSQsK7wKeChcJrh0scTGYnl9XeXd76ibH9s0x4SSvqEtH5KneopmIP5IYJB/UpoCQqZfY5FFMNDFLUooWmGG3JGyKNlgGOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709044053; c=relaxed/simple;
	bh=bsf32Y7coVxxTSmKbLEaQtO9FBe/PteLHrHMoCJPWNs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=duWnYz6W9yDE4k4NovFlEVO6M6ShtBSgnafJliH3UeygwUhLPzcCJLAALm5JwSwVlamA0JwDGINLCeiBWhoptD1Zu8xrHY6sN+h/RbtCICGPzw151n3RNYcT3RHrxtj/NA8g5ZwQ7h8+w4bFWJvqGNysAcFCvWKeF6yn7/jdAu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IVaU9pZj; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-563bb51c36eso4799009a12.2
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 06:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709044050; x=1709648850; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=33B8gJG0ZgTkJiJm72SjJZHXMoaZN/mFMW+Qqrnw2t8=;
        b=IVaU9pZjuhsJ1zFdWoQuozQa/7/tNS0nLICblbHILCW1ry233EHzqkgoT8YUpqGBKt
         rhGoXZvL6bWtUWfYfK/cfnuSiA+/a0Ocw/1a1qQB58Y44jTpiNZDEI5WLHIVSghsn3ZM
         0iSlcEIYdi1HSh+YUO9uhlrwIGCluVz3B+9V4nOV2ypHMuOgxyeH1sWBxs6soA0ogbhV
         fc5ivc8DFjr18AAdn3ALiLJmZia244q7SzOQgREktIAFyqHkN98yqIr87QF6mIZdgM7l
         QAYMcWfOJbdsmurYm4L3MHu1HqAdrSFQMwCps1oSGgYT4+Mj75PwD6YKuQIuuOdeq81K
         fz0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709044050; x=1709648850;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=33B8gJG0ZgTkJiJm72SjJZHXMoaZN/mFMW+Qqrnw2t8=;
        b=Fdhd23ba0qGnsPw9f73KN6TPrUqQ7AscquSrVLgh9JkgiSoXXWd8v99xrkK+eo7LZC
         9X6xkuStrmbV+kGJnQHF3DULaPKiPdyPVtSedGCv66AJzyXR5dCX5Lf2zpxn/Iook03U
         eAqGwe40nSedBrqES/X1DAfgLzlQSnXlknez85tTP97ts9J2x+SGWJSM9Y4Ck/g6rEef
         qamWNCplaYIo3aDD6Zzx+kvxAwO+z0Ixy7IF83eXJ9MtkD093ftKfEvM9/x66SiamN6B
         h72GWNlcsPCjp4HTWSpVJnUE8BtNF/qTvs0FBJ4Cllq3sFxGS3sg2NaZuvtKdV/VeFDp
         LIhA==
X-Forwarded-Encrypted: i=1; AJvYcCVCJsJ4wLaqJ3J/86HgilPITcN/P8L7Oi4X3iiWpKwCTGnoufNjePSPqdySC83x7xbDaJYrj3ijhSEWuT3LqfDh+ZKqdLHluzC1WA==
X-Gm-Message-State: AOJu0YwLuXfiA4RcTszuPWue8QX9W5aCigLJftplNW5hsx2/nRdQcj4v
	syCDgREINRrVQ0WsvVaxV6dtYmKtpa346XR+40RWdWVCj7fT4YokXwfTdZneobQ=
X-Google-Smtp-Source: AGHT+IEij7029UEKKPfIsg6SV1R+vPsLyeR6KBl+70fxTzEzohEkoVCooioBYOnozthxWZTZ/05cSw==
X-Received: by 2002:a05:6402:3456:b0:565:7116:d533 with SMTP id l22-20020a056402345600b005657116d533mr7046605edc.6.1709044050058;
        Tue, 27 Feb 2024 06:27:30 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id u16-20020aa7d550000000b00564c7454bf3sm813689edr.8.2024.02.27.06.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 06:27:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] arm64: dts: qcom: x1e80100-crd: switch WSA8845 speakers to shared reset-gpio
Date: Tue, 27 Feb 2024 15:27:24 +0100
Message-Id: <20240227142725.625561-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240227142725.625561-1-krzysztof.kozlowski@linaro.org>
References: <20240227142725.625561-1-krzysztof.kozlowski@linaro.org>
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

Linux kernel however supports sharing reset GPIOs, when used bia the
reset controller framework as implemented in commit 26c8a435fce6 ("ASoC:
dt-bindings: qcom,wsa8840: Add reset-gpios for shared line") and
commit c721f189e89c ("reset: Instantiate reset GPIO controller for
shared reset-gpios").

Convert the property with shutdown GPIO to "reset-gpios" to use
mentioned Linux kernel feature.  This allows to bring all four speakers
out of reset.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Dependencies merged by respective maintainers for next release:
1. ASoC: commit 26c8a435fce6 ("ASoC: dt-bindings: qcom,wsa8840: Add
   reset-gpios for shared line")
2. reset: commit c721f189e89c ("reset: Instantiate reset GPIO controller
   for shared reset-gpios").
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


