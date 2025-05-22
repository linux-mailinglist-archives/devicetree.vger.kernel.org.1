Return-Path: <devicetree+bounces-179684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F064AC1278
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 19:43:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C60E4A41635
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 17:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4264829B8DE;
	Thu, 22 May 2025 17:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lfei/3ko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D7D19ABD8
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 17:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747935672; cv=none; b=E8rawG3XhMqE4ryGsgUAINzm28gecIVJsX7ehcpW8n7+7G1YLVfx5p58pqKVhzZzXrAQacd4d1/5lkSx+4sROMRmb1zkJ7kchxZi8waehw154G95Tqv2I1H5htR0UbvMDCWuCJ3S55bhQQuxuAmDh2pKK5L9RxBzvsd1Rz9gnh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747935672; c=relaxed/simple;
	bh=S6jZhUI+XAJ2PlE5nePNGPGqQp49fPpI3d6PmNbCvKU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=q9EztMSnDIsyUi/kV3Cbh5NIB3LwFYnqkmHHH0OHbjKyr9B8XK5KqLxoXlmmnKiKeoVNg3RsKREW547XAVyQQTkhC5QfYNXVj2bHS4jh7Hp6Gl1IPOFP6ZN5nufucFYpgo9+QYTk/x2tKGkW2Krj9rG0hvkISsU1Ti2CYvVjxzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lfei/3ko; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43ede096d73so61762475e9.2
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 10:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747935667; x=1748540467; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nLq9dfH5kw3m9MDlrQzYgeHTL3bjAaliqFaw63+wHMA=;
        b=Lfei/3ko1TmKGManuWlHdW+YkoNPXj/I5U199qy+aVnF0Rizf2NoUjzrKolFl4shgk
         tcexM70t+slg5iS+feIFy6chTIOj4X0gwMvRWiNku1BzK+m00Ke43zw0zwTe7RHCAuhP
         9Dnn3MRFOwuffPrFtrIV2zP50d23ijDbk0yPN5+XjKwVSkmMYwHCkqvZMhcuGPCrE5Kw
         EIrOsDyykJGJA0FF+a1C3bHiIWhaobbD38VYyxg7iCRAlKGxMaohDDwBG6EVDaYt33iD
         GBHJF+f8GyX3dAc7pDZRQYeBR4h/u3Q+zIqbB73SvYahUM6QUv2v/cOszdXtX/UoUOTc
         FBWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747935667; x=1748540467;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nLq9dfH5kw3m9MDlrQzYgeHTL3bjAaliqFaw63+wHMA=;
        b=uqsuHIRZrrWv4kQflU595z62VDCujhO6OhqBMWMGn6S5U9EUBQX5g/+YTt4Gc5rDpX
         UULJXs3bPG8oA1X9Q212anB/iAp1eLI4BehLwh/a/4WGS/jS+bVrMeLkdypsO2dfnwUC
         wjgckgwVK3cdsut1AZfXrybLniyK6a1EbpSmf5JbEMX8amDN+mjH63n3iNYpXtKaT8EK
         YwN/tU1ryV9Iy59UKDeBEXw2lryBj6PUxlaFiV2GMcaEcJo+wVx+fyehwcqolNKyxEAh
         dmePOLAN6EjFK5J8fUJhu1pVYWN8jQKGQcLWCAudWSJHhRe2okKGRxEasl0GttMMJ7D1
         PT9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWcLthHItyhclz9OaHy5ndiswKjb3OdBGAYHvPDy8zW9rOUhHD7nX54edbVoE3tzuJinz8MtKXy4Adp@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw8Q65cL3M2JS2WbA4FcY++K8dVN3kO2yo85hWUR4cUsPas18o
	QXjCKVjsihmQrMAmlhhyvi0KLLTne6SCLtL1ADmPh61+LD1D/4nZQC3uVmJG7CvMjRI=
