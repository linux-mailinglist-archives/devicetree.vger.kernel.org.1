Return-Path: <devicetree+bounces-315453-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qj76AqiQPGqepQgAu9opvQ
	(envelope-from <devicetree+bounces-315453-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 04:21:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A716C25B3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 04:21:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=richtek.com header.s=richtek header.b=fmg56nby;
	dkim=pass header.d=richtek.com header.s=richtek header.b="4M7vkwb/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315453-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315453-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=richtek.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B2F430038CF
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 02:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8717E3AA1B0;
	Thu, 25 Jun 2026 02:21:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mg.richtek.com (mg.richtek.com [220.130.44.152])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54134371D1E;
	Thu, 25 Jun 2026 02:21:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782354080; cv=none; b=TyOEmF9z+T8RTTY/Cg8LF3jSxPRwH9W1knDem3BXWLpDlYgwd2SbVS5MNulp/EdorLq/cWhyZpUFjNfRxxD10lqk73TQKQjKkRKWfCKhkmESteH2xdMwTZyzwmsdsEwV/UFQJOYDxUsINFq+3pIPTJqqFqW8aeau1nB9Slq2yNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782354080; c=relaxed/simple;
	bh=NmYoBIbV7ERtoUiT87I6X55earemA/qx0C2nGktUedU=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UragKYujg+3v4cevix4v/QAtxj75enuXakP8NL5ceEt6qUQ/jBfKYCigjjQ+L7nt0Kz4vS/470IZSTkYuTCO2Y4+LRJkLYHRUyTk+SgmTx9saYUFhwqs+iEx6BUIrsefsM7uG3AYBUywNkvvSXGflST2KqegQjYFyXCsiT9s3qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=richtek.com; spf=pass smtp.mailfrom=richtek.com; dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b=fmg56nby; dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b=4M7vkwb/; arc=none smtp.client-ip=220.130.44.152
X-MailGates: (SIP:2,PASS,NONE)(compute_score:DELIVER,40,3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=richtek.com;
	s=richtek; t=1782354075;
	bh=guVY56Ym0wMJd+zQw6+01xzZ9xOFVUwEnSddoFMQdHk=; l=1767;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=fmg56nbyhRuaMFDOeYqxPtsZdrJT4d8VjQjB/wfVuk5yT4nn/fo+AeCn7627HGA2J
	 6uHCWlfTf72P7HbtjSQ40DWkVs5Zr5Ps1Mgy00lzKOMhiScjD7o7U/ByBqBylPb/p2
	 b1DKo1GrKeYQ+fyhGeiUEexkUdltSw47q7r/5UQgizNSS/q4iPtkiFvnkGjVVDOQFZ
	 7ncqT+tmZtlJnVu2kwsqvO0GHYqoMXwAVcV3dGLb+N+oWtVvRgB2+cMbArMUmPX7TO
	 XbTMdcDGbMxMrT0Fq/w5JUJ/lvO+90L2bnmKSbWaEggHoPXY1DxDixRiZmREAoPbl1
	 bgaAvkxXdpwHg==
Received: from 192.168.8.21
	by mg.richtek.com with MailGates ESMTP Server V3.0(1128078:0:AUTH_RELAY)
	(envelope-from <prvs=163233BBEA=cy_huang@richtek.com>); Thu, 25 Jun 2026 10:21:15 +0800 (CST)
X-MailGates: (compute_score:DELIVER,40,3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=richtek.com;
	s=richtek; t=1782354074;
	bh=guVY56Ym0wMJd+zQw6+01xzZ9xOFVUwEnSddoFMQdHk=; l=1767;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=4M7vkwb/4D+SQG3FyOFl1QWaQM0tTmnx6jpT00KdNhCRPww1vkvxWJgXE1ERFQF8Y
	 yVHEqJGgFm0cwikc2AY4rRNIqGGM4SijYu8W+hHXgHfOwpLXmIZ4YZBWHhK6fYcK8z
	 gX09peJPo5dJS4ZIzZuwoldezQ5J5pfBjISwwh7X4iNspGJ39OIomrcwKE8pmpCf5P
	 ZNeco0chR/tYdGssipBnZItPQSsqg4MmwgkiwOy6XHC/VahRUl+xytruFKXWaB6bUI
	 nlzgqwbiV69v6DwSYIv01kFBx+JqxvPZnaMBEha5N/Xt0JmohXaMy18hbJGaMjExp3
	 vQYSpllQWHN9g==
Received: from 192.168.10.46
	by mg.richtek.com with MailGates ESMTPS Server V6.0(1155896:0:AUTH_RELAY)
	(envelope-from <cy_huang@richtek.com>)
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256/256); Thu, 25 Jun 2026 10:18:36 +0800 (CST)
Received: from ex3.rt.l (192.168.10.46) by ex3.rt.l (192.168.10.46) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.26; Thu, 25 Jun
 2026 10:18:36 +0800
Received: from git-send.richtek.com (192.168.10.154) by ex3.rt.l
 (192.168.10.45) with Microsoft SMTP Server id 15.2.1748.26 via Frontend
 Transport; Thu, 25 Jun 2026 10:18:36 +0800
From: <cy_huang@richtek.com>
To: Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Liam
 Girdwood" <lgirdwood@gmail.com>, ChiYuan Huang <cy_huang@richtek.com>, "Yoon
 Dong Min" <dm.youn@telechips.com>, <edward_kim@richtek.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] regualtor: rtq2208: Initiate the default MTP_SEL state by hardware register
Date: Thu, 25 Jun 2026 10:18:32 +0800
Message-ID: <bef09877890f798fe3628b2d159ccb2757d21148.1782353659.git.cy_huang@richtek.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1782353659.git.cy_huang@richtek.com>
References: <cover.1782353659.git.cy_huang@richtek.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
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
	TAGGED_FROM(0.00)[bounces-315453-lists,devicetree=lfdr.de];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cy_huang@richtek.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[richtek.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13A716C25B3

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


