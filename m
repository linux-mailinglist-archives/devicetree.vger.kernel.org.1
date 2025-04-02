Return-Path: <devicetree+bounces-162689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97656A796DB
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 22:50:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC2A23B2191
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 20:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8BA81F37BC;
	Wed,  2 Apr 2025 20:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="EBzVnqNp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB741E5B95
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 20:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743626948; cv=none; b=KF//gA3dud6fgkDId6kkXATNNroK0K5W2OhRcb0FDKXCYXgUEsu4AyvT3pj4q7wrOibKmhjDUWua1s4S8a5jXC79FUkWdhWPge01tVBpo0QEYt4WepLidNmW02AJfhIO/oYtlycZijSf9VAMSt825j+euAxUnOAj4uJWyNhW2KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743626948; c=relaxed/simple;
	bh=NB/vHRxDhFFMEwvVD9rGtwIA0YKPYhlYrPFym4SMCWA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qufceuMmjHwu3PxoxVD+BzeIMbcdGBxjTA0a5ytF8rckNZ6dXmNoJWMihmvAMT1KmEST5+0DWUsm7H9hmH7VnzpCBRRwLPIqHMk6pvBTlwmClnyZ1HrUgw7ptKvY4MsCFfRRQHEHrvMbQwvZ67u+bUtEJ+qnnRbgRQVrBNEyo5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=EBzVnqNp; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=CZC9VvPKRVEBlgzTsa7Oy41sSlv/BAQxlmUs8nA5twA=; b=EBzVnq
	Np3ujT6NMLvhJAyLG5/OCXlfpoRkrB60vdgSCVlndbpHBId3OpyjnrBDHDSi0Jxt
	OR/bZqNrStefxnvpnLSZ4oREwRP/poZ/8w5JByoqfAfgkQixpYd4lryPH+svleHs
	hwfBpcf/wdL3LcHyY8yakGodl6oD5VddgK7Kr6AtZ5ZnG3tU6qIxIUq5kheVYLYX
	D4aY0GuG5HvOVtYfbAyU+iGp9YgcVTaf2Qmpkr2Y9+J3CypoKB+QTpohgCUoYeHU
	WNGSGm4viqivjOq3LuOg0uKTyBSsiMtlIrBTOvypXY60tl4t1lN/o/dr2WWBUSOx
	NLUsfQhf9Q7rfWfw==
Received: (qmail 2132881 invoked from network); 2 Apr 2025 22:49:01 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 2 Apr 2025 22:49:01 +0200
X-UD-Smtp-Session: l3s3148p1@w0RzyNExsLwujnsv
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
Subject: [PATCH 2/4] ARM: dts: at91: usb_a9260: use 'stdout-path'
Date: Wed,  2 Apr 2025 22:48:52 +0200
Message-ID: <20250402204856.5197-3-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250402204856.5197-1-wsa+renesas@sang-engineering.com>
References: <20250402204856.5197-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Do not use the kernel command line for specifying the default serial
console.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/usb_a9260.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/microchip/usb_a9260.dts b/arch/arm/boot/dts/microchip/usb_a9260.dts
index de19904e9e91..1de2864b4cf6 100644
--- a/arch/arm/boot/dts/microchip/usb_a9260.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9260.dts
@@ -13,7 +13,8 @@ / {
 	compatible = "calao,usb-a9260", "atmel,at91sam9260", "atmel,at91sam9";
 
 	chosen {
-		bootargs = "mem=64M console=ttyS0,115200 root=/dev/mtdblock5 rw rootfstype=ubifs";
+		bootargs = "mem=64M root=/dev/mtdblock5 rw rootfstype=ubifs";
+		stdout-path = "serial0:115200n8";
 	};
 
 	ahb {
-- 
2.47.2


