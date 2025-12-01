Return-Path: <devicetree+bounces-243319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B08C96C1C
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:54:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5DD04343E10
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C894F304980;
	Mon,  1 Dec 2025 10:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="g75xo7L0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay50-hz3.antispameurope.com (mx-relay50-hz3.antispameurope.com [94.100.134.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 744E13043C1
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 10:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.239
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764586385; cv=pass; b=TyJwmeAx4S922AuSCJDWW4B4dOpfEjBtCONAD9UbjkC2ig91hXpj/qMhQ/7JQJYazBKVR2S41vGKZ8f4ehTjvgFbDVkjL7FrFoa0ovYRlNfaYxs1fmTxn9d63ul+i+AfqQoUtjgU8iog5p6ijAUtBCw7IqOM+vstdfpvHL9Drco=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764586385; c=relaxed/simple;
	bh=MYMEvHemwrORDEfBe5yEvkeYTydgc31vjwDeZslgS2M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=saFzDh5Tx1yrqju6q0icPJDmDvKqc5leRn+8QeoYo3s4a5haMKV8YwM30Nf7wgQtR3mwJuqA8Kz4oArD6dfEPxUDwreV8PG8bmOKJTN4/1khk10cR9/3t4t0cJU26LU/ZTLEnJOKfHg9Qghq8ngcS+7Qwz9txvAJyDeMAmJvqqo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=g75xo7L0; arc=pass smtp.client-ip=94.100.134.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate50-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=lUdFDXOpdEHblxEFS8Klgzf9uDbkW8RYNQMN1WIjTJI=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1764586322;
 b=bs4Nr6wMV/Bk2NlhzcxwXCfO3uu9Zb4q7pHKGhA+75jVoDpcEhiU/+HYEIX1xkfxGOomJwYM
 7fJlXR02zcByjDhEhLN/MMFqhiTie8F/REMOn/kKFC4QhfghW8P+DTKkg6cy//w5VUBNuN9t2A7
 mDBXdfhquZ3nRTkoYC09wjgNKsnsq5vzRJ0vGgeAtUbGK+oEbr6LHPB4k87FUKH0G2rJlufa1yR
 1xRWZ8kcYRujFop7Z+otNThc2q19iQW86bnPEYQJ6Bg7dNrzIKxXFXoCNTyqGd4WimuCS0SVu1Q
 YEvazp4houpYzF2NIxek47F0OLEQbORKw5nZ4CWuhzu8w==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1764586322;
 b=IU86yakjVkJMvGz6x46MG3Ugjfqcbv6WFm+wdrJUbbHViCoWtHmYXvxugiDd25Q1Qv5wZjay
 RBOlXBvk5XBM7CQ8p70uJsEvTOdTMdSC3y9iBZO4YS7UaA2IBJ7NGbbL+aVvn9oIZnAqgVV71uP
 awYu/j9eL8lowOm1UYzjHZ9rQnxq67uTa+o1G+QojKnXjEj0WYohsyrU3rJBuGxcg8YlMAYe+gK
 HWWsUa8uNLnJsD+0ODzQtEQPQo1jHvaOs5r8mGf9GC3/0s7LCXpjsGAl92SGSBRHHqsLZpHVBMg
 TZZzksW6cg4dH799Yz4PHrM8gEolW1xxqnijmTsyViIjg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay50-hz3.antispameurope.com;
 Mon, 01 Dec 2025 11:52:02 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 96251CC0E92;
	Mon,  1 Dec 2025 11:51:54 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/3] irqchip/ls-extirq: Use managed resources
Date: Mon,  1 Dec 2025 11:51:41 +0100
Message-ID: <20251201105144.539450-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201105144.539450-1-alexander.stein@ew.tq-group.com>
References: <20251201105144.539450-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay50-hz3.antispameurope.com with 4dKghC0qlRz2nHk2
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:31ea3d37a4def439ed8686206906e05d
X-cloud-security:scantime:1.961
DKIM-Signature: a=rsa-sha256;
 bh=lUdFDXOpdEHblxEFS8Klgzf9uDbkW8RYNQMN1WIjTJI=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1764586321; v=1;
 b=g75xo7L0JKsP6V3wC4o6voaZHGQnv8N9G7igdoTeQo2bifSbY8rHj9NKk2znKLPZJtv7DC/p
 p/r1WH8zXzLKTl52QhAypEhUlQvdUpnLm563ftnIEF0Obv39+0Nm3SWwGF4To0YrXXL9trLYaQe
 5XL8zhCmz2PZvO9LxeZj5SHvo7Q5JTibhU2PQYH/mHRIJqkxfzFyCMi0iFyJdFqANHApuUhnaYd
 xlR/ZCMX2wojPvQ9irRKfdn+0Ekk4O6/2A+8oQQUPYNe/fXhASiS3T+hJLMHmtgTftfjt6pBvVn
 96YfAvI3NKWHD+2a/utOBkPBNgQtViNzVPI+A/OR7V5Vw==

This simplifies the error handling and probe is straight forward.
Also use dev_err_probe for even more simplification.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 drivers/irqchip/irq-ls-extirq.c | 37 ++++++++-------------------------
 1 file changed, 9 insertions(+), 28 deletions(-)

diff --git a/drivers/irqchip/irq-ls-extirq.c b/drivers/irqchip/irq-ls-extirq.c
index cb7db9ae79087..52b8b9fc17621 100644
--- a/drivers/irqchip/irq-ls-extirq.c
+++ b/drivers/irqchip/irq-ls-extirq.c
@@ -192,26 +192,17 @@ static int ls_extirq_probe(struct platform_device *pdev)
 	if (!parent_domain)
 		return dev_err_probe(dev, -EPROBE_DEFER, "Cannot find parent domain\n");
 
-	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
-	if (!priv) {
-		ret = -ENOMEM;
-		goto err_alloc_priv;
-	}
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
 
-	/*
-	 * All extirq OF nodes are under a scfg/syscon node with
-	 * the 'ranges' property
-	 */
-	priv->intpcr = of_iomap(node, 0);
-	if (!priv->intpcr) {
-		dev_err(dev, "Cannot ioremap OF node %pOF\n", node);
-		ret = -ENOMEM;
-		goto err_iomap;
-	}
+	priv->intpcr = devm_of_iomap(dev, node, 0, NULL);
+	if (!priv->intpcr)
+		return dev_err_probe(dev, -ENOMEM, "Cannot ioremap OF node %pOF\n", node);
 
 	ret = ls_extirq_parse_map(priv, node);
 	if (ret)
-		goto err_parse_map;
+		return dev_err_probe(dev, ret, "Failed to parse IRQ map\n");
 
 	priv->big_endian = of_device_is_big_endian(node->parent);
 	priv->is_ls1021a_or_ls1043a = of_device_is_compatible(node, "fsl,ls1021a-extirq") ||
@@ -220,20 +211,10 @@ static int ls_extirq_probe(struct platform_device *pdev)
 
 	domain = irq_domain_create_hierarchy(parent_domain, 0, priv->nirq, of_fwnode_handle(node),
 					     &extirq_domain_ops, priv);
-	if (!domain) {
-		ret = -ENOMEM;
-		goto err_add_hierarchy;
-	}
+	if (!domain)
+		return dev_err_probe(dev, -ENOMEM, "Failed to add IRQ domain\n");
 
 	return 0;
-
-err_add_hierarchy:
-err_parse_map:
-	iounmap(priv->intpcr);
-err_iomap:
-	kfree(priv);
-err_alloc_priv:
-	return ret;
 }
 
 static struct platform_driver ls_extirq_driver = {
-- 
2.43.0


