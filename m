Return-Path: <devicetree+bounces-327071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PkmDItCSV2pEXQAAu9opvQ
	(envelope-from <devicetree+bounces-327071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:01:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D9775F1B1
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:01:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="TxwjS/Qq";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327071-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-327071-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 654FA31FA61F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F911332EC1;
	Wed, 15 Jul 2026 13:54:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88B832A3FF;
	Wed, 15 Jul 2026 13:54:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784123647; cv=none; b=lNRJbi4OYxNQvozVabyysVN9P4a3zNnIwumDWdsm/VP8/Nm/kcXTVHDQnmfLv0bzAMQ6+kwEgufUJXP6y/PRauPgBOcejIpI2Ce1mJec6qFPyHHRKJ0VSVnwgpJ6KKQJhqW5bW8GNDCdpIiKC/EiRdcUaMcVUzTwe9aQhzLs6rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784123647; c=relaxed/simple;
	bh=Yu+Tu7ylAiaB6C7afVFhtwHqHDAEHvAp/9c6zR91Sik=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IxG73d+fgZcL/bVp7eCSgz21kS1Y2S+4lDd30X7eHkHF4UAWNDDE/EJZvESqYSRcmnUHBrP4CT+PmaZcrxoKAQwVf5gjSsGJup2m5BoJ+qIwoAy9lkafHNiNODYWgzksGrpDRCBOZXe1sBivtC9AEH7XvgbIL5pGKFF7I7s+LEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxwjS/Qq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AB78C2BCF4;
	Wed, 15 Jul 2026 13:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784123647;
	bh=Yu+Tu7ylAiaB6C7afVFhtwHqHDAEHvAp/9c6zR91Sik=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=TxwjS/QqEjLZXP5ZP+x7jMmTa8fw79onnSCkQB1aXwi1CM7aibWAvPpkxqpL8MYbl
	 IkNBwkFXAhQhnucxlR5XffmOH+S57FHLt+uEjWSykDtRDfEg5VsFLei3Z3EqUH2DSu
	 Ap/oPSNJZD64u/ZZHTW938zIxgjY4GeFs+isnARogfhqvw48O7uoVf/hoH3IKIEobz
	 jEsbM0Yn18wTZdgogQLdPMVloq2Rt8whXKTBwKyhRtPIAZzbW8nkYfs7T2C4+6DVte
	 Dyvy3cIa1nnjLKRQydlOKlodAQlrGBPMag2/XBtHbjTDLWfxhYyIWzt3GpKQmfi7CA
	 oogZTX/e9qc1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E45EC4450A;
	Wed, 15 Jul 2026 13:54:07 +0000 (UTC)
From: Nikolai Burov via B4 Relay <devnull+nikolai.burov.jolla.com@kernel.org>
Date: Wed, 15 Jul 2026 16:54:06 +0300
Subject: [PATCH v2 2/3] pmdomain: mediatek: Add support for secure modem
 power domain control
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260715-mt6858-pmdomain-v2-2-6293e87fc093@jolla.com>
References: <20260715-mt6858-pmdomain-v2-0-6293e87fc093@jolla.com>
In-Reply-To: <20260715-mt6858-pmdomain-v2-0-6293e87fc093@jolla.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Ulf Hansson <ulfh@kernel.org>
Cc: Matthias Brugger <mbrugger@suse.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org, 
 Nikolai Burov <nikolai.burov@jolla.com>, 
 Nikolai Burov <nikolai.burov+review@abscue.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784123646; l=5199;
 i=nikolai.burov@jolla.com; s=20260707; h=from:subject:message-id;
 bh=gBoq3HH59F/zPOlCRpIWWkC6yZBPSELdx7eNFsd2Po8=;
 b=z/GkX2dizJxO+o5AY/WpWWi4WOs7WS8zkm9bz9iemZh8zrpRVxTDkvUzjyFbMZUIwCaIQKa16
 /DEfLv8LsweDqsK1QhMZjlT0HZ4LPN/PbbkcdlGQLeaRmbOuox45CsS
X-Developer-Key: i=nikolai.burov@jolla.com; a=ed25519;
 pk=yzpa+PD+ovHUFMIOBA9o2QqGwI110jM6hdGHLc7jtoQ=
X-Endpoint-Received: by B4 Relay for nikolai.burov@jolla.com/20260707 with
 auth_id=859
X-Original-From: Nikolai Burov <nikolai.burov@jolla.com>
Reply-To: nikolai.burov@jolla.com
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	TAGGED_FROM(0.00)[bounces-327071-lists,devicetree=lfdr.de,nikolai.burov.jolla.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:ulfh@kernel.org,m:mbrugger@suse.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:linux-pm@vger.kernel.org,m:nikolai.burov@jolla.com,m:nikolai.burov+review@abscue.de,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,m:nikolai.burov@abscue.de,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[nikolai.burov@jolla.com];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt,review];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[devnull@kernel.org:server fail];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,jolla.com:replyto,jolla.com:email,jolla.com:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28D9775F1B1
X-Rspamd-Action: no action

From: Nikolai Burov <nikolai.burov@jolla.com>

On recent MediaTek SoCs such as MT6858, the kernel is required to use
a secure monitor call (SMC) to enable or disable the modem power domain.
The power domain control register can be read, but firmware prevents it
from being modified directly. Some other parts of the power sequence,
such as setting the ext_buck_iso register, still need to be performed on
the kernel side.

In preparation for modem support, add a flag to enable this new power
sequence for SoCs that need it. Power domains using this flag are not
expected to configure any bus protection registers, since these are
handled internally by the SMC call.

Signed-off-by: Nikolai Burov <nikolai.burov@jolla.com>
---
 drivers/pmdomain/mediatek/mtk-pm-domains.c | 47 +++++++++++++++++++++++++++---
 drivers/pmdomain/mediatek/mtk-pm-domains.h |  1 +
 include/linux/soc/mediatek/mtk_sip_svc.h   |  3 ++
 3 files changed, 47 insertions(+), 4 deletions(-)

diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomain/mediatek/mtk-pm-domains.c
index 8309a4b46afb..ada9ea8b45b7 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
@@ -57,6 +57,10 @@
 
 #define MTK_SIP_KERNEL_HWCCF_CONTROL	MTK_SIP_SMC_CMD(0x540)
 
+/* Secure MTCMOS commands for modem subsystem */
+#define MTK_MD_MTCMOS_ENABLE		18
+#define MTK_MD_MTCMOS_DISABLE		19
+
 struct scpsys_domain {
 	struct generic_pm_domain genpd;
 	const struct scpsys_domain_data *data;
@@ -668,6 +672,34 @@ static int scpsys_modem_pwrseq_off(struct scpsys_domain *pd)
 	return 0;
 }
 
+static bool scpsys_modem_sec_poll(unsigned long cmd)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(MTK_SIP_KERNEL_CCCI_CONTROL, cmd, 1, 0, 0, 0, 0, 0, &res);
+
+	return res.a0 == 0;
+}
+
+static int scpsys_modem_sec_power_on(bool on)
+{
+	struct arm_smccc_res res;
+	unsigned long cmd = on ? MTK_MD_MTCMOS_ENABLE : MTK_MD_MTCMOS_DISABLE;
+	bool tmp;
+	int ret;
+
+	arm_smccc_smc(MTK_SIP_KERNEL_CCCI_CONTROL, cmd, 0, 0, 0, 0, 0, 0, &res);
+	if (res.a0 == 0)
+		return 0;
+
+	ret = readx_poll_timeout(scpsys_modem_sec_poll, cmd, tmp, tmp,
+				 MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
 static int scpsys_power_on(struct generic_pm_domain *genpd)
 {
 	struct scpsys_domain *pd = container_of(genpd, struct scpsys_domain, genpd);
@@ -686,7 +718,9 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 		regmap_clear_bits(scpsys->base, pd->data->ext_buck_iso_offs,
 				  pd->data->ext_buck_iso_mask);
 
-	if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_PWRSEQ))
+	if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_SECURE_PWRSEQ))
+		ret = scpsys_modem_sec_power_on(true);
+	else if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_PWRSEQ))
 		ret = scpsys_modem_pwrseq_on(pd);
 	else if (MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ))
 		ret = scpsys_simple_pwrseq_on(pd);
