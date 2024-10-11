Return-Path: <devicetree+bounces-110394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA0499A4D0
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 15:20:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C66AA1F223DB
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 13:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CF6C21C195;
	Fri, 11 Oct 2024 13:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hcRMEbv8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7324521A6F3
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 13:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728652692; cv=none; b=gYCPmLazh8qUlI/7mcYiJRHpB66X9f2GgS4WNN7yrrqkDrmvv9IVwnGFkskmStZDdjCyKHO6V2NRLWFmA+QQbJC4yHmwbxl3QT/wCEdo1aX7jLDbfuBPtHqFB55885IXijuhD7ajRwt/PiSkAndB6V184w/DT17ODO82V8BiysE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728652692; c=relaxed/simple;
	bh=lb40xLu/VXrpPNedn2QOJM+HYtvP+0chbzXXKOqoOlE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Aq2ZyvU4N1g4DzQ/GgF0JuYDH8qWON5TUOulFF/CJXO1pAMHSA1bdERHP3jePsz0CRQ4m4GHvAsmLna99S7bytjnxLeQRcOgTavYYYKH7A/C/iWdwyfIgqzxsdNmVNJd0S5/kaEUhuxeFBXtWr703/JIME4G8APPTeDSL/68qAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hcRMEbv8; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a993f6916daso348417566b.1
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 06:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728652689; x=1729257489; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p570CyCpET4jQOMvqTRvBlj0hjjJLO72psUJRNLRpe8=;
        b=hcRMEbv8K/WUg9wnY87/5iX/H3mc8sFva96P+FP7cawBZSqFp1gerUxDZL+W+/moPa
         z7OvTow4OasZ/yetIsOKDJRlTfFCEZm2p66w25OWS6NOdZaju3Qw3R9Wwy4oNzYqh/ws
         iLp54haZxNtbsiNhA6MjKuXLvdN9LLSWhpZzCsVzwCWEsiLjXiTTN2uprWxNKLtbz4gv
         /vpkBNumoPq2GS/v69jBY5X9Rhg0NOIwZs1kSWt6Dr6W+UhvfJTXpJ06N1sKKTmNPQmr
         UmDSwzBWgtI403Q5+GJrSNXBdX+K0YomIp2tbIEN/9/1kmhdd4pzVHPLI8T+LUZWUORw
         NzpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728652689; x=1729257489;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p570CyCpET4jQOMvqTRvBlj0hjjJLO72psUJRNLRpe8=;
        b=krYlqFc35mGnijW09Tz85K0txkRsK25yaE8OO1EqDlGQDtXeh+alBJ2O2E6bqRzrYs
         SYcMDvo43G8GjhHrzUHAWnT/uLOtFsGfURhaaIFQhazmG6zcgtbEsLtNpZ4pZ3RhR2SB
         YXfD6E/BQ8zZld9aP4yCHxXfBuxBblrQAk6g+OQKoQEV+kEUx7CZLFhcmBSICShoLAhF
         mdxm5eKvdvtHkdxE4nF3U/n55FxQcIgpI1hngqJmyiY9xRhVd9SeOm6gPdvtXf483Puq
         2jutTNiz6kjIqrymPTyFSWFOq1YNFB/KcoBxNyFLF6mz6dxUSsLEKeb4Pg+kCQr8BG7N
         RJUA==
X-Forwarded-Encrypted: i=1; AJvYcCXKqVt4xqZQPmhN1AvmijYIp4JBpVKkkvIctRlvnSkWVErwt52G/lbVY58Tm4k3UCNk4wC3TnFrq8jQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzrI288CIBJqLRtZuNR0sG340KXNl6lA0NBQM/TAV7ms0ERixpv
	s5OexxvrPRR8QXvS2EOibqitiIm1QwopKdVeEjdQseREGoXkZLC1PBuOF8ac5M0=
X-Google-Smtp-Source: AGHT+IF6or/njoSxhm0D8BdQrW2GZjoT6sIEIYH2TZDtF/FK3l17TAI5/Lscld9FDFFxOfxNeFGvEQ==
X-Received: by 2002:a17:907:6e8b:b0:a99:a48d:4470 with SMTP id a640c23a62f3a-a99b95af2ffmr174995366b.54.1728652688826;
        Fri, 11 Oct 2024 06:18:08 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:2517:2666:43c9:d0d3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a80f6691sm212214466b.222.2024.10.11.06.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 06:18:08 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Fri, 11 Oct 2024 15:16:45 +0200
Subject: [PATCH v3 8/9] arm64: dts: ti: k3-am62a-mcu: Mark mcu_mcan0/1 as
 wakeup-source
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-topic-mcan-wakeup-source-v6-12-v3-8-9752c714ad12@baylibre.com>
References: <20241011-topic-mcan-wakeup-source-v6-12-v3-0-9752c714ad12@baylibre.com>
In-Reply-To: <20241011-topic-mcan-wakeup-source-v6-12-v3-0-9752c714ad12@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, 
 Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1028; i=msp@baylibre.com;
 h=from:subject:message-id; bh=lb40xLu/VXrpPNedn2QOJM+HYtvP+0chbzXXKOqoOlE=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNI5VaumPFevL/GJc1Bqi99b2vSuSSEvl7t2SwdnutRBf
 5lLemc6SlkYxDgYZMUUWe5+WPiuTu76goh1jxxh5rAygQxh4OIUgImUP2BkWHbqU4w7p9N2kfzH
 j/LV+y+k1V1ccdz7UXay9vug7WfqljAyrEmLdXe2rH8iMnfW3hV9Sa8ufD/ecoOd5afCk+38F9c
 p8QEA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

mcu_mcan0 and mcu_mcan1 can be wakeup sources for the SoC. Mark them
accordingly in the devicetree.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
index 0469c766b769e46068f23e0073f951aa094c456f..06361cfd7a8ee6f2acf2d15e8106087dd0f38008 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
@@ -161,6 +161,7 @@ mcu_mcan0: can@4e08000 {
 		clocks = <&k3_clks 188 6>, <&k3_clks 188 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 
@@ -173,6 +174,7 @@ mcu_mcan1: can@4e18000 {
 		clocks = <&k3_clks 189 6>, <&k3_clks 189 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 };

-- 
2.45.2


