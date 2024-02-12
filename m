Return-Path: <devicetree+bounces-40979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8122851D2E
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:48:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ECD4AB282CC
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2743845BED;
	Mon, 12 Feb 2024 18:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cnnn5VNN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3CE45BE6
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707763450; cv=none; b=Jaq+g4ilVSNDFgvU8JWNXgXHdnnJurT4qknHc1BhPyLkihDdHXjMw5O4/UiFDJqXrilarazpdH39NdSICcocsrMuftL71uH2I+ofefdoEPYVWUt+NAWd/viEpq58PUdj0VwukSa+sow/SkrphsI1g4TB6KtpV6wRJQejy+X8ho0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707763450; c=relaxed/simple;
	bh=ggjzpCTsIN11gB0mcnOs/blBuM22pBJUK+jpoAbT0Tg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VjJZ9M4+CHROSGadaCe2DV0E9u0pTqpfx0wQWEK9hPnzpTDHfYljffooT4nxSmazJ4kY9Ymx2tTFrkfWhtgelGjQdsGHnjnVfmyEJS34kvwJ/BiV0WzrmfFCuEzL2se9bh0HSO9BbPU39OBMK0PtnkAN8k+4seRsn3UiNLkjtQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cnnn5VNN; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-33b8825c785so449439f8f.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 10:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707763446; x=1708368246; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cLI6uvtWJiJNaaVlPDaGYM7oaeBfeQ4b4L3zMgYgLRs=;
        b=Cnnn5VNN+fHonnaAhN+9xNVYxUL510NHin28Nu0H9REAljXpomBEEkns0z0proiKHe
         0b7E49Vq/VO0X0ucXoFqnOFOxTU7nlz+YaYZcUdO092ed0UWt8J1MJXrkKnQIAwoNwdT
         LNx3JBK35qM7StkdNk2Q1TEw6snCabB3ZmP8cX6rKDZbi2w5wAnyb7+pkG2udpo2akKJ
         Mjj43lRckcuuB0H6zcqLt1W2tP4aurlT5sfCxDWRSOkUFC3kZeZ77B8fVCqk28vnKi+B
         9lucYb0uQYIEiCqwfAzze1NmpE1Bk4EA81XTJnSMhZXR0NJNqJOUl2shOaC/3WwWhki5
         FQ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763446; x=1708368246;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cLI6uvtWJiJNaaVlPDaGYM7oaeBfeQ4b4L3zMgYgLRs=;
        b=lLXSmxolSp3GERloFay7rtNG7cVyLj4TqEU7jb823oCNK1TsKUuIDd3vHfMF5QZVUi
         32JAh1mdPxvw+7twDtxqga3HwIPqqsUoGSqq22kGd848nFXwfrkc5lRbzJ7Q/O183veh
         4xzekgqcgZ47q/YkVQR3R9jiAp56MXnI6bZYS9YyBkje/XHdADpNmaiulYyF+Y5Cv0As
         T+saCk4j4+uDz7qg3hj1yBDz6Bm+fS7s9Rc1+rvaOlHzyz6zYh8eNLbyAeptgd39uoGo
         TuYSO6dvspZz+vPUbZs8iXum4lWILrMl8hpZWEew6tsaDFgE/YqkqCxrEc/Jicjo0xI8
         yVHA==
X-Forwarded-Encrypted: i=1; AJvYcCXwKQ2Z071nvuCS8fUl1Cri3em293HClImW6AUjbs4S8jlzAv9iOL2vinM0xmfumPwJ+fdDReG8OXtn0Nu2ujjEjbnucz3qksrbqA==
X-Gm-Message-State: AOJu0Yz8h6TvTvRK5666+f8a0PwE8sppeDlG0T4jGPJaL9VNQKkRa3xz
	qBLkuqsxTay89eTNb8k/c+mVPPaPFX6IndHuKwX945TC3hcgMr/49VvFVp5+cFg=
X-Google-Smtp-Source: AGHT+IHLbJI4HfzbTuKjLym5/RCgm7GtPC5HjkGAf5cn6cHNV0VwlDqLTCQaOgq8c81mozNchAy57g==
X-Received: by 2002:adf:f189:0:b0:33b:8787:2d9e with SMTP id h9-20020adff189000000b0033b87872d9emr1533322wro.44.1707763446509;
        Mon, 12 Feb 2024 10:44:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU7wUI9UR3Q6Lny/OeoyG49MdQiMsbnvgoN6SbRUDpFrqJeb7yvikH/y86E7x0MrbZdrAXEdymyFhPev9OG2LxF3vB5l5l1ZBJ+aAUSYXFAGrJuDEhAx4VpLMpKKCRAr4qIQvyTffELv/pys/dARgK9yX383hTjjqOuf6pjYaFu9bu0MjVVTjwSfZ4BCGfiWnzKYaANbJeioGBJ0NKHy6HSjv25UcCAFBBqt7/Rgkavgib3tCmct2vbaivVVcbrWVrhMo0X0wTV
