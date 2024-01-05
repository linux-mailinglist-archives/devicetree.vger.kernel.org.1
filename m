Return-Path: <devicetree+bounces-29884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 482A8825550
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 15:31:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75D0B1C22E16
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 14:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D031347DF;
	Fri,  5 Jan 2024 14:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="DkM4cPMl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE82732187
	for <devicetree@vger.kernel.org>; Fri,  5 Jan 2024 14:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-555aa7fd668so1880969a12.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jan 2024 06:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1704464965; x=1705069765; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LcIsCf9lD/knWhOV4w5QILuSqh1F/UU7FLo8OWJM7Io=;
        b=DkM4cPMlk668IK5AVgd/FHKm3S+y9baq+hqydxVqB0RyqnYaxYh34jRVIkN+qAvmDv
         eainLksGwxRyPiioDbIncVUZ9V2bjaBwh5Le0a+ad4lNLC77iVgiriVkRL58ko/9N9/X
         CKjYQRt+1UgeLfLkCwHdib4/PEMcN79rgIxQLOuN6/Ca/gyfpgOiDWF+lmRz29xJyncH
         kpFmSc6wkAOdATDQCzfbQNojOTr4NvFoxkaC4TFXsfBQAeJ4lsI+hO7rkWpSeDxm6w01
         JchTmhGdTVh/C83orGBtyVNklNzMhBH23EiH5+6y+nbPUAeLEG6KmTeLASt///mC14n5
         7SEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704464965; x=1705069765;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LcIsCf9lD/knWhOV4w5QILuSqh1F/UU7FLo8OWJM7Io=;
        b=FSe8A3jGI/QO0HlIPa7somtsxMkUlI1p8/LHLisiyc7R+lTkHU/PqxDhKMYbm2PZ78
         PS1Oi+eSxZfMPRBLGg0WSKxXnM4FyWLi4kfNCipEc18ZqTPIhShV8jiIF0f4dqBbxE45
         4GCJXfe0Z0nFu70Pt969SdWoF7xVYg8saO327RNvDZu9emVvkGzEPSHVPwVJr/sjSzxv
         s52dsku7RXM59d1wIszYfdlTNc+yOD8NjZDL/sQdNRNqBfCOMAHBqVlFhJOS/p224L8e
         vVNZYvsX8WGDvZ0xdiYUYKwu/sIBbNJI0IQ9TD07zK0wLxS2/HgyvtDscdfYzaaYzxnT
         MQlQ==
X-Gm-Message-State: AOJu0YxOZPUqf5KhZ5OEkSG4TpXRhh497OhzWriviP9yCvAZEC77QPv8
	uaT5kECxL9bhtz+CYDyIqn6maAknc7aMNelsaJL179xEMPTK7g==
X-Google-Smtp-Source: AGHT+IFG3RJXE6tYpwVAbEAn7QPS50WJ+2cJRim2jdSJpfqmulybpFQu+xxg4rk4FJSzZPs+mAwQag==
X-Received: by 2002:a17:906:6d3:b0:a28:be7f:3ef4 with SMTP id v19-20020a17090606d300b00a28be7f3ef4mr1170053ejb.24.1704464964761;
        Fri, 05 Jan 2024 06:29:24 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id u7-20020a1709067d0700b00a26b057df46sm927006ejo.126.2024.01.05.06.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 06:29:23 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 05 Jan 2024 15:29:14 +0100
Subject: [PATCH 3/3] arm64: dts: qcom: sm7225-fairphone-fp4: Enable display
 and GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240105-fp4-panel-v1-3-1afbabc55276@fairphone.com>
References: <20240105-fp4-panel-v1-0-1afbabc55276@fairphone.com>
In-Reply-To: <20240105-fp4-panel-v1-0-1afbabc55276@fairphone.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

Add the description for the display panel found on this phone and remove
the simple-framebuffer that was in place until now. Unfortunately the
LCDB module on PM6150L isn't yet supported upstream so we need to use a
dummy regulator-fixed in the meantime.

And with this done we can also enable the GPU.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 62 +++++++++++++++++++----
 1 file changed, 53 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index ade619805519..8eb376f2db46 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -45,15 +45,6 @@ chosen {
 		ranges;
 
 		stdout-path = "serial0:115200n8";
-
-		framebuffer0: framebuffer@a000000 {
-			compatible = "simple-framebuffer";
-			reg = <0 0xa0000000 0 (2340 * 1080 * 4)>;
-			width = <1080>;
-			height = <2340>;
-			stride = <(1080 * 4)>;
-			format = "a8r8g8b8";
-		};
 	};
 
 	gpio-keys {
@@ -68,6 +59,14 @@ key-volume-up {
 		};
 	};
 
+	/* Dummy regulator until PM6150L has LCDB VSP/VSN support */
+	lcdb_dummy: regulator-lcdb-dummy {
+		compatible = "regulator-fixed";
+		regulator-name = "lcdb_dummy";
+		regulator-min-microvolt = <5500000>;
+		regulator-max-microvolt = <5500000>;
+	};
+
 	reserved-memory {
 		/*
 		 * The rmtfs memory region in downstream is 'dynamically allocated'
@@ -365,6 +364,10 @@ &cdsp {
 	status = "okay";
 };
 
+&gmu {
+	status = "okay";
+};
+
 &gpi_dma0 {
 	status = "okay";
 };
@@ -373,6 +376,10 @@ &gpi_dma1 {
 	status = "okay";
 };
 
+&gpu {
+	status = "okay";
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	status = "okay";
@@ -404,6 +411,43 @@ &ipa {
 	status = "okay";
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l22a>;
+	status = "okay";
+
+	panel@0 {
+		compatible = "fairphone,fp4-hx83112a-djn", "himax,hx83112a";
+		reg = <0>;
+
+		backlight = <&pm6150l_wled>;
+		reset-gpios = <&pm6150l_gpios 9 GPIO_ACTIVE_LOW>;
+
+		vdd1-supply = <&vreg_l1e>;
+		vsn-supply = <&lcdb_dummy>;
+		vsp-supply = <&lcdb_dummy>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&mdss_dsi0_out>;
+			};
+		};
+	};
+};
+
+&mdss_dsi0_out {
+	data-lanes = <0 1 2 3>;
+	remote-endpoint = <&panel_in>;
+};
+
+&mdss_dsi0_phy {
+	vdds-supply = <&vreg_l18a>;
+	status = "okay";
+};
+
 &mpss {
 	firmware-name = "qcom/sm7225/fairphone4/modem.mdt";
 	status = "okay";

-- 
2.43.0


