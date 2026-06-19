Return-Path: <devicetree+bounces-313706-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LplEEHsKNWpMmQYAu9opvQ
	(envelope-from <devicetree+bounces-313706-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 11:23:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C790F6A4EFB
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 11:23:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OrQdIYPZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313706-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-313706-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1D31A30087F1
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 09:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA684311940;
	Fri, 19 Jun 2026 09:23:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62B12E6CB8
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 09:23:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781860983; cv=none; b=tn89D6w4gn97dPb7FTK0D22l43HhO7Ow3tGkFWnSSiWy9XPq5o5tKKZRE1WCRKuZKfUgDAPoGDEubSw7TCYiQN0NhfL+Ap7sLs12K+3PJsLiTt5n7R4LXjUnqFDP8NEVZb810fg4TzDjw5ntS7Ua4VQO4FDt16zzWT3Zsg3MfeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781860983; c=relaxed/simple;
	bh=UY5Z7R4xiCUf5x+eAeUbKyxqPiU5eNzFIhaVUOkjPLQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ajHN7P5mJTBUoKjhj/+bha5Fg/lNzgZ7yq5VQaIt6F+KnTwgGw/ezEbkrAFe7ZwdwENd6mynMR4q2xBzQth7QWJgHs8KvtCbDJSOrv2U58SPw/toOkKG4s+3Y9PwJWxvhpYtnRkNqHZlNVC85bLrqt/zgjOzbOYZTF1zPqUSeIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrQdIYPZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D68CF1F000E9;
	Fri, 19 Jun 2026 09:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781860982;
	bh=GXT9765pqnJW1/eGdkBIUUJJq+xEimrZNw0fwIVJj3g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OrQdIYPZLVqJ9oFt2GDSczuLNCSe7lk4ctNURkArtWvRyCC0fjEF83YiYWz10tzqv
	 ws4CEsE2POIO/cLpUl2yXEO+A7hfnx7CcG7m27rfENXXqppN5d/gh/2leTzEZ5bR6A
	 X5rSsxceWGjSBml7TZhVknfcp1a2twcbwLGAF3HpHJWUTTPB+hpph1qXG2SqR0ERbC
	 TU6nG1cEVm85zAEyvREaGlzcOex4Vxv6YWSBXOL6sQkgPqqCBEQsft7O8shw6SfPna
	 13aCaczy+wioRZK2VZL3l7gl4zDIf2x2EUS5ygEwNVkgEDNMc6Pb5PzqsA9d9dZWPb
	 eoADc1c2ftbqg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] phy: rockchip: phy-rockchip-inno-csidphy: fix
 rk1808 hsfreq table
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gerald Loacker" <gerald.loacker@wolfvision.net>
Cc: olteanv@gmail.com, vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260619-feature-mipi-csi-dphy-4k60-v2-1-323356c2cc2e@wolfvision.net>
References: <20260619-feature-mipi-csi-dphy-4k60-v2-0-323356c2cc2e@wolfvision.net>
 <20260619-feature-mipi-csi-dphy-4k60-v2-1-323356c2cc2e@wolfvision.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 09:23:00 +0000
Message-Id: <20260619092301.D68CF1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313706-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gerald.loacker@wolfvision.net,m:olteanv@gmail.com,m:vkoul@kernel.org,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,linaro.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,wolfvision.net:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C790F6A4EFB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Valid lowest frequency ranges are incorrectly rejected because `hs=
freq =3D=3D 0x00` is treated as an error by the `if (!hsfreq)` check.
--

commit d7a2518a95d2ab7b8f2baea0da9f35646ffb6136
Author: Gerald Loacker <gerald.loacker@wolfvision.net>

phy: rockchip: phy-rockchip-inno-csidphy: fix rk1808 hsfreq table

The rk1808 hsfreq table previously capped at 2499 Mbps, preventing a data r=
ate
of exactly 2500 Mbps. This commit extends the final entry to 2500 Mbps to
fully support this rate, which is also essential for RK3588 as it reuses
this array.

> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c b/drivers/p=
hy/rockchip/phy-rockchip-inno-csidphy.c
> index c79fb53d8ee5c..5281f8dea0ad3 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> @@ -170,7 +170,7 @@ static const struct hsfreq_range rk1808_mipidphy_hsfr=
eq_ranges[] =3D {
>  	{ 299, 0x06}, { 399, 0x08}, { 499, 0x0b}, { 599, 0x0e},
>  	{ 699, 0x10}, { 799, 0x12}, { 999, 0x16}, {1199, 0x1e},
>  	{1399, 0x23}, {1599, 0x2d}, {1799, 0x32}, {1999, 0x37},
> -	{2199, 0x3c}, {2399, 0x41}, {2499, 0x46}
> +	{2199, 0x3c}, {2399, 0x41}, {2500, 0x46}
>  };
> =20
>  static const struct hsfreq_range rk3326_mipidphy_hsfreq_ranges[] =3D {

[Severity: High]
This isn't a bug introduced by this patch, but does the configuration logic
reject valid low frequency ranges?

Looking at rk3326_mipidphy_hsfreq_ranges[], the first entry configures low
data rates using 0x00:

    { 109, 0x00 }, ...

In rockchip_inno_csidphy_configure(), hsfreq is initialized to 0 and valida=
ted
with:

	for (i =3D 0; i < drv_data->num_hsfreq_ranges; i++) {
		if (drv_data->hsfreq_ranges[i].range_h >=3D data_rate_mbps) {
			hsfreq =3D drv_data->hsfreq_ranges[i].cfg_bit;
			break;
		}
	}
	if (!hsfreq)
		return -EINVAL;

When a low data rate is requested (e.g., <=3D 109 Mbps for rk3326), the loop
correctly assigns hsfreq =3D 0x00. However, the subsequent if (!hsfreq) che=
ck
treats this valid configuration as an error state and returns -EINVAL.

This same pattern appears in drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
during rk_dphy_configure() where low-speed configurations are similarly
rejected.

Could the validation check be updated to differentiate between an uninitial=
ized
value and a valid 0x00 configuration?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619-feature-mi=
pi-csi-dphy-4k60-v2-0-323356c2cc2e@wolfvision.net?part=3D1

