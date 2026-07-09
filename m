Return-Path: <devicetree+bounces-323464-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 07jrFxRgT2rTfQIAu9opvQ
	(envelope-from <devicetree+bounces-323464-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:47:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AFE72E73F
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:47:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=b7gl02wj;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323464-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-323464-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 403C030352E5
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FE793FB7D3;
	Thu,  9 Jul 2026 08:46:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3D13EA95C;
	Thu,  9 Jul 2026 08:46:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783586805; cv=none; b=DaF96+C5CUZTVVii1aT97uP4f282/UKKmQTJA0KWoT8jCZU7RmW+pUhS8zSLKID3e7IpMmAXI+mcG7aS9E1WT9ZunZKDiAby/I4bVg8FmILlKX8NfyLnWB1XXW2w/uNya1zdpSANB1Rf8bErfnYOS4l/zJ/vK5amJO3BvKC/tLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783586805; c=relaxed/simple;
	bh=lGc88COp+efjC5OpWfAp8waYnnKPVs5ajyeOW2vAKtI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ewNv7u4w6zEQWIwrSa8iVtSMl7BUkSNlHEN9/DZ0C2OYikRepnnz9DTMHA5jvhv2Ac1ZSxw5UFIXCi53goc7jb0RcVckoCnfR3UZkwKSxc9zsthjanlv02JJkN9vN7V3k/JANhHJOPvjcSTDarg8ZkuXZzmXx8Bh98VRZt7CWmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=b7gl02wj; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783586802;
	bh=lGc88COp+efjC5OpWfAp8waYnnKPVs5ajyeOW2vAKtI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=b7gl02wj0tsztBgPUbmZLyVorqJgU+DWFDiqDC5KFmiyTvDBBmZWPp5xTgGIS9YNM
	 X8U6eukYR5kjluDBjDvH+H7IjtAWHgwilUIWqH6F3D8LrnW0qXYE4UADzMCGvdjyII
	 BLld3KlMkKBsJ4JIn8yjMwSRYbRnEAe/wf1H57UkPqSIK+UC6iq3ICEob6yUKYJHtL
	 tcb1X+T5msNV6qxzee2r83vNsUKEs9jB+8vJ5POm7xibmzVSMuK55WOjLDiIQqWlYH
	 RQbWIdBEKjVh9crOUlRtWTQ1fybkshczevutN3XUhhrcoYTs65ofEe4z8gOKlAM17C
	 YQJTU88Rdy32Q==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0EA5E17E0D56;
	Thu, 09 Jul 2026 10:46:42 +0200 (CEST)
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
Subject: [PATCH v3 3/5] pmdomain: mediatek: Respect PD relationships during error cleanup
Date: Thu,  9 Jul 2026 10:46:33 +0200
Message-ID: <20260709084635.24912-4-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323464-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,suse.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:nfraprado@collabora.com,m:irving-ch.lin@mediatek.com,m:macpaul.lin@mediatek.com,m:aford173@gmail.com,m:mbrugger@suse.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:justin.yeh@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E8AFE72E73F

In case any probe error occurs (usually, a probe deferral) the
power domains shall be cleaned up while respecting their child
to parent relationship, or the system may freeze.

In order to do that without any memory footprint impacts after
the fact, allocate a temporary array in the probe function and
use it to store the indices of the added power domains in the
correct order.

This will be used in the error cleanup path and will be freed
at the end regardless of the probe status as, when the probing
succeeds, the genpd API takes care of unregistering all PDs in
the correct order anyway.

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/pmdomain/mediatek/mtk-pm-domains.c | 43 +++++++++++++++++-----
 1 file changed, 33 insertions(+), 10 deletions(-)

diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomain/mediatek/mtk-pm-domains.c
index f0a6339affd7..8d49d9ee3cd2 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
@@ -750,7 +750,8 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 }
 
 static struct
-generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_node *node)
+generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_node *node,
+					 u8 *domains_idx, u8 *num_domains)
 {
 	const struct scpsys_domain_data *domain_data;
 	const struct scpsys_hwv_domain_data *hwv_domain_data;
@@ -925,6 +926,7 @@ generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_no
 	else
 		pm_genpd_init(&pd->genpd, NULL, false);
 
+	domains_idx[(*num_domains)++] = (u8) id;
 	scpsys->domains[id] = &pd->genpd;
 
 	return scpsys->pd_data.domains[id];
@@ -936,7 +938,8 @@ generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_no
 	return ERR_PTR(ret);
 }
 
