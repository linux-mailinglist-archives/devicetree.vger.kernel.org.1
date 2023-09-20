Return-Path: <devicetree+bounces-1822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5B27A8818
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:21:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BE2A2825CC
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDF613B79F;
	Wed, 20 Sep 2023 15:21:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2C83B78C
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:21:00 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EB70A9;
	Wed, 20 Sep 2023 08:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=mZPLDcMaUIExqCo4DAdpXSfLndLye8GLI4DHLWOnM7c=; b=WAKkO6VscDyUqS0PqSmAgqUxgn
	6OMWzZ5mQMXzHoaUfzzW6QerSuaagmXyc0kdUhK7wmhvhnR61vZPIEGT/CfuLflFFiW154DJetJ2L
	2kqO+56nvgA3bctMQZKxKGDtYrp2tXSxEtBf9k/hUvu/IbtBXVpW2lto/54nEc1sL7rM=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:43190 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qiz0Z-0008Co-9W; Wed, 20 Sep 2023 11:20:55 -0400
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
Date: Wed, 20 Sep 2023 11:20:14 -0400
Message-Id: <20230920152015.1376838-4-hugo@hugovil.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230920152015.1376838-1-hugo@hugovil.com>
References: <20230920152015.1376838-1-hugo@hugovil.com>
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
Subject: [PATCH 3/4] dt-bindings: sc16is7xx: add vendor prefix to irda-mode-ports property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

The NXP-specific "irda-mode-ports" property lacks a proper vendor
prefix. Add "nxp," prefix to comply with DT best practises.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 .../devicetree/bindings/serial/nxp,sc16is7xx.txt          | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt b/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
index 1a7e4bff0456..d89815c5c562 100644
--- a/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
+++ b/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
@@ -21,8 +21,8 @@ Optional properties:
   the second cell is used to specify the GPIO polarity:
     0 = active high,
     1 = active low.
-- irda-mode-ports: An array that lists the indices of the port that
-		   should operate in IrDA mode.
+- nxp,irda-mode-ports: An array that lists the indices of the port that
+		       should operate in IrDA mode.
 - nxp,modem-control-line-ports: An array that lists the indices of the port that
 				should have shared GPIO lines configured as
 				modem control lines.
@@ -80,8 +80,8 @@ Optional properties:
   the second cell is used to specify the GPIO polarity:
     0 = active high,
     1 = active low.
-- irda-mode-ports: An array that lists the indices of the port that
-		   should operate in IrDA mode.
+- nxp,irda-mode-ports: An array that lists the indices of the port that
+		       should operate in IrDA mode.
 - nxp,modem-control-line-ports: An array that lists the indices of the port that
 				should have shared GPIO lines configured as
 				modem control lines.
-- 
2.30.2


