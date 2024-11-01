Return-Path: <devicetree+bounces-117945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FB09B880B
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 02:00:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCBBE1F23185
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 01:00:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17041762F7;
	Fri,  1 Nov 2024 00:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qI/mldjn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98DCE1AAC4
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 00:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730422781; cv=none; b=giIHgeVEu5LtjvlC7m0ReKVP8lUsGVXf4VnE+3e7YV4+gDsfhpPcKwMDbYxdbaqvbqE7v7uW+qlgsfcBuljsOEFNEdcuYqo34Q+F6S/RYW8XoTNS73O5yPleDhJQA6MsP6VAHBXG3u5yr5K/YgR6JgAV+KWN9XouznysQ7KfuzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730422781; c=relaxed/simple;
	bh=KfozwYSENTNbSyYlouyzU2Yp+8xq6X5Dd42Q5ixj6oI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BbYVJsqw1iyLdxiq/o0cAK9iwvAUyHlq0iyEgBEtN82c6tM6kTTgvBdo9hd3MZmtZWMfbI+4OJp8RSFmgM2M0/BR9hKncul8AS8zQttvCqYlCdpfqx5VV9UvIr8B+Hdt7yLvywVLeinBo8O1W6QL/HgC7arL2ipnWXLDXuAXAzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qI/mldjn; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-37d473c4bb6so1195226f8f.3
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 17:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730422773; x=1731027573; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ojB9bhU+3681CPzpjWV9dtVH/cjJFNb4PF/Se+LIZoU=;
        b=qI/mldjnBEpejMlL9TJh0RleAreE11XqwZuKnnlt98iySLQ5kkeUGZk54pwds+q85z
         qFt214a70cmar9TxetU7WZouG3IoEkCiqVnR65auqcgBOtPStGPTBPmf0irOz9ox1VMv
         EQ4VC+4MtG3WjcpdIDh27hrobnHPWEQNitcw0KwzNaU7XCSz1hz/qw2CgVOsK0nQy8mO
         /0AvRYzq8lhlFZ78OG3G5TkdAQFVlh8cc+R8P6cLoK6wVpZDMG4HXGYrPasj4btsPx/x
         m3oXHa8DHLEb+DEkgMMUW0fre3MICHfw6CNGaRDr+JnvO2Lk6VRIi+SVc6X62t/bvFyC
         VN4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730422773; x=1731027573;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ojB9bhU+3681CPzpjWV9dtVH/cjJFNb4PF/Se+LIZoU=;
        b=YPK6h17U0CysWXcmoKZ0V9V2e8vjojr54X4HW+E7Gw/LJqV2JHOZS16bPfNFyCdPjv
         QqVTTO+qZxd2LI8ixDsuDuzy8PFH5kaey/55O6UqtaiuRqMekHtkOpgvYNEceCMK3ss0
         i6+bu+i64iKeCnaGyvZjoHfOs48hHCZMfM5pixYIUGpjNZf/FszK8+H4W0QgmhsbhZFc
         LIqMG6ZN0Tj0O4gBApkcjODaYrksT70Eoe1r55qJ1dGgO2w7bU6zEYHO4MAv9drrqY7/
         D7F6Veykx1Vy5TV3ycCOl/QDwAPDd2zc4BdzrlTALwFK0XbEG3Om492Sju73nkdwyhmG
         aWLA==
X-Forwarded-Encrypted: i=1; AJvYcCXZcl29JIrczm9NASH2ztYW50loQaaxuG3RC60lB+0Tw5+bZsXhvdDf/ddTUA/LKl1THmp6J+nE7x0P@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb5wAydTjdM7LrmJyosacnoJ/FMI1ATdCue3FeuU1CnLDQbcRB
	8KPFnno0xCiuJTorA3zx14G40jwnXPSLMWMXB5BJDHeKpDpzrQHYnrjXG9mDhKc=
X-Google-Smtp-Source: AGHT+IF/H+r5eZyru/pYrCB38bqqGwXsoMG4fIeIGAmr6bBcc7GxkmeVlwXh4HEqUn5JsftbPsMpKw==
X-Received: by 2002:a05:6000:1fad:b0:37d:5130:b380 with SMTP id ffacd0b85a97d-381c7a5e114mr1786417f8f.23.1730422772920;
        Thu, 31 Oct 2024 17:59:32 -0700 (PDT)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd947a9fsm74208035e9.22.2024.10.31.17.59.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 17:59:31 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	broonie@kernel.org
Cc: lgirdwood@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	a39.skl@gmail.com
Subject: [PATCH v4 5/5] arm64: dts: qcom: qrb4210-rb2: add HDMI audio playback support
Date: Fri,  1 Nov 2024 00:59:25 +0000
Message-ID: <20241101005925.186696-6-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241101005925.186696-1-alexey.klimov@linaro.org>
References: <20241101005925.186696-1-alexey.klimov@linaro.org>
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

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 59 ++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index a9540e92d3e6..283a67d8e71d 100644
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
@@ -103,6 +105,55 @@ led-wlan {
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
+		mm3-dai-link {
+			link-name = "MultiMedia3";
+
+			cpu {
+				sound-dai = <&q6asmdai MSM_FRONTEND_DAI_MULTIMEDIA3>;
+			};
+		};
+
+		hdmi-dai-link {
+			link-name = "HDMI Playback";
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
@@ -318,6 +369,14 @@ &pon_resin {
 	status = "okay";
 };
 
+/* SECONDARY I2S uses 1 I2S SD Line for audio on LT9611UXC HDMI Bridge */
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