-static int scpsys_add_subdomain(struct scpsys *scpsys, struct device_node *parent)
+static int scpsys_add_subdomain(struct scpsys *scpsys, struct device_node *parent,
+				u8 *domains_idx, u8 *num_domains)
 {
 	struct generic_pm_domain *child_pd, *parent_pd;
 	struct device_node *child;
@@ -959,7 +962,7 @@ static int scpsys_add_subdomain(struct scpsys *scpsys, struct device_node *paren
 
 		parent_pd = scpsys->pd_data.domains[id];
 
-		child_pd = scpsys_add_one_domain(scpsys, child);
+		child_pd = scpsys_add_one_domain(scpsys, child, domains_idx, num_domains);
 		if (IS_ERR(child_pd)) {
 			ret = PTR_ERR(child_pd);
 			dev_err_probe(scpsys->dev, ret, "%pOF: failed to get child domain id\n",
@@ -968,7 +971,7 @@ static int scpsys_add_subdomain(struct scpsys *scpsys, struct device_node *paren
 		}
 
 		/* recursive call to add all subdomains */
-		ret = scpsys_add_subdomain(scpsys, child);
+		ret = scpsys_add_subdomain(scpsys, child, domains_idx, num_domains);
 		if (ret)
 			goto err_put_node;
 
@@ -1017,14 +1020,16 @@ static void scpsys_remove_one_domain(struct scpsys_domain *pd)
 	clk_bulk_put(pd->num_subsys_clks, pd->subsys_clks);
 }
 
-static void scpsys_domain_cleanup(struct scpsys *scpsys)
+static void scpsys_domain_cleanup(struct scpsys *scpsys, u8 *domains_idx, u8 num_probed)
 {
 	struct generic_pm_domain *genpd;
 	struct scpsys_domain *pd;
 	int i;
 
-	for (i = scpsys->pd_data.num_domains - 1; i >= 0; i--) {
-		genpd = scpsys->pd_data.domains[i];
+	for (i = num_probed - 1; i >= 0; i--) {
+		u8 pd_idx = domains_idx[i];
+
+		genpd = scpsys->pd_data.domains[pd_idx];
 		if (genpd) {
 			pd = to_scpsys_domain(genpd);
 			scpsys_remove_one_domain(pd);
@@ -1241,6 +1246,8 @@ static int scpsys_probe(struct platform_device *pdev)
 	struct device *parent;
 	struct scpsys *scpsys;
 	int num_domains, ret;
+	u8 num_added_pds = 0;
+	u8 *added_pds_idx;
 
 	soc = of_device_get_match_data(&pdev->dev);
 	if (!soc) {
@@ -1254,6 +1261,19 @@ static int scpsys_probe(struct platform_device *pdev)
 	if (!scpsys)
 		return -ENOMEM;
 
+	/*
+	 * Temporarily store the IDs of the power domains that are added as in
+	 * case of a probe deferral this can be used to correctly cleanup all
+	 * of what was added before.
+	 *
+	 * Note that this array is used only in the probe function and must be
+	 * freed at the end, regardless of whether all of the power domains were
+	 * probed successfully or any failure happened.
+	 */
+	added_pds_idx = devm_kmalloc_array(dev, num_domains, sizeof(*added_pds_idx), GFP_KERNEL);
+	if (!added_pds_idx)
+		return -ENOMEM;
+
 	scpsys->dev = dev;
 	scpsys->soc_data = soc;
 
@@ -1284,13 +1304,15 @@ static int scpsys_probe(struct platform_device *pdev)
 	for_each_available_child_of_node_scoped(np, node) {
 		struct generic_pm_domain *domain;
 
-		domain = scpsys_add_one_domain(scpsys, node);
+		domain = scpsys_add_one_domain(scpsys, node,
+					       added_pds_idx, &num_added_pds);
 		if (IS_ERR(domain)) {
 			ret = PTR_ERR(domain);
 			goto err_cleanup_domains;
 		}
 
-		ret = scpsys_add_subdomain(scpsys, node);
+		ret = scpsys_add_subdomain(scpsys, node,
+					   added_pds_idx, &num_added_pds);
 		if (ret)
 			goto err_cleanup_domains;
 	}
@@ -1306,10 +1328,11 @@ static int scpsys_probe(struct platform_device *pdev)
 		goto err_cleanup_domains;
 	}
 
+	devm_kfree(dev, added_pds_idx);
 	return 0;
 
 err_cleanup_domains:
-	scpsys_domain_cleanup(scpsys);
+	scpsys_domain_cleanup(scpsys, added_pds_idx, num_added_pds);
 	return ret;
 }
 
-- 
2.54.0


