Return-Path: <devicetree+bounces-120033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B96B59C1468
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 04:05:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA4751C21036
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 03:05:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E14581494D4;
	Fri,  8 Nov 2024 03:04:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo11.lge.com (lgeamrelo12.lge.com [156.147.23.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63641CFBC
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 03:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731035099; cv=none; b=gsg+AHZvv7vxTUCroFSPXxUHIZtQD1BmDk1JoJWDNfzbM/y9/pw4uXaLnzNSzuHyFPzVjjTw9Z4xx0gLt7nUuJi7JYxopZsgAp6Txq2Zcm5saeeQ7jiGNs3sjhmp+X8Tngx8jpe1m0uVGx1URKVHQmQGffYBiwBkmlfuqTNNbEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731035099; c=relaxed/simple;
	bh=irY7N4XgLzbsh89KzfS8ChgO9E/eqWRqoWagU/0HZ4o=;
	h=From:To:Cc:Subject:Date:Message-Id; b=ZnhNf8h1Zvh15qBwHEAHUTs/yfYOVj6VR5//nl8g0uybia7Y5h0eFFg/Ko5mZ0qpf/rN7yhDixCNawcEFVaXqQq41BXdx1s2ZztuBvAE20GmPRqB9zroOK4ZOIa0EXHUXbG+qDlC+aua6GO48w5PUhrYSjg2bXVyfjlNy9Ot7pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgeamrelo02.lge.com) (156.147.1.126)
	by 156.147.23.52 with ESMTP; 8 Nov 2024 11:34:53 +0900
X-Original-SENDERIP: 156.147.1.126
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO localhost.localdomain) (10.178.31.96)
	by 156.147.1.126 with ESMTP; 8 Nov 2024 11:34:53 +0900
X-Original-SENDERIP: 10.178.31.96
X-Original-MAILFROM: chanho.min@lge.com
From: Chanho Min <chanho.min@lge.com>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: gunho.lee@lge.com,
	Chanho Min <chanho.min@lge.com>
Subject: [PATCH] of/irq: Fix a missed udpate of out_irq->np
Date: Fri,  8 Nov 2024 11:34:40 +0900
Message-Id: <20241108023440.29509-1-chanho.min@lge.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Since commit 935df1bd40d4 ("of/irq: Factor out parsing of interrupt-map parent
phandle+args from of_irq_parse_raw()"), An interrupt tree without
an interrupt-map is not updated to the parent interrupt and it causes the irq
domain not to be found in some out-of-tree device-tree.

Fixes: 935df1bd40d4 ("of/irq: Factor out parsing of interrupt-map parent phandle+args from of_irq_parse_raw()")

Signed-off-by: Chanho Min <chanho.min@lge.com>
---
 drivers/of/irq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index 8fd63100ba8f..3fa3c833e2dc 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -315,6 +315,7 @@ int of_irq_parse_raw(const __be32 *addr, struct of_phandle_args *out_irq)
 
 	skiplevel:
 		/* Iterate again with new parent */
+		out_irq->np = newpar;
 		pr_debug(" -> new parent: %pOF\n", newpar);
 		of_node_put(ipar);
 		ipar = newpar;
-- 
2.17.1


