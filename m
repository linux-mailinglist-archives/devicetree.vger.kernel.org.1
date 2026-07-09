Return-Path: <devicetree+bounces-323463-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C12qHvlgT2oZfgIAu9opvQ
	(envelope-from <devicetree+bounces-323463-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:51:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C0272E7D6
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:51:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=KFEWtVe9;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323463-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323463-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE5363027B46
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3277D3F1AD2;
	Thu,  9 Jul 2026 08:46:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89BD13E51D3;
	Thu,  9 Jul 2026 08:46:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783586805; cv=none; b=NOdXw7eRcAqO37wycYCR0y/PQXwhj9pefihkaS4+mTNwATwf1JBHZnB3gb7bGjdveoEETGjIMQrC3ZGpCAbSF2r3DACABE9ShZEFEbENiDnex0I+Z+7H1zIYQPqOQ99Pg+N74OyoGv8pIyS2dSTLBYs2jzUWSGed7XIMbytOgNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783586805; c=relaxed/simple;
	bh=bf2FQO045X8y0Y9MppGwFg2bPO27noy0vY4iLupwXOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FAExb+5XbQ4oc59iz/ikCJxHeYkhC5CnOH+x5cmjquPmmWIpqTRS+6L/VNnAJkA/plxYK04CrqMTO9xn6x5VSgkhN2Ki4NaerOLDOwnMg31F3EuSnWN8eCnbWV9+d+xfOkrJDWNSaoaD0nYhXqyvV+rT+G8L5ELsIkJVl96yT00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=KFEWtVe9; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783586801;
	bh=bf2FQO045X8y0Y9MppGwFg2bPO27noy0vY4iLupwXOo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KFEWtVe9U9+QSh/BlrFdVbWulM0w2mlJZ+LCzv/mKb4YdmXPPfoVLuqII3ld8STOE
	 rJYkeTdTUd0SoEesFX9O0g3X1as1SoPojmiudlPRKqzsN18ErOMzC1fjtq6jjITGvL
	 NVF4MVUjmOYW796EvhVrLm6G4rOo9/ntEGm7sof00GhYeOARt2h62xjJDlBw5s3FFG
	 xU5YentouVSzhRwuKsqItA3fQjt6OduuZIrquWmzmYnoB9g859zlu23tplzoqL4Y8T
	 jsw6Dfg2/rNsrpamj7DjcHsqunNsvYBPvOJK/HqkTtlkdxi74VweL7q0SUTOLfrzdj
	 JD8Lj+p+uhVAw==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3BAEF17E0D53;
	Thu, 09 Jul 2026 10:46:41 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: ulfh@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	nfraprado@collabora.com,
	irving-ch.lin@mediatek.com,
	macpaul.lin@mediatek.com,
	aford173@gmail.com,
	mbrugger@suse.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	justin.yeh@mediatek.com,
	kernel@collabora.com
Subject: [PATCH v3 2/5] pmdomain: mediatek: Fix possible nullptr KP in HWV cleanup/on-check
Date: Thu,  9 Jul 2026 10:46:32 +0200
Message-ID: <20260709084635.24912-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260709084635.24912-1-angelogioacchino.delregno@collabora.com>
References: <20260709084635.24912-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323463-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,suse.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:nfraprado@collabora.com,m:irving-ch.lin@mediatek.com,m:macpaul.lin@mediatek.com,m:aford173@gmail.com,m:mbrugger@suse.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:justin.yeh@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C3C0272E7D6

Should probe fail for HW_VOTER type power domains, this driver was
unconditionally trying to perform cleanup for DIRECT_CTL domains,
but only after checking if the target domain is powered on... with
the DIRECT_CTL scpsys_domain_is_on() code again.

And there's more: the scpsys_domain_is_on() function is also being
unconditionally used in the probe path, for any power domain that
has flag MTK_SCPD_KEEP_DEFAULT_OFF!

This bug was never experienced by anyone because the HWV domains
never failed probe, and because none of those is declared with the
aforementioned flag - but it's still something critical.

In order to fix this, add a check for MTCMOS Type and, based on
that, call the correct functions for an "is on" check, and also
do the same for the cleanup path, calling the correct functions
for the "power off" action.

For the latter, since there's a call to pm_genpd_remove() right
before calling power_off, be cautious and add a variation of the
power off functions (with a _internal suffix) for those to get a
pointer to scpsys_domain instead of one to generic_pm_domain as,
even if that's still working, this is way too much fragile and
would break at some point.

Fixes: 88914db077b6 ("pmdomain: mediatek: Add support for Hardware Voter power domains")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/pmdomain/mediatek/mtk-pm-domains.c | 40 ++++++++++++++++++----
 1 file changed, 33 insertions(+), 7 deletions(-)

diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomain/mediatek/mtk-pm-domains.c
index e1cfd4223473..f0a6339affd7 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
@@ -393,9 +393,8 @@ static int scpsys_hwv_power_on(struct generic_pm_domain *genpd)
 	return ret;
 };
 
