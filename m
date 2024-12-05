Return-Path: <devicetree+bounces-127176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A759E4C4F
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 03:34:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C330D188184A
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 02:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 507001922FB;
	Thu,  5 Dec 2024 02:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TnnrcNqs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D2618FC75
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733366035; cv=none; b=eqCDOxzdjl6fhpa+2nLPUe/iim/XgKJ0oU8MKR4mBdRr9xWEiWdHLYqpK+7Wle78IwVWuQSMDUYgpl1N2KAYHeMzyMfy+VKE82eW6PygxHfy9HNeP0ri4OD6bwasYHu0rRmzQxd3S6D3kQMGeeZeNPIV25q7x0eQRFde8MjfLAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733366035; c=relaxed/simple;
	bh=YRQBf0W9frh8FEHOrg3W9F5a40CVpeTKHJworaSbgRI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eqZig5YvIMG+QopY+9K+ctA/kpaG+uBMYS6imI0F5VtlPK75Xvp8/Xv6QJjcbWq0roDi+X+V4bo40Dc+jyqKonIQHCJtxUYNQ9REYw7b/LotQ1z9OcJhgiHRduSBknKU13Ed/+Bjp68AA87yE1gMdXLpGoZMxXLYXA+GoC7ocK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TnnrcNqs; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4349e1467fbso2647455e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 18:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733366032; x=1733970832; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pbQg49fwfqiAPqum0vO3xu6S8El0T9nuKTumPVo3HTs=;
        b=TnnrcNqsn93sKAISSgUaYd0yus1Q+fHfc2Mh40HZJOsOGHITxzmlaAJ0i2eg8ek2Hs
         CCGcAy5ZHIHbZKxYpc+66mcBuNzh5so3b6a+pPyl5w4L/LciqjXBbdC44NvO0FUToNWm
         4DJYDI5A39PfSIAsjWe27tnK6xNiOrnmCSGZJufq1TRab5It0k8h2eytrAsH8oz+OOJJ
         wgxzHqUOZgZSQrprjAsOYojxw9encbZJfq3dFFYHosqwmMBL2TnE6WMOSpicKyssauQx
         Kr1tYeEA5uGrPDIBzj0Yn+ypDUv/V41DQBOkAWus7CZQBXHoV3pd9UuwU74NwUGYoxb7
         z9HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733366032; x=1733970832;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pbQg49fwfqiAPqum0vO3xu6S8El0T9nuKTumPVo3HTs=;
        b=s+5ahscfZZPyQUWafWIqBwKhuLxEeRgB4a9bUjHlXCcy1vfsIoWwK9/e6wtCgzvJy5
         HLbe6nEKcx02Nc9be/7dVT5kVy45uR63pljqGWwVXFa6iAkbE+6OS1E3zaBt+Ikat6s/
         /0/aOwZM4CIGmtva0iU3LXx1Mo3K92f9A1DazQiSy29oAMojalRRLu5n2SwLnFT4k4nx
         PM/IL82BHVp7ihEPfzMK/C/xercXhhmmGkp9bfMQP8JJ43vFsyKiXvwYpxpU8zOftMgU
         kkoisE/BpAJbGUJy9DvkkDqsr4MKDdP9FrPP6sxKmig7yVq2B1Af47hCWP3A6RZBN8AV
         83Hg==
X-Forwarded-Encrypted: i=1; AJvYcCVH780m0BE4evfvLWRn1lXaB+4A8wcF4DGZkF9nGc6lDFNkvUh2CHy7KfC0QYpN/w1ahsU9FUQ8MGLF@vger.kernel.org
X-Gm-Message-State: AOJu0Yyuk8c+wuts6DRI52SXPz+FOqx4ogXCMpz//GyB7PzBAalUWVa/
	4kVTwHQb6bRet7uzSHmGHquvLEYmIgEj2XY3avlo6ey9MbQVH5/adGkbSjfW5Rk=
X-Gm-Gg: ASbGncvVHLQ0rPSZdWYxgum1XxHHi7Ylgs0cypbRpbwMo8FMfSl9l2uDdxWzc+T3N+O
	nwqKKFekHEP2NmHdFHlKM3n4rt8wm9B9JcLFv/2T6lRxSEc6PNq/P57Mv5V9sHUJ50T91P9SphK
	2rfQ7tljzRBYovYrUpb8FfnVz09odG6bQB9axWTtAGzZWSVTpXsdsq3gC0nkSD7kSMn3EwjM4Se
	apUyG5kZMW+TYjGr3q+AotU0SNt7CJyjdPczn/rFEK/0NKm8cwh1LwkzdZAAsJoszC0
