Return-Path: <devicetree+bounces-325615-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MEtGJMr9VGoZigAAu9opvQ
	(envelope-from <devicetree+bounces-325615-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 17:01:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E5274CB91
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 17:01:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fris.de header.s=mail header.b=skQF9Imu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325615-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325615-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=fris.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63249312AE6F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 14:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B1E943B495;
	Mon, 13 Jul 2026 14:55:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9F143900D;
	Mon, 13 Jul 2026 14:55:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783954529; cv=none; b=LcozjYk2rfl1Yx8sjqo4dzpdJp/G/W9q3F2WuY6hTWQ5zxTXkOdaZPEVDn/JJ3KcuC3SuQSCObL9JRnitcsrQWw2PTrAQQIQWQDXFS72FU+3gl+m0n3h2tgwJCPFBoJYATARD+noTw50YiI5WYrFCWU8PqfwaXNAFNePdCuJVJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783954529; c=relaxed/simple;
	bh=wKij38HGAAt7YISA6FyqC9dlADCJpzJDlZ/LQ1v14os=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ecJuhAkPvb6hktDivViqtPXok4BsrcycZvNaYWDp4azuroeHqqqRYZrN5BeaUlfPe54ymiSXNMBw9bpMA/2aQU/aoRDKOKJpsbv0wUwJ3FyUv2/oby71xNQwNZ6sC0/3sqvO9qWHlmcqHhcjcTW+SAItrntimyMEACDVkUn76pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=skQF9Imu; arc=none smtp.client-ip=116.203.77.234
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1783954517;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AWfpNOMblUSFgxMlfiBcTi/hJKFn8YKP25mru4Aw2gA=;
	b=skQF9ImuH3EaUvyvpt70hO3k391ONHcif/lrEXSUecp1IMKzBL9KNEh7DsTXllTc79a409
	qwtLbxlKx+xAV9cdI+fmwRgvOE1bPfg3n9ISPVowyIu8yMrbvlBX+IU3bD1bapG5qdggI+
	/V3wNb3eqgdOzZKzVzSaSlExecTsw/qh1OpgLHmNMa8hsEqI8qMUQ8ffbS8CnpfawFi2LW
	1u2lB9OKBDOGhyuRLq8tQLJstNHAScxko9T+PDLdiXiAT0uSoNGQYkRXlc/IJVWF31/z9N
	aCOrNIr9S+99q46WGQqmCE3JX5cY+I/4HeWwnDTW7+/otXhTUkVzEhjuh8ji0w==
Date: Mon, 13 Jul 2026 16:53:42 +0200
Subject: [PATCH v2 06/10] nvmem: imx-ocotp-ele: Use __free(kfree) in
 imx_ocotp_reg_read()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260713-upstreaming-next-20260609-imx-ocotp-ele-v2-6-b8266d93514b@kontron.de>
References: <20260713-upstreaming-next-20260609-imx-ocotp-ele-v2-0-b8266d93514b@kontron.de>
In-Reply-To: <20260713-upstreaming-next-20260609-imx-ocotp-ele-v2-0-b8266d93514b@kontron.de>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>, 
 Pankaj Gupta <pankaj.gupta@nxp.com>, 
 "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Frieder Schrempf <frieder.schrempf@kontron.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1174;
 i=frieder.schrempf@kontron.de; h=from:subject:message-id;
 bh=tw7aokEcvh90MWTeMqjklR+YyN0xvrsJL5lNb7B2Txg=;
 b=owGbwMvMwCWWWSatKlDTJMZ4Wi2JISvkTxDz99krF/51zTb/Fn5ixo5NZ4807/iwK+NWbfqxT
 Ce2iqU6HaUsDGJcDLJiiixS/Bavbc1ifeSPVUfBzGFlAhnCwMUpABNR6GVkOBPRU7P49vM/jnXC
 HVuWMoedvHvfSznMZKOTfuuv+1Z5Dgz/Aw1CwvaelzvYxxXxWOvOs5WB/CKh8vUif6MvaYcVO4T
 xAwA=
X-Developer-Key: i=frieder.schrempf@kontron.de; a=openpgp;
 fpr=1A0F38EB3D365D4C1FC67B5A69761B25107C8216
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:pankaj.gupta@nxp.com,m:peng.fan@oss.nxp.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:frieder.schrempf@kontron.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,oss.nxp.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-325615-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fris.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28E5274CB91

From: Frieder Schrempf <frieder.schrempf@kontron.de>

This is useful to make sure the buffer is always freed when
its scope ends and makes the code slightly easier to read.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 drivers/nvmem/imx-ocotp-ele.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index 9d3f94e35508..47ee6bd176a3 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -5,6 +5,7 @@
  * Copyright 2023 NXP
  */
 
+#include <linux/cleanup.h>
 #include <linux/device.h>
 #include <linux/io.h>
 #include <linux/module.h>
@@ -68,10 +69,10 @@ static int imx_ocotp_reg_read(void *context, unsigned int offset, void *val, siz
 {
 	struct imx_ocotp_priv *priv = context;
 	void __iomem *reg = priv->base + priv->data->reg_off;
+	void *p __free(kfree) = NULL;
 	u32 count, index, num_bytes;
 	enum fuse_type type;
 	u32 *buf;
-	void *p;
 	int i;
 	u8 skipbytes;
 
@@ -108,8 +109,6 @@ static int imx_ocotp_reg_read(void *context, unsigned int offset, void *val, siz
 
 	mutex_unlock(&priv->lock);
 
-	kfree(p);
-
 	return 0;
 };
 

-- 
2.55.0


