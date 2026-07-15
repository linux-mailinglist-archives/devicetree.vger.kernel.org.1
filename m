Return-Path: <devicetree+bounces-327095-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GhI9GhyXV2pJXgAAu9opvQ
	(envelope-from <devicetree+bounces-327095-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:20:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BA92075F4A7
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:20:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="egR3e/Ni";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327095-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-327095-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CD4B303660A
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:04:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DFFB31716D;
	Wed, 15 Jul 2026 14:04:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C6C2BE7A7
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 14:04:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784124250; cv=none; b=Pij+MAkjwH0FJvDFaPQPzLSbwONP4e8Tw8Eh73IRvZ1pw1W9fq+FT6Vf6tIC3H04PPVKp2GSbBISSQRimAqfkeookDNfRjIiHPShyYYBDagI9qjwaMxD0a26eKmfz4Nhwi0x111NmuLtknO1PXtDNHgHnL/YY+RmOiK/h5WbTU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784124250; c=relaxed/simple;
	bh=Y4EEFcujomb7GQyWhJW2QkMSvegzGGM9imZ8+0ye5X8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=meDyc7tnkVomOSTz32M3UmgcEXcPgGyGb6tZolM3RxlLkCcGerrmGonkJebIEfHlVgtKrSyCZipaHJd5Fx79rgQOKkbDDafzkwIGxO6W0tZT7YO17uwZi3sFEdsGEZ+01eYngrnla5jDef7brhNiJBhFptfOiZAoceA+k5b+A4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egR3e/Ni; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDEF61F000E9;
	Wed, 15 Jul 2026 14:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784124248;
	bh=PN7RcNLuRwt/7uRuJx/hWseYvt/sORhEBTT9EGxuGMg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=egR3e/NiyBD8mj8qh0jKOgcnRk9T29T3+BTSAVK2M1bEuZMAtocXOl+Tf62Aewksk
	 zEvXTF9i2IGIFafo1qV2FFJ5lvIjll2sO3jG87NTDBndFs13NkL98l7cQEX6XdJPBd
	 G79IlbaMcx4pYwVuhY0xg7yMheiyQYx+oTn4NHCqio9bBpwKfTMCIojg+/dNa/UA+d
	 U2PML8xQJ6lKnBmfAqdy2CL/iTPegmot7oIEaUtW7C23t5GrSG67Y22nu6OENc3d6i
	 ePwNu0haaPC2Uqd7cJF4HY48nCS/YxX6dsK0WgAae6hjLPbN8fZKRlf4DkjCpsyCOH
	 /LIQznqroQafQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] pmdomain: mediatek: Add support for secure modem
 power domain control
Reply-To: sashiko-reviews@lists.linux.dev
To: "Nikolai Burov" <nikolai.burov@jolla.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260715-mt6858-pmdomain-v2-2-6293e87fc093@jolla.com>
References: <20260715-mt6858-pmdomain-v2-0-6293e87fc093@jolla.com>
 <20260715-mt6858-pmdomain-v2-2-6293e87fc093@jolla.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 14:04:07 +0000
Message-Id: <20260715140407.CDEF61F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-327095-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:nikolai.burov@jolla.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto,jolla.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BA92075F4A7
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] scpsys_power_off_internal breaks LIFO hardware sequencing by power=
ing off the modem MTCMOS domain before disabling subsystem clocks and resto=
ring external isolation.
- [High] The error path in scpsys_power_on erroneously calls scpsys_sram_di=
sable for secure modem domains, attempting to write to firmware-protected c=
ontrol registers.
--

--- Patch [2]: [PATCH v2 2/3] pmdomain: mediatek: Add support for secure mo=
dem power domain control ---
commit 9becf79ed55f0246ad67aeb4808362788efdf915
Author: Nikolai Burov <nikolai.burov@jolla.com>

pmdomain: mediatek: Add support for secure modem power domain control

On recent MediaTek SoCs such as MT6858, the kernel is required to use
a secure monitor call (SMC) to enable or disable the modem power domain.
This patch adds a flag to enable this new power sequence for SoCs that
need it.

> diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomai=
n/mediatek/mtk-pm-domains.c
> index 8309a4b46afb0..ada9ea8b45b79 100644
> --- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
> +++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
[ ... ]
> @@ -717,7 +751,8 @@ static int scpsys_power_on(struct generic_pm_domain *=
genpd)
>  			goto err_pwr_ack;
>  	}
> =20
> -	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ)) {
> +	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ) &&
> +	    !MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_SECURE_PWRSEQ)) {
>  		ret =3D scpsys_sram_enable(pd);
>  		if (ret < 0)
>  			goto err_disable_subsys_clks;

[Severity: High]
Since the MTK_SCPD_MODEM_SECURE_PWRSEQ flag is now used to skip
scpsys_sram_enable(), should the error path also be updated?

If a failure occurs later in scpsys_power_on(), the code jumps to the
err_disable_sram label:

err_disable_sram:
        if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ))
                scpsys_sram_disable(pd);

Could this attempt to invoke scpsys_sram_disable() for the secure domain?

The commit message notes that firmware prevents modifying the control
register directly. Writing to ctl_offs on the error path might trigger
a secure-world exception.

[ ... ]
> @@ -761,7 +796,11 @@ static int scpsys_power_off_internal(struct scpsys_d=
omain *pd)
>  	if (ret < 0)
>  		return ret;
> =20
> -	if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ)) {
> +	if (MTK_SCPD_CAPS(pd, MTK_SCPD_MODEM_SECURE_PWRSEQ)) {
> +		ret =3D scpsys_modem_sec_power_on(false);
> +		if (ret)
> +			return ret;
> +	} else if (!MTK_SCPD_CAPS(pd, MTK_SCPD_SIMPLE_PWRSEQ)) {
>  		ret =3D scpsys_sram_disable(pd);
>  		if (ret < 0)
>  			return ret;

[Severity: High]
Does placing scpsys_modem_sec_power_on(false) at the beginning of this
function break the hardware power-down sequence?

If the MTCMOS domain is powered off here, won't the subsequent call to
clk_bulk_disable_unprepare() attempt to access clock control registers
in an unpowered domain?

Typically, this causes an asynchronous external abort or bus fault. Should
this secure power-off command be placed at the end of the function,
parallel to scpsys_ctl_pwrseq_off(pd), to ensure clocks and external
isolation are disabled first?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-mt6858-pmd=
omain-v2-0-6293e87fc093@jolla.com?part=3D2

