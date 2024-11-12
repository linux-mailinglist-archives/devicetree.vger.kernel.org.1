Return-Path: <devicetree+bounces-120984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5909C4CDF
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 03:54:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 061721F235EE
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 02:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87499209F24;
	Tue, 12 Nov 2024 02:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xPkTycue"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B010F209662
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 02:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731380000; cv=none; b=pW4VMiGXu1EstcuD9BKxr+SWxkgGepztijJF3EClxH7dO14FyFCvNEvTP1GsIMamDU2nCS8r8OInESXkpESrD94EN5vQRB1z3SE58Co+3v/7a0h4xQy/6S0ecwZ1EmmvGZxjClo+reM0RryYibAPVvLtnSNeLsC0BDv2ExPvBlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731380000; c=relaxed/simple;
	bh=CsGkXqqZhz0IgkSABcFs+iVRkws2qrUqO8PC7rmsWFA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=La7wIp+H/9LXN0MhTbLUxxtQ6hh4cDQtMXcW3KKNOMNRm4OYy4ia7NR+PYc3VJyVHr0Tk1HMkXweFQAx0u1PEVtyU+iCFfAc3fc6JIdrjYaSnBMQpIakTgsV85huoQXz8t0e2fyI51XOc3TKcJQQtlJBUy/hYye/UDMjsXlz5qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xPkTycue; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-37d4c482844so3511214f8f.0
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 18:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731379996; x=1731984796; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LIuoqEXHGjHf1JB2Y9KM3zh2C7j26CWN0IxIEir+BIg=;
        b=xPkTycueQF8GVC9J7ZGO9k02CwZ+YFbk6KAwU9Nsmcl1nqkuOPGmx5YZol1GOs1k1P
         Q3pEVvvahJAAyacum6HsBb7UTV/v8K1ReIOdWBMHFud8+vurqcknDoDi+zRXN7dwPdkw
         tljYVBiB3Gt3vQpjOw9JNKfTnlblWsdfCQpY6C2CdeAfjOyDuS4O0k8+rC6iaUFQYXQx
         LNSRPs84fyWAyTNki6+KeqR/lURfdf/CJYJwQUbzVf4Jzk/NKRdfeHyouPeU8+ozPUIS
         7sQ4lN7U1OVBXFpbi3XtcaE3fJaszartzsfnP48N8M4yc4SF0LM0vd5fjR03Kqs9f+ZJ
         HJww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731379996; x=1731984796;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LIuoqEXHGjHf1JB2Y9KM3zh2C7j26CWN0IxIEir+BIg=;
        b=p+M7pUb9TpiIl3EejosTW0/lSGO5Njh3FpZfHkYs3H6MoIxcafGIPJPexXzXRTEDX7
         XCfdc/ZGpmN77i3e6zsrYHSSAwO76a+d+t/nKUKwAWqCozIsTJ80zDkk9ZfOqMG7Sk+f
         JJHvHBhjzlpSJm1Br2rhDrtX+LM7ALP4YhPsCjVaINLZg1iAltsisWEKhtPFqVVvZ6bp
         wey4BCgKlQKNjtvK0rs2x26ODNZGpN7n5w+lbbAZhftOhIoXiL3j9h7NIkP2ji1z5Jxa
         1aRzV76EWbr87SWQWWC0H/CGHv7yNpvLG2zcB3wiLNdt6/svwHkkKf0ih+dU4VZVjOo9
         /bxw==
X-Forwarded-Encrypted: i=1; AJvYcCUh2toScXxAH69EXEDCp++oYnN8CfMxa6Njxf5Qu+1adaotlH5NJ5HjW6qzlE4Tgrk/zXSRNScKs3xC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4aTHvprix1CjFKBAOUQ1ofgPFAmDKfsM07nWBKG69C+P7kVrS
	4PdlTmyDCklQ2r0KFTlZsTyTo4Q13dS0btN+LB35TBw96qZ2+qktRvCTSaGXWHc=
X-Google-Smtp-Source: AGHT+IH96khvcEQPim+MYfWCoZ//XiPg0PZB4puwbxkc5NLkNzSYNtYc8k5it96xeSiaCS865si6gA==
X-Received: by 2002:a05:6000:1564:b0:37d:4d21:350c with SMTP id ffacd0b85a97d-381f186cc7fmr11666058f8f.13.1731379996195;
        Mon, 11 Nov 2024 18:53:16 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381ed999e0csm14056380f8f.59.2024.11.11.18.53.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 18:53:15 -0800 (PST)
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
Subject: [PATCH v5 4/4] arm64: dts: qcom: qrb4210-rb2: add HDMI audio playback support
Date: Tue, 12 Nov 2024 02:53:06 +0000
Message-ID: <20241112025306.712122-5-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241112025306.712122-1-alexey.klimov@linaro.org>
References: <20241112025306.712122-1-alexey.klimov@linaro.org>
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
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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


