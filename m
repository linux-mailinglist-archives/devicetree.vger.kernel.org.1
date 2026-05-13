Return-Path: <devicetree+bounces-297117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFpoBR/eBGoMQAIAu9opvQ
	(envelope-from <devicetree+bounces-297117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:25:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDEC53A722
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:25:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29D1F300F53A
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 20:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5F3F38E8B8;
	Wed, 13 May 2026 20:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FK6pimjV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934903148D0
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 20:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778703899; cv=none; b=CD0s8gXi77yT4QjvO0nHcFIw+9Cg6iKrIC9x6lnrF/vdxZmnwdJ4u4wnXG1epIbFdjP+24g06u0JddC95zqozf7ICcGHZo8JXp2UX3NkVs5F6OPQLHCU39kRB3GX1BwsMOztR6cooUPa4Gk7+sWpdJmCGx54gpkgQOIxR68BCfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778703899; c=relaxed/simple;
	bh=keZysk9Jo2zZm8kYcgygPmPDno+p4su0s/TSB0dNJrc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ioab7iCYoU3/XUhkhXlDpUNstxJInshNdSCpcVorWVbzixFBv+s6kyo5aX7AJjtR5eQ474hpywDbC1KsU1qzx3SeGnMC89Djq2nhxGCFQs/a2t+Cb7ULDhPNlYTOzO948OBw/xgfuXRZ0JjVLCWosZUm+PP+VGwR6UJf/sTVcNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FK6pimjV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 010C4C19425;
	Wed, 13 May 2026 20:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778703899;
	bh=keZysk9Jo2zZm8kYcgygPmPDno+p4su0s/TSB0dNJrc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=FK6pimjVYT1+kBEODB3fhY0MAxw3kJpQf3cVXo6J8pXQ6LGPjcWUXze4DX3dQKfg4
	 a/IPxQPe7RYGxgjTPeBYrnAif6L8LSYTPQ3PY3VI2h+Ymm9SHsI3M8qp4eBvPuUlR6
	 6pxqbXMVFiTrbt87omPWxEbvaNoMFhFo98UQURCpcZ0XJG8XK+NC+b8YUMovyAfEAS
	 mVaBTO1/W3nSug0sRayO1Wy+As9tYHyO7hAYerQz0vHx+TNKb+quj0WtTHGLRsjQ/T
	 xsFUmeLWaunU1j3DbviCnfR5QdT93+11MW0ypBtKB2/cZ9L8QVFOyTRN1tkWhtH8Pr
	 I72STWEBDxgLg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 10/16] mfd: mt6397-core: add mt6323 thermal support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Roman Vivchar via B4 Relay" <devnull+rva333.protonmail.com@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260512-mt6323-v2-10-3efcba579e88@protonmail.com>
References: <20260512-mt6323-v2-10-3efcba579e88@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 20:24:58 +0000
Message-Id: <20260513202459.010C4C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 6CDEC53A722
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297117-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rva333.protonmail.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The `mtk_pmic_thermal` driver causes a kernel panic (NULL pointer =
dereference) if instantiated with a malformed device tree that lacks the ex=
pected parent hierarchy.
- [High] The `mtk_pmic_thermal` driver aborts probing if the optional `nvme=
m-cells` device tree property is missing, breaking support for uncalibrated=
 operation and violating its DT binding.
--

commit 3e8b78507795872b5938fe1527d98ac0e8b204df
Author: Roman Vivchar <rva333@protonmail.com>

mfd: mt6397-core: add mt6323 thermal support
   =20
The mt6323 PMIC temperature can be measured using AUXADC channel.
Register the thermal in the mt6323 devices array to allow the
corresponding driver to probe using compatible string.

> diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
> index 2d9419b80a5c3..061ac242f1f8b 100644
> --- a/drivers/mfd/mt6397-core.c
> +++ b/drivers/mfd/mt6397-core.c
> @@ -151,6 +151,9 @@ static const struct mfd_cell mt6323_devs[] =3D {
>  		.num_resources =3D ARRAY_SIZE(mt6323_pwrc_resources),
>  		.resources =3D mt6323_pwrc_resources,
>  		.of_compatible =3D "mediatek,mt6323-pwrc"
> +	}, {
> +		.name =3D "mt6323-thermal",
> +		.of_compatible =3D "mediatek,mt6323-thermal",

Does the mtk_pmic_thermal driver gracefully handle missing device tree
properties when instantiated here?

Looking at mtk_pmic_thermal_get_calib_data():

drivers/thermal/mediatek/mtk_pmic_thermal.c:mtk_pmic_thermal_get_calib_data=
() {
	...
	cell =3D nvmem_cell_get(dev, NULL);
	if (IS_ERR(cell))
		return PTR_ERR(cell);
	...
}

If the optional nvmem-cells property is missing, nvmem_cell_get() returns
an error. This causes the driver to unconditionally abort probing, which
prevents it from reaching its intended default calibration fallback.

Can this also cause a kernel panic if instantiated with a device tree that
lacks the expected parent hierarchy?

Looking at mtk_pmic_thermal_probe():

drivers/thermal/mediatek/mtk_pmic_thermal.c:mtk_pmic_thermal_probe() {
	...
	mt->regmap =3D dev_get_regmap(dev->parent->parent, NULL);
	if (!mt->regmap)
		return dev_err_probe(dev, -ENODEV, "failed to get regmap");
	...
}

If the thermal device is instantiated from a top-level node rather than as
an MFD child, dev->parent points to the platform_bus device. Because
platform_bus.parent is NULL, dev->parent->parent resolves to NULL. Passing
this NULL pointer to dev_get_regmap() triggers a panic when the core
attempts to acquire the devres_lock spinlock.

>  	},
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512-mt6323-v2-=
0-3efcba579e88@protonmail.com?part=3D10