-static int scpsys_hwv_power_off(struct generic_pm_domain *genpd)
+static int scpsys_hwv_power_off_internal(struct scpsys_domain *pd)
 {
-	struct scpsys_domain *pd = container_of(genpd, struct scpsys_domain, genpd);
 	const struct scpsys_hwv_domain_data *hwv = pd->hwv_data;
 	struct scpsys *scpsys = pd->scpsys;
 	u32 val;
@@ -464,6 +463,13 @@ static int scpsys_hwv_power_off(struct generic_pm_domain *genpd)
 	return ret;
 };
 
+static int scpsys_hwv_power_off(struct generic_pm_domain *genpd)
+{
+	struct scpsys_domain *pd = container_of(genpd, struct scpsys_domain, genpd);
+
+	return scpsys_hwv_power_off_internal(pd);
+}
+
 static int scpsys_ctl_pwrseq_on(struct scpsys_domain *pd)
 {
 	struct scpsys *scpsys = pd->scpsys;
@@ -694,9 +700,8 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 	return ret;
 }
 
-static int scpsys_power_off(struct generic_pm_domain *genpd)
+static int scpsys_power_off_internal(struct scpsys_domain *pd)
 {
-	struct scpsys_domain *pd = container_of(genpd, struct scpsys_domain, genpd);
 	struct scpsys *scpsys = pd->scpsys;
 	bool tmp;
 	int ret;
@@ -737,6 +742,13 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 	return 0;
 }
 
+static int scpsys_power_off(struct generic_pm_domain *genpd)
+{
+	struct scpsys_domain *pd = container_of(genpd, struct scpsys_domain, genpd);
+
+	return scpsys_power_off_internal(pd);
+}
+
 static struct
 generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_node *node)
 {
@@ -884,7 +896,14 @@ generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_no
 	 * late_init time.
 	 */
 	if (MTK_SCPD_CAPS(pd, MTK_SCPD_KEEP_DEFAULT_OFF)) {
-		if (scpsys_domain_is_on(pd))
+		bool domain_is_on;
+
+		if (scpsys->soc_data->type == SCPSYS_MTCMOS_TYPE_HW_VOTER)
+			domain_is_on = scpsys_hwv_domain_is_enable_done(pd);
+		else
+			domain_is_on = scpsys_domain_is_on(pd);
+
+		if (domain_is_on)
 			dev_warn(scpsys->dev,
 				 "%pOF: A default off power domain has been ON\n", node);
 	} else {
@@ -973,6 +992,7 @@ static int scpsys_add_subdomain(struct scpsys *scpsys, struct device_node *paren
 
 static void scpsys_remove_one_domain(struct scpsys_domain *pd)
 {
+	struct scpsys *scpsys = pd->scpsys;
 	int ret;
 
 	/*
@@ -984,8 +1004,14 @@ static void scpsys_remove_one_domain(struct scpsys_domain *pd)
 		dev_err(pd->scpsys->dev,
 			"failed to remove domain '%s' : %d - state may be inconsistent\n",
 			pd->genpd.name, ret);
-	if (scpsys_domain_is_on(pd))
-		scpsys_power_off(&pd->genpd);
+
+	if (scpsys->soc_data->type == SCPSYS_MTCMOS_TYPE_HW_VOTER) {
+		if (scpsys_hwv_domain_is_enable_done(pd))
+			scpsys_hwv_power_off_internal(pd);
+	} else {
+		if (scpsys_domain_is_on(pd))
+			scpsys_power_off_internal(pd);
+	}
 
 	clk_bulk_put(pd->num_clks, pd->clks);
 	clk_bulk_put(pd->num_subsys_clks, pd->subsys_clks);
-- 
2.54.0


