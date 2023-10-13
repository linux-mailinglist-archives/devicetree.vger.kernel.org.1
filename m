Return-Path: <devicetree+bounces-8522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B67797C87B6
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 16:19:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 55ABAB20A1D
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 14:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F1DB19BDC;
	Fri, 13 Oct 2023 14:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="LynlOPyJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CDB918E3B
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 14:19:34 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 728F6BE;
	Fri, 13 Oct 2023 07:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=iQgc8ugoV+cWytBNeAfWc+zsoe0xTQmmxE4CSL1oZV4=; b=LynlOPyJLi2iPH8rD2ayaq6Uww
	Zs778MjaKr+WCdxwgB/rn+BIvJgtLBJP9h6n+GE1Q0JmFSsfTeAfVrnT4kUJ3OgXrG9VZKUX1IP0U
	YiapD9tXhpsP2vf/TI46iWW4JayTBYfWKFANQj/R1VKW88sESy9fRurD9X9JM6jxMn2U=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:40430 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qrJ0k-0005Ve-El; Fri, 13 Oct 2023 10:19:31 -0400
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
Date: Fri, 13 Oct 2023 10:19:25 -0400
Message-Id: <20231013141925.3427158-3-hugo@hugovil.com>
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
Subject: [PATCH 2/2] dt-bindings: serial: sc16is7xx: remove 'clock-frequency' property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

The 'clock-frequency' property is supported but mainly in ACPI-based
configurations, for example.

This property has therefore no place in the sc16is7xx YAML binding.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 .../devicetree/bindings/serial/nxp,sc16is7xx.yaml  | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.yaml b/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.yaml
index 5dec15b7e7c3..5050176e8b80 100644
--- a/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.yaml
+++ b/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.yaml
@@ -28,13 +28,6 @@ properties:
   clocks:
     maxItems: 1
 
-  clock-frequency:
-    description:
-      When there is no clock provider visible to the platform, this
-      is the source crystal or external clock frequency for the IC in Hz.
-    minimum: 1
-    maximum: 80000000
-
   gpio-controller: true
 
   "#gpio-cells":
@@ -74,18 +67,13 @@ required:
   - compatible
   - reg
   - interrupts
+  - clocks
 
 allOf:
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
   - $ref: /schemas/serial/serial.yaml#
   - $ref: /schemas/serial/rs485.yaml#
 
-oneOf:
-  - required:
-      - clocks
-  - required:
-      - clock-frequency
-
 unevaluatedProperties: false
 
 examples:
-- 
2.39.2


