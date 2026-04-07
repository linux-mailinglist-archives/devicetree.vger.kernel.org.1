Return-Path: <devicetree+bounces-285493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKWJKw5z1WlC6gcAu9opvQ
	(envelope-from <devicetree+bounces-285493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 23:11:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7363B4DE7
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 23:11:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A65DF3016B23
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 21:11:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4439E37B41E;
	Tue,  7 Apr 2026 21:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="Wu/ghMSG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC34D37BE6D;
	Tue,  7 Apr 2026 21:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775596294; cv=none; b=IeD3cAQHPYIiFnImUJ+9APFud6eS75gBAHVeWcy2x/DPXNTu6FDJdTV3bSpuIYizwtTry1Uo8lenQd9vX/XSfMgYwyg1yedQuuIJlWaYx/x3rCN3ySMFQ20NVvDbTvdccqI16crvMdH4sNR/4CT8wfynNEEsdAiGuLA60m0dbnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775596294; c=relaxed/simple;
	bh=jVSsa70hAx2ukhvlNqCo93OaU4T2v9FKvKIhloziMs4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NtOD/CnnAyOJOKKHrG9WpFoHF0Z2fI5E48mqVim2rZ9ogxRerlnza727pfSPa5gxw8/t/2Qz9UsnkL4cCP6W9dks0hQPykJ5cBOTH5VZ0xnpR4mf4BZy9z8t77ELTYby7dTp/mRe6PIzaNY5Tyi/IPtpVCHyKoRPYUxzmRevocs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=Wu/ghMSG; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 88C90113375;
	Tue,  7 Apr 2026 23:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1775596290; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=GqxEylt11BTxDqsRfRfjr99v4nY1Ctb11xtDHijvoNk=;
	b=Wu/ghMSGhHuYCCbcqWK+V/2o+790KG1PluAXz5yv71PWcaScJDQcklalHfWp8qjMRFc3Ds
	mN9KUTI28MkgsZ5qPUpg5g3H/vLitrsQDhWcwSj6z48Fyh27/94nrmq9BvNvdFhCGmcDkB
	oDViCRsi5Gl3SGmBAX8pv+Gny/ZwXqf3jAfLwMC5QIUw+yGUkqFgeax814YY2//0Sk+xyv
	lm3aPokbIbsSx3ob1mX3Aqz2G5u1AGOttoclJ2icUuGQhtTimhdETnzAoIa9qy0cG2JjPG
	pBFOL7YODWg4Bs/HOElX2Sk52gvM7Jm4nQl/+oSQKExGhZBOrTf4ExMgPstoLg==
From: Marek Vasut <marex@nabladev.com>
To: linux-clk@vger.kernel.org
Cc: Marek Vasut <marex@nabladev.com>,
	Brian Masney <bmasney@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Michael Walle <michael@walle.cc>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/6] clk: fsl-sai: Sort the headers
Date: Tue,  7 Apr 2026 23:09:59 +0200
Message-ID: <20260407211123.77602-2-marex@nabladev.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260407211123.77602-1-marex@nabladev.com>
References: <20260407211123.77602-1-marex@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285493-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nabladev.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nabladev.com:dkim,nabladev.com:email,nabladev.com:mid,baylibre.com:email]
X-Rspamd-Queue-Id: AB7363B4DE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Sort the headers. No functional change.

Reviewed-by: Brian Masney <bmasney@redhat.com>
Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Brian Masney <bmasney@redhat.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Michael Walle <michael@walle.cc>
Cc: Rob Herring <robh@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-clk@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
V4: New patch
V5: - Reorder this into 2/6 position
    - Add RB from Brian
---
 drivers/clk/clk-fsl-sai.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-fsl-sai.c b/drivers/clk/clk-fsl-sai.c
index cba45e07562da..c59ddd519f9f5 100644
--- a/drivers/clk/clk-fsl-sai.c
+++ b/drivers/clk/clk-fsl-sai.c
@@ -5,12 +5,12 @@
  * Copyright 2020 Michael Walle <michael@walle.cc>
  */
 
-#include <linux/module.h>
-#include <linux/platform_device.h>
 #include <linux/clk-provider.h>
 #include <linux/err.h>
+#include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
+#include <linux/platform_device.h>
 #include <linux/slab.h>
 
 #define I2S_CSR		0x00
-- 
2.53.0