@@ -717,7 +751,8 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 			goto err_pwr_ack;
 	}
 
-	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ)) {
+	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ) &&
+	    !MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_SECURE_PWRSEQ)) {
 		ret = scpsys_sram_enable(pd);
 		if (ret < 0)
 			goto err_disable_subsys_clks;
@@ -761,7 +796,11 @@ static int scpsys_power_off_internal(struct scpsys_domain *pd)
 	if (ret < 0)
 		return ret;
 
-	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ)) {
+	if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_SECURE_PWRSEQ)) {
+		ret = scpsys_modem_sec_power_on(false);
+		if (ret)
+			return ret;
+	} else if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ)) {
 		ret = scpsys_sram_disable(pd);
 		if (ret < 0)
 			return ret;
@@ -781,7 +820,7 @@ static int scpsys_power_off_internal(struct scpsys_domain *pd)
 		ret = scpsys_modem_pwrseq_off(pd);
 	else if (MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ))
 		ret = scpsys_simple_pwrseq_off(pd);
-	else
+	else if (!MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_SECURE_PWRSEQ))
 		ret = scpsys_ctl_pwrseq_off(pd);
 
 	if (ret < 0) {
diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.h b/drivers/pmdomain/mediatek/mtk-pm-domains.h
index 092403de66fa..8690690335ad 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.h
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.h
@@ -18,6 +18,7 @@
 #define MTK_SCPD_SKIP_RESET_B		BIT(11)
 #define MTK_SCPD_INFRA_PWR_CTL		BIT(12)
 #define MTK_SCPD_SIMPLE_PWRSEQ		BIT(13)
+#define MTK_SCPD_MODEM_SECURE_PWRSEQ	BIT(14)
 #define MTK_SCPD_CAPS(_scpd, _x)	((_scpd)->data ?		\
 					 (_scpd)->data->caps & (_x) :	\
 					 (_scpd)->hwv_data->caps & (_x))
diff --git a/include/linux/soc/mediatek/mtk_sip_svc.h b/include/linux/soc/mediatek/mtk_sip_svc.h
index abe24a73ee19..6c95a29b79fa 100644
--- a/include/linux/soc/mediatek/mtk_sip_svc.h
+++ b/include/linux/soc/mediatek/mtk_sip_svc.h
@@ -22,6 +22,9 @@
 	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, MTK_SIP_SMC_CONVENTION, \
 			   ARM_SMCCC_OWNER_SIP, fn_id)
 
+/* Modem related SMC call */
+#define MTK_SIP_KERNEL_CCCI_CONTROL	MTK_SIP_SMC_CMD(0x505)
+
 /* DVFSRC SMC calls */
 #define MTK_SIP_DVFSRC_VCOREFS_CONTROL	MTK_SIP_SMC_CMD(0x506)
 

-- 
2.54.0



