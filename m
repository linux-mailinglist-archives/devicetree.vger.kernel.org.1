Return-Path: <devicetree+bounces-279470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Ai5Me3xwWkgYAQAu9opvQ
	(envelope-from <devicetree+bounces-279470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 03:07:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F09300F09
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 03:07:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B68E314D9EF
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 01:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F30A037D119;
	Tue, 24 Mar 2026 01:58:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB833859F9;
	Tue, 24 Mar 2026 01:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774317538; cv=none; b=Y6/cbdR4EGbYSzyHTP306Yr1schQVqdK7BYtK6vnKEUaLJ4ebwvJ9LsXutXqyJgXW/vl1LuGh0f2FBYJCB/CV2VNqPz4/97OdHaUh98Rhvu7isInKEJ4pQmHjkmIVwd+Rpc/+HCi6LDAD3BxJQDiJItmpT9pLl0ujCIYEJN3rMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774317538; c=relaxed/simple;
	bh=yTcAx3NAX05a2PPdk/ad8cZuE2IR4g+b9LdPiaLiA/A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=pndXk4DWB11Ipfosj45caRw06u5Y0gR7itv0ntqEKsDMYoMZmg/ews4zvNzWxYIUmYb9qnhsExinUXRDZ6pfvmLXwxsQlzwI6Mpr5qB2Kli1Zqkite2pry5Lut6aVYPo++h/d8dsTPIfh/OPIxW9g9E8bIE98KwwkkbIKLY9i+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Tue, 24 Mar
 2026 09:58:50 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Tue, 24 Mar 2026 09:58:50 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
Date: Tue, 24 Mar 2026 09:58:50 +0800
Subject: [PATCH v4 2/2] mmc: sdhci-of-aspeed: Handle optional controller
 reset
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260324-sdhci-v4-2-c8c2060ccb5c@aspeedtech.com>
References: <20260324-sdhci-v4-0-c8c2060ccb5c@aspeedtech.com>
In-Reply-To: <20260324-sdhci-v4-0-c8c2060ccb5c@aspeedtech.com>
To: Andrew Jeffery <andrew@codeconstruct.com.au>, Ulf Hansson
	<ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	<joel@jms.id.au>, Ryan Chen <ryanchen.aspeed@gmail.com>, Adrian Hunter
	<adrian.hunter@intel.com>, Philipp Zabel <p.zabel@pengutronix.de>
CC: Andrew Jeffery <andrew@aj.id.au>, <linux-aspeed@lists.ozlabs.org>,
	<openbmc@lists.ozlabs.org>, <linux-mmc@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774317530; l=1827;
 i=ryan_chen@aspeedtech.com; s=20251126; h=from:subject:message-id;
 bh=yTcAx3NAX05a2PPdk/ad8cZuE2IR4g+b9LdPiaLiA/A=;
 b=MrgtEjbFQCFNWXmMIdrLZxoiBifWfguS1h4SY1cutKwXP3miq5WzhUXtZrjM6Bmi03aNYkmWg
 Av7r8hBQHHkChhAr4t/wfNJvImB/FeLmU2szrgd/v+1n0jxaabx+eTE
X-Developer-Key: i=ryan_chen@aspeedtech.com; a=ed25519;
 pk=Xe73xY6tcnkuRjjbVAB/oU30KdB3FvG4nuJuILj7ZVc=
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-279470-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[codeconstruct.com.au,linaro.org,kernel.org,jms.id.au,gmail.com,intel.com,pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ryan_chen@aspeedtech.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,aspeedtech.com:email,aspeedtech.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 30F09300F09
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Get the optional reset line for the ASPEED SD controller during probe by
using devm_reset_control_get_optional_exclusive_deasserted().

This allows platforms such as AST2700, which require the SD controller
to be taken out of reset before use, to work with the existing driver.

Acked-by: Adrian Hunter <adrian.hunter@intel.com>
Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
---
Changes in v4:
- rebase git://git.kernel.org/pub/scm/linux/kernel/git/ulfh/mmc.git
  next branch fix the conflit.
Changes in v2:
- use devm_reset_control_get_optional_exclusive_deasserted replace
  reset_control_get_optional_exclusive.
- add include reset.h
---
 drivers/mmc/host/sdhci-of-aspeed.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
index 4296def69436..f5d973783cbe 100644
--- a/drivers/mmc/host/sdhci-of-aspeed.c
+++ b/drivers/mmc/host/sdhci-of-aspeed.c
@@ -13,6 +13,7 @@
 #include <linux/of.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
+#include <linux/reset.h>
 #include <linux/spinlock.h>
 
 #include "sdhci-pltfm.h"
@@ -519,6 +520,7 @@ static struct platform_driver aspeed_sdhci_driver = {
 static int aspeed_sdc_probe(struct platform_device *pdev)
 
 {
+	struct reset_control *reset;
 	struct device_node *parent;
 	struct aspeed_sdc *sdc;
 	int ret;
@@ -529,6 +531,10 @@ static int aspeed_sdc_probe(struct platform_device *pdev)
 
 	spin_lock_init(&sdc->lock);
 
+	reset = devm_reset_control_get_optional_exclusive_deasserted(&pdev->dev, NULL);
+	if (IS_ERR(reset))
+		return dev_err_probe(&pdev->dev, PTR_ERR(reset), "unable to acquire reset\n");
+
 	sdc->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(sdc->clk))
 		return PTR_ERR(sdc->clk);

-- 
2.34.1


