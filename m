Return-Path: <devicetree+bounces-107009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B12BB98CB34
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 04:22:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7AA2728308F
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 02:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1489262A02;
	Wed,  2 Oct 2024 02:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="un5WUHSI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56674535B7
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 02:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727835639; cv=none; b=VlguwXOIdV8EdWkqOVMW5AoAU4AuO+soeItJFudtH7THOWlLqNN9GD20DJrAC4vz3lPdAtafXRS+6IZelctnPwdmAUhkRALsSz49iDTd+9ShARDqNpBOL7jSKSJCvTdzytr+0nX6pRQo2X8ZPRhzhO7yZN26YVOI5Je/BekpUDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727835639; c=relaxed/simple;
	bh=ULS7v19diYZOA4yWMObow1IhNGxKdw920LDv9hjWWKc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Gun9CWNV5jd+7Qhsoja/hzUe1lU2IcUWofzmjlX/XtfhKpeYB4CcyZrKl74bh2KYTCgRWviq1uCjpE9OaM3HXdZZvGKh26k8JQR0wSRsvnNryrAlSbEpc6NJOz3a6Fw19itH1y8LLd1Z+es7aoZuK0wKkvxXUmW4K3H34nNULA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=un5WUHSI; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5c89f3f28b6so2735550a12.2
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 19:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727835636; x=1728440436; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W/fecHAusQTSWcNvNWVR1JO2nQmW0cI1ww9wmHUrbrs=;
        b=un5WUHSIolgMTPH+bJzkRk85RdKTr8UsHz5TZ24QOlilgqytvNJC/tpCuRFtO4BkwL
         xCNggz3fzP+2rSEqwSW0Q4nY4C/5ohxTZ45UEi1EyO4/ub9dKVwx3j1KGDzQuYpdUZ3Z
         Dh16NNCEglHUJ+ZVX/+ZtAp82py+xgxpMbvRl2LQujrRH0HkK78jETtKemE0ZU0uI6sd
         KCMvwiCHlQNMSa272TrvmG/fysYkZcqrTdBm2hI0FHBh/AMp2mMdF+kOgZRBdEMYXg6k
         uV68gHyxwBavZOOfcbp8SnjlWxODiO4ASXMkvaerufTI9GqL9TgV6hpmtPBKmXCVwxxL
         ISmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727835636; x=1728440436;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W/fecHAusQTSWcNvNWVR1JO2nQmW0cI1ww9wmHUrbrs=;
        b=VIZ3VZsgYzO0ZC7Hok0Vx8RGn+IEvV9IxmEm/WdY/EkDz/HeGyWNynbynaXngNbWK8
         AXgMam+QLE7kXd9tE5mFLvNHJqWrX9pEsjJyAw8Y7KZBGhhhvolqB15ce9D2aU65P1Xw
         NeWGLn4YrQWEs3t8YAPYHNLLsv6PL8OLH475QgaVI8GDqFYtYGzyF4aOe8gttwdhSkoc
         FGJzJJbUtB3QII4RBRkGPpirDesvxklxspvspkT/CMpuv1TzA/BHUQw86Dea3dF6vJTZ
         dDXHQCrwTffRp8ncMIXi4AXB4QwtHiHL7838TS4d57lL8zKqO9gvtYpJU3bpIFxDnGYQ
         S1vg==
X-Forwarded-Encrypted: i=1; AJvYcCU92oqL7uCprQltktytr3HbDJ5sFQla7dAIOMiPgJc6J/SHD6Eg+B8p8LInTmMK8ws3PHOl7n1Bd+ga@vger.kernel.org
X-Gm-Message-State: AOJu0YxmtR/0SdSPK2EWFclLluzkGCVYOEo87tNAumCHoml0H2RZd40k
	XBiJMydRxAu7SYxpX2aMijlKinRjxutrBTOBhdFhYw23tSrJ9TSEFPN8+QY33oY=
X-Google-Smtp-Source: AGHT+IGSWbnUX5pepZAtcaQL9h+8bQ2G+ar2GaP4ub1B1kbGdQfmXR5BpalUGXI74HFkbN9vCYhdIQ==
X-Received: by 2002:a17:907:6e92:b0:a86:79a2:ab15 with SMTP id a640c23a62f3a-a98f83d7a73mr142020366b.40.1727835635620;
        Tue, 01 Oct 2024 19:20:35 -0700 (PDT)
Received: from localhost.localdomain ([2.125.184.148])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c2945f2esm787518866b.117.2024.10.01.19.20.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 19:20:34 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	bgoswami@quicinc.com,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	elder@linaro.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	a39.skl@gmail.com,
	alexey.klimov@linaro.org
Subject: [PATCH v2 7/7] arm64: dts: qcom: qrb4210-rb2: add HDMI audio playback support
Date: Wed,  2 Oct 2024 03:20:15 +0100
Message-ID: <20241002022015.867031-8-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241002022015.867031-1-alexey.klimov@linaro.org>
References: <20241002022015.867031-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add sound node and dsp-related piece to enable HDMI audio
playback support on Qualcomm QRB4210 RB2 board. That is the
only sound output supported for now.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 55 ++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 7731681688d5..b8bc4452ca48 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -6,6 +6,8 @@
 /dts-v1/;
 
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/sound/qcom,q6afe.h>
+#include <dt-bindings/sound/qcom,q6asm.h>
 #include <dt-bindings/usb/pd.h>
 #include "sm4250.dtsi"
 #include "pm6125.dtsi"
@@ -103,6 +105,51 @@ led-wlan {
 		};
 	};
 
+	sound {
+		compatible = "qcom,qrb4210-rb2-sndcard";
+		pinctrl-0 = <&lpi_i2s2_active>;
+		pinctrl-names = "default";
+		model = "Qualcomm-RB2-WSA8815-Speakers-DMIC0";
+		audio-routing = "MM_DL1",  "MultiMedia1 Playback",
+				"MM_DL2",  "MultiMedia2 Playback";
+
+		mm1-dai-link {
+			link-name = "MultiMedia1";
+			cpu {
+				sound-dai = <&q6asmdai  MSM_FRONTEND_DAI_MULTIMEDIA1>;
+			};
+		};
+
+		mm2-dai-link {
+			link-name = "MultiMedia2";
+			cpu {
+				sound-dai = <&q6asmdai  MSM_FRONTEND_DAI_MULTIMEDIA2>;
+			};
+		};
+
+		mm3-dai-link {
+			link-name = "MultiMedia3";
+			cpu {
+				sound-dai = <&q6asmdai  MSM_FRONTEND_DAI_MULTIMEDIA3>;
+			};
+		};
+
+		hdmi-dai-link {
+			link-name = "HDMI Playback";
+			cpu {
+				sound-dai = <&q6afedai SECONDARY_MI2S_RX>;
+			};
+
+			platform {
+				sound-dai = <&q6routing>;
+			};
+
+			codec {
+				sound-dai = <&lt9611_codec 0>;
+			};
+		};
+	};
+
 	vreg_hdmi_out_1p2: regulator-hdmi-out-1p2 {
 		compatible = "regulator-fixed";
 		regulator-name = "VREG_HDMI_OUT_1P2";
@@ -318,6 +365,14 @@ &pon_resin {
 	status = "okay";
 };
 
+/* SECONDARY I2S Uses 1 I2S SD Lines for audio on LT9611 HDMI Bridge */
+&q6afedai {
+	dai@20 {
+		reg = <SECONDARY_MI2S_RX>;
+		qcom,sd-lines = <0>;
+	};
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
-- 
2.45.2


