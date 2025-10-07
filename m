Return-Path: <devicetree+bounces-223998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 53828BC0023
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 04:04:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3FB194EC049
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 02:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6075122129B;
	Tue,  7 Oct 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P24PVVz9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB1E21D3D2
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 02:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759802633; cv=none; b=ga3hEvQTnQ52nU8KtV335aGvPtOi3caDxpWLXKLMqRUdWQsQK48b2An2Kl1jmWvhiRKJqrImxwgkgjSOTzqVg4HIq+DURYB9K6zqhs/aJy+zDpo/TfBR6niAdczY1f7XbVb8U9NGfAc1a4/cI2XPueBR8J7s3OM22mf0QUXCl6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759802633; c=relaxed/simple;
	bh=ViBe2WMm7kQxPxeRuekDdL8WZHiA1GXGLJT0PDfx7w8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=l6orCUHDzlRDqgbZ6nIQkCC6HVj73p+yFLoNv/+Jgwf1t6p/yP9VSIwVY4RCas+4Q6jN6OxAUtuOs9i8evUEKhEarl35/swZUOiw8NQ3Ka3W6REfGrYNCqOldFxhDnWCoxKUK6J7xLKkrOL3J7NKsIcRAAe9YCbCiD61mn8pljA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P24PVVz9; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-579d7104c37so7340752e87.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 19:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759802630; x=1760407430; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ysY18u2zKYmywl9mq+ndQhWk6KHVBYX5HfqkCVFIYg=;
        b=P24PVVz9hZXIj+0JB0RDdPlqvIJmMhXSqn+DnoYnPNcDGQqUtBWb6OKHUrpvUOAUd0
         ZiOVfjRtrgRxRhyUu73Hfu7gcM8RmkHQShau2b26HT5/Ugw8XlyexqxsfI3jcCWY61Sn
         Fqh8H/YyhHz14K2vteUhiyFMgpnF9KggFKVUhznxmi2SlLNRnkDq4TojB3UzxMDPCk7o
         1BcQxgP80gLKgLoLq/sE8ZHzCRSl4wfOpbf0R8mjkNFqtR+9BMsnoTcO7fG7STqtxwDQ
         7AOvU+xsOyBaiD4dwVQkgiZhESmbnwVn0rPKrB0Vlpni+2gLFGAiQp2TWyxMSv6pRe3i
         TXAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759802630; x=1760407430;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ysY18u2zKYmywl9mq+ndQhWk6KHVBYX5HfqkCVFIYg=;
        b=cTpQjY6/T/y2fAX01hd7/YZxBpLsYkF68cEYje7JwELQAUJAx9heLVROy2dxDYeaXF
         7vZnFEKVIiEWwssgaILi14h4p8aiKhQN7uDE1Gvs9RtKtdSfyu4439+iOgPuXD5vPylQ
         sXca/i/SWAC2KZHZAOpw258dbGcYW1Oi7OKxJ2sFDiepgcSi4oLaOPlSJ3E9DxfzRfYI
         Owpdm3wyeC52uZmO3BuvEiKxGGzgIZlA0b7i/gAoDzVqUqfV/xint6HiqMPNAsNyYoTc
         3lAkhRZdt4G2b5J2ZXSWVrHFQY4+PEDbiuN4X0iZXYxcDwon0P8Z4K75a+g0K1IHGxtm
         tSQA==
X-Forwarded-Encrypted: i=1; AJvYcCUAcvytLkiCkt973uO+E64rULFIj9tndlDwmIm3inwVnhsvGVWDi5drgLuJd9+X0vlRqmvxm0Pr1SjA@vger.kernel.org
X-Gm-Message-State: AOJu0YyQ2Xq3sg11F+5P35d7dUEUok39S3wMzXXjsKwj7/O3J4p0HHD0
	JTR9qiT85xcvecSCnD0fasx4eNc7vw50eBZWqbNo+4iq+CFuPhMmpE6q7mIyAZpZHrQ=
