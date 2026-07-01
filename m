Return-Path: <devicetree+bounces-318430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QKp4KzQGRWoj5QoAu9opvQ
	(envelope-from <devicetree+bounces-318430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:21:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 208A66ED34F
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:21:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=HWM8Jquj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318430-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318430-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B7DB2307CD4E
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B33148166B;
	Wed,  1 Jul 2026 12:19:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1471481252;
	Wed,  1 Jul 2026 12:19:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908369; cv=none; b=oDgB/s68gx52S0pLWub2+ztp1RuGCUBWjrvuYkOQdPDb4oUUgtkDKjh8S2Ohjdz1ELTd1JXqfp6CECv8dwIS5g+ZuOsgS5oJ/Xl8QzuJN06Op23qpqicAHPb8E3WRmS3Xc0JBqugMV85kMptwqcy1g2Fb6Iug6rsPd3eg/+mfEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908369; c=relaxed/simple;
	bh=BcQ8qzHpSwkzbHyxyzbbUcRbxdHbxroB21ZiskehyD0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iAajyXuZBUCCkP05t+mxdbJpv76ecYYaZ0gBxobpOWfSGs2VHzClw0udRLssPYDlIpFa1anYiLvTFt2qTtcKRcUSHx79Z10q9USFecsRnLXc41mEILBBxtdyjBYdlCYQwafgNgtZEX3MJWRaBw7Q7uk6sXPYHv3Y4WUZ1hmMq6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=HWM8Jquj; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908366;
	bh=BcQ8qzHpSwkzbHyxyzbbUcRbxdHbxroB21ZiskehyD0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HWM8JqujvzLcAeS/iwO/54JkdYic8+aD0PSg1ir1jc8Or/VEgWZRW27A3jWwTvSdr
	 KxvJ7u/RX6tUILJy4A/b7HwfOj4rXPinEe60QCSlBVBZb/TLqE9uC3gTVHU1B5mq/h
	 W5NttqEZ7G5x1t08ujj6eRs+fFPXdRrOyYP0HUMXRFeEK1LXk7ItuP/Tr60H5goC6x
	 rhhqlAYF7qNC6q6HqLKwWa9F+3NOKB/cTCPABXK/2J4bjRLyXguIqHohRzSLWWDB+u
	 +AeZFqQVlYOWud+VKPlAYoRyN5EhzxEBGkllwikGKKHR/1cxPlGQkFnWtcomRAzZWP
	 XiYLHc35qKLAg==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B7B9E17E0F44;
	Wed,  1 Jul 2026 14:19:25 +0200 (CEST)
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
Subject: [PATCH 3/4] pmdomain: mediatek: Add support for Direct CTL simple power sequence
Date: Wed,  1 Jul 2026 14:19:19 +0200
Message-ID: <20260701121920.19347-4-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701121920.19347-1-angelogioacchino.delregno@collabora.com>
References: <20260701121920.19347-1-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318430-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,suse.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:nfraprado@collabora.com,m:irving-ch.lin@mediatek.com,m:macpaul.lin@mediatek.com,m:aford173@gmail.com,m:mbrugger@suse.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:justin.yeh@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 208A66ED34F

Some new SoCs like MT8196, MT6991, and others, have got one
additional power controller (usually in the HFRP Multimedia
block) which needs a simplified power on/off sequence while
using Direct Control strategy.

Domains using the "simple power sequence" are not backed by
the RTFF hardware, have no Bus Protection mechanism, lacks
the ISO, PWR_ON, PWR_ON_2ND bits, and therefore get enabled
automatically after getting out of reset.

This simple power sequence is then a subset of the full one
as only needs the enablement of the specific power domain's
clock input and reset (where, again, after getting out of
reset, the ISO and PWR_ON bits are automatically internally
getting flipped) to enable or disable (power on or off).

Moreover, the simple power sequence power domains guarantee
that they always get enabled/disabled after executing the
relevant power sequence (on/off) so, differently from the
others, there is also no need to poll for a PWR_ACK.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/pmdomain/mediatek/mtk-pm-domains.c | 87 ++++++++++++++++++----
 drivers/pmdomain/mediatek/mtk-pm-domains.h |  1 +
 2 files changed, 72 insertions(+), 16 deletions(-)

diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomain/mediatek/mtk-pm-domains.c
index db543d4b1813..5276adea1d04 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
@@ -549,9 +549,11 @@ static int scpsys_ctl_pwrseq_on(struct scpsys_domain *pd)
 	return 0;
 }
 
-static void scpsys_ctl_pwrseq_off(struct scpsys_domain *pd)
+static int scpsys_ctl_pwrseq_off(struct scpsys_domain *pd)
 {
 	struct scpsys *scpsys = pd->scpsys;
+	bool tmp;
+	int ret;
 
 	switch (pd->data->rtff_type) {
 	case SCPSYS_RTFF_TYPE_GENERIC:
@@ -583,6 +585,41 @@ static void scpsys_ctl_pwrseq_off(struct scpsys_domain *pd)
 	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_RST_B_BIT);
 	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_ON_2ND_BIT);
 	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_ON_BIT);
