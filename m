Return-Path: <devicetree+bounces-162697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C69A79715
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 23:05:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67CEE3B215E
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 21:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 194F81C863D;
	Wed,  2 Apr 2025 21:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="PSBULvXl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2602C19ABB6
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 21:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743627905; cv=none; b=D3JRNfVRRKvzc/4KbinLuXq4cpmrHnBhZBLcOtKq1xaoAhpaPBDXXZVec4ys+55Ed09c0K0ae/vneku3R2bIQnrXFAgT2K0Wf31yPmjXhuiLQzik7CU6SNuXXn7L4T1t6avrkiqj3nAJHvDwEmtjnIPP5OzrrIHOfJO6EVZrErg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743627905; c=relaxed/simple;
	bh=HmOqAWqBpT8cvwROJuyU7TZW/BuwfHAh6NiiyQXu2+M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NcJCIr4R/llL7tsf20j7xnF57c/zXPfha66ONkTQx53BJicox0BoAGz0k5QKGzgvQWTR4JUecLWT8W+uBJ2u6IVHU+Nzscry3fyelyk4oiJMGFXkLcybjhibUp32no5FL5z7OmLUj6HopgXMpTbSo9c2E8yDvHhMjeWc6JKTzsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=PSBULvXl; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=IRwWJoTb/zci8n
	pexEk/JQXCmlXQAAICaqugGRSZGLQ=; b=PSBULvXla3ymlhxKKqzh79nh06VdmF
	TfcJffZliMTlmAGW91bDGyE5sskFhf9tQ6z86UCDsC4GEvlI4h7xMMTtPKots9lw
	1p1Mqx7jzOJXC4tRjawrwAdb9L9MYCEvHRcW2OYu8CK81llvV/EdL9MNoBZJJhQ2
	NhFpZ6XvXKlgF/seGH54i6ROtT/qRN4HtQaATKEhiykk9SR71HKZh/MXowlLVs0y
	sE/L0YDwwy8k5/FBxm/bKMQ8o3bw7i/M8oxTXujr0ykDTflqKm0SE+cVd3gm665b
	bKPnPvHUc7UZ6PTBwnvuVs2wd8+ngNwl/4ueH+2iR8aIfc+ycIEHvwCQ==
Received: (qmail 2136986 invoked from network); 2 Apr 2025 23:05:00 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 2 Apr 2025 23:05:00 +0200
X-UD-Smtp-Session: l3s3148p1@MJagAdIxSpgujnsv
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Boris Brezillon <bbrezillon@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: at91: at91sam9263: fix NAND chip selects
Date: Wed,  2 Apr 2025 23:04:46 +0200
Message-ID: <20250402210446.5972-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

NAND did not work on my USB-A9263. I discovered that the offending
commit converted the PIO bank for chip selects wrongly, so all A9263
boards need to be fixed.

Fixes: 1004a2977bdc ("ARM: dts: at91: Switch to the new NAND bindings")
Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/at91sam9263ek.dts | 2 +-
 arch/arm/boot/dts/microchip/tny_a9263.dts     | 2 +-
 arch/arm/boot/dts/microchip/usb_a9263.dts     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/microchip/at91sam9263ek.dts b/arch/arm/boot/dts/microchip/at91sam9263ek.dts
index 471ea25296aa..93c5268a0845 100644
--- a/arch/arm/boot/dts/microchip/at91sam9263ek.dts
+++ b/arch/arm/boot/dts/microchip/at91sam9263ek.dts
@@ -152,7 +152,7 @@ nand_controller: nand-controller {
 				nand@3 {
 					reg = <0x3 0x0 0x800000>;
 					rb-gpios = <&pioA 22 GPIO_ACTIVE_HIGH>;
-					cs-gpios = <&pioA 15 GPIO_ACTIVE_HIGH>;
+					cs-gpios = <&pioD 15 GPIO_ACTIVE_HIGH>;
 					nand-bus-width = <8>;
 					nand-ecc-mode = "soft";
 					nand-on-flash-bbt;
diff --git a/arch/arm/boot/dts/microchip/tny_a9263.dts b/arch/arm/boot/dts/microchip/tny_a9263.dts
index 3dd48b3e06da..fd8244b56e05 100644
--- a/arch/arm/boot/dts/microchip/tny_a9263.dts
+++ b/arch/arm/boot/dts/microchip/tny_a9263.dts
@@ -64,7 +64,7 @@ nand_controller: nand-controller {
 				nand@3 {
 					reg = <0x3 0x0 0x800000>;
 					rb-gpios = <&pioA 22 GPIO_ACTIVE_HIGH>;
-					cs-gpios = <&pioA 15 GPIO_ACTIVE_HIGH>;
+					cs-gpios = <&pioD 15 GPIO_ACTIVE_HIGH>;
 					nand-bus-width = <8>;
 					nand-ecc-mode = "soft";
 					nand-on-flash-bbt;
diff --git a/arch/arm/boot/dts/microchip/usb_a9263.dts b/arch/arm/boot/dts/microchip/usb_a9263.dts
index 60d7936dc562..ebaf198e1bc4 100644
--- a/arch/arm/boot/dts/microchip/usb_a9263.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9263.dts
@@ -84,7 +84,7 @@ nand_controller: nand-controller {
 				nand@3 {
 					reg = <0x3 0x0 0x800000>;
 					rb-gpios = <&pioA 22 GPIO_ACTIVE_HIGH>;
-					cs-gpios = <&pioA 15 GPIO_ACTIVE_HIGH>;
+					cs-gpios = <&pioD 15 GPIO_ACTIVE_HIGH>;
 					nand-bus-width = <8>;
 					nand-ecc-mode = "soft";
 					nand-on-flash-bbt;
-- 
2.47.2