X-Gm-Gg: ASbGncsqjJIp3nEpsk38gv5fQ59Pw+JfqGg7ag5mIRHOP+tdqoo+usZMNX6a1Uaqi6R
	wMy5xMxciS+m8g2rUeMWfTrmCCZT1SwBk1X7fozNmvrtoET7iAPDCYYy7kRfEDOhM0VuexSGVzq
	u8DLA6GipyN1CqeJLpejQ5GfCD2ap7XsKv7zqBYOKUK2lPzlbrQrncMe8SUnrlksc3P7jVvFt/R
	mYOuuL17NrCUTeG3oZhT/LUymuSh0rZBq5O9ZO7C8RLEzAyFp1jEWHhI+/R4G0peQcI60B6LoeW
	hy1xy2EypOHe0w3ALo+8ZN5U2qw0pi6Qkd561+uV+oud8UkXTbusEw8heqY=
X-Google-Smtp-Source: AGHT+IFHZ7GRnEumz9miXfhQcVTeLvcllCBZO2l6C+Fp4Xcd0b3neA0piaRSIcSFkbEs+4+lyCZ18g==
X-Received: by 2002:a05:600c:4ed2:b0:43d:8ea:8d7a with SMTP id 5b1f17b1804b1-442fd67504emr198840965e9.28.1747935667099;
        Thu, 22 May 2025 10:41:07 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7213:c700:6c33:c245:91e5:a9f4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f7bae847sm109563195e9.36.2025.05.22.10.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 10:41:05 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 22 May 2025 18:41:01 +0100
Subject: [PATCH v3 11/12] arm64: dts: qcom: qrb4210-rb2: add WSA audio
 playback support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-rb2_audio_v3-v3-11-9eeb08cab9dc@linaro.org>
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
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
X-Mailer: b4 0.14.2

Add support for audio playback via WCD937X/WSA881X. From DSP
and rxmacro the sound stream goes into AUX port of wcd codec.
wcd codec decodes digital audio into analog and outputs it to
single wsa amplifier hence only the mono configuration.

The audio playback is verified using the following commands:

amixer -c0 cset iface=MIXER,name='AUX_RDAC Switch' 1
amixer -c0 cset iface=MIXER,name='RX_RX2 Digital Volume' 80
amixer -c0 cset iface=MIXER,name='RX INT2_1 MIX1 INP0' 'RX2'
amixer -c0 cset iface=MIXER,name='RX_CODEC_DMA_RX_1 Audio Mixer MultiMedia1' 1
amixer -c0 cset iface=MIXER,name='RX_MACRO RX2 MUX' 'AIF2_PB'
amixer -c0 cset iface=MIXER,name='SpkrMono WSA_RDAC' 1
amixer -c0 cset iface=MIXER,name='LO Switch' 1
amixer -c0 cset iface=MIXER,name='RX HPH Mode' 4

aplay -D hw:0,0 /usr/share/sounds/alsa/Front_Center.wav

Cc: Srinivas Kandagatla <srini@kernel.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 4b878e585227ee6b3b362108be96aad99acba21d..1e2b9d2516b62e2e80c40ed6c3a0c4548a02630c 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -111,6 +111,8 @@ sound {
 		pinctrl-0 = <&lpi_i2s2_active>;
 		pinctrl-names = "default";
 		model = "Qualcomm-RB2-WSA8815-Speakers-DMIC0";
+		audio-routing = "IN3_AUX", "AUX_OUT",
+				"SpkrMono WSA_IN", "AUX";
 
 		mm1-dai-link {
 			link-name = "MultiMedia1";
@@ -151,6 +153,22 @@ codec {
 				sound-dai = <&lt9611_codec 0>;
 			};
 		};
+
+		wsa-dai-link {
+			link-name = "WSA Playback";
+
+			codec {
+				sound-dai = <&wsa881x>, <&wcd937x 0>, <&swr1 3>, <&rxmacro 1>;
+			};
+
+			cpu {
+				sound-dai = <&q6afedai RX_CODEC_DMA_RX_1>;
+			};
+
+			platform {
+				sound-dai = <&q6routing>;
+			};
+		};
 	};
 
 	wcd937x: codec {

-- 
2.47.2