+
+	/* wait until PWR_ACK = 0 */
+	ret = readx_poll_timeout(scpsys_domain_is_on, pd, tmp, !tmp, MTK_POLL_DELAY_US,
+				 MTK_POLL_TIMEOUT);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int scpsys_simple_pwrseq_on(struct scpsys_domain *pd)
+{
+	struct scpsys *scpsys = pd->scpsys;
+
+	/* Enable subsys clock input and trigger power domain reset state */
+	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_CLK_DIS_BIT);
+	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_RST_B_BIT);
+
+	/* Wait for the hardware to stabilize */
+	udelay(1);
+
+	/* Get out of reset: set power on */
+	regmap_set_bits(scpsys->base, pd->data->ctl_offs, PWR_RST_B_BIT);
+
+	return 0;
+}
+
+static int scpsys_simple_pwrseq_off(struct scpsys_domain *pd)
+{
+	struct scpsys *scpsys = pd->scpsys;
+
+	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_RST_B_BIT);
+	regmap_set_bits(scpsys->base, pd->data->ctl_offs, PWR_CLK_DIS_BIT);
+
+	return 0;
 }
 
 static int scpsys_modem_pwrseq_on(struct scpsys_domain *pd)
@@ -605,14 +642,24 @@ static int scpsys_modem_pwrseq_on(struct scpsys_domain *pd)
 	return 0;
 }
 
-static void scpsys_modem_pwrseq_off(struct scpsys_domain *pd)
+static int scpsys_modem_pwrseq_off(struct scpsys_domain *pd)
 {
 	struct scpsys *scpsys = pd->scpsys;
+	bool tmp;
+	int ret;
 
 	regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_ON_BIT);
 
 	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SKIP_RESET_B))
 		regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_RST_B_BIT);
+
+	/* wait until PWR_ACK = 0 */
+	ret = readx_poll_timeout(scpsys_domain_is_on, pd, tmp, !tmp, MTK_POLL_DELAY_US,
+				 MTK_POLL_TIMEOUT);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static int scpsys_power_on(struct generic_pm_domain *genpd)
@@ -635,6 +682,8 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 
 	if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_PWRSEQ))
 		ret = scpsys_modem_pwrseq_on(pd);
+	else if (MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ))
+		ret = scpsys_simple_pwrseq_on(pd);
 	else
 		ret = scpsys_ctl_pwrseq_on(pd);
 
@@ -662,9 +711,11 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 			goto err_pwr_ack;
 	}
 
-	ret = scpsys_sram_enable(pd);
-	if (ret < 0)
-		goto err_disable_subsys_clks;
+	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ)) {
+		ret = scpsys_sram_enable(pd);
+		if (ret < 0)
+			goto err_disable_subsys_clks;
+	}
 
 	ret = scpsys_bus_protect_disable(pd, 0);
 	if (ret < 0)
@@ -682,7 +733,8 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 err_enable_bus_protect:
 	scpsys_bus_protect_enable(pd, 0);
 err_disable_sram:
-	scpsys_sram_disable(pd);
+	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ))
+		scpsys_sram_disable(pd);
 err_disable_subsys_clks:
 	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_STRICT_BUS_PROTECTION))
 		clk_bulk_disable_unprepare(pd->num_subsys_clks,
@@ -698,16 +750,17 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 {
 	struct scpsys_domain *pd = container_of(genpd, struct scpsys_domain, genpd);
 	struct scpsys *scpsys = pd->scpsys;
-	bool tmp;
 	int ret;
 
 	ret = scpsys_bus_protect_enable(pd, 0);
 	if (ret < 0)
 		return ret;
 
-	ret = scpsys_sram_disable(pd);
-	if (ret < 0)
-		return ret;
+	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ)) {
+		ret = scpsys_sram_disable(pd);
+		if (ret < 0)
+			return ret;
+	}
 
 	if (pd->data->ext_buck_iso_offs && MTK_SCPD_CAPS(pd, MTK_SCPD_EXT_BUCK_ISO))
 		regmap_set_bits(scpsys->base, pd->data->ext_buck_iso_offs,
@@ -721,15 +774,11 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 
 	if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_PWRSEQ))
 		scpsys_modem_pwrseq_off(pd);
+	else if (MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ))
+		ret = scpsys_simple_pwrseq_off(pd);
 	else
 		scpsys_ctl_pwrseq_off(pd);
 
-	/* wait until PWR_ACK = 0 */
-	ret = readx_poll_timeout(scpsys_domain_is_on, pd, tmp, !tmp, MTK_POLL_DELAY_US,
-				 MTK_POLL_TIMEOUT);
-	if (ret < 0)
-		return ret;
-
 	clk_bulk_disable_unprepare(pd->num_clks, pd->clks);
 
 	scpsys_regulator_disable(pd->supply);
@@ -1083,6 +1132,12 @@ static int scpsys_get_bus_protection_legacy(struct device *dev, struct scpsys *s
 		regmap[2] = NULL;
 	}
 
+	/* If no access controllers are needed, don't allocate and don't fail */
+	if (num_regmaps == 0) {
+		scpsys->bus_prot = NULL;
+		return 0;
+	}
+
 	scpsys->bus_prot = devm_kmalloc_array(dev, num_regmaps,
 					      sizeof(*scpsys->bus_prot), GFP_KERNEL);
 	if (!scpsys->bus_prot)
diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.h b/drivers/pmdomain/mediatek/mtk-pm-domains.h
index a5dca24cbc2f..092403de66fa 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.h
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.h
@@ -17,6 +17,7 @@
 #define MTK_SCPD_MODEM_PWRSEQ		BIT(10)
 #define MTK_SCPD_SKIP_RESET_B		BIT(11)
 #define MTK_SCPD_INFRA_PWR_CTL		BIT(12)
+#define MTK_SCPD_SIMPLE_PWRSEQ		BIT(13)
 #define MTK_SCPD_CAPS(_scpd, _x)	((_scpd)->data ?		\
 					 (_scpd)->data->caps & (_x) :	\
 					 (_scpd)->hwv_data->caps & (_x))
-- 
2.54.0


