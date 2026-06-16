Return-Path: <devicetree+bounces-312510-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3CQkKqg6MWr2eQUAu9opvQ
	(envelope-from <devicetree+bounces-312510-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:59:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 247D568F07A
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:59:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fris.de header.s=mail header.b=MGiC63X2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312510-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312510-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=fris.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1314730C4A63
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 11:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6D5C449ED2;
	Tue, 16 Jun 2026 11:54:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692B543E498;
	Tue, 16 Jun 2026 11:54:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781610845; cv=none; b=kS6YItrA3xypxQnvNSSkMTHr7zRpg3nG5Cc3QNo+T5GM/UXtqauP7Zig1GSlcCiiMK65kXPzAA4ptzJEAeBXvt8DqnIMFFoMMrX96nK5qZhb8gpsYsr8qJ33GXPAO40iGtfmyBPg48HlD6RZCdarq2XlIkYBvINPRBB1P3WKPWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781610845; c=relaxed/simple;
	bh=dzigCOqiMURBi8LC/kIrP5zqPphjMRdKmAZ3IPtL7zE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o2Hf9mkLkC65PZR8Mk35SviL0yNRB6/J0UCgCoD5iUyOSNJwGsSlkaDOPLdw9NBMUmkGrY5rNYRIPa6BkuClSmnOQvShw+whNgI79NEWZf5ewQBIR3zKtWCB4AE9xs4ZSY3PFvKkOoU/SL6PRXd+hIxXKxg3xgIOoPxghnlZ/+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=MGiC63X2; arc=none smtp.client-ip=116.203.77.234
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1781610840;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Sn0zkwxkjcRi0kyDysBzGc2+An+WKtTOTF/+Ns6aFqU=;
	b=MGiC63X2+bZdNcFOfkDCrx75L8mzz69LVegKwsNG+ITRqBcPTn9MO+NaFE10G090+ahEl+
	cFP9swYdyAxmSTfistzPDTGDFYyEcQPnK1C7Fj0K4386AUALDx8dtq0MKI3KcdNFJ+NtzI
	kdt/ixno+Wm8AIGTQx8Q4JyMMib9te6H5hJQtLvCEV3E++Al83vWPX4r2w3syyrXlNPYIa
	lA4CrSd0I8mr+2wrT5rUYwnKfyrqy6xKPnm+Oz9uhCuEdmg4EQE7MG/iSNSf8AdC0o+OCH
	oXeSE/hEIWfn5kxO67BP4DLpuC8c62xJXLQ8lyG5OznfNaYusqQfi/PraS0/Fg==
Date: Tue, 16 Jun 2026 13:52:21 +0200
Subject: [PATCH 6/9] nvmem: imx-ocotp-ele: Support the ELE API
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-6-cb7f3698c3e6@kontron.de>
References: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-0-cb7f3698c3e6@kontron.de>
In-Reply-To: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-0-cb7f3698c3e6@kontron.de>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Frieder Schrempf <frieder.schrempf@kontron.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=5166;
 i=frieder.schrempf@kontron.de; h=from:subject:message-id;
 bh=SX9+KRWQlN1Se+mN/BgGpZMbgHYrQ4jT0MVK0wYHiOA=;
 b=owGbwMvMwCWWWSatKlDTJMZ4Wi2JIcvQMvR+Vu/5CRsaZCcKMq6bY7js47tH+XHa8756fP1iI
 TzZvSO0o5SFQYyLQVZMkUWK3+K1rVmsj/yx6iiYOaxMIEMYuDgFYCJ25YwME9SiWpX/14cyOIhq
 P3+yfn7gx6kXVnMuEFu72dv6nIr0dIb/IclM86PLTl3OXrtpz5+8R+9X7BeaufSmclKV05YFU9h
 luAA=
X-Developer-Key: i=frieder.schrempf@kontron.de; a=openpgp;
 fpr=1A0F38EB3D365D4C1FC67B5A69761B25107C8216
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:frieder.schrempf@kontron.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312510-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kontron.de:mid,kontron.de:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,fris.de:dkim,fris.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 247D568F07A

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The fuses inside the Edgelock Secure Enclave are currently not
accessed via its API but through the FSB block which provides
limited access to some fuses.

The ELE API allows us to access all fuses with read/write
permissions. Therefore use it as primary method and only fall
back to the limited FSB if the ELE API is not available.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 drivers/nvmem/imx-ocotp-ele.c | 76 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 75 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index 9d3f94e35508..92cc061b9b34 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -6,10 +6,12 @@
  */
 
 #include <linux/device.h>
+#include <linux/firmware/imx/se_api.h>
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/nvmem-provider.h>
 #include <linux/of.h>
+#include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/if_ether.h>	/* ETH_ALEN */
@@ -44,6 +46,8 @@ struct imx_ocotp_priv {
 	struct nvmem_config config;
 	struct mutex lock;
 	const struct ocotp_devtype_data *data;
+	void *se_data;
+	struct platform_device *se_dev;
 };
 
 static enum fuse_type imx_ocotp_fuse_type(void *context, u32 index)
@@ -72,6 +76,7 @@ static int imx_ocotp_reg_read(void *context, unsigned int offset, void *val, siz
 	enum fuse_type type;
 	u32 *buf;
 	void *p;
+	int ret;
 	int i;
 	u8 skipbytes;
 
@@ -92,6 +97,19 @@ static int imx_ocotp_reg_read(void *context, unsigned int offset, void *val, siz
 	buf = p;
 
 	for (i = index; i < (index + count); i++) {
+		/*
+		 * All fuse registers can be read via ELE. If the SE device is
+		 * available, always prefer it.
+		 */
+		if (priv->se_data) {
+			ret = imx_se_read_fuse(priv->se_data, i, buf++);
+			if (ret) {
+				mutex_unlock(&priv->lock);
+				return ret;
+			}
+			continue;
+		}
+
 		type = imx_ocotp_fuse_type(context, i);
 		if (type == FUSE_INVALID || type == FUSE_ELE) {
 			*buf++ = 0;
@@ -113,6 +131,32 @@ static int imx_ocotp_reg_read(void *context, unsigned int offset, void *val, siz
 	return 0;
 };
 
+static int imx_ocotp_reg_write(void *context, unsigned int offset, void *val, size_t bytes)
+{
+	struct imx_ocotp_priv *priv = context;
+	u32 word = offset >> 2;
+	u32 *buf = val;
+	int ret;
+
+	/* allow only writing one complete OTP word at a time */
+	if ((bytes != 4) || (offset % 4 != 0))
+		return -EINVAL;
+
+	/*
+	 * The ELE API returns an error when writing an all-zero value. As
+	 * OTP fuse bits can not be switched from 1 to 0 anyway, skip these
+	 * values.
+	 */
+	if (!*buf)
+		return 0;
+
+	mutex_lock(&priv->lock);
+	ret = imx_se_write_fuse(priv->se_data, word, *buf);
+	mutex_unlock(&priv->lock);
+
+	return ret;
+}
+
 static int imx_ocotp_cell_pp(void *context, const char *id, int index,
 			     unsigned int offset, void *data, size_t bytes)
 {
@@ -136,11 +180,18 @@ static void imx_ocotp_fixup_dt_cell_info(struct nvmem_device *nvmem,
 	cell->read_post_process = imx_ocotp_cell_pp;
 }
 
+static void imx_ocotp_put_se_dev(void *data)
+{
+	platform_device_put(data);
+}
+
 static int imx_ele_ocotp_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct imx_ocotp_priv *priv;
 	struct nvmem_device *nvmem;
+	struct device_node *np;
+	int ret;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -152,16 +203,36 @@ static int imx_ele_ocotp_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
 
+	np = of_parse_phandle(pdev->dev.of_node, "secure-enclave", 0);
+	if (!np) {
+		dev_info(&pdev->dev, "missing or invalid SE handle, using readonly FSB\n");
+	} else {
+		priv->se_dev = of_find_device_by_node(np);
+		of_node_put(np);
+		if (!priv->se_dev)
+			return dev_err_probe(&pdev->dev, -ENODEV, "failed to find SE device\n");
+
+		ret = devm_add_action_or_reset(&pdev->dev, imx_ocotp_put_se_dev,
+					       priv->se_dev);
+		if (ret)
+			return ret;
+
+		priv->se_data = platform_get_drvdata(priv->se_dev);
+		if (!priv->se_data)
+			return dev_err_probe(&pdev->dev, -EPROBE_DEFER,
+					     "SE device not ready\n");
+	}
+
 	priv->config.dev = dev;
 	priv->config.name = "ELE-OCOTP";
 	priv->config.id = NVMEM_DEVID_AUTO;
 	priv->config.owner = THIS_MODULE;
 	priv->config.size = priv->data->size;
 	priv->config.reg_read = imx_ocotp_reg_read;
+	priv->config.reg_write = imx_ocotp_reg_write;
 	priv->config.word_size = 1;
 	priv->config.stride = 1;
 	priv->config.priv = priv;
-	priv->config.read_only = true;
 	priv->config.add_legacy_fixed_of_cells = true;
 	priv->config.fixup_dt_cell_info = imx_ocotp_fixup_dt_cell_info;
 
@@ -170,6 +241,9 @@ static int imx_ele_ocotp_probe(struct platform_device *pdev)
 		priv->config.nkeepout = priv->data->nkeepout;
 	}
 
+	if (!priv->se_data)
+		priv->config.read_only = true;
+
 	mutex_init(&priv->lock);
 
 	nvmem = devm_nvmem_register(dev, &priv->config);

-- 
2.54.0


