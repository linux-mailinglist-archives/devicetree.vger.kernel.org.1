Return-Path: <devicetree+bounces-1820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 608B57A8814
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:20:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1ACFB282512
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 311263B7AC;
	Wed, 20 Sep 2023 15:20:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5146C3B78C
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:20:24 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D73E1A3;
	Wed, 20 Sep 2023 08:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=r8HOyZrFylpADN6kIAcsYM4Dj9Wj63S1uN+Rn+MZbHU=; b=qChrI1ssVNXGOANauihMgDmiJR
	40kdHfuVJaerR3Bj1PgbADwQXjm517yN/tQU7VyRf09dAwZ5i4FZqIonDgvKf8wjKw5KXMcKvP4E6
	4j/7HuqMMHD5jJq3RG1IeSVg54KXEb0EVlDmIqFG8SLfeXDJfZ9tOxGSrz+UJBwXfkoY=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:43190 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qiyzz-0008Co-Hk; Wed, 20 Sep 2023 11:20:20 -0400
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
Date: Wed, 20 Sep 2023 11:20:13 -0400
Message-Id: <20230920152015.1376838-3-hugo@hugovil.com>
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
Subject: [PATCH 2/4] serial: sc16is7xx: recognize "nxp,irda-mode-ports" DT property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Vendor prefix "nxp," will be added in an upcoming commit to DT binding
property "irda-mode-ports".

Prepare to recognize this new property "nxp,irda-mode-ports" and
retain backward compatibility with old DTBs by falling back to
"irda-mode-ports" when needed.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 drivers/tty/serial/sc16is7xx.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/sc16is7xx.c b/drivers/tty/serial/sc16is7xx.c
index db2bb1c0d36c..b0154e901358 100644
--- a/drivers/tty/serial/sc16is7xx.c
+++ b/drivers/tty/serial/sc16is7xx.c
@@ -1415,13 +1415,19 @@ static void sc16is7xx_setup_irda_ports(struct sc16is7xx_port *s)
 	int count;
 	u32 irda_port[2];
 	struct device *dev = s->p[0].port.dev;
+	const char *prop_name = "nxp,irda-mode-ports";
+
+	count = device_property_count_u32(dev, prop_name);
+	if (count < 0) {
+		/* For backward compatibility with old DTBs. */
+		prop_name = "irda-mode-ports";
+		count = device_property_count_u32(dev, prop_name);
+	}
 
-	count = device_property_count_u32(dev, "irda-mode-ports");
 	if (count < 0 || count > ARRAY_SIZE(irda_port))
 		return;
 
-	ret = device_property_read_u32_array(dev, "irda-mode-ports",
-					     irda_port, count);
+	ret = device_property_read_u32_array(dev, prop_name, irda_port, count);
 	if (ret)
 		return;
 
-- 
2.30.2


