Return-Path: <devicetree+bounces-142131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD70DA2444C
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 22:03:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 863773A21B7
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 21:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57992158535;
	Fri, 31 Jan 2025 21:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="a9gyrHwo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1FF20318
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 21:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738357377; cv=none; b=OWNvHDzYI5apESWHUUdNkHsBxLMRLWFUopWogGhDC6k1ahYB3AwbmgpjpvDwoWx3lqCngJrvnNykxxDZrxQigI4xxHNOW8ubMM5OBl4yLep+myGj6WS8+e7oNs1k+gM/ds6esN/5yPwqHaEEFgs67cEqCjbtFJv/oiMRy5R9+D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738357377; c=relaxed/simple;
	bh=8Emn62PfPEXzDvc+p5t31q9OHOAA7C7T7wahhQ1sGPo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SdzlrsUdLH56kR9YZI9v8WXJuIEm5fAFtc/LmoF6zWmYf0MMlTgfrG/xSFaHLpSvBMYa+HD3iTQ0oTewZeSjZu4MCZjZopR4eIM9WDxyUx+idp8TWSSC7FvUVq+1RjLiUKY67cb5rggU107LeGI7VcQOAg60MzqBwsUX90K9iXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=a9gyrHwo; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=0dnMWA+YuZshFWD3BrZmtv8GjkhhZbLjVNnaO5/kDcQ=; b=a9gyrH
	woOvz2v1MZgMAcqn+/+5h+pdMm95ViUIgEY2rljF6rIK2SiSa9qEHJWXsyluBTsR
	Oq9mUGvYyzg5GLIQZKSEELpVVo/xGQNT/4u+cPw2udyN2WWig3XmhZOPvaDk7Vy3
	9mA60JwDoREzf/xUDmHp10Jce3oTnm5gPDNSQZ+RAN7bLA0QzwdgO8YGHkCSclce
	sxa1noLHsaSZsSk8g7/17OJVtVR40Wkv4S0jPv7qwrwN4e7BM8c8FbZcmeG3NxFl
	5GD3Yd3jfx1BKpAgldekJgLUj/6PobVNxTY5lviknFgkWqCpsGhy8s18zgFXlULr
	CYsJZmkpUzhSIyHA==
Received: (qmail 1802004 invoked from network); 31 Jan 2025 22:02:49 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 31 Jan 2025 22:02:49 +0100
X-UD-Smtp-Session: l3s3148p1@/7p93QYtrFfUph5e
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
Subject: [PATCH 1/4] ARM: dts: at91: usb_a9263: fix wrong vendor
Date: Fri, 31 Jan 2025 22:02:36 +0100
Message-ID: <20250131210236.36212-7-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
References: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The board was made by Calao, not by Atmel.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/usb_a9263.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/microchip/usb_a9263.dts b/arch/arm/boot/dts/microchip/usb_a9263.dts
index ef529ec5dd6f..23240f2c8a16 100644
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


