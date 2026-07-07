Return-Path: <devicetree+bounces-322137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +wxbNZ8QTWoAugEAu9opvQ
	(envelope-from <devicetree+bounces-322137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:43:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9D271CC6B
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:43:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BosXBH9r;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322137-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322137-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0B24430607B9
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA023426406;
	Tue,  7 Jul 2026 14:27:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492523B2D0D
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 14:27:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783434438; cv=none; b=WdoAkEEq69i99SqsGF6SX8lkh95peHI3Wals0IU4ElqElW80L4hcyL4sRhsFu9jljEBX6V0m1CbsxeO2bjoYzX8XbHv+MffiQihcCl87HLlIG7AeMakYEbHIT9trcEMwajp0gEeZBBWlgVCvB4IQKAvrTAiXOnif2z+3lerxuzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783434438; c=relaxed/simple;
	bh=rj2QpPqN7ySx5bLcwkgexTZWvVT8kHzevHavuTot/MU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UCPnaJ/igHKuSaHRCEny7X7P2Wf8Hev5LKi5Vr/sSLhOjmOZFpcrt7DPHDygD/Zy7TRqWBKamlWgqcIopJ4BLUTVuSmi5cQN3meR0JvzfjtDa3B8ifbyWXWim19DPk/1JkgevKnQH6JvtNYVWZa12txFiHeJmkyCent3aDq0YCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BosXBH9r; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D03021F00AC4;
	Tue,  7 Jul 2026 14:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783434434;
	bh=9ejetAl8MzDSoFJYgSbHLvtbPxpoS6PlRJW41QuvIVs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BosXBH9rxDr4wDdzAsIV/yyFwkLkT8dXAnXvl3sUysQ1HPPsxjVNQOsIuvaunYhQF
	 j5FYwA/BVxVTU9wn3cmScF4NKsbDF/VG09DmkdhmnikWggql1pv8XBSXhLxzewdkYD
	 OQ5MMrq1t9zeATktAKdhwFdB/6nPRfJHOYYqE+SEqS9mVJ0cVPgQdZEPECZFG6toSS
	 MYWaNf6n1SeAUYfSSKfEIGKAB+qVFR9SDmvaCws1KpNBtBzwQIlTcMD1L+ewrHw79F
	 nIxjSQsLRfv1l1OqA6yBL0OHiDNVLIvb3g/HErKa6p8ZkmCz/SpfSx41db8XSvolgV
	 RtZfq7lTtOyGw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 02/12] phy: phy-mtk-dp: Rename regs to regmap in
 struct mtk_dp_phy
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, robh@kernel.org
In-Reply-To: <20260707141931.191172-3-angelogioacchino.delregno@collabora.com>
References: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
 <20260707141931.191172-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 14:27:13 +0000
Message-Id: <20260707142713.D03021F00AC4@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322137-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-phy@lists.infradead.org,m:olteanv@gmail.com,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,gmail.com,linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B9D271CC6B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing NULL check for `dev->platform_data` before dereferencing i=
t in `mtk_dp_phy_probe`.
--

--- Patch [2]: [PATCH v2 02/12] phy: phy-mtk-dp: Rename regs to regmap in s=
truct mtk_dp_phy ---
commit b41d4072a9780ff4f56cf8b17085088b1f2777ae
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

phy: phy-mtk-dp: Rename regs to regmap in struct mtk_dp_phy

This commit renames the regs member of struct mtk_dp_phy to regmap to
improve readability and align with common kernel driver naming conventions.

> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy=
-mtk-dp.c
> index d7024a1443358..bf7b3a95e72d2 100644
> --- a/drivers/phy/mediatek/phy-mtk-dp.c
> +++ b/drivers/phy/mediatek/phy-mtk-dp.c

[ ... ]

> @@ -176,7 +176,7 @@ static int mtk_dp_phy_probe(struct platform_device *p=
dev)

[Severity: High]
This is a pre-existing issue, but does mtk_dp_phy_probe() lack a NULL check=
=20
for dev->platform_data before dereferencing it?

If the platform device is probed without platform_data (for example, if=20
manually bound via the sysfs bind interface to a generic platform device=20
lacking this data), dev->platform_data will be NULL.

Looking at the code in mtk_dp_phy_probe():

    regs =3D *(struct regmap **)dev->platform_data;
    if (!regs)
        return dev_err_probe(dev, -EINVAL, ...

Dereferencing dev->platform_data to assign regs before checking if=20
platform_data itself is valid will cause a kernel oops.

>  	if (!dp_phy)
>  		return -ENOMEM;
> =20
> -	dp_phy->regs =3D regs;
> +	dp_phy->regmap =3D regs;
>  	phy =3D devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
>  	if (IS_ERR(phy))
>  		return dev_err_probe(dev, PTR_ERR(phy),

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707141931.1911=
72-1-angelogioacchino.delregno@collabora.com?part=3D2

