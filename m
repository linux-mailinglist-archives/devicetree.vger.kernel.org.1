Return-Path: <devicetree+bounces-142076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FEDA2405F
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 17:26:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84D2D3A95D1
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 16:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5887B1EEA38;
	Fri, 31 Jan 2025 16:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="ehG2pi1O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3A91EE7AA
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 16:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738340786; cv=none; b=nU0eNEqzpzQtMBZUHdrdtqsfQ69k2SVfPytwTDVWAHgXxS4sWuQjeS5PM4Q8CQe4EjyoSPsW0hXOWORBQlFDpiCaI731QF6pt08IoUj3xQLGdI+wBlC0YyvYwwPe9SOhNhepmqX1RhTAb6FdtXL7orKZBL9D5xQHs3xoCxda62I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738340786; c=relaxed/simple;
	bh=AXolp5S4E5odOc05wi+4Fmq3Rt7g78zgtLcMI7WQiTI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fxdxVGfOT8Kgex3EckzW+UprUm/a9VH8f2LZTYJkJLYC0nEKoMPmXlsYGoHAi9/MAoyccarHRGyUafW+9XlmHT+4yyniIDOj0syrAF3dKDGyg2cfPqVbBFaT0wGQY4rHssUcqjsBN1xs8741GP0aGpFeJWqjNucZZhe33MKrYjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=ehG2pi1O; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=i9cXZBXvS7yT/u5Gd5r3rTLgf02jRz5YmvpnmpgTlkk=; b=ehG2pi
	1OFruMxtkMQpW7PQaGwzAiPNpN5tL2zVXUzGZctjJnvtXF6d9n6bkxNOmZ1dQkWX
	lBJlNzx3Tm9ap5NhA7QxreuCCGR5YvHaZECUjG9jo57jzsQ6OdH09WJgFHaMHDtt
	mzK/RFbCmca6fX56hkn+qsSFnW3ZMASuo47d9GnpJ6IEsv5nMLXpZSb1kAmx0R/h
	hwUFDLZOPzpoCXXL1+/CmkLH7J1pvXAIOz+97jS4tXSAdrWKsl4vYqW+e6r3MivJ
	06dzQ2k2xi2whHxyUBQaDOc8sRREMCqHl+6PE18mYhkRLf2X9KCkJfaWeXjIqUxj
	eshMJLohWcDKPHTQ==
Received: (qmail 1738766 invoked from network); 31 Jan 2025 17:26:19 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 31 Jan 2025 17:26:19 +0100
X-UD-Smtp-Session: l3s3148p1@ETOhAAMtrGbUph5e
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
Subject: [PATCH 2/2] ARM: dts: at91: calao_usb: remove heartbeat for User LEDs
Date: Fri, 31 Jan 2025 17:26:13 +0100
Message-ID: <20250131162611.33338-6-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250131162611.33338-4-wsa+renesas@sang-engineering.com>
References: <20250131162611.33338-4-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Default DTs should be minimal. It is cumbersome carrying a custom patch
disabling the heartbeat just to use the LED for own cases.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/usb_a9260_common.dtsi | 1 -
 arch/arm/boot/dts/microchip/usb_a9263.dts         | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
index 5eb844f2df9d..9672a5626cae 100644
--- a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
+++ b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
@@ -123,7 +123,6 @@ leds {
 		user_led {
 			label = "user_led";
 			gpios = <&pioB 21 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "heartbeat";
 		};
 	};
 
diff --git a/arch/arm/boot/dts/microchip/usb_a9263.dts b/arch/arm/boot/dts/microchip/usb_a9263.dts
index 45745915b2e1..ef529ec5dd6f 100644
--- a/arch/arm/boot/dts/microchip/usb_a9263.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9263.dts
@@ -151,7 +151,6 @@ leds {
 		user_led {
 			label = "user_led";
 			gpios = <&pioB 21 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "heartbeat";
 		};
 	};
 
-- 
2.45.2


