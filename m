Return-Path: <devicetree+bounces-142074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDF1A2405C
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 17:26:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 93ECF168CEA
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 16:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0A9A1EC011;
	Fri, 31 Jan 2025 16:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="KyfUpu7W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998091E9918
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 16:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738340785; cv=none; b=A20TnmSqZPkoDxOWHF5mV/+/XkrVgImXlsRecTQlT9UickPohY7Q9D47Uoh28xtpl8Wpy4eNlzbBVLkTXPH+95LGCKsRlX1C/LSMDpXEWl2Q9PYMj3jOOWmiuzbpeqLT9YK2mjr9WtHmfaaoQqlMWYEDGmB8BvjQn3y83rzi3R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738340785; c=relaxed/simple;
	bh=rHw7HaCEX4d6P6hjtYC82s48kFh9OpMOnWUHKHiWkWA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jvWEbS4gmc6Y3+QMvejmmolWV+utovXLaLG5B898/rPQ3jBpWUiERoBO1xsEUZR6tOBZIAL6wGSEm2dM9eyGLy85gMMO2Z9RVhURIKn/zmPAaYsmwJ9hAUo/2xcelFF7Y0B/V+oLFIzNmkALQueEX3BHw12kedqpY2Mj67ntB/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=KyfUpu7W; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=ixfcIAAexUl2WSfXY24foaU0s0qcPAN9Tsal26az1zc=; b=KyfUpu
	7WfYr9xPnq93SQd43N+Mvu3MMFxMVZ+huYsYTx2VXe4UeOUzf449nAx2FojFpgtf
	JMjgq375iljCpYTMhRsbnUTBpMAXAVfn6gbb4QbTmy3IS7yPIiy2VVh4FkEOxlw3
	c3emE5QJcxnkb+gdrySQMgO9VUJdnmiqM6VQCnOzNYnlGx7X8zj+1x3HzEZaPMFe
	NcFQTwFlekLzgR7SnC9tCXctjxTvxq98mnpvFOEROzZ5oB6C8wCayV2DcaE0SwR+
	KTjHqV3Fr21whlfqhCvYv/Osp/BObn1HIjEbZqQhCkP8nCyffBfKtV1ZdIpU1IXV
	XP73pF2VL0r1WUDw==
Received: (qmail 1738719 invoked from network); 31 Jan 2025 17:26:18 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 31 Jan 2025 17:26:18 +0100
X-UD-Smtp-Session: l3s3148p1@S3uSAAMtrB/Uph5e
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
Subject: [PATCH 1/2] ARM: dts: at91: calao_usb: fix wrong polarity for LED
Date: Fri, 31 Jan 2025 17:26:12 +0100
Message-ID: <20250131162611.33338-5-wsa+renesas@sang-engineering.com>
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

It is active high per testing via sysfs. Also matches the very similar
usb_a9263 variant.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/usb_a9260_common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
index 8744b5f6f792..5eb844f2df9d 100644
--- a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
+++ b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
@@ -122,7 +122,7 @@ leds {
 
 		user_led {
 			label = "user_led";
-			gpios = <&pioB 21 GPIO_ACTIVE_LOW>;
+			gpios = <&pioB 21 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
 	};
-- 
2.45.2


