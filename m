Return-Path: <devicetree+bounces-135599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F8AA016EE
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 22:06:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B2E23A3A0F
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 21:06:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B8D11D63D6;
	Sat,  4 Jan 2025 21:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iinet.net.au header.i=@iinet.net.au header.b="JwgRYPNv"
X-Original-To: devicetree@vger.kernel.org
Received: from omr008.pc5.atmailcloud.com (omr008.pc5.atmailcloud.com [103.150.252.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036121D61A4;
	Sat,  4 Jan 2025 21:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.150.252.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736024784; cv=none; b=EeqEn6hjAUSQ4BAA8F/5C3cwVhu9Mi10u53DAmbZv6jy8qimTiTTYeVB+EsMnXbTw1k9x/9YfQGjmL0t3rnxZDmtjkGw45vzBmE6kitgMAzxBte1bNoTEc7h+dnbVas/gqVKxEm5eYx/pydqmTPZXuSq/k6ZEWWGc9p8f9+1SKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736024784; c=relaxed/simple;
	bh=54cHGEw1p2Mus5tYKTw9cRxqUo4Grq2DJgh4VQn03qY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uUYac0ZG/ebDo3Mbxspn/AMS5ibZJlXw8feDWp3v1rLJbenwe+A77W6Aoc4Hqf4In2idlS7EgS05+2DcLvbsca7c2+fLQPIJiog63v5Fkz2+H5zIXrG1EpOZH7X1TTJCIlaE/SffOcUZEp6W8GECLCFftvZFIMOI7BDHJlCdDao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iinet.net.au; spf=pass smtp.mailfrom=iinet.net.au; dkim=pass (2048-bit key) header.d=iinet.net.au header.i=@iinet.net.au header.b=JwgRYPNv; arc=none smtp.client-ip=103.150.252.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iinet.net.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iinet.net.au
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iinet.net.au; s=202309; h=MIME-Version:Message-Id:Date:Subject:To:From:
	content-type; bh=pYXJxV6iiSlf8HVtR83INaxMWQhu0GvbE13li2PG+Uo=; b=JwgRYPNvTf15
	7Zu091yord/vHrUVWdRYe9U7R3uKJ5sDtnxY1sEsL8AJrV3C75Z0+7HzLmhFQsgNndEZZuDfTfZr1
	h8asnSrj/J9pUCGnnKtZCt+eRUZmTduT335uy6rHEIePkQz7wza0vxTlpsyu1D1ngpz1TtZOfcH4E
	f7s4OlNt0cFHBnGcQAPCgaNL+5wGEvaP7aRH83hbLRCgQzngqlkxoCXBMOxQkqQVl8MyetRrKO2rm
	4AjGth1XIR6GxK87M/Ml+qdXK2Zg/ioigMXihF1zuBqzwG/2G3/vVbWUjzw5Q7YDYzbotmhVXjpre
	Rt971lHRyOS7noo0ptmDGQ==;
Received: from cmr-kakadu03.internal.pc5.atmailcloud.com (cmr-kakadu03.internal.pc5.atmailcloud.com [192.168.1.5]) 
	by omr.internal.pc5.atmailcloud.com (Exim/cmr-kakadu03.i-03d0382f575012431) with ESMTPS
	(envelope-from <gordoste@iinet.net.au>)
	id 1tUBLg-000000006qR-27Jr ;
	Sat, 04 Jan 2025 21:06:20 +0000
Received: from [220.233.184.101] (helo=localhost)
	 by CMR-KAKADU03.i-03d0382f575012431 with esmtpsa
	(envelope-from <gordoste@iinet.net.au>)
	id 1tUBLg-000000001QR-0Mth;
	Sat, 04 Jan 2025 21:06:20 +0000
From: Stephen Gordon <gordoste@iinet.net.au>
To: robh@kernel.org,
	saravanak@google.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Stephen Gordon <gordoste@iinet.net.au>
Subject: [PATCH 2/2] of_graph: Convert of_graph_get_next_xx to return nodes in address order
Date: Sun,  5 Jan 2025 08:05:24 +1100
Message-Id: <20250104210524.2137-3-gordoste@iinet.net.au>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250104210524.2137-1-gordoste@iinet.net.au>
References: <20250104210524.2137-1-gordoste@iinet.net.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Atmail-Id: gordoste@iinet.net.au
X-atmailcloud-spam-action: no action
X-Cm-Analysis: v=2.4 cv=HuNwGVTS c=1 sm=1 tr=0 ts=6779a2cc a=HSUqTxjWRdnMbJspRni59w==:117 a=HSUqTxjWRdnMbJspRni59w==:17 a=VdSt8ZQiCzkA:10 a=x7bEGLp0ZPQA:10 a=4jraHwQkAAAA:8 a=Sfh7EVPWXGMX6q-QJicA:9
X-Cm-Envelope: MS4xfGPD3o2Kxv4U1s7Vdamrr1O1QD3fIx2x/mJGJYaJpeikhE02CQ9sINkOqGoS3FSzLQi+LPRdLSgh44nzd1LxzvO9F8hZCX7JR8AtY+XFPV4ItK79WcDp opASY/W77S9gAWl/SuW8xfkldFLCz0yOz4J4Eo7KG/fhS06JP+gR/zOlec7NVT7u4ZTa2a9ELrzONw==
X-atmailcloud-route: unknown

Use the new of_get_next_child_by_id() function to ensure nodes are
returned in address order.

Signed-off-by: Stephen Gordon <gordoste@iinet.net.au>
---
 drivers/of/property.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 519bf9229e61..0f9bdd4b4c45 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -658,7 +658,7 @@ struct device_node *of_graph_get_next_port(const struct device_node *parent,
 	}
 
 	do {
-		prev = of_get_next_child(parent, prev);
+		prev = of_get_next_child_by_id(parent, prev);
 		if (!prev)
 			break;
 	} while (!of_node_name_eq(prev, "port"));
@@ -680,7 +680,7 @@ struct device_node *of_graph_get_next_port_endpoint(const struct device_node *po
 						    struct device_node *prev)
 {
 	while (1) {
-		prev = of_get_next_child(port, prev);
+		prev = of_get_next_child_by_id(port, prev);
 		if (!prev)
 			break;
 		if (WARN(!of_node_name_eq(prev, "endpoint"),
-- 
2.39.5


