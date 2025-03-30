Return-Path: <devicetree+bounces-161814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEDDA759F4
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 14:14:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA6BA188A67A
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 12:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 200241C3C18;
	Sun, 30 Mar 2025 12:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="UXoYVIjg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A3C13665A
	for <devicetree@vger.kernel.org>; Sun, 30 Mar 2025 12:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743336863; cv=none; b=WBB4LHxeqvSLtX6cBVfrmT8+sMy1pW7O/WBMExWQ5yeI8Zc7JNxZH63dJm9x38qgj8rHC4/2HsBTLP2b6BkGrXKEBENys33sd8h04G23iyeQeUIxVLwkHto8JRAYUd7DLGLRhDy+xdv7CKJ85STv+e+Vn3sD4wYQs/N/4PLSnMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743336863; c=relaxed/simple;
	bh=4+zXiVKNI6qPVGp6MmmLu5T+KX7rwZtOjX4d5ssYRIQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l3r/2tXWaZEWQPHuzDnQjVXHYNhEIDtSVydvxYOj6hk7FUEm6MIXJOL1zxMPh2tTHYojz8jnNWuvGRYG+I+EjUpyntzmlhwyv0+Wrd+2+D/lNIb5+nJKaOL7rmCOin1R5diVwCCEttaSBLtEQARCQYW7Q58BskCPmRRTVcB9PHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=UXoYVIjg; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=SeMBAm/2P6IyhZnTGlI8exsZftW0RddS8BxM/fztF3Y=; b=UXoYVI
	jgomgfyRfS8Ze24Num+3qtMJqRnoHUex4LstH1mGKRk6u9nhX+y55IbqNUXJfrus
	ofRy/tp6DHUDJ0TSZDXcmTiIboU7M8zcVOFwnEijP4u8B97YiVbRbwKRYypWLExc
	fO2ZM2hfqfy4wmuJejQ8nYHnZ0aAwogAxrDnkMLpzyJxS4dZjg3/S3hM6Oq5VLzu
	fp/uGFkOIS55JupglYB6wq6AdKlxByIttqH6t9Z6my8rd7vT1/BZDFel33BX1QXE
	ZLrWwgh1YZZvIvSYa3T9r8GzZNwKvxqfho6WODcLsDH8K3yAvwtW6I8OUm8w+Mfq
	vkGIrQYo5GGGOPTA==
Received: (qmail 855706 invoked from network); 30 Mar 2025 14:14:11 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 30 Mar 2025 14:14:11 +0200
X-UD-Smtp-Session: l3s3148p1@KBqyPY4x2lBtKjBa
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/5] ARM: dts: marvell: fix faulty ohci/ehci node names
Date: Sun, 30 Mar 2025 14:13:24 +0200
Message-ID: <20250330121326.9069-8-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250330121326.9069-7-wsa+renesas@sang-engineering.com>
References: <20250330121326.9069-7-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

They should be named "usb@".

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/marvell/kirkwood-db.dtsi             | 2 +-
 arch/arm/boot/dts/marvell/kirkwood-dir665.dts          | 2 +-
 arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts | 2 +-
 arch/arm/boot/dts/marvell/kirkwood.dtsi                | 2 +-
 arch/arm/boot/dts/marvell/orion5x.dtsi                 | 4 ++--
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/kirkwood-db.dtsi b/arch/arm/boot/dts/marvell/kirkwood-db.dtsi
index 6fe2e31534af..8bacaeb4f4bd 100644
--- a/arch/arm/boot/dts/marvell/kirkwood-db.dtsi
+++ b/arch/arm/boot/dts/marvell/kirkwood-db.dtsi
@@ -39,7 +39,7 @@ sata@80000 {
 			status = "okay";
 		};
 
-		ehci@50000 {
+		usb@50000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/marvell/kirkwood-dir665.dts b/arch/arm/boot/dts/marvell/kirkwood-dir665.dts
index 2f6793f794cd..36394d1ab3e2 100644
--- a/arch/arm/boot/dts/marvell/kirkwood-dir665.dts
+++ b/arch/arm/boot/dts/marvell/kirkwood-dir665.dts
@@ -129,7 +129,7 @@ i2c@11000 {
 			status = "okay";
 		};
 
-		ehci@50000 {
+		usb@50000 {
 			status = "okay";
 		};
 	};
diff --git a/arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts b/arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts
index e3b41784c876..051579fc36b8 100644
--- a/arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts
+++ b/arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts
@@ -63,7 +63,7 @@ serial@12000 {
 			status = "okay";
 		};
 
-		ehci@50000 {
+		usb@50000 {
 			status = "okay";
 		};
 	};
diff --git a/arch/arm/boot/dts/marvell/kirkwood.dtsi b/arch/arm/boot/dts/marvell/kirkwood.dtsi
index 815ef7719d13..8a1338e672b3 100644
--- a/arch/arm/boot/dts/marvell/kirkwood.dtsi
+++ b/arch/arm/boot/dts/marvell/kirkwood.dtsi
@@ -263,7 +263,7 @@ cesa: crypto@30000 {
 			status = "okay";
 		};
 
-		usb0: ehci@50000 {
+		usb0: usb@50000 {
 			compatible = "marvell,orion-ehci";
 			reg = <0x50000 0x1000>;
 			interrupts = <19>;
diff --git a/arch/arm/boot/dts/marvell/orion5x.dtsi b/arch/arm/boot/dts/marvell/orion5x.dtsi
index 2d41f5c166ee..939259c57e05 100644
--- a/arch/arm/boot/dts/marvell/orion5x.dtsi
+++ b/arch/arm/boot/dts/marvell/orion5x.dtsi
@@ -146,7 +146,7 @@ wdt: wdt@20300 {
 				status = "okay";
 			};
 
-			ehci0: ehci@50000 {
+			ehci0: usb@50000 {
 				compatible = "marvell,orion-ehci";
 				reg = <0x50000 0x1000>;
 				interrupts = <17>;
@@ -218,7 +218,7 @@ cesa: crypto@90000 {
 				status = "okay";
 			};
 
-			ehci1: ehci@a0000 {
+			ehci1: usb@a0000 {
 				compatible = "marvell,orion-ehci";
 				reg = <0xa0000 0x1000>;
 				interrupts = <12>;
-- 
2.47.2