Received: from krzk-bin.. ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id w13-20020a5d404d000000b0033b4dae972asm7448371wrp.37.2024.02.12.10.44.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:44:05 -0800 (PST)
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
Subject: [PATCH v2] arm64: dts: qcom: x1e80100-crd: add sound card
Date: Mon, 12 Feb 2024 19:44:03 +0100
Message-Id: <20240212184403.246299-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add sound card to X1E80100-CRD board and update DMIC supply.  Works so
far:
 - Audio playback via speakers or audio jack headset,
 - DMIC0-3 recording.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Change in v2:
1. Rebase omn dmic02->dmic23 renaming.
2. Add missing dmic pinctrl in lpass_vamacro node.
3. Add Rb tag.

Depends on dmic02->dmic23 renaming:
https://lore.kernel.org/linux-devicetree/20240212172335.124845-5-krzysztof.kozlowski@linaro.org/T/#u

For full bindings dtbs_check compliance (not a dependency!) also needed:
https://lore.kernel.org/linux-devicetree/20240212183800.243017-1-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 98 ++++++++++++++++++++++-
 1 file changed, 97 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index 12abc9287a75..6a0a54532e5f 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -18,7 +18,7 @@ aliases {
 		serial0 = &uart21;
 	};
 
-	audio-codec {
+	wcd938x: audio-codec {
 		compatible = "qcom,wcd9385-codec";
 
 		pinctrl-names = "default";
@@ -48,6 +48,94 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	sound {
+		compatible = "qcom,x1e80100-sndcard";
+		model = "X1E80100-CRD";
+		audio-routing = "WooferLeft IN", "WSA WSA_SPK1 OUT",
+				"TwitterLeft IN", "WSA WSA_SPK2 OUT",
+				"WooferRight IN", "WSA2 WSA_SPK2 OUT",
+				"TwitterRight IN", "WSA2 WSA_SPK2 OUT",
+				"IN1_HPHL", "HPHL_OUT",
+				"IN2_HPHR", "HPHR_OUT",
+				"AMIC2", "MIC BIAS2",
+				"VA DMIC0", "MIC BIAS3",
+				"VA DMIC1", "MIC BIAS3",
+				"VA DMIC2", "MIC BIAS1",
+				"VA DMIC3", "MIC BIAS1",
+				"VA DMIC0", "VA MIC BIAS3",
+				"VA DMIC1", "VA MIC BIAS3",
+				"VA DMIC2", "VA MIC BIAS1",
+				"VA DMIC3", "VA MIC BIAS1",
+				"TX SWR_INPUT1", "ADC2_OUTPUT";
+
+		wcd-playback-dai-link {
+			link-name = "WCD Playback";
+
+			cpu {
+				sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
+			};
+
+			codec {
+				sound-dai = <&wcd938x 0>, <&swr1 0>, <&lpass_rxmacro 0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		wcd-capture-dai-link {
+			link-name = "WCD Capture";
+
+			cpu {
+				sound-dai = <&q6apmbedai TX_CODEC_DMA_TX_3>;
+			};
+
+			codec {
+				sound-dai = <&wcd938x 1>, <&swr2 0>, <&lpass_txmacro 0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		wsa-dai-link {
+			link-name = "WSA Playback";
+
+			cpu {
+				sound-dai = <&q6apmbedai WSA_CODEC_DMA_RX_0>;
+			};
+
+			codec {
+				sound-dai = <&left_woofer>, <&left_tweeter>,
+					    <&swr0 0>, <&lpass_wsamacro 0>,
+					    <&right_woofer>, <&right_tweeter>,
+					    <&swr3 0>, <&lpass_wsa2macro 0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		va-dai-link {
+			link-name = "VA Capture";
+
+			cpu {
+				sound-dai = <&q6apmbedai VA_CODEC_DMA_TX_0>;
+			};
+
+			codec {
+				sound-dai = <&lpass_vamacro 0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+	};
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 
@@ -494,6 +582,14 @@ spkr_23_sd_n_active: spkr-23-sd-n-active-state {
 	};
 };
 
+&lpass_vamacro {
+	pinctrl-0 = <&dmic01_default>, <&dmic23_default>;
+	pinctrl-names = "default";
+
+	vdd-micb-supply = <&vreg_l1b_1p8>;
+	qcom,dmic-sample-rate = <4800000>;
+};
+
 &mdss {
 	status = "okay";
 };
-- 
2.34.1


