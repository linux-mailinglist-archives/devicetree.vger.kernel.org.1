Return-Path: <devicetree+bounces-257448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLt2JJYWcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:58:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F90B4E363
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:58:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E266D784F9B
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 14:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E6AF44104D;
	Tue, 20 Jan 2026 14:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thorsis.com header.i=@thorsis.com header.b="HmgzkrB2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.thorsis.com (mail.thorsis.com [217.92.40.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F40441023;
	Tue, 20 Jan 2026 14:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.92.40.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768919925; cv=none; b=p3hLJf8LL2lkxyERn+mcTs/VtkxNVYp1QfuuHUuehfO1wBBkKpVKJieGoNL+sFXjrpoKCU4YJ9dy8kEZZpiWElFlfrACGFXZi+aj2nCCd2AOkSz3JxE6sYeW2GtEQmbLUlCVkvaSx4gl5MBMycuPRFkelExkl94nCoNpAF9TmnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768919925; c=relaxed/simple;
	bh=024dwzRYsbY8IhKJWWyDlsHfUAHk1dWAbBlNEj6ZdkU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rOhQZTTdLtAHUT0uok+mtpcE+CFpuOcsKef6ImRLGb45nFp3mQmDmS6zXMs+jVW1FfDkbDI0LC0l4sM692VBAba4UaPX56uaoxqgMy5F+rUJR+UNFlDrfy9SvpdulxnSURZI8eYWPcrVlxEU6LaF6nCK6FX6pTDEeBhKPm/fzGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=thorsis.com; spf=pass smtp.mailfrom=thorsis.com; dkim=pass (2048-bit key) header.d=thorsis.com header.i=@thorsis.com header.b=HmgzkrB2; arc=none smtp.client-ip=217.92.40.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=thorsis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thorsis.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 01336148AD47;
	Tue, 20 Jan 2026 15:38:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thorsis.com; s=dkim;
	t=1768919921; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=oDGqX/KkQRxzOI+l10MofO8gzSL8IjI07TilGIBbVzY=;
	b=HmgzkrB213NnhUir2q1t5Jo6axm6vljm2js6lBKfCQKklOUYXVIZzUZdwKbXW3gc7wIVm1
	lKAf/dV2mGuXkZvRX5Q7xOAgSmnnm3ikOkVZafxqYOR0ce+nse3Oh3fIwM200VawhhEHsO
	/feYg2arUbmo0KddN5iwVAKS/ZERVQQxfHFjSoDROMnDuqM1lYDlqLr3ABr2RQjwIaN7E4
	8THtvCQ220l0rbXr/eeWOmk+xdr7qPdD13vU2oGdmKpdX4m2mjLklGM0+P/bJ+lsOSaIUE
	HmeULds+keVYceZ9CQdEHew6SylB/CcW7FgphoIGOM8YzGkk5Qhw37HaSLmqXA==
From: Alexander Dahl <ada@thorsis.com>
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Ryan Wanner <ryan.wanner@microchip.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Cristian Birsan <cristian.birsan@microchip.com>,
	Varshini Rajendran <varshini.rajendran@microchip.com>,
	Balamanikandan Gunasundar <balamanikandan.gunasundar@microchip.com>
Subject: [PATCH v3 06/19] clk: at91: Allow enabling main_rc_osc through DT
Date: Tue, 20 Jan 2026 15:37:27 +0100
Message-ID: <20260120143759.904013-7-ada@thorsis.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260120143759.904013-1-ada@thorsis.com>
References: <20260120143759.904013-1-ada@thorsis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.46 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[thorsis.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257448-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[thorsis.com,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ada@thorsis.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[thorsis.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,thorsis.com:email,thorsis.com:dkim,thorsis.com:mid]
X-Rspamd-Queue-Id: 3F90B4E363
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SAM9X60 Datasheet (DS60001579G) Section "23.4 Product Dependencies"
says:

    "The OTPC is clocked through the Power Management Controller (PMC).
    The user must power on the main RC oscillator and enable the
    peripheral clock of the OTPC prior to reading or writing the OTP
    memory."

The code for enabling/disabling that clock is already present, it was
just not possible to hook into DT anymore, after at91 clk devicetree
binding rework back in 2018 for kernel v4.19.

Do it for all controllers with an OTPC controller, where the main rc
oscillator is required for proper operation.

Signed-off-by: Alexander Dahl <ada@thorsis.com>
---

Notes:
    v3:
    - no changes
    
    v2:
    - split out dt-bindings changes into separate patch
    - extend to drivers for other SoCs providing the OTPC

 drivers/clk/at91/sam9x60.c  | 1 +
 drivers/clk/at91/sam9x7.c   | 1 +
 drivers/clk/at91/sama7d65.c | 1 +
 drivers/clk/at91/sama7g5.c  | 1 +
 4 files changed, 4 insertions(+)

diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
index dbcdb1d2161a9..a9f293a8e3b26 100644
--- a/drivers/clk/at91/sam9x60.c
+++ b/drivers/clk/at91/sam9x60.c
@@ -227,6 +227,7 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 					   50000000);
 	if (IS_ERR(hw))
 		goto err_free;
+	sam9x60_pmc->chws[SAM9X60_PMC_MAIN_RC] = hw;
 
 	hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name, NULL, 0);
 	if (IS_ERR(hw))
diff --git a/drivers/clk/at91/sam9x7.c b/drivers/clk/at91/sam9x7.c
index 07eadb712a1e4..9a5afd258cb86 100644
--- a/drivers/clk/at91/sam9x7.c
+++ b/drivers/clk/at91/sam9x7.c
@@ -764,6 +764,7 @@ static void __init sam9x7_pmc_setup(struct device_node *np)
 					   50000000);
 	if (IS_ERR(hw))
 		goto err_free;
+	sam9x7_pmc->chws[SAM9X7_PMC_MAIN_RC] = hw;
 
 	hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name, NULL, 0);
 	if (IS_ERR(hw))
diff --git a/drivers/clk/at91/sama7d65.c b/drivers/clk/at91/sama7d65.c
index 4ccffa8db43a5..5d8973aa50a53 100644
--- a/drivers/clk/at91/sama7d65.c
+++ b/drivers/clk/at91/sama7d65.c
@@ -1135,6 +1135,7 @@ static void __init sama7d65_pmc_setup(struct device_node *np)
 						   50000000);
 	if (IS_ERR(main_rc_hw))
 		goto err_free;
+	sama7d65_pmc->chws[SAMA7D65_PMC_MAIN_RC] = hw;
 
 	bypass = of_property_read_bool(np, "atmel,osc-bypass");
 
diff --git a/drivers/clk/at91/sama7g5.c b/drivers/clk/at91/sama7g5.c
index 99b4c1d9bdcca..9a6f0f30b2b7e 100644
--- a/drivers/clk/at91/sama7g5.c
+++ b/drivers/clk/at91/sama7g5.c
@@ -1014,6 +1014,7 @@ static void __init sama7g5_pmc_setup(struct device_node *np)
 						   50000000);
 	if (IS_ERR(main_rc_hw))
 		goto err_free;
+	sama7g5_pmc->chws[SAMA7G5_PMC_MAIN_RC] = hw;
 
 	bypass = of_property_read_bool(np, "atmel,osc-bypass");
 
-- 
2.47.3


