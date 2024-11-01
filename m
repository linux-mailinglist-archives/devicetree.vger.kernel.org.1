Return-Path: <devicetree+bounces-117976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8204A9B8A7C
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 06:32:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0753B1F2301B
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 05:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFFDD14F9ED;
	Fri,  1 Nov 2024 05:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nQGJx3Uh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E8214B94F
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 05:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730439124; cv=none; b=b21yVGl5M61zhXLw4VKEmNS2l3IE3Qlo7CPi6v59Akr6FMGugZTbtj44b46V1J2krRSdXmNrB73UQ+INKkvhJvU/bhOka+hsnIxfCfvx643ipJU/2U49lFdjsUu9YvNlMrXzFXPmjHI+hNBm44JUhfVhkm8EoM7hCRguPU8iM2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730439124; c=relaxed/simple;
	bh=THfZ5exluvV0HomGLEQZ5xg6DQQrXevU3M4KfCYDhHU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jwCmqNENuXCZ4NZ54GIfevbEBaimQVkp9el5mU0THUPBlFrY/FRY0xmiSH4ykpIpKBfKJEVKXVRZxAukXfk1NoDEzja22pBkv4QoXTHU7SbQMp3XyjWYkTrhSCblbTi5iM36mwtV4xo8SfKpLS3byMdVh8FfagOPVrfAZPJSrek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nQGJx3Uh; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43169902057so13136715e9.0
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 22:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730439121; x=1731043921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dLxjQrcCaaVGGvtLgShNAPhT3Cgn8U0JukzwhP4gn9Q=;
        b=nQGJx3Uhf0ohKkimy5fSoKjMZHG03HjDOx2sTZo5BMC4SLM5iIhHCK5gwkYxQHmYgi
         VZx+suXmZBG62Y+6Xz3s+PcX/SROtsnYQk0X52cdzsTnBmrNRInGuohgkiyZ+Hoseio0
         etQP5I+tIqLcujM7W89LElBJmRqsEEbPdzMRpcJ3dUcV0qZkOD2xzXCgMdl0HCcqNFLD
         HVcn7G92d3IsqHHhSnMJwz5dD8L2g+E/3EhaTHuXBIgoomfrCXkdPJ4eCMC+80lnsBTx
         B4X6cxqmbPyi4sM4t95Hh5TdjpUN5jtEq91wurc3pkO0dMNwv8y+ZGtB+xhN55IB3xv6
         x9nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730439121; x=1731043921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dLxjQrcCaaVGGvtLgShNAPhT3Cgn8U0JukzwhP4gn9Q=;
        b=OMdt9Tyzis/kQUNyt96YCn3UYlD2vqIMLouYAHYdRatRCqkn4H9ZWa6eknoOZitx4L
         B2hNdS5Ydw68Bd3HkNtbvLYMQPNdUGvjV81qL3uc9BJoZno9Lgp+G/SAaCWAplBJoxWl
         ZRC6uu8bC/lfLuRgbOqvPXf3Zfve6raNC77FafuynvOibQnGdceF/62Q6jilRti4bMii
         Vo5//kkjaUMefaXxt0RiOIY54zqgsk7Y+WprXQOqROTeJctCm1fyHUYQ+Cm+1fAfACAM
         44VxO8UDLs7isY0oZEBPEdmXzL0R0MZ0j9BGnUnQ0+jG2XLhDEz9wokz3WrOMKU1uAbp
         t6zQ==
X-Forwarded-Encrypted: i=1; AJvYcCXs5dyjg5+/4L3UFMeleAsIOlz60nGSxd+VntQ6oBK9bFQMpc7EC8c8w7hYTn5OHGdLvGQIUqbGRFyB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxgg3QRmu06FKA3/ZC4px3pKwH/cQ7G7D0/Gafnop7hhXYZ1poP
	se32HlgxCYFCcfOiZrCjxSvdcNycKvaEbw8LXhBGvw8I8SrI2rrXtkG2n3TMcsw=
