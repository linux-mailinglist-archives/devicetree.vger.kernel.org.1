Return-Path: <devicetree+bounces-326283-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9MMcG/g9VmpZ2AAAu9opvQ
	(envelope-from <devicetree+bounces-326283-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 15:47:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E08755532
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 15:47:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=M6Yi12Zy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326283-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326283-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED7BE313B845
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 670A747798B;
	Tue, 14 Jul 2026 13:43:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41572472790;
	Tue, 14 Jul 2026 13:43:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784036615; cv=none; b=lET0HPr2zeIS24CYx7E+7JvM4rfh2fzuOX37GlPhUX/Gsma5tqyWZfSVaFBGh44jTAYHtmR+UB8dBigOKJSuGN4UWGzUtYCwVnS1JT61UpR1fa5HG7Nh1cyZL2FCjF+VaP7W8rjwwvJlhlu71YnGdxA1J725OV1O5SLWFqQIxqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784036615; c=relaxed/simple;
	bh=SHIbWagXhjHefFW/nJiQqeo1gHIjjPE8NBQw6Hnwm7Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P2R7v9LdmfkaNR3Ozz4a9Dd2zlKQavzLUNQwfTSaFlW9Lk5jB21KA+eAgLNln/yGbVZMXYJEubLcM7Bk3sftaMIwZXth2QBsy3K7/AX/OOxPO+tXlz9E2am8qiS9AcDjVM+Hq7lK2bd2YfGSqnMzdCzA+2WYOKzbl1iu+wGuaPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6Yi12Zy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EB8C2BCB9;
	Tue, 14 Jul 2026 13:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784036614;
	bh=SHIbWagXhjHefFW/nJiQqeo1gHIjjPE8NBQw6Hnwm7Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=M6Yi12Zy4NTMyZT8xbjw6cyGPfquhCKfIvwm5eooh2odgcp50T/uBPKv4vSli2Pn3
	 wvtZFXheIiWCGjGMQH4hWJElhR0hZPPUK3n3pSOOmuocRNAsfIx/YXoMHoT6lDXisW
	 HWt9GcbgVlBX6oicg08EQLXCVbpxxwHMg9n+b50R1GGQUw3ISIxSwm2pAbrHtB5Dlx
	 Eru1BjIH29p/dSjfnvOV2/p+CZHBkRcii5Q8h+iuIhtqF9I6M0L2fzqRHDMcFwjp6W
	 897ru0cH7UZqEykdjdZYI7OFM9WL/cWwffv/jZxthupDgfFWpWsX4jebMEiOO+GZkZ
	 Qi0DJpFatGLUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15F9C44508;
	Tue, 14 Jul 2026 13:43:34 +0000 (UTC)
From: Nikolai Burov via B4 Relay <devnull+nikolai.burov.jolla.com@kernel.org>
Date: Tue, 14 Jul 2026 16:43:07 +0300
Subject: [PATCH 2/3] pmdomain: mediatek: Add support for secure modem power
 domain control
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260714-mt6858-pmdomain-v1-2-4f09bbb822e0@jolla.com>
References: <20260714-mt6858-pmdomain-v1-0-4f09bbb822e0@jolla.com>
In-Reply-To: <20260714-mt6858-pmdomain-v1-0-4f09bbb822e0@jolla.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784036613; l=4888;
 i=nikolai.burov@jolla.com; s=20260707; h=from:subject:message-id;
 bh=1+93q0f7FYb7U5pyCHE+Hk+doOkxlT1CgjB2s3NJEZo=;
 b=Kt2f4UxAhTkEWKy8TwHBPDQBaoAR8542if7mrL+9y1tgfNNiz4idVdmZFYHj4/0i+d73tCrtd
 e/s1KRx7k9qCnQQ8nIpZQgnbHOdtqzWjEk7C+l9s9djdSvyaKFkWTIb
X-Developer-Key: i=nikolai.burov@jolla.com; a=ed25519;
 pk=yzpa+PD+ovHUFMIOBA9o2QqGwI110jM6hdGHLc7jtoQ=
X-Endpoint-Received: by B4 Relay for nikolai.burov@jolla.com/20260707 with
 auth_id=859
X-Original-From: Nikolai Burov <nikolai.burov@jolla.com>
Reply-To: nikolai.burov@jolla.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326283-lists,devicetree=lfdr.de,nikolai.burov.jolla.com];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:ulfh@kernel.org,m:mbrugger@suse.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:linux-pm@vger.kernel.org,m:nikolai.burov@jolla.com,m:nikolai.burov+review@abscue.de,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,m:nikolai.burov@abscue.de,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[nikolai.burov@jolla.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,review];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,jolla.com:mid,jolla.com:email,jolla.com:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E1E08755532

