Return-Path: <devicetree+bounces-325617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wk7mHPH9VGomigAAu9opvQ
	(envelope-from <devicetree+bounces-325617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 17:02:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D745674CBB5
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 17:02:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fris.de header.s=mail header.b=cy612G6m;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325617-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325617-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=fris.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C68493135F88
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 14:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78F0343C047;
	Mon, 13 Jul 2026 14:55:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB22439350;
	Mon, 13 Jul 2026 14:55:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783954530; cv=none; b=U0mtjp34lrYk71NsZbLkQbX2X+kDyLiI5/VTnbYvh34XIZM6ssC+0ypPcwMXfxtMHsLAMhqn3Gwn1HbvLQysY0n1MeJmueQhR2M9qO1lbI8u9A/ZvG0YHWCS+vXrA5qDiQk6PY7nOYaT8G5VqMmBUkTVKgIjYg1ZGO8joN13pFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783954530; c=relaxed/simple;
	bh=lUJYw1aJYNMh+RrYSSVQv8EebyGrdkywdUc5+gHYW1o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jMh/AR6gpqnSNZed1x7s7eXQPrlG93YUkQkRj5oAGqO3Hboe/pIxO4Xfiy+54RaGkfkRVngf0spnJ/ZK8IEp+NdNhJU8r+2tM+480Ex8T7u/tHfGewq+L6SEBPpNvoP5DHZ1xI1yx2FWHqkKleNYdQmyX0NVe97gsxd6G8AtwvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=cy612G6m; arc=none smtp.client-ip=116.203.77.234
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1783954517;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YgkBtP6nNzonijjkoBKV0QVOrecMeEewwoCV4e78j/k=;
	b=cy612G6mkIdyCHYsmhkwC5l3iizszjXW3nBfrTL8lKZJiznEZuVc3GN2ODf71dK0upsQCH
	b+Q/Xh+aH2pjmx5uVFRPLxOxTCaYgsPf5HslxFXSAqoDbNn3zp6nFDHpCC7scPV8Gmx4fv
	WMlWQnpOD1n88XRqV6RQD366u9viIP6y+7WACDBYZRanCFOG2r6M0/YkabZeXEejHSLGIt
	lONh4pMm+MsdUvz4GuIXKa7yUru4dYqER18pizFbScCU5/ihLUjOICCIdV5jMHb75GJgn7
	dMESIJs9ICaJwQYbon2nTMXOM28h5dkMqeGTOlGt0pQCXG7zRXCgB3G/IYt8lA==
Date: Mon, 13 Jul 2026 16:53:41 +0200
Subject: [PATCH v2 05/10] nvmem: imx-ocotp-ele: Remove device-specific
 reg_read()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260713-upstreaming-next-20260609-imx-ocotp-ele-v2-5-b8266d93514b@kontron.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1858;
 i=frieder.schrempf@kontron.de; h=from:subject:message-id;
 bh=tzG445aZESnsh+ntaPiN9Hp1gZDznh/2L9SQGlPLcAE=;
 b=owGbwMvMwCWWWSatKlDTJMZ4Wi2JISvkT2D2q6lLN9lMMXtwS4bx5F573sayVX/SlI4GX3p/3
 q1Bmvd/RykLgxgXg6yYIosUv8VrW7NYH/lj1VEwc1iZQIYwcHEKwESEzzIydHBPdqzc4Lgw7ti3
 Msb5Uv3KLdt3nP4dPS+oMOzWhXi9Jwz/639N9FwUwPqjLFb7YYebg69TVvq5vhNa1jpcF27E3Z/
 PCwA=
X-Developer-Key: i=frieder.schrempf@kontron.de; a=openpgp;
 fpr=1A0F38EB3D365D4C1FC67B5A69761B25107C8216
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
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
	TAGGED_FROM(0.00)[bounces-325617-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,kontron.de:email,kontron.de:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D745674CBB5

From: Frieder Schrempf <frieder.schrempf@kontron.de>

We only have a single implementation of the read hook. There is no
need to store it in the device data.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 drivers/nvmem/imx-ocotp-ele.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index dadec19ca252..9d3f94e35508 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -33,7 +33,6 @@ struct ocotp_devtype_data {
 	u32 size;
 	u32 num_entry;
 	u32 flag;
-	nvmem_reg_read_t reg_read;
 	const struct nvmem_keepout *keepout;
 	unsigned int nkeepout;
 	struct ocotp_map_entry entry[];
@@ -158,7 +157,7 @@ static int imx_ele_ocotp_probe(struct platform_device *pdev)
 	priv->config.id = NVMEM_DEVID_AUTO;
 	priv->config.owner = THIS_MODULE;
 	priv->config.size = priv->data->size;
-	priv->config.reg_read = priv->data->reg_read;
+	priv->config.reg_read = imx_ocotp_reg_read;
 	priv->config.word_size = 1;
 	priv->config.stride = 1;
 	priv->config.priv = priv;
@@ -190,7 +189,6 @@ static const struct nvmem_keepout imx93_ocotp_keepout[] = {
 
 static const struct ocotp_devtype_data imx93_ocotp_data = {
 	.reg_off = 0x8000,
-	.reg_read = imx_ocotp_reg_read,
 	.size = 2048,
 	.num_entry = 6,
 	.entry = {
@@ -207,7 +205,6 @@ static const struct ocotp_devtype_data imx93_ocotp_data = {
 
 static const struct ocotp_devtype_data imx94_ocotp_data = {
 	.reg_off = 0x8000,
-	.reg_read = imx_ocotp_reg_read,
 	.size = 3296, /* 103 Banks */
 	.num_entry = 10,
 	.entry = {
@@ -226,7 +223,6 @@ static const struct ocotp_devtype_data imx94_ocotp_data = {
 
 static const struct ocotp_devtype_data imx95_ocotp_data = {
 	.reg_off = 0x8000,
-	.reg_read = imx_ocotp_reg_read,
 	.size = 2048,
 	.num_entry = 12,
 	.entry = {

-- 
2.55.0


