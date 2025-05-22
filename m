Return-Path: <devicetree+bounces-179682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D63AC1270
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 19:42:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA2A2A40F59
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 17:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 278CF29A317;
	Thu, 22 May 2025 17:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vh6eOja6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 999C529ACC7
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 17:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747935671; cv=none; b=t8h9d27PQlZNay/p47/+h5XyDxnuOFEy/ShiFrrCIVRNw7vKUbJWCx0aFd5GfIbF5GTMrBl8k8+g3fmm8W/a5vKTYYqFsaz3NItOcIyOUw+bRD743Wd0RpWaWx1kz3ye1qIUPQXNjh/gd5eKtFJnP+Wd1WOs2V6Zh6Ws7V3rapo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747935671; c=relaxed/simple;
	bh=KEPTMakCA32PkhOCrneqwQED+KPaxi3ID2lG6vlGRmg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HL6c6rhoKA3anHIfL48JEGcozhhUdcYrDkIDjutEy/GhbcpNyPNZC1C2YyWWN7bj1+EKjIP6EE4nt8Pvr0f92p3D6rd3dBzBLDX9BbxxEANEbhwr8M/tjXdgIF1eyindcywxQv9NFaj6q9mHMw689Xyw0mFvbdmtM7GaQW5syus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vh6eOja6; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3a3683d8314so5053165f8f.3
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 10:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747935665; x=1748540465; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b6zBILNgMTTruPAKW6TCbU3LqqO81pSI/MBmJZg4XxA=;
        b=vh6eOja6Pyx0N1mL7J5ArhNCbPg6RCcMCYbJEoiyyjvPI9cheM9vyZ2jmrBvBqKikP
         4zssXMDJ+pe4wiqXvYAws8tfKAix/8J23/l/urxF8Zf/Darxu+wQH6rpNkhzJy/buiZu
         PKndfdpYUHmCf42fQ1Za8OQ3eWbmc99/aDe1j1P/lTfYy5HS5GFC8lIkxafRw/RKX6ox
         h20bB29XG58Qy7LSzhzOaw4PVY1FpOPODj5AfYxzMo6hPTstKZEDP1ODIQ3f5CJy1tf8
         D4snMholPimtH+GOu8+BKka2vI8iDtkW9XR5hwd83+GD+a8siEEO2MR9KzHKxDNdQSGa
         ueeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747935665; x=1748540465;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b6zBILNgMTTruPAKW6TCbU3LqqO81pSI/MBmJZg4XxA=;
        b=bEdOJ+DmOPxmKK809/3OSjIWHFt6yaSd3woOC/m9qW9uZjICflUEESYYzOj1S1JWVu
         T8vR2Wa9IOjfFhihuTGRu/RxzGQ8Kxj3GBHQGrEhpFWKw2LBSLGZ4dMXqu86kRWdYyjq
         Kkif1ypaK3a02Zp1G9IRmnq6hY2nUd+3/Cx1PfTMIBpM6JqUfdA/sTGCjiER/gF8YuFq
         BWvUw7bFVeZpU+XSN4GKUo6X2N3Zixyx0XlYwxISRubhX1C/9XJ9ONuFQY8FLxrLNq2B
         k0SEcMOCQgVFx9KRoQjommL1Se8bwfXNf/Yn78OsMjDyO66Bd0RZSjjFC4AW2wL2A2q0
         dzFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpcTURpi3EJPGwrrX5tRu8AEPFE/Ou48KChDdWua7TTtV6aLnZJbj/xz/qUsG+f4e6YCMT/zsnGoiM@vger.kernel.org
X-Gm-Message-State: AOJu0YwsODBRJ2RfHvwk98xixai1Zlz/tCJILMEDJwsR/Fbvy4qM+a9m
	VFHxzWz5YpZcBulqcTl9lCxav/1kRGKCdPUJz8BPRSTTxsER6NK4r4mawfjAsrR9CbE=
X-Gm-Gg: ASbGncua5gFHNwmgj4FPReehzze/qIK8KPKJson00QaxYcq9j0hNnix1KVhZmwm/bPX
	Z/IpCqJwUIM0BBkLWF0GCARV8ikMNRpuBe/4EdhZeJ6utXDC6Jp005gSwxNNqwykRJv0s39jyct
	ZMV3beu57wqP6p9MLotWKUHnOhL500p9L8qHV/U0ma+QYyQeSmS18HAAEnzrzpJPU733arc1hOU
	gRhjDXlmLE6l8w4Tm3dRPx13RPJa383B3rx06XJqqfJhfoQxN2r9j1sR5XaUUpo8upgeBztxFmJ
	SFtQY92fzCPeueStfe58rQH5hmRr0mu5O1dAxw+OOX4Upp9YvXi1nAbS3XYOUMJApXZLAg==
X-Google-Smtp-Source: AGHT+IEF5HaUFQwCelNdRVlj1OZcIfPLTd/t+FpobYKsjTVhFlb/PhZuoCsEx3xvOKWYBUnoGfdrcw==
X-Received: by 2002:a05:6000:184d:b0:3a0:b84c:52b4 with SMTP id ffacd0b85a97d-3a35c809250mr25368671f8f.10.1747935665397;
        Thu, 22 May 2025 10:41:05 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7213:c700:6c33:c245:91e5:a9f4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f7bae847sm109563195e9.36.2025.05.22.10.41.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 10:41:04 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 22 May 2025 18:41:00 +0100
Subject: [PATCH v3 10/12] arm64: dts: qcom: qrb4210-rb2: enable wsa881x
 amplifier
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-rb2_audio_v3-v3-10-9eeb08cab9dc@linaro.org>
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
In-Reply-To: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, Mark Brown <broonie@kernel.org>, 
 linux-sound@vger.kernel.org
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2

One WSA881X amplifier is connected on QRB4210 RB2 board
hence only mono speaker is supported. This amplifier is set
to work in analog mode only. Also add required powerdown
pin/gpio.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 6bce63720cfffd8e0e619937fb1f365cbbbcb283..4b878e585227ee6b3b362108be96aad99acba21d 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -270,6 +270,24 @@ zap-shader {
 	};
 };
 
+&i2c1 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	wsa881x: amplifier@f {
+		compatible = "qcom,wsa8815";
+		reg = <0x0f>;
+		pinctrl-0 = <&wsa_en_active>;
+		pinctrl-names = "default";
+		clocks = <&q6afecc LPASS_CLK_ID_MCLK_2 LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+		powerdown-gpios = <&lpass_tlmm 16 GPIO_ACTIVE_LOW>;
+		mclk-gpios = <&lpass_tlmm 18 GPIO_ACTIVE_HIGH>;
+		sound-name-prefix = "SpkrMono";
+		#sound-dai-cells = <0>;
+		#thermal-sensor-cells = <0>;
+	};
+};
+
 &i2c2_gpio {
 	clock-frequency = <400000>;
 	status = "okay";
@@ -736,6 +754,14 @@ wcd_reset_n: wcd-reset-n-state {
 		drive-strength = <16>;
 		output-high;
 	};
+
+	wsa_en_active: wsa-en-active-state {
+		pins = "gpio106";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+		output-high;
+	};
 };
 
 &uart3 {

-- 
2.47.2


