Return-Path: <devicetree+bounces-130062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE1A9EDCC8
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:50:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B24E18846C9
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 323721865EA;
	Thu, 12 Dec 2024 00:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EFvlN1Ux"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0703238396
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733964478; cv=none; b=jSQK8VahzV8SuEkk2EIxOyxQKB25Psorg5uPXyHm4pm2Wrs9UPWS3cnD+m53qKS+v+aGYX9meSjfVoTbH1G11YUALNxLSvkxWCi+7xDNwtWRqo/1Kuy/8BEwxPS9AgkOSQnIE6G1JQP11LaIzQ2znMb5Ew3AShxktrj+sjL2P2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733964478; c=relaxed/simple;
	bh=G01gKfVugkgLOj1qCnYDaqgYbwrnec4EMd+74eUtQZE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DiWKPp4+2Ib79snLtez6S1j2DQaSwIN3rT5Z/JknzB6XVX32DaVbm/H7h0HVniHxzWN3Bwe6//hV4FEpSqsYFf8hPq0Ds7Nb/IQcudDNo7GOOm0ov2HL1xgoeVQz4JVYL4FQseExlnPeSkehNQh3hjvFZ8eEKHpVTpO0KgCDPc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EFvlN1Ux; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-434f80457a4so7371995e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733964474; x=1734569274; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z3lzZAY2al4gjffBF7O/Qr3GavkSOo8mFCJbq43caK0=;
        b=EFvlN1UxMWLmJ/pdEbgX8J+gALwlb5avIysoM85JCj1/yWAJm0rk1kldeEauwuxZ2d
         76knmtwejDFD4kl17Zd1Tv8JAu50pO9s75W+SnZy2eRtpufDk6zRlDSJBxmrOjEqjxyj
         eeuYeG30W9fo+Kr/jDmNdLwCVzdcA1hfY0X7IcW7Cep0i1tco7Dnu8rhY5SgQcIu3Fre
         jD6UVgZrxdyaNU60FsZvacJ3gqqQwcoCQkpCce3TmQDOqRgefAyk1ljiakfjvOoD8doH
         JKGUfmutvbUMdY3l3JCiFSFyIJH77jvfxBsbC3WixWFSCobZILVBD17aUQzes1Jy+Cl/
         AicQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733964474; x=1734569274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z3lzZAY2al4gjffBF7O/Qr3GavkSOo8mFCJbq43caK0=;
        b=CCf19dRo9x4Q6otFTne/Vs0Dui1ZV7/J6vso/gAG8iHgGK+DGdQlkSo8H54uHpV8Dr
         0c0dQFa7gwci3RUQ3xGFvxre7vhQMbp5gu6t8msjgoiikFqqqN1lLvthuzdouW8pyNTw
         jatnJksYomDb7Xvt3XYSzpaWsfDu4bYGD2pROsiTPIgNHa0gJBC7Q2Z6I5TDZQwPfT43
         ii2ZwzC3Nlhr6Pt4WuYqj0UWhRVHZv2ZbBVkEtei7yRlqug2bqrwQsQuK1kSEo4u6843
         cBUaK/50USUIummpyzSNbEWcZbE5p6jOiSrs0vl+fo8GXFXK7qNrSM4HwN/UxYBsT92i
         cPVw==
X-Forwarded-Encrypted: i=1; AJvYcCXOnqdu4Guu/zZ7sSWoJtj+s1dMK0M7yeMy+jOdK+jyF/OGpwQ65DbIt4Y5OaU/2Z/Vqycb3Kco6u0t@vger.kernel.org
X-Gm-Message-State: AOJu0YwlHO3/+OwBtfeCUSy4rA0kIWiLXOBcdxf18xXvT4CyAsTczNCJ
	b6Qc6n61ayuIuo7YDvDJZD/e8XbSqktmXDky0Y6zqSEi9xDD2U9issLT+bSzQlQ=
X-Gm-Gg: ASbGncsGBAFdofWebL+rJgXlDgoiqIny/a+aFvPRIFT/NiuLP211Zzq2auz+rXkBi90
	kAY5CdKs0tsObS8a3Er1z3VyghuyGEMBNMj9sXbBwLuCcsP1LFZ6txakkJKcfshivFOdzCGHHFx
	9+S8kraFirQ1kYSRMldgoII+fJEhz27ag/hi9+YAJ1d7YkWEwova7qpaCPNTCEgEffbv9i8117L
	Ra5Gk5dFNKBDIVNmdTL5lgtz4aLGUuRQf8eoCNnOqdysHoRSrASl1ivkxZ3kjgpIq78KzSY
X-Google-Smtp-Source: AGHT+IHfxJlBFyDrHmrHUAJImrACZdzTClOYSJj355MVm/7aogrPRx+Wl/aqNqwSqrWJeBi5Ylx+kw==
X-Received: by 2002:a5d:6f04:0:b0:386:4a2c:3908 with SMTP id ffacd0b85a97d-38788808b00mr869294f8f.17.1733964474344;
        Wed, 11 Dec 2024 16:47:54 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4ef4sm2459660f8f.39.2024.12.11.16.47.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:47:53 -0800 (PST)
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
Subject: [PATCH v2 12/14] arm64: dts: qcom: qrb4210-rb2: add WSA audio playback support
Date: Thu, 12 Dec 2024 00:47:25 +0000
Message-ID: <20241212004727.2903846-13-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241212004727.2903846-1-alexey.klimov@linaro.org>
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 827ce5f7adfb..34ba563d0d07 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -111,7 +111,9 @@ sound {
 		pinctrl-0 = <&lpi_i2s2_active>;
 		pinctrl-names = "default";
 		model = "Qualcomm-RB2-WSA8815-Speakers-DMIC0";
-		audio-routing = "MM_DL1", "MultiMedia1 Playback",
+		audio-routing = "IN3_AUX", "AUX_OUT",
+				"SpkrMono WSA_IN", "AUX",
+				"MM_DL1", "MultiMedia1 Playback",
 				"MM_DL2", "MultiMedia2 Playback";
 
 		mm1-dai-link {
@@ -145,6 +147,22 @@ codec {
 				sound-dai = <&lt9611_codec 0>;
 			};
 		};
+
+		wsa-dai-link {
+			link-name = "WSA Playback";
+
+			cpu {
+				sound-dai = <&q6afedai RX_CODEC_DMA_RX_1>;
+			};
+
+			platform {
+				sound-dai = <&q6routing>;
+			};
+
+			codec {
+				sound-dai = <&wsa881x>, <&wcd937x 0>, <&swr1 3>, <&rxmacro 1>;
+			};
+		};
 	};
 
 	wcd937x: codec {
-- 
2.45.2


