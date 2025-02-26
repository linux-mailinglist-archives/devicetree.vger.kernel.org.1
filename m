Return-Path: <devicetree+bounces-151367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBE1A458D2
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 09:50:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5E371889D15
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 08:50:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B571820CCEA;
	Wed, 26 Feb 2025 08:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="EyYxg5/J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F3EB224223
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 08:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740559814; cv=none; b=Ogj9DO8hD7EJjWHH/5CuOan0dBFasYq7bm5eDicCJTiKv1VRxqz5IY2IJFkf/JO9oLHi3OB7btS/9sUpmPEXfAzrSMKxFXW4QF2wnSGtieceuHg9+tVXo6/2PHqfjj1P1f7Y99KUpPeXUingSo5zm7LXusaPf5YKY+hcRYa0kY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740559814; c=relaxed/simple;
	bh=WlPUId918tCiSzqpohJDzvO6QUKbs6bvcrS7N3y4EEE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LAhQjT9VWVUQN1BVPx4IomW/JT6tJz7e064uAog8RehIGq1kS+nmD41NJXMTI4E1Cf9T/h1DfJvgthLFnA4CwsBiQe67bcg5YOLKq2QnIahMsEdI71orcC99Mc5q61/dqOlkNVi+NZeMk3M1iT8n8FPF6zNs3+X8X6oQ60WENJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=EyYxg5/J; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=xzjeDNF3Zm9UG754W0VlPYzIg9qdSC0/565pRQ58Zwk=; b=EyYxg5
	/Jd+d6IpDKW5lmWTU7KUmtlLamRBH+1yr24CqTq3f7iZYrdclNTyYcjd5Oh43AHs
	1zRvj6zRgKZFTzvJDbZ6gnBFSAQgq6tI3KOhtQ32tF/VNE4vkaDaQIxLHnkYjRCJ
	sow82vhMNB651YYt3x0X1ue1TfewVkqV1etqEZbsryTtPi2TfTnC4pNgK88cKyFZ
	1ireP2KiGIOQz6pcCc4pQ1jAYWANA9HhwviqsNBgYp55D9ginnwj2E8IGIVLHUVo
	3yrKhdX68VNGjofmXAj8tRmmLeK/nsmra3PuZ/tsGkDaqoT54vEy69k8723skkSN
	lEEORrfNNjLLlBtQ==
Received: (qmail 500453 invoked from network); 26 Feb 2025 09:50:05 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 26 Feb 2025 09:50:05 +0100
X-UD-Smtp-Session: l3s3148p1@ItvnqAcveK4gAwDPXxaLANR24ZQNPy5l
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 3/4] ARM: dts: at91: usb_a9263: fix wrong vendor
Date: Wed, 26 Feb 2025 09:49:38 +0100
Message-ID: <20250226084938.3436-9-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250226084938.3436-6-wsa+renesas@sang-engineering.com>
References: <20250226084938.3436-6-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The board was made by Calao, not by Atmel.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 arch/arm/boot/dts/microchip/usb_a9263.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/microchip/usb_a9263.dts b/arch/arm/boot/dts/microchip/usb_a9263.dts
index 5caf7e337009..bc85d8aaf378 100644
--- a/arch/arm/boot/dts/microchip/usb_a9263.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9263.dts
@@ -9,7 +9,7 @@
 
 / {
 	model = "Calao USB A9263";
-	compatible = "atmel,usb-a9263", "atmel,at91sam9263", "atmel,at91sam9";
+	compatible = "calao,usb-a9263", "atmel,at91sam9263", "atmel,at91sam9";
 
 	chosen {
 		bootargs = "mem=64M console=ttyS0,115200 root=/dev/mtdblock5 rw rootfstype=ubifs";
-- 
2.45.2


