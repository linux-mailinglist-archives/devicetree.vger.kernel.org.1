Return-Path: <devicetree+bounces-132852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C349F8554
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:06:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42E781895ECA
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 726C41FF7AC;
	Thu, 19 Dec 2024 19:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fpMrF/tV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA6E1FECBE
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734638353; cv=none; b=RlwASczWzmF3g920HDriivmj1D9WZ49yn7SPD2jYbbtAkepA8rdn+h4LLF0qWneciYuS+gDGGCnChKSWtdxAauJl46vp3dfqgFYbSkzPSCFXuu53zzznemQLFNO28k4DT8Ck/2VUhhFUNpAx22Ys0ntAiaiBcG8Qn7a5cVag2wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734638353; c=relaxed/simple;
	bh=9hRKFs2Z9paofbu+as+4aAVd9C5fh/XVAfao6kHuNUM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j2p/i0xRZIFQRoEvuctLqk+h9H9qK916gtadTOHbMqIaX3vC6wqE0Qa9nM3V32s8pLaMgc4+52tDnRXVPBRrz9G045SzrZPoJvF1pADY7YhjGUQd3Z4ynFt7jvCf8bsmnUyUkr3r44xY3CAKaz9HzUMDGTyPkxtw+CoFXXQF+ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fpMrF/tV; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5cec9609303so1544628a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 11:59:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734638350; x=1735243150; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gk8cThuOVr3SSVx4chFLhJB4lJSnrqBstxF8oe/bdWU=;
        b=fpMrF/tVQBlS9G1pltUBTSnIEu7IK2qAwYh9r04ChM4mXl1I6YuXswpfgCONVxI9XW
         2Rxs6IzvQEkC8ynRxdVvlwGtgBC7PKZsbs2ZngFc+NiJd4O340gELEZIlA3lUS+qztHE
         qn5izFAMIqeLA4ET9k1u62Wew4Dsg3Bfvz6FRsrCyiUDImqpdVzANqq6IekTmVNKLYxg
         55cyQrq2zOH2OOLwKonULXsiXrHb9fkJ/TYzj26NqBIpQpl763jPneuavlaf2PKam6mv
         ULk3oK8Q4WIXq/Luk+GWEYePPoL5N7KZa+UrmA0BQzqdizeZd6wry9aInPDXCehksz4B
         6TaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734638350; x=1735243150;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gk8cThuOVr3SSVx4chFLhJB4lJSnrqBstxF8oe/bdWU=;
        b=uTjX0bAETASffSoNFyBRfR0TDcoKT1ixuHy7je2t/hYTVgSIcup8tzp+GCyEJijBcG
         hi8dHHk06IU4X3DnitrgZnm60Z0ltfDhP9pWXz6ghDp4bQH6h1iJs6w4Nrti1270hfVt
         NTABiFq8YxewTwE94Hn6ek44mPhBIo83BXKzKtNBzeLb8HIvJ+WBI+q9JEEJwzTYvZLB
         sgyoq5wcPFGhSUTWPmnFE4WIo6qoGr/Mxj7iWifKTEKG1H43h4WujOVwj55JMWVNLhhb
         FabvxsGCYPnBu+zQI3HfPvooXLlP7DNGLbvFe3mpAcaJkrlmKDxyH8CXFlc5QVH9ZzQH
         F2uw==
X-Forwarded-Encrypted: i=1; AJvYcCWW88Vs1Sm/pHi+pTO7Tb/lW+NGSZP6XdoZH4kiS6JQFawqHH+rcRB50FoTMZrrglRzrXq5k0etmvbX@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9kG3ZjbmxjtinJR+3kb9SovCJLYq4A4FpYFrGaUMao89+6DVk
	yG6Wp9LoiRDxxUFgPLm+yFvl1IZAOCuAXUbQ62o8ZcPrCdxaNLyMtVGHlwWsTqQ=
X-Gm-Gg: ASbGnctfzlEuj/wD3AonxARifNm8+/XMIIj6tg75WiX+CHpxcRAY18+1Eyw0s7uo3AR
	3YlvVf658JXEdmjbmGEvEyGN4IGUm0TBv17zCLoP7zeQ4PAT4Cx+IbeXiB9ixJcnn2ys+pxoFG3
	wnmY7J5MNhgjdjzxJDWv91GneRYay4ToBGbusrHdj0C4pxVkBOQlR6dxKb7yZQZF6lN8xu41ZzF
	rB0JwPQRRT0JL4RJXQ05ZW12e81aKF4WBprio/3HQITuJBWAQ==
X-Google-Smtp-Source: AGHT+IGYlDf+Xz6gFvbvHg+7Mk8TNFhqb5LHJUrSxJ853FDaHbi3aKQlIsQUWT9tR8k7sWykNjFhJg==
X-Received: by 2002:a05:6402:510a:b0:5d2:60d9:a2ae with SMTP id 4fb4d7f45d1cf-5d81de19afcmr122678a12.33.1734638349836;
        Thu, 19 Dec 2024 11:59:09 -0800 (PST)
Received: from localhost ([2001:4090:a244:82f5:6854:cb:184:5d19])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80675a3d2sm953164a12.16.2024.12.19.11.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 11:59:08 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Thu, 19 Dec 2024 20:57:56 +0100
Subject: [PATCH v6 5/7] arm64: dts: ti: k3-am62: Mark mcu_mcan0/1 as
 wakeup-source
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241219-topic-mcan-wakeup-source-v6-12-v6-5-1356c7f7cfda@baylibre.com>
References: <20241219-topic-mcan-wakeup-source-v6-12-v6-0-1356c7f7cfda@baylibre.com>
In-Reply-To: <20241219-topic-mcan-wakeup-source-v6-12-v6-0-1356c7f7cfda@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1069; i=msp@baylibre.com;
 h=from:subject:message-id; bh=9hRKFs2Z9paofbu+as+4aAVd9C5fh/XVAfao6kHuNUM=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNJTqr6//L3ocqJQt8MR14+vZWzlDx7cMUNDvnzjkt1Lw
 i2vtnyd2VHKwiDGwSArpshy98PCd3Vy1xdErHvkCDOHlQlkCAMXpwBMRHQuw2/WXJNXDTePmsXY
 i6R6NUUVXT9cvMnQQsMwuDRfOyIhP4qR4UKhdXb91Pbfc1f/qldn6BVTYvogYNBUfGn3/jWvV17
 5yw4A
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

mcu_mcan0 and mcu_mcan1 can be wakeup sources for the SoC. Mark them
accordingly in the devicetree.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
index 68e906796aefebc5eaaa5a231e56105a9cdd13e5..cc693be47df080e8b8dba9f1aca2cd725f4ea85f 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
@@ -160,6 +160,7 @@ mcu_mcan0: can@4e08000 {
 		clocks = <&k3_clks 188 6>, <&k3_clks 188 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source = "suspend", "poweroff";
 		status = "disabled";
 	};
 
@@ -172,6 +173,7 @@ mcu_mcan1: can@4e18000 {
 		clocks = <&k3_clks 189 6>, <&k3_clks 189 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source = "suspend", "poweroff";
 		status = "disabled";
 	};
 

-- 
2.45.2


