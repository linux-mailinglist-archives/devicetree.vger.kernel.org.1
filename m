Return-Path: <devicetree+bounces-121884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 852CA9C8A51
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 13:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AD8D28570F
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 12:44:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE5AC1FAC38;
	Thu, 14 Nov 2024 12:44:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [195.130.137.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBE81FAC3C
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 12:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731588283; cv=none; b=DV+l3jIp8dK12Ba+yiNW2gJQmUAJ7QFa7RzrGeVGH7AZWCCjIOxFtpfQqO/uVZJRWamkYc3xRul2ljLdOVQ6Nuk9GNmMBw8toQ3RIblwiplTc9ERuTOYkL33ISCXwJQOP9mSJRrpW/qU1vQSZIhduxL0plPGLYlU5x2HReY8+3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731588283; c=relaxed/simple;
	bh=s/PM/VQ9hwh6iiReNHCWYFkLslOMojWhBx/aZXlmtaA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=iy69WUjPYT+cg1ENF63EAE3o1Z3+xoDbROYG/bNetEqNcWSA2S6wx1qiRMGiY/PADCrcShWxfrNyQL22lO+8SBrABYQvhjdWuU0whbvZGToGEV1fPZp6mVL82CDHk1uAzq2ztX41kmX0Yctgv7UVXyX76PEjSJwnhXUuWmD72MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:ab77:b6e5:88e8:df20])
	by laurent.telenet-ops.be with cmsmtp
	id cckW2D00C0Ss59E01ckWid; Thu, 14 Nov 2024 13:44:33 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1tBZCi-0070f8-0n;
	Thu, 14 Nov 2024 13:44:30 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1tBZD4-004LPc-6M;
	Thu, 14 Nov 2024 13:44:30 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Davis <afd@ti.com>,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Dan Murphy <dmurphy@ti.com>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: leds: class-multicolor: Fix path to color definitions
Date: Thu, 14 Nov 2024 13:44:29 +0100
Message-Id: <a3c7ea92e90b77032f2e480d46418b087709286d.1731588129.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The LED color definitions have always been in
include/dt-bindings/leds/common.h in upstream.

Fixes: 5c7f8ffe741daae7 ("dt: bindings: Add multicolor class dt bindings documention")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 .../devicetree/bindings/leds/leds-class-multicolor.yaml         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/leds/leds-class-multicolor.yaml b/Documentation/devicetree/bindings/leds/leds-class-multicolor.yaml
index e850a8894758df1b..bb40bb9e036ee00e 100644
--- a/Documentation/devicetree/bindings/leds/leds-class-multicolor.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-class-multicolor.yaml
@@ -27,7 +27,7 @@ properties:
     description: |
       For multicolor LED support this property should be defined as either
       LED_COLOR_ID_RGB or LED_COLOR_ID_MULTI which can be found in
-      include/linux/leds/common.h.
+      include/dt-bindings/leds/common.h.
     enum: [ 8, 9 ]
 
 required:
-- 
2.34.1


