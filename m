Return-Path: <devicetree+bounces-87261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BC9938E8E
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 13:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6B1B1C21106
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCFA016D4CA;
	Mon, 22 Jul 2024 11:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MXnvryek"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A0516D31F
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 11:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721649460; cv=none; b=HqmbTWQPTNMl2X6NKJJOQpaT9TMkAzFoZ7KxVjfyNUc8aKCU2aBM3A9p7lJ+dHyR/NRrVUcAMSBYdbb20QI7JQzVMeKeFSa8+86SXGWi6uc4x3euR+FzVG4mIDZYcGpJB9XNETIGHVbLofBJfIYKoJYmpivpqh1H3370iHJCR6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721649460; c=relaxed/simple;
	bh=yuhOLtQ8azSOnrwILfPnGwWQ9ZZwMjyrixqbSpaOBEU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Yjw4HhEb+atXfDmZrmVqDE6pCRsbA225P6VNKMLNfUKxOnPGsXlpHZs18Ce0uO3gc451OmC/m8aKV/zTpZII7ve3fsRIZm8FVXNuHJLoO89En3/JeaMHs2PqBnaALDCnr0l6478Ag/ldktIFI5cQ/m9JitapDH/z39WXvCqWI2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MXnvryek; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ebed33cb65so48225901fa.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 04:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721649457; x=1722254257; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m21kMMuy+2F+8vobKveqoXY/oSqdQ9zfv1pnAMWi19s=;
        b=MXnvryekWHYOf+ii4dvKCN0yHwhqhoAujsafJxt8IvhrpkRcsmekRH+ndqtCDrHMcJ
         bN/mu//acMZLyrvBE/GUSty8E6MGKL6VQZI4gluJnWzegeHG4GlMBWWPWRh0D+04ghkR
         HJwa0xGYmQOtrY3rU/G9xjfkv55GF/5MnaAHojJFt05Nv9n/ADRgDLdnuI/u+VBpiqw6
         Cho4cE85frDtZaiiCKH2FmeVU6rIo53YqdR/JFsrWVNOj/uDgjipE/MS2LE+E9U+XhKo
         T+Q+9pgzujDZth8LiVPeZ5xkPozZflmxNRSXXyJzY74NIZI+hbUqHwLvq1wAn8zHBsn5
         MP1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721649457; x=1722254257;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m21kMMuy+2F+8vobKveqoXY/oSqdQ9zfv1pnAMWi19s=;
        b=F0fiE58uSdRFNxnRS0WhuKsK4pkMvveW2ChIWAZygH0Uy+IrBtDoNcasGlZl2arawK
         mflLBYFNccU7arsyFXtzNORPomT1pcud1Ioprfj65nVDZwFjV7QZSK+MHWvg/AXdhfSL
         4t0XudgGm7mPpJXFejLbTa624OKOecQqp0AtJQdRS1+83uDduvk/NoYNdZOy6k3Vz6sN
         wJaGiJbba822ywv5lcaWkHyvUYzVFNL8S6CSZ0Tm6eQx1/F5IjSSLlJuqQZm3u7lyylP
         GSGt73CG0sr2LK0XKTjyQ5Nl7Z4tNMWzrcxLkjZYryK8apKhoTmABwLgHe0dm99ipFs9
         coMQ==
X-Forwarded-Encrypted: i=1; AJvYcCX64ub7d4mR74ismMW61h5KNoTOkbyntI02dMPxoJxSzxSrNZRp8mvKuC9XidAvSAhjnbecFqUC4bKg2bxPDooM4JkYlLaAknrLzw==
X-Gm-Message-State: AOJu0YwK51Fgm8MtxITe3fHMPtG3xL9DHN6DCzP2hQt9EYrkOTMuI/7p
	iS0A5CSqvjrIhJlgMHGiqbEvAn0+Dda+QTMcpSV9GRMWMSSXUZ7ysHr9gouwVsk=
X-Google-Smtp-Source: AGHT+IFHL1Qn7iSnVyYunFSLs5AWD42ZynstiIcEpy7R5to/uqHw1TKkcXbtawLbTGcm8PJL0duxBQ==
X-Received: by 2002:a05:651c:19a9:b0:2ef:32fb:6c47 with SMTP id 38308e7fff4ca-2ef32fb6e4cmr14759341fa.1.1721649457250;
        Mon, 22 Jul 2024 04:57:37 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ef0fd10bffsm12449611fa.134.2024.07.22.04.57.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 04:57:36 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 22 Jul 2024 14:57:18 +0300
Subject: [PATCH 1/4] arm64: dts: qcom: msm8998-lenovo-miix-630: enable
 touchscreen
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240722-miix630-support-v1-1-a6483cfe8674@linaro.org>
References: <20240722-miix630-support-v1-0-a6483cfe8674@linaro.org>
In-Reply-To: <20240722-miix630-support-v1-0-a6483cfe8674@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1676;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=yuhOLtQ8azSOnrwILfPnGwWQ9ZZwMjyrixqbSpaOBEU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmnkkuBrwtxjv6aXeEI6FInkQUOtFio+exo7DSc
 /iNGWWGF+mJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZp5JLgAKCRCLPIo+Aiko
 1WI1B/4rNm4mGGNMH5gRzd7sQDOIb/UTNNFx8Btl1KmD8Hlv36WcD54PlWYaCLPeV63mZCmR0VD
 MERYmTwo8fqXcmHzNPhz4x9nzzInr1aPSXqauSnbAk2SeRmOV7eCmahBeL4h62g+DGyACjZ9AeP
 vhwcAs7x/yfacojmBLw9934aB/2JpxrPuVou5mMg/5GIL78N9Jk9wpRZxGX6+KWvi5KDNfpLvW9
 O9OcAzoF9bIUMLx0dKW6NSB5TBeE/JJV1btCaIIAVH6EA4DZ0K3Lm4MySMYcbCgx3zE4GKuvsgg
 usxc3Sjs3Qii6gzSjaNYbq38fJQyQzO7f7qNYLdU1O54saME
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

There is no point in keeping touchscreen disabled, enable corresponding
i2c-hid device.

04F3:2608 Touchscreen as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input1
04F3:2608 as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input2
04F3:2608 as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input3
04F3:2608 Stylus as /devices/platform/soc@0/c179000.i2c/i2c-0/0-0010/0018:04F3:2608.0001/input/input4

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../boot/dts/qcom/msm8998-lenovo-miix-630.dts      | 28 ++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
index a105143bee4a..118c55f5bcfd 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
@@ -11,6 +11,24 @@ / {
 	chassis-type = "convertible";
 };
 
+&blsp1_i2c5 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	tsc1: hid@10 {
+		compatible = "hid-over-i2c";
+		reg = <0x10>;
+		hid-descr-addr = <0x1>;
+
+		interrupts-extended = <&tlmm 125 IRQ_TYPE_LEVEL_LOW>;
+
+		pinctrl-0 = <&i2c5_hid_active>;
+		pinctrl-names = "default";
+
+		wakeup-source;
+	};
+};
+
 &blsp1_i2c6 {
 	status = "okay";
 
@@ -35,3 +53,13 @@ &remoteproc_mss {
 &sdhc2 {
 	cd-gpios = <&tlmm 95 GPIO_ACTIVE_HIGH>;
 };
+
+&tlmm {
+	i2c5_hid_active: i2c5-hid-active-state {
+		pins = "gpio125";
+		function = "gpio";
+
+		bias-pull-up;
+		drive-strength = <2>;
+	};
+};

-- 
2.39.2


