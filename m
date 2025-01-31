Return-Path: <devicetree+bounces-142133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED90A2444D
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 22:03:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E7823A139E
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 21:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 309561F2382;
	Fri, 31 Jan 2025 21:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="Li0kCzc3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230C814B092
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 21:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738357381; cv=none; b=o1baGwtkzFTTpReAGVbL0NrOxMD2V6DpwrtLARypc/Y+5D6XYtp5SxDDoavZP5rrV7/mVkUBVbVYmdkt5+A2qxDSO2at48YmE7mPb4jvoDd9ImLgl2Hx/q97cEqIaxTExWe+4gWahnryIKr3kxUfwPASIcTRBwoMuhhu4A+bb+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738357381; c=relaxed/simple;
	bh=8JwvQ6xpCok2eMtximPSW/c0wgFK98VYaxYUzjxRtEw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ld8uk4n+I0zMoYY5BYcURyTgqTTJESj1zT1T8eJpYgKdJUXcYBABYzEg0XL98U2eZWq6rLTDXZj21BfLNbqUOsdmDZccs6wwRsvH/DV9w7aZketFSApEYDkrEvgu7CjIJIab5ZTpWBGjhNxlshfPHYjrxM6FKToA7dyxmft1wDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=Li0kCzc3; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=DL4+SjpuEbgS7jYoDt1dzd0hHvwyJCsp/ut/pk/cvRY=; b=Li0kCz
	c37HjadIUaa9kXRc7n7AEaEED/Y+95ZDSxtp5ALylz70w7TWcpMswkoqcncZS85x
	QRKdyq3GtLpdN8AnJvz8Lbe6ITDRHa0FPrqldVHfmgReI1AT5gBY5hiReIRhiit2
	FXbBTi9Kp3i9fd8+Wi/rg14wbu3JvYHXeS43n6BreZ0Bzw8l5a4AoT6zEMp+Ldoe
	VBxoqiJsoFLw16JH9Pbq3giVZZNG10Mkd/LFkQQa6Rwj9zissubEmpr1Xslu56Ze
	Ze232E8mb7IiIdgdLLAeU5S2WN0EeYKh/IKmvOToLItq7zESX8kUihNueLhPkvYj
	dfufnUUwS/5cRPow==
Received: (qmail 1802151 invoked from network); 31 Jan 2025 22:02:54 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 31 Jan 2025 22:02:54 +0100
X-UD-Smtp-Session: l3s3148p1@3SXI3QYtrOLUph5e
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
Subject: [PATCH 4/4] ARM: dts: at91: usb_a9g20_lpw: use proper mmc node name
Date: Fri, 31 Jan 2025 22:02:39 +0100
Message-ID: <20250131210236.36212-10-wsa+renesas@sang-engineering.com>
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

Adhere to DT schema. Found by 'make dtbs_check'.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts b/arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts
index 19e377020d56..4d104797176c 100644
--- a/arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts
@@ -16,7 +16,7 @@ apb {
 			spi1: spi@fffcc000 {
 				cs-gpios = <&pioB 3 GPIO_ACTIVE_HIGH>;
 				status = "okay";
-				mmc-slot@0 {
+				mmc@0 {
 					compatible = "mmc-spi-slot";
 					reg = <0>;
 					voltage-ranges = <3200 3400>;
-- 
2.45.2


