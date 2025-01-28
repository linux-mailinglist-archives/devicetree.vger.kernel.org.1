Return-Path: <devicetree+bounces-141481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7B5A20E68
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:21:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 508911674B0
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 16:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2199F1D8DE1;
	Tue, 28 Jan 2025 16:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="wqD/knQL"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720831D63CE;
	Tue, 28 Jan 2025 16:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738081240; cv=none; b=K/UQ4OtwxlsObT9siLWvboTNMDq6gbLQ9aqG4T8Wgh9g53fH0PQMTfAKpmw/6vyA2f3rklicbQPmVigjXEBQTnB7BqbuyFbhOJf+sDyo4lO+dwgSLz3FvF9m2XSJ/AmLnpDlzlEjpi7/3zqFFDq11YOYg6DbkEpM4E6x9wOr0no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738081240; c=relaxed/simple;
	bh=xAN7a6oWJ/faFBXINVOwCwvPImMYJ7LDRygZd/fK4Uw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=f9VbWRmEt0JpqLVgbAMH7+guXHcgv03T4fluzY3cfM6xOhBapGoWNg+hkzl6HF5gt/4P3S3YpaFDmGK6q2GwW5egf9Y8svKHFx4Mq5oY6QWHExSSR2m8dHSg2+qUhpvOGMRgorOnSQI27B1n35/TzYdgyOYFoofo47wCdSgE5CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=wqD/knQL; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1738081238; x=1769617238;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=xAN7a6oWJ/faFBXINVOwCwvPImMYJ7LDRygZd/fK4Uw=;
  b=wqD/knQLIvJVy3RhNJWvCXQ/f93x8jt2tkya0dtWg696LInRaIG2ylZX
   vzXqw9mIhcyuHuGWy1Nju1GErwqBG5Rm0WjCIhbHQNSXtPijGSXbGHCZh
   /7YoxNtxeVyq9bQvjokdoBPEYVb3O+zCgDgOaWwIT0juQvY1ocX9pFGGO
   cXljU0Pg7n4Jl40SibLKk21TMj8tF3axkbeMC4yOsz7qxcSnPJLgmPdGV
   PliVl3PRjrkEb4saRrF3q0HI7MNsyZJ3nLraosV49Dz6JVYLVXr0m/zj6
   oSAV7QR9g+Ez2ZfFADie6BEsQSfRT1OaA0hfRrMLR7xHaNaAK/2bHZSoc
   w==;
X-CSE-ConnectionGUID: rTeHIQwwTUqu/R9nCe6mbA==
X-CSE-MsgGUID: lHmB7LlbQNOu07BKr2GUHQ==
X-IronPort-AV: E=Sophos;i="6.13,241,1732604400"; 
   d="scan'208";a="40982601"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 28 Jan 2025 09:19:30 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 28 Jan 2025 09:19:23 -0700
Received: from ROB-ULT-M76677.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Tue, 28 Jan 2025 09:19:20 -0700
From: Andrei Simion <andrei.simion@microchip.com>
To: <claudiu.beznea@tuxon.dev>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <broonie@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrei Simion <andrei.simion@microchip.com>
Subject: [PATCH 2/2] MAINTAINERS: Update the documentation file supported for MICROCHIP SSC DRIVER
Date: Tue, 28 Jan 2025 18:18:45 +0200
Message-ID: <20250128161842.44541-3-andrei.simion@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250128161842.44541-1-andrei.simion@microchip.com>
References: <20250128161842.44541-1-andrei.simion@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Replace the documentation file supported after the conversion of
atmel-ssc.txt to YAML schema named atmel,at91-ssc.yaml.

Signed-off-by: Andrei Simion <andrei.simion@microchip.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 02430335012a6..113a2d17fb8bc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15633,7 +15633,7 @@ M:	Claudiu Beznea <claudiu.beznea@tuxon.dev>
 M:	Andrei Simion <andrei.simion@microchip.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Supported
-F:	Documentation/devicetree/bindings/misc/atmel-ssc.txt
+F:	Documentation/devicetree/bindings/misc/atmel,at91-ssc.yaml
 F:	drivers/misc/atmel-ssc.c
 F:	include/linux/atmel-ssc.h
 
-- 
2.34.1


