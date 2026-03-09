Return-Path: <devicetree+bounces-272819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBtgI3ycrmldGwIAu9opvQ
	(envelope-from <devicetree+bounces-272819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:10:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7C1236CFE
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:10:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A11753027DAD
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5ED6387560;
	Mon,  9 Mar 2026 10:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="Hne3b6DA"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-227.siemens.flowmailer.net (mta-65-227.siemens.flowmailer.net [185.136.65.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1B538BF6B
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773050951; cv=none; b=Q2P+ORFmcOnSJmrhZOVWP/lfKKjVDxQt0jFkH0JPdmvKZxoX7zR7L6DuabTfVv2E6ksqkFKkZm2WpcayMhK6MBjMSQewJDacd+wfk3EEafe7UKIKnaSch0khCJBO7/ogEQcewsK6pCnx5/T8mqyjlcwEbsvTQc9OOnZiVBElTEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773050951; c=relaxed/simple;
	bh=Eagp5Ejb5uSVhOilX6Bp+PTFyYqeR/ZTFOzn3ekyRUA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HUOCBovBGGsyiV5HLRDrb4dgcMzRHqmafF3tX3q6BrdB00i42w5W1KLc+qtRY1SpH9qfKsFPAkSydA00M102zM55gV+lQf6tE6fqo/olKCDNbMwmSRl75U4pPdCByP153PFFejZ0KRgqgtj4OShBRPMdejX7LhzxUpjEAxYIIQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=Hne3b6DA; arc=none smtp.client-ip=185.136.65.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id 202603091008592e9855cbd000020774
        for <devicetree@vger.kernel.org>;
        Mon, 09 Mar 2026 11:08:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=RZC0oGY8rRbgVELeb0RF2I7S6lvyMsAod6S1xdxvL7A=;
 b=Hne3b6DAZ3NK7o4qoULldXDLZAioGXj00TLOCqWII02dWiqBeW9ksPi0pSmxSD2Y8cqUUM
 jEFdseMXYtuDX00HoVtHOUsEOLNoAxjIIETNjcPPRuvBOXCdeFdtEZ6Ls9uGwwZDOrOOeAst
 4l0I2FqgW2J/Xc4EMQvPyopa+8IWLLnLvgkvsn8pwOplo666b9/cDTdBD9zrZ07k0lVa9AFE
 Kk02DYKSt9W8zWRLgFbp7GcSjg4nOpLRPQ3oJx79is4Dal2nOibKA0bdoBKcVVEtVb/t5QOn
 7nqOIqncK0YiodNYDcST5ujYKsOYfZhVCJd8E5Ke2V8E00diV4FE2Clw==;
From: "A. Sverdlin" <alexander.sverdlin@siemens.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Andrew Davis <afd@ti.com>,
	Jayesh Choudhary <j-choudhary@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Abraham I <kishon@kernel.org>,
	Roger Quadros <rogerq@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] soc: ti: k3-socinfo: Provide reset reason information
Date: Mon,  9 Mar 2026 11:07:55 +0100
Message-ID: <20260309100800.1134701-4-alexander.sverdlin@siemens.com>
In-Reply-To: <20260309100800.1134701-1-alexander.sverdlin@siemens.com>
References: <20260309100800.1134701-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer
X-Rspamd-Queue-Id: 2E7C1236CFE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[siemens.com,reject];
	R_DKIM_ALLOW(-0.20)[siemens.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-272819-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.sverdlin@siemens.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[siemens.com:+];
	NEURAL_HAM(-0.00)[-0.990];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[siemens.com:dkim,siemens.com:email,siemens.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Add reset_reason attribute decoging the RST_SRC register present in AM64x
and later SoCs of K3 family. Textual representation of the bits was taken
from the AM62x Processors Technical Reference Manual, except the POR, which
is not signalled explicitly by the reset module.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
---
 drivers/soc/ti/k3-socinfo.c | 88 +++++++++++++++++++++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/drivers/soc/ti/k3-socinfo.c b/drivers/soc/ti/k3-socinfo.c
index 676041879eca3..3736c982fd0c8 100644
--- a/drivers/soc/ti/k3-socinfo.c
+++ b/drivers/soc/ti/k3-socinfo.c
@@ -45,6 +45,8 @@
 #define JTAG_ID_PARTNO_J722S		0xBBA0
 #define JTAG_ID_PARTNO_AM62LX		0xBBA7
 
+#define CTRL_MMR_RST_SRC		8
+
 static const struct k3_soc_id {
 	unsigned int id;
 	const char *family_name;
@@ -123,6 +125,90 @@ static const struct regmap_config k3_chipinfo_regmap_cfg = {
 	.reg_stride = 4,
 };
 
+static u32 k3_reset_source;
+static const char *const k3_reset_sources[] = {
+	[0]	= "Reset Caused by MCU Reset Pin",
+	[1]	= "Power On Reset",			/* Reserved in HW */
+	[2]	= "Main Reset Pin",
+	[4]	= "Thermal Reset",
+	[8]	= "Debug Subsystem Initiated Reset",
+	[12]	= "SMS Cold Reset",
+	[13]	= "SMS Warm Reset",
+	[16]	= "Software Warm Reset",
+	[20]	= "Software Main Warm Reset From MCU CTRL MMR",
+	[21]	= "Software Main Warm Reset from MAIN CTRL MMR",
+	[22]	= "Watchdog Initiated Reset",
+	[24]	= "Software Main Power On Reset From MCU CTRL MMR",
+	[25]	= "Software Main Power On Reset From MAIN CTRL MMR",
+	[30]	= "Reset Caused by Main ESM Error",
+	[31]	= "Reset Caused by MCU ESM Error",
+};
+
+static ssize_t reset_reason_show(struct device *dev, struct device_attribute *attr, char *buf)
+{
+	int ret, i;
+	int total = 0;
+
+	for (i = ARRAY_SIZE(k3_reset_sources); i >= 0; i--) {
+		if (!k3_reset_sources[i] || !(k3_reset_source & BIT(i)))
+			continue;
+
+		ret = sprintf(buf + total, "%s\n", k3_reset_sources[i]);
+		if (ret < 0)
+			return ret;
+		total += ret;
+		/* Note that several reset sources may be active simultaneously */
+	}
+
+	return total;
+}
+
+static DEVICE_ATTR_RO(reset_reason);
+
+static struct attribute *k3_soc_attrs[] = {
+	&dev_attr_reset_reason.attr,
+	NULL
+};
+
+ATTRIBUTE_GROUPS(k3_soc);
+
+static const struct of_device_id k3_rst_id_table[] = {
+	{
+		.compatible	= "ti,am64-rst",
+	},
+	{}
+};
+
+static void k3_reset_reason_read(struct soc_device_attribute *soc_dev_attr)
+{
+	struct device_node *node = of_find_matching_node(NULL, k3_rst_id_table);
+	struct regmap *regmap;
+
+	/* AM65x/J721E do not have similar registers */
+	if (!node)
+		return;
+
+	regmap = device_node_to_regmap(node);
+	of_node_put(node);
+	if (IS_ERR(regmap)) {
+		pr_err("Cannot obtain %s regmap\n", k3_rst_id_table[0].compatible);
+		return;
+	}
+
+	regmap_read(regmap, CTRL_MMR_RST_SRC, &k3_reset_source);
+	/*
+	 * The register is only being cleared on POR, so we have to clear reset
+	 * source of the current boot manually
+	 */
+	regmap_write(regmap, CTRL_MMR_RST_SRC, k3_reset_source);
+
+	/* Simplify the code a bit and use HW-reserved bit for POR indication */
+	if (!k3_reset_source)
+		k3_reset_source |= BIT(1);
+
+	soc_dev_attr->custom_attr_group = k3_soc_groups[0];
+}
+
 static int k3_chipinfo_probe(struct platform_device *pdev)
 {
 	struct device_node *node = pdev->dev.of_node;
@@ -183,6 +269,8 @@ static int k3_chipinfo_probe(struct platform_device *pdev)
 	of_property_read_string(node, "model", &soc_dev_attr->machine);
 	of_node_put(node);
 
+	k3_reset_reason_read(soc_dev_attr);
+
 	soc_dev = soc_device_register(soc_dev_attr);
 	if (IS_ERR(soc_dev)) {
 		ret = PTR_ERR(soc_dev);
-- 
2.52.0


