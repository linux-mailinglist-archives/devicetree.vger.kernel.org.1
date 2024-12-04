Return-Path: <devicetree+bounces-126959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EC19E3BF0
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 15:01:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5095A28663F
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 14:01:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1097C1FC7F1;
	Wed,  4 Dec 2024 14:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mtKN+hKn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C67F1FAC5B
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 14:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733320838; cv=none; b=MIkfk7vjjcU3sZG/a3bpRnm98O8udT2DnEwmAnbpf+Aks2RVu86fputFmKER4bHj7kvW5LhPrBHppnJ2vvkxZLgaaMsaqcu8kaZq5LYowJGLihVAvp/aO+Hum3g1tWZ1/cTIJnllyV2bRNucMw66Ox0xFALL/jh1jUZAzlJ6+E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733320838; c=relaxed/simple;
	bh=oQlxhyNXi4VLEYzBv6Mg8vKwQUxEbTCMppfaXRioQD4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YdRnr3KUqMRx46XpyVIN1zRgV2LeclTTj8tRHUC4YYJpYnFc+nr4Sj3pLnTmyEs3WvHfUU5JZwpli7LIUh6FFDmo5UYu0mn07ye9RN1UhoDrL+lnj2BSVK8oKlDOgmR8mq+ThCjriuVE0tA2Ek2aCo9AanQKx63OMpvV8g/xvhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mtKN+hKn; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-385de59c1a0so5086402f8f.2
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 06:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733320834; x=1733925634; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wo1Wzwh3Br92Add/ZhBjQllfXt/4cGMlJOhUAuIwj4I=;
        b=mtKN+hKnXs4GZO4U6dKX0LGD5diECH5sWuRUPS94XRaZfVUTyEkNqDJSyyzpsOAY85
         ttNo3hdF4HGOZd7+/xxDQr/BUoD2Ie4oagAZ59cynphEmOMAj2C6MVpwJ/2vI5ZoFKua
         UpEFgucFiDBrbyUHYk8RSJk6e3ujXpqwr3pXlZEnTAPMsTtd3glg8LSx+jt/rUB/X5ib
         ef1XyeOWr5FMFLFU4L1hmMEgtn82WDKJ0/NRFwUBMjFERGj6WeOOyjSBaV9TKJ+1sdlG
         LZVBWcL/85fdnYfr1La/gjdJYsvVPSKoCn7X24rxwGY/UQqd8VVGn8df9ks+tfLCDsGe
         HgpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733320834; x=1733925634;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wo1Wzwh3Br92Add/ZhBjQllfXt/4cGMlJOhUAuIwj4I=;
        b=XSu2IYB6/g0CPcOLN9a+S7GfVB/ZTOEZPyHFnBreRrD2EHMLLxwdnXQKvHUTP4S7zA
         D5JoCQKZ48LPL7P9ul71GCbQTSKHDsBIDoYFsJ6SNZvLX4e4hh+3FswyosmrHHnaZjYo
         2HBsBtEhvvV4yaKEUpw+JV2Y4xncG1Pz+EvOINKeC+IDA629Ru2gsQh0Sbayb2DKNLIT
         CQMhFC7/y4CJe00ufOJqVhARVMZjdxUlCB1dxarjHuJeXHzixfBGl5qDIyO5Lr8VrS6C
         JWDKOXqmdKD6pQZR3Gqflw+BhGAfCBi0v+tKHoJ9SssgrHkjyR5VcXzn6U4mQgYnHt3f
         rqOg==
X-Forwarded-Encrypted: i=1; AJvYcCUEDzn6niGZWHpHxerHMh/KwKvHzeucZ7rJJbiDw29se3rRu++iFl8WqzyIUzNem1MBuJEN1vRqjUaM@vger.kernel.org
X-Gm-Message-State: AOJu0Yyfr34ctiNYZUKcRFpsUN7ukrmwEU5t0gq8uhG56hCIUyGe0nlH
	bA8C39b/apVruBdu1q4tVB/NgqqOF/7uecWcKuLeo18a31G/TIVq5tyVLdd95IM=
X-Gm-Gg: ASbGncu6ES2STtW27UrmF6oqo5n6/oJRe5334T+9buiYVCTwaydLq0zPI9pJRUpDllK
	cosTU2YMRdMhD4bymOcCm/1Mfz+JOWVe9VJbQ9YmdBwTEJDQ565xdmng0usPzHYnrmTRgNwpxtf
	zKDcpowbDjSOYTIchUmX57yC7+7BVVwS7cTtbwyQri5BZHu+UgKVYxs8ymseFg0BAeoyAZSzxG5
	46toKRhaw5p97XNDeLnWT0DWVr51kygWyX6H74oSM8hN4DtgECgMsfoV+4avKcw4KBdIOE=
X-Google-Smtp-Source: AGHT+IEz3Wzkbnj/7JvjYGuWMu1+ciM8h8hDG3as1EYvNSR4aLNyIUb+eq8UmZ+7LI9j3XWrrIrsuA==
X-Received: by 2002:a05:6000:210d:b0:385:de67:228d with SMTP id ffacd0b85a97d-385fd3e90camr4308405f8f.21.1733320834201;
        Wed, 04 Dec 2024 06:00:34 -0800 (PST)
Received: from localhost.localdomain ([2a00:2381:fd67:101:8e2:966d:36c4:3579])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e2c84d52sm13689978f8f.49.2024.12.04.06.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 06:00:33 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	a39.skl@gmail.com,
	konrad.dybcio@oss.qualcomm.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 4/4] arm64: dts: qcom: qrb4210-rb2: add HDMI/I2S audio playback support
Date: Wed,  4 Dec 2024 14:00:27 +0000
Message-ID: <20241204140027.2198763-5-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241204140027.2198763-1-alexey.klimov@linaro.org>
References: <20241204140027.2198763-1-alexey.klimov@linaro.org>
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

The audio playback is verified using the following commands:

amixer -c0 cset iface=MIXER,name='SEC_MI2S_RX Audio Mixer MultiMedia1' 1
aplay -D hw:0,0 /usr/share/sounds/alsa/Front_Center.wav

The same path can be used as-is for I2S playback via first low-speed
connector when DIP switches are configured in a way to passthrough i2s
data to that low-speed connector instead of to lt9611uxc bridge.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 51 ++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index a9540e92d3e6..edfb18c85da8 100644
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
@@ -103,6 +105,47 @@ led-wlan {
 		};
 	};
 
+	sound {
+		compatible = "qcom,qrb4210-rb2-sndcard";
+		pinctrl-0 = <&lpi_i2s2_active>;
+		pinctrl-names = "default";
+		model = "Qualcomm-RB2-WSA8815-Speakers-DMIC0";
+		audio-routing = "MM_DL1", "MultiMedia1 Playback",
+				"MM_DL2", "MultiMedia2 Playback";
+
+		mm1-dai-link {
+			link-name = "MultiMedia1";
+
+			cpu {
+				sound-dai = <&q6asmdai MSM_FRONTEND_DAI_MULTIMEDIA1>;
+			};
+		};
+
+		mm2-dai-link {
+			link-name = "MultiMedia2";
+
+			cpu {
+				sound-dai = <&q6asmdai MSM_FRONTEND_DAI_MULTIMEDIA2>;
+			};
+		};
+
+		hdmi-i2s-dai-link {
+			link-name = "HDMI/I2S Playback";
+
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
@@ -318,6 +361,14 @@ &pon_resin {
 	status = "okay";
 };
 
+/* SECONDARY I2S uses 1 I2S SD Line for audio on LT9611UXC HDMI Bridge */
+&q6afedai {
+	dai@18 {
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