X-Google-Smtp-Source: AGHT+IGfJJcj1mENjXC1Vpm0jvJt7zfygSNZDRom64f/4ZYJJcphI8fm9YkSg2HOu5J/h2LrA3jjkg==
X-Received: by 2002:a05:600c:3547:b0:42c:b16e:7a22 with SMTP id 5b1f17b1804b1-431bb9855c0mr83772425e9.12.1730439121085;
        Thu, 31 Oct 2024 22:32:01 -0700 (PDT)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d6852fdsm46960505e9.34.2024.10.31.22.31.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 22:32:00 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 03/10] arm64: dts: qcom: qrb4210-rb2: add wcd937x codec support
Date: Fri,  1 Nov 2024 05:31:47 +0000
Message-ID: <20241101053154.497550-4-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241101053154.497550-1-alexey.klimov@linaro.org>
References: <20241101053154.497550-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

wcd937x codec contains soundwire RX and TX slave devices
and can convert digital audio to analog audio and vice versa.
The codec node also requires description of reset pin/gpio.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 55 ++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 283a67d8e71d..fc71f5930688 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/sound/qcom,q6asm.h>
@@ -154,6 +155,25 @@ codec {
 		};
 	};
 
+	wcd937x: codec {
+		compatible = "qcom,wcd9370-codec";
+		pinctrl-0 = <&wcd_reset_n>;
+		pinctrl-names = "default";
+		reset-gpios = <&tlmm 82 GPIO_ACTIVE_LOW>;
+		vdd-buck-supply = <&vreg_l9a_1p8>;
+		vdd-rxtx-supply = <&vreg_l9a_1p8>;
+		vdd-px-supply = <&vreg_l9a_1p8>;
+		vdd-mic-bias-supply = <&vdc_vbat_som>;
+		qcom,micbias1-microvolt = <1800000>;
+		qcom,micbias2-microvolt = <1800000>;
+		qcom,micbias3-microvolt = <1800000>;
+		qcom,micbias4-microvolt = <1800000>;
+		qcom,mbhc-buttons-vthreshold-microvolt = <75000 150000 237000 500000 500000 500000 500000 500000>;
+		qcom,rx-device = <&wcd937x_rx>;
+		qcom,tx-device = <&wcd937x_tx>;
+		#sound-dai-cells = <1>;
+	};
+
 	vreg_hdmi_out_1p2: regulator-hdmi-out-1p2 {
 		compatible = "regulator-fixed";
 		regulator-name = "VREG_HDMI_OUT_1P2";
@@ -607,6 +627,26 @@ &sleep_clk {
 	clock-frequency = <32000>;
 };
 
+&swr1 {
+	status = "okay";
+
+	wcd937x_rx: codec@0,4 {
+		compatible = "sdw20217010a00";
+		reg = <0 4>;
+		qcom,rx-port-mapping = <1 2 3 4 5>;
+	};
+};
+
+&swr0 {
+	status = "okay";
+
+	wcd937x_tx: codec@0,3 {
+		compatible = "sdw20217010a00";
+		reg = <0 3>;
+		qcom,tx-port-mapping = <1 1 2 3>;
+	};
+};
+
 &tlmm {
 	gpio-reserved-ranges = <43 2>, <49 1>, <54 1>,
 			       <56 3>, <61 2>, <64 1>,
@@ -691,6 +731,21 @@ sdc2_card_det_n: sd-card-det-n-state {
 		drive-strength = <2>;
 		bias-pull-up;
 	};
+
+	wcd_reset_n: wcd-reset-n-state {
+		pins = "gpio82";
+		function = "gpio";
+		drive-strength = <16>;
+		output-high;
+	};
+
+	wcd_reset_n_sleep: wcd-reset-n-sleep-state {
+		pins = "gpio82";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+		output-low;
+	};
 };
 
 &uart3 {
-- 
2.45.2


