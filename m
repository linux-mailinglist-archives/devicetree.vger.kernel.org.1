Return-Path: <devicetree+bounces-81222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 557C791BA21
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 10:36:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 819201C2265B
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 08:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47E2914C5B5;
	Fri, 28 Jun 2024 08:36:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4320D149C43
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 08:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719563762; cv=none; b=PCIOZdJYTpL7dhtXmeaSW+ccbBwneODNxgTo9TVZzclOceXpXP9dSFjWdtcq2FUTwosGetQ0h2ZXE0Qdb8mgjmUlppNjyYl45OK3EYs/wrsjrQUF+Rm1KnH4KmZ+2uEUSBqOCVTzIxb5hlGkLztUhwkPplbcVPw9WNAgphEBbkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719563762; c=relaxed/simple;
	bh=vH1fp++601l8m8+CpdyZVk01Rgk1uREuDmwiUBp07mM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=l2bdHYHER8gCqyHXR0Zn62JybNtRDx/wU/jypn4Tv+37STgeLMAcjVx2LI/ZTmusUOgv8s2YXf7yHUdrMxrvGODT2UiEZdEE7sT5G4m6rzWPlLyjx8b5sOxf3JfyF21U8nwElZPMYC2AvjK790Rvjeoc3zVF+NT7BA+N2BSgbDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sN75J-00079Y-Ej; Fri, 28 Jun 2024 10:35:57 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Fri, 28 Jun 2024 10:35:51 +0200
Subject: [PATCH v2 1/2] dt-bindings: input: touchscreen: exc3000: add
 EXC81W32
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240628-input-exc3000-exc81w32-v2-1-c2b21a369c05@pengutronix.de>
References: <20240628-input-exc3000-exc81w32-v2-0-c2b21a369c05@pengutronix.de>
In-Reply-To: <20240628-input-exc3000-exc81w32-v2-0-c2b21a369c05@pengutronix.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, 
 Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: b4 0.14-dev
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add compatible for EXC81W32 touchscreen controllers.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
v2: new patch, split out of driver patch
---
 Documentation/devicetree/bindings/input/touchscreen/eeti,exc3000.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/eeti,exc3000.yaml b/Documentation/devicetree/bindings/input/touchscreen/eeti,exc3000.yaml
index 9dc25d30a0a8..c299838e2680 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/eeti,exc3000.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/eeti,exc3000.yaml
@@ -18,6 +18,7 @@ properties:
       - eeti,exc3000
       - eeti,exc80h60
       - eeti,exc80h84
+      - eeti,exc81w32
   reg:
     const: 0x2a
   interrupts:

-- 
2.39.2


