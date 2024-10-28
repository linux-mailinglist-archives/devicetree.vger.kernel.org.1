Return-Path: <devicetree+bounces-116644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 749D39B37FC
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 18:42:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A60551C204F3
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 17:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 593211E1338;
	Mon, 28 Oct 2024 17:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="t+zCD9/D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4291E00BD
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 17:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730137232; cv=none; b=tlduuS6Xugcw3F1xmGJ8eX0AzTXYmlai25DjYCO2OgobdVOC5of+gbWZJzzhZ5NzobtRvBnYDMOSweAjaFqLbQIipKbAyAJfwCp0Tc6CL4qvDr/ZFZQnbObN3iw/4Ro3Zqgll1d17UrCf1wa2IZXD8cROuHkFrxX/mA7yDW45wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730137232; c=relaxed/simple;
	bh=L5jePk++a0uY91JQrASnpEj/bjSiMyJjUq1CjjPGGl0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iL/tq9VW6dwPbujoPZHQVufulIhQU1wjTxjQGlhvEjsFiU2fr69rQfzwL0a55ZL0T1HATIdFPexvNvboEvRF2W7jNV7InUS7/TRBGCa2//kGn5zGasFs0+TXVL57rXBvDcPDrBatOKc/rmkAgpwbtk9W54VuW4Zz97Jb7FQWfRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=t+zCD9/D; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4316e9f4a40so47196705e9.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 10:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730137228; x=1730742028; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=81ZVnQPK5cdOXNd0U587x7C4r0h4m8ObdC4H2ODABA8=;
        b=t+zCD9/Dsw33/jCFE9luuQdyej8FKHI+Klo+VM1Ms+B1q/ZgxM/EduB+R0LBNRCavh
         ObWNOtIo0bKu/tvJuUe3VcKJjOos5ZpRy8ZJRZitkpW25wzyiElv43Db/hKzzNbu/GEg
         rqvPngrlNZrvAQdr4PZ9PoPV/rppsg/b+2k3OMUBGqEITGSTAxG0fdnSqwl6FDG+T8jZ
         K5/UKi8EoopqcWKW/cv6ffen1MG/HqxlQxZAJc1soxtPnGKR3iWPlN10n8wze6TeniC8
         sMIiKNYqrRMPOgARX6yXDJlySXthAukrBgIIpHXIPPfNHAywFKX6bEDLjRPREh9301ij
         qiDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730137228; x=1730742028;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=81ZVnQPK5cdOXNd0U587x7C4r0h4m8ObdC4H2ODABA8=;
        b=RiyMOlVl0qjeAwDqSUns2aQhjSe0wNAzwIZaNH4JClPYIpWXY5YHouEgJeQReTz4YO
         Q/iQY7VaS8GGhAIyLvp7BH8zaDzwt1P+xPsUCIjsNQdshV8OGUt920o+2h1FaeYkhJEQ
         xabCiBLQ+4JTCCM7Furjp3vWMqlt005kQKHMRrgxnHBbeRSZn5ugL9hwVLyu0sdIUvJC
         XCnHgSbeTL6pX5dxaSXY+fT2WawhLPaTw61Wu+qyMv7wVkQgApam2A5OIPOFeQGSnSap
         vbmM7LwV9mDRHmniGkFenuMEwPrXLqSXt8mXxbry4PrpSHGB1mdRrkj05h7mrOhfjrVr
         L+mw==
X-Forwarded-Encrypted: i=1; AJvYcCVb9Bd5KFsC0YISoMUnvkm0vqJl9ZX8I05ZQE9d4FGuxCgs0PJyPxJ6h5mVwaVjW3USA0Bsez3ObChs@vger.kernel.org
X-Gm-Message-State: AOJu0YwimOMirPjug6rLR3HH25pXxwQIUrCjp0pmRTgitGfp9YK+foK0
	TmoUymq3zvIWXXBlE4wZ58zGXKSm+FE6hzSgttZbxcxZIPAWcCnxYNOX5W+ni6U=
X-Google-Smtp-Source: AGHT+IHSnXc+29Qbn383aWq7m+TPYika3FVB6W69uEQ0CryPJ25FNSrebl0db2HQt51eU8vLxtQ8Zw==
X-Received: by 2002:adf:ce89:0:b0:37d:476d:2d58 with SMTP id ffacd0b85a97d-380611e56aemr6462733f8f.45.1730137228088;
        Mon, 28 Oct 2024 10:40:28 -0700 (PDT)
Received: from localhost ([2001:4091:a245:81f4:340d:1a9d:1fa6:531f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b70c52sm10085494f8f.74.2024.10.28.10.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 10:40:27 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Mon, 28 Oct 2024 18:38:13 +0100
Subject: [PATCH v5 7/9] arm64: dts: ti: k3-am62: Mark mcu_mcan0/1 as
 wakeup-source
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-topic-mcan-wakeup-source-v6-12-v5-7-33edc0aba629@baylibre.com>
References: <20241028-topic-mcan-wakeup-source-v6-12-v5-0-33edc0aba629@baylibre.com>
In-Reply-To: <20241028-topic-mcan-wakeup-source-v6-12-v5-0-33edc0aba629@baylibre.com>
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
 Dhruva Gole <d-gole@ti.com>, Simon Horman <horms@kernel.org>, 
 Vincent MAILHOL <mailhol.vincent@wanadoo.fr>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1023; i=msp@baylibre.com;
 h=from:subject:message-id; bh=L5jePk++a0uY91JQrASnpEj/bjSiMyJjUq1CjjPGGl0=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNLlz+SLHqiNv37RLvXbupOvLYK+/3DuON5sdD/DL1Vh1
 vb4xC8TO0pZGMQ4GGTFFFnuflj4rk7u+oKIdY8cYeawMoEMYeDiFICJbD3FyHCMe5oZ84qtnQ+r
 dXPFHq39YJIVG6+Zb/Cty1yo54eH3yGGv3KhbEsVkiI42XYl72T7E9Uruj7v7yud7IUxv1zCe24
 FMAIA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

mcu_mcan0 and mcu_mcan1 can be wakeup sources for the SoC. Mark them
accordingly in the devicetree.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
index bb43a411f59b281df476afcb1a71b988ca27f002..e22177b9dfecb541e99b0807f8b79e7b878b6514 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
@@ -160,6 +160,7 @@ mcu_mcan0: can@4e08000 {
 		clocks = <&k3_clks 188 6>, <&k3_clks 188 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 
@@ -172,6 +173,7 @@ mcu_mcan1: can@4e18000 {
 		clocks = <&k3_clks 189 6>, <&k3_clks 189 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 };

-- 
2.45.2


