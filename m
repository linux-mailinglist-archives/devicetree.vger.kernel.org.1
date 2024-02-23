Return-Path: <devicetree+bounces-45185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D4B860FCB
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 11:47:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00ECA1F211B6
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 10:47:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2511D604D0;
	Fri, 23 Feb 2024 10:47:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF815C91B
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 10:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708685252; cv=none; b=bXGaJq+Ybkm4qhrjzDUi5iD3Z6Qjsp8YA06Im+aJk84TunDIirj4OG3V5xLUBNj08Ku3DY/TlNBdItk3UDMa2kS8TJwdQ83o5P+oiKICNLaysDZQYGOHJ0VVXx614YYmxy+fYYMwutVf3D5fhWILuGWSHbJ+IwEx6VUk8ceWuLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708685252; c=relaxed/simple;
	bh=s4MMU7+jsaZJjz9oik9m7Bh8k11l3m1ojNylen52K70=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=u/Pl7fyGAYd2qsfOVCLs5WPXFrNJPYu99Tgzc7nmVjSeb1X2g6IaEjq7VmcRADxgfxiM9Apeb3pI1LQ0EbOqNVKgGRMTsuljf4RXeEIIT95viMzY3lCitGDftVb6cmAPSkp4mquITxRWxJVmAPdmNnCDaS3mp3I6qTa9wm0QOlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rdT5S-0007T7-5B; Fri, 23 Feb 2024 11:47:26 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: robh+dt@kernel.org,
	frowand.list@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de
Subject: [PATCH] of: property: lower loglevel of of_graph_get_next_endpoint
Date: Fri, 23 Feb 2024 11:47:21 +0100
Message-Id: <20240223104721.4140880-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Drivers like the tcpm.c do search for a remote endpoint on different
places to be dt-bindings compatible. The search is done on the device
itself or on the child fwnode in case it was not found the first time.

This indicates that not finding the remote endpoint at the first try is
a valid use-case and should not cause an error printing.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi,

I'm not 100% certain if this is the correct place but if our platform
follows the dt-bindings we receive

| OF: graph: no port node found in /soc@0/bus@30800000/i2c@30a30000/tcpc@50

a few times because of the below pr_err() and EPROBE_DEFER.

Regards,
  Marco

 drivers/of/property.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 641a40cf5cf3..155df04a9512 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -665,7 +665,7 @@ struct device_node *of_graph_get_next_endpoint(const struct device_node *parent,
 		of_node_put(node);
 
 		if (!port) {
-			pr_err("graph: no port node found in %pOF\n", parent);
+			pr_notice("graph: no port node found in %pOF\n", parent);
 			return NULL;
 		}
 	} else {
-- 
2.39.2