X-Gm-Gg: ASbGncvyyIwGhh5hyVIqX7zZ4I2ppiQB89u0p4CH/TezKwvNwgje0dhu03X1OCcOa9Y
	MeP4ogWL6C7GsCrZp2H4zMIQMLy1Sbj+2Ei3gBvOksC0Zqm5g06DFbx5/6HG6f2p4AkcIpFMNJI
	kX53KuShCqZVazlSOnoYPDo7jObRg/smpOjwiCqTF1nIK1AQ++DnXgmgbw7vfqqQoYoXWs0wkyt
	oUQwoIR7RFXmHmrAzeYgWB8hS4ZPzRY0liOKHToq7D7mTDgHYqhavi+19Wt5Ie9mI0y/jJHMpcV
	LYtZrg3CD7+mhOIx5Sib1XvP5dyaZ0IWYU0Vl/95XJcTzWc3DuWMuHdeutd0gR45GIWCbaPXWWl
	kVlX0DxBo7b7s54UnXKfR+qOglvGzhQkIofwQyYhYXs6nig0Dau/KkvcR0rVcbHfK9iI=
X-Google-Smtp-Source: AGHT+IHIQAFDlaxnS/YPLaaZASPGtjzqUskbAEsgwJPrLjmMvYfFHi4ayVxMDpBzxLLkErDPJhx74Q==
X-Received: by 2002:a2e:a987:0:b0:36d:4996:1c4d with SMTP id 38308e7fff4ca-374c36c4b2amr40767031fa.9.1759802629528;
        Mon, 06 Oct 2025 19:03:49 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7259:a00:22ae:baa0:7d1a:8c1f])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f3b81e45sm5150391fa.46.2025.10.06.19.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 19:03:48 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Tue, 07 Oct 2025 03:03:32 +0100
Subject: [PATCH v2 4/4] arm64: dts: qcom: qrb2210-rb1: add HDMI/I2S audio
 playback support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251007-rb1_hdmi_audio-v2-4-821b6a705e4c@linaro.org>
References: <20251007-rb1_hdmi_audio-v2-0-821b6a705e4c@linaro.org>
In-Reply-To: <20251007-rb1_hdmi_audio-v2-0-821b6a705e4c@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-sound@vger.kernel.org, Alexey Klimov <alexey.klimov@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2

Add sound node and aDSP-related pieces to enable HDMI+I2S audio playback
support on Qualcomm QR2210 RB1 board. That is the only sound output
supported for now.

The audio playback is verified using the following commands:
amixer -c0 cset iface=MIXER,name='SEC_MI2S_RX Audio Mixer MultiMedia1' 1
aplay -D hw:0,0 /usr/share/sounds/alsa/Front_Center.wav

Cc: Srinivas Kandagatla <srini@kernel.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 55 ++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index 67ba508e92ba1f0ef3bcf8b248eae125de059869..4ab5d3379ed22b43675284af40eb7f9304fbe1ef 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -188,6 +188,53 @@ vph_pwr: regulator-vph-pwr {
 		regulator-always-on;
 		regulator-boot-on;
 	};
+
+	sound {
+		compatible = "qcom,qrb2210-rb1-sndcard", "qcom,qrb2210-sndcard";
+		pinctrl-0 = <&lpi_i2s2_active>;
+		pinctrl-names = "default";
+		model = "Qualcomm-RB1-WSA8815-Speakers-DMIC0";
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
+		hdmi-i2s-dai-link {
+			link-name = "HDMI/I2S Playback";
+
+			codec {
+				sound-dai = <&lt9611_codec 0>;
+			};
+
+			cpu {
+				sound-dai = <&q6afedai SECONDARY_MI2S_RX>;
+			};
+
+			platform {
+				sound-dai = <&q6routing>;
+			};
+		};
+	};
 };
 
 &cpu_pd0 {
@@ -323,6 +370,14 @@ &pm4125_vbus {
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
2.47.3