X-Google-Smtp-Source: AGHT+IEr04HIyGIAbnMgCxehAiEsQghxVfR78l+LYpgdbWvEFCUYjvf5mRhaEkf1BZj3PO52s5tGig==
X-Received: by 2002:a05:600c:46ca:b0:432:d82d:6a6c with SMTP id 5b1f17b1804b1-434d0a1db91mr81932695e9.30.1733366031850;
        Wed, 04 Dec 2024 18:33:51 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d5273440sm44444325e9.18.2024.12.04.18.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 18:33:50 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
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
Subject: [PATCH v1 3/3] arm64: dts: qcom: sdm845-db845c: add i2s playback support via LS1 connector
Date: Thu,  5 Dec 2024 02:33:44 +0000
Message-ID: <20241205023344.2232529-4-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241205023344.2232529-1-alexey.klimov@linaro.org>
References: <20241205023344.2232529-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DB845c board (RB3 board) has i2s signals exported via the first low-speed
connector and this is also required by 96boards specification. Enable
playback support via this connector. Since this is specific only to DB845c
board the pins configuration is also in this board-specific file only.

This playback output is fixed to 16bit, i2s format and 48 kHz and works
with simple DACs.

It was verified with the following commands:
amixer -c0 cset iface=MIXER,name='SEC_MI2S_RX Audio Mixer MultiMedia3' 1
SDL_AUDIODRIVER="alsa" AUDIODEV="hw:0,2" ffplay -autoexit test.mp3

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 43 +++++++++++++++++++++-
 1 file changed, 41 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 1cc0f571e1f7..6ca719281788 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -707,12 +707,21 @@ led@5 {
 	};
 };
 
-/* QUAT I2S Uses 4 I2S SD Lines for audio on LT9611 HDMI Bridge */
 &q6afedai {
+	/* QUAT I2S Uses 4 I2S SD Lines for audio on LT9611 HDMI Bridge */
 	dai@22 {
 		reg = <QUATERNARY_MI2S_RX>;
 		qcom,sd-lines = <0 1 2 3>;
 	};
+
+	/*
+	 * Secondary I2S uses 1 I2S SD Line for audio playback on
+	 * LT9611 HDMI Bridge
+	 */
+	dai@18 {
+		reg = <SECONDARY_MI2S_RX>;
+		qcom,sd-lines = <0>;
+	};
 };
 
 &q6asmdai {
@@ -762,7 +771,8 @@ &sound {
 			 &quat_mi2s_sd0_active
 			 &quat_mi2s_sd1_active
 			 &quat_mi2s_sd2_active
-			 &quat_mi2s_sd3_active>;
+			 &quat_mi2s_sd3_active
+			 &sec_mi2s_active>;
 	pinctrl-names = "default";
 	model = "DB845c";
 	audio-routing =
@@ -852,6 +862,17 @@ codec {
 			sound-dai = <&wcd9340 1>;
 		};
 	};
+
+	i2s-sec-dai-link {
+		link-name = "I2S LS1 Playback";
+		cpu {
+			sound-dai = <&q6afedai SECONDARY_MI2S_RX>;
+		};
+
+		platform {
+			sound-dai = <&q6routing>;
+		};
+	};
 };
 
 &spi0 {
@@ -994,6 +1015,24 @@ reset-n-pins {
 		};
 	};
 
+	sec_mi2s_active: sec-mi2s-active {
+		clk-pins {
+			/* sclk and ws */
+			pins = "gpio80", "gpio81";
+			function = "sec_mi2s";
+			drive-strength = <8>;
+			bias-disable;
+			output-high;
+		};
+
+		data-pins {
+			pins = "gpio82", "gpio83";
+			function = "sec_mi2s";
+			drive-strength = <8>;
+			bias-disable;
+		};
+	};
+
 	sdc2_default_state: sdc2-default-state {
 		clk-pins {
 			pins = "sdc2_clk";
-- 
2.45.2