From: Nikolai Burov <nikolai.burov@jolla.com>

On recent MediaTek SoCs such as MT6858, the kernel is required to use
a secure monitor call (SMC) to enable or disable the modem power domain.
The power domain control register can be read, but firmware prevents it
from being modified directly. Other parts of the power sequence, such as
setting the ext_buck_iso register, still need to be performed on the
kernel side.

In preparation for modem support, add a flag to enable this new power
sequence for SoCs that need it.

Signed-off-by: Nikolai Burov <nikolai.burov@jolla.com>
---
 drivers/pmdomain/mediatek/mtk-pm-domains.c | 54 +++++++++++++++++++++++++++---
 drivers/pmdomain/mediatek/mtk-pm-domains.h |  1 +
 include/linux/soc/mediatek/mtk_sip_svc.h   |  3 ++
 3 files changed, 53 insertions(+), 5 deletions(-)

diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomain/mediatek/mtk-pm-domains.c
index e1cfd4223473..56437b32b252 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
@@ -57,6 +57,12 @@
 
 #define MTK_SIP_KERNEL_HWCCF_CONTROL	MTK_SIP_SMC_CMD(0x540)
 
+/* Power domain commands for MTK_SIP_KERNEL_CCCI_CONTROL */
+enum {
+	MTK_MD_MTCMOS_ENABLE = 18,
+	MTK_MD_MTCMOS_DISABLE = 19,
+};
+
 struct scpsys_domain {
 	struct generic_pm_domain genpd;
 	const struct scpsys_domain_data *data;
@@ -615,6 +621,34 @@ static void scpsys_modem_pwrseq_off(struct scpsys_domain *pd)
 		regmap_clear_bits(scpsys->base, pd->data->ctl_offs, PWR_RST_B_BIT);
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
@@ -633,7 +667,9 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 		regmap_clear_bits(scpsys->base, pd->data->ext_buck_iso_offs,
 				  pd->data->ext_buck_iso_mask);
 
-	if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_PWRSEQ))
+	if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_SECURE))
+		ret = scpsys_modem_sec_power_on(true);
+	else if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_PWRSEQ))
 		ret = scpsys_modem_pwrseq_on(pd);
 	else
 		ret = scpsys_ctl_pwrseq_on(pd);
@@ -709,6 +745,12 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 	if (ret < 0)
 		return ret;
 
+	if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_SECURE)) {
+		ret = scpsys_modem_sec_power_on(false);
+		if (ret)
+			return ret;
+	}
+
 	if (pd->data->ext_buck_iso_offs && MTK_SCPD_CAPS(pd, MTK_SCPD_EXT_BUCK_ISO))
 		regmap_set_bits(scpsys->base, pd->data->ext_buck_iso_offs,
 				pd->data->ext_buck_iso_mask);
@@ -719,10 +761,12 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 	if (ret < 0)
 		return ret;
 
-	if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_PWRSEQ))
-		scpsys_modem_pwrseq_off(pd);
-	else
-		scpsys_ctl_pwrseq_off(pd);
+	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_SECURE)) {
+		if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_PWRSEQ))
+			scpsys_modem_pwrseq_off(pd);
+		else
+			scpsys_ctl_pwrseq_off(pd);
+	}
 
 	/* wait until PWR_ACK = 0 */
 	ret = readx_poll_timeout(scpsys_domain_is_on, pd, tmp, !tmp, MTK_POLL_DELAY_US,
diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.h b/drivers/pmdomain/mediatek/mtk-pm-domains.h
index a5dca24cbc2f..b1a3d54a7b01 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.h
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.h
@@ -17,6 +17,7 @@
 #define MTK_SCPD_MODEM_PWRSEQ		BIT(10)
 #define MTK_SCPD_SKIP_RESET_B		BIT(11)
 #define MTK_SCPD_INFRA_PWR_CTL		BIT(12)
+#define MTK_SCPD_MODEM_SECURE		BIT(13)
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



