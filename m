Return-Path: <devicetree+bounces-8521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F17F7C87B5
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 16:19:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07FB9B20A83
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 14:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BBD219BD5;
	Fri, 13 Oct 2023 14:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="KjFBWQNB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A0B18E08
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 14:19:33 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E2F2BB;
	Fri, 13 Oct 2023 07:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=9wNEH2MA8M1s/Qr4YPOBRw250B9hQqRc12JjWQy+lKU=; b=KjFBWQNB7Dh3C35ghq7bBGStTl
	liPjFDolBJLU3aLnlbT1hWCjm2f79tkHfQk6Lb4LvLp579iML++RpV0kEiEixAYJ319qtYVDLJlmD
	rDh2vHfYNWGMdHhQbTBAhq3fr9gh4/faUPlHDgMws1fQWHbI8xvoJcvC4bA6EL5gAuDM=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:40430 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qrJ0j-0005Ve-8e; Fri, 13 Oct 2023 10:19:29 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	hvilleneuve@dimonoff.com
Cc: linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	hugo@hugovil.com
Date: Fri, 13 Oct 2023 10:19:24 -0400
Message-Id: <20231013141925.3427158-2-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231013141925.3427158-1-hugo@hugovil.com>
References: <20231013141925.3427158-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
Subject: [PATCH 1/2] dt-bindings: serial: sc16is7xx: move 'allOf' block after 'required'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

The 'allOf' block should go after the 'required' block according to DT
bindings best practices.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 .../devicetree/bindings/serial/nxp,sc16is7xx.yaml      | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.yaml b/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.yaml
index 207dae3d0ffa..5dec15b7e7c3 100644
--- a/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.yaml
+++ b/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.yaml
@@ -70,16 +70,16 @@ properties:
       minimum: 0
       maximum: 1
 
-allOf:
-  - $ref: /schemas/spi/spi-peripheral-props.yaml#
-  - $ref: /schemas/serial/serial.yaml#
-  - $ref: /schemas/serial/rs485.yaml#
-
 required:
   - compatible
   - reg
   - interrupts
 
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+  - $ref: /schemas/serial/serial.yaml#
+  - $ref: /schemas/serial/rs485.yaml#
+
 oneOf:
   - required:
       - clocks
-- 
2.39.2


