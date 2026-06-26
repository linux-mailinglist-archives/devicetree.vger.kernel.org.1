Return-Path: <devicetree+bounces-315910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N7y8AoT0PWq69AgAu9opvQ
	(envelope-from <devicetree+bounces-315910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 05:39:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA0E6C9F34
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 05:39:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=richtek.com header.s=richtek header.b=sQWRgODE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315910-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315910-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=richtek.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 506793053333
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 03:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B443A1A58;
	Fri, 26 Jun 2026 03:39:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mg.richtek.com (mg.richtek.com [220.130.44.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEEA197A7D;
	Fri, 26 Jun 2026 03:39:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782445165; cv=none; b=hAazJvmz89yjPPRJx3tJayGppRalHwuG8FS9vEoO4WTy9MOh4zpsIoSXpGLkYR1NxHw7ZSmnN3IthvqoOnllKvGNzKUhL2AalHVtC7cM//nJaEomxZ4qRcst8VjNw+kSNcqNBNeAoscrsXzEldqKjNuktdnbF46SYe2LmsfALsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782445165; c=relaxed/simple;
	bh=NmYoBIbV7ERtoUiT87I6X55earemA/qx0C2nGktUedU=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nEztXwZWguPfmySq7qlVmvSWGrEhO8bjJByta0Up6pdZbvsRRAOhZZFGY4rerqVjS28GUhKIaNiLMKlSpjpLrYT+Rqenyf6ismZJPcqTu0uApPzP8cK518bFkO3fvr6U+egtJb9/PZNV7X0pu65trCeHepCtnL+j/3fXMNmx92Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=richtek.com; spf=pass smtp.mailfrom=richtek.com; dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b=sQWRgODE; arc=none smtp.client-ip=220.130.44.152
X-MailGates: (SIP:2,PASS,NONE)(compute_score:DELIVER,40,3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=richtek.com;
	s=richtek; t=1782445154;
	bh=guVY56Ym0wMJd+zQw6+01xzZ9xOFVUwEnSddoFMQdHk=; l=1767;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=sQWRgODEz3yfIrmhlfDeu0Sborb5criWwvNKdr3rWyt0Qcv39/PA6wse2XtdEtN5D
	 O7wuTBZjbrUggdmywbiMvgDaa5bn9p/TtKtWEzwjC8K6O5zc4DhtYhaIXs0h1bqsyy
	 koSlIkxTXIhPQ6dut5BWQQdVqVUiSdEYIR3Y/JfC05adKzho+5xpaj0mVtNjvznq2T
	 keQ/LfFEc/5ePneJ3gXr6/pwQrmzYxwF8QkAOUi730tnjA6Vw7Mi/44cbjfs/KPxfH
	 9YI4wWfqdP/mq+hHpl93Z5yhRdAvCjZZar2avqSdeAIrR/bCG8pXBbfhD3eBwGr1i6
	 NfLFdTYeint3A==
Received: from 192.168.10.46
	by mg.richtek.com with MailGates ESMTPS Server V6.0(1155906:1:AUTH_RELAY)
	(envelope-from <cy_huang@richtek.com>)
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256/256); Fri, 26 Jun 2026 11:38:58 +0800 (CST)
Received: from ex3.rt.l (192.168.10.46) by ex3.rt.l (192.168.10.46) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.26; Fri, 26 Jun
 2026 11:38:58 +0800
Received: from git-send.richtek.com (192.168.10.154) by ex3.rt.l
 (192.168.10.45) with Microsoft SMTP Server id 15.2.1748.26 via Frontend
 Transport; Fri, 26 Jun 2026 11:38:58 +0800
From: <cy_huang@richtek.com>
To: Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Liam
 Girdwood" <lgirdwood@gmail.com>, ChiYuan Huang <cy_huang@richtek.com>, "Yoon
 Dong Min" <dm.youn@telechips.com>, <edward_kim@richtek.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/2] regualtor: rtq2208: Initiate the default MTP_SEL state by hardware register
Date: Fri, 26 Jun 2026 11:38:53 +0800
Message-ID: <557e872a87c603a26cf91f0d4448e527afcbbae8.1782444299.git.cy_huang@richtek.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1782444299.git.cy_huang@richtek.com>
References: <cover.1782444299.git.cy_huang@richtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[richtek.com,quarantine];
	R_DKIM_ALLOW(-0.20)[richtek.com:s=richtek];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,richtek.com,telechips.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[cy_huang@richtek.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:cy_huang@richtek.com,m:dm.youn@telechips.com,m:edward_kim@richtek.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-315910-lists,devicetree=lfdr.de];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cy_huang@richtek.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[richtek.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EEA0E6C9F34

From: ChiYuan Huang <cy_huang@richtek.com>

Read the initial MTP_SEL state by hardware register to prevent the wrong
specified property value from the conflict of hardware pin assignment.

Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
---
 drivers/regulator/rtq2208-regulator.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/rtq2208-regulator.c b/drivers/regulator/rtq2208-regulator.c
index f669a562f036..7fe082def494 100644
--- a/drivers/regulator/rtq2208-regulator.c
+++ b/drivers/regulator/rtq2208-regulator.c
@@ -12,6 +12,7 @@
 #include <linux/mod_devicetable.h>
 
 /* Register */
+#define RTQ2208_REG_FSOUTB_CNTL			0x11
 #define RTQ2208_REG_GLOBAL_INT1			0x12
 #define RTQ2208_REG_FLT_RECORDBUCK_CB		0x18
 #define RTQ2208_REG_GLOBAL_INT1_MASK		0x1D
@@ -34,6 +35,7 @@
 #define RTQ2208_REG_HIDDEN1			0xFF
 
 /* Mask */
+#define RTQ2208_MTP_SEL_RO_MASK			BIT(7)
 #define RTQ2208_BUCK_NR_MTP_SEL_MASK		GENMASK(7, 0)
 #define RTQ2208_BUCK_EN_NR_MTP_SEL0_MASK	BIT(0)
 #define RTQ2208_BUCK_EN_NR_MTP_SEL1_MASK	BIT(1)
@@ -465,10 +467,13 @@ static int rtq2208_parse_regulator_dt_data(int n_regulator, const unsigned int *
 		struct rtq2208_regulator_desc *rdesc[RTQ2208_LDO_MAX], struct device *dev,
 		unsigned int ldo1_fixed, unsigned int ldo2_fixed)
 {
+	struct regmap *regmap = dev_get_regmap(dev, NULL);
 	int mtp_sel, i, idx;
 
 	/* get mtp_sel0 or mtp_sel1 */
-	mtp_sel = device_property_read_bool(dev, "richtek,mtp-sel-high");
+	mtp_sel = regmap_test_bits(regmap, RTQ2208_REG_FSOUTB_CNTL, RTQ2208_MTP_SEL_RO_MASK);
+	if (mtp_sel < 0)
+		return dev_err_probe(dev, mtp_sel, "Failed to init mtp_sel state\n");
 
 	for (i = 0; i < n_regulator; i++) {
 		idx = regulator_idx_table[i];
-- 
2.43.0


