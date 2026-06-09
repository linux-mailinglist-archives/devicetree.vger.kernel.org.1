Return-Path: <devicetree+bounces-309057-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N9k6NXIaKGrv9wIAu9opvQ
	(envelope-from <devicetree+bounces-309057-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 15:51:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2915E660BCD
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 15:51:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Ja7X0Dcf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309057-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309057-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D633306B367
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 13:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED9ED419300;
	Tue,  9 Jun 2026 13:43:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6896285041
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 13:43:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781012591; cv=none; b=Ft2dJm1ivHdwmt7AfuiGvAtAd+iIhRO51sQecitZjpr4atS6LhBybr10ikVVWNclzem0xFiZXISL5jDAP1xsskbnfUZqjtNmWMog54s2atXdVnGusqqSR0dCMbcxOshapL8VeSWyJnEttOVlDXccqJMoCHGx03HsATSc4whnAqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781012591; c=relaxed/simple;
	bh=pwg6w8MI6zmg3WxTFVV/MwwOb4r2Qq9zNexMXkgLTH0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PYVKAde09qlHnY7eIgKPCfBzdGC9eySclnZe3b9cYNFnJh+BQPSsBJ8bXoa5blz8N7VBZwwgVayz4C+VNwP7MMH6AgqNZreAPn2ADyYRLoPej1xJDQlHcBDp8jR1a2/mpItnfTniPAPvdYSrnJs2dNVCMuWzeQTpX8O+gfHN/FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ja7X0Dcf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 408411F00898;
	Tue,  9 Jun 2026 13:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781012590;
	bh=Y2p6U5/kKWGNN3Yr3exW4wamDiBU95RI38EM2gsCNhU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ja7X0Dcf+UsGauZszoctXGicq/WENGEfbMsbyfAduDy8oYhjX1qvNUuUq3rk7wSJd
	 JL00CX6Fbwncz5pyfWIvBDdCnGSPaTMM4qzZtfJ/4TLURulcx8mW/GntORh8Mp4I9W
	 4pwcPBjjztxV+6Sjouu3GfXAPgmxeuNzOK14BBfqb20qgPVYfWdsijLTQEHBcNTq5M
	 rDjiiamlYslhl5cDjNbbtmdcRG1tCkw/XL6VRk//pXCdqBYLpJ4Bp3y5uTQiPNLwUT
	 ZfUHCNqwEAjxr82VSwU2gfNIz0cQxw6fewsk43gCG0ieApK72dzfo2/zvDuBHT6e1B
	 6VsQONlDueOjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/4] mfd: mt6397-core: add mt6323 AUXADC support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Roman Vivchar via B4 Relay" <devnull+rva333.protonmail.com@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609-mt6323-adc-v2-3-aa93a22309f9@protonmail.com>
References: <20260609-mt6323-adc-v2-3-aa93a22309f9@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 13:43:09 +0000
Message-Id: <20260609134310.408411F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-309057-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+rva333.protonmail.com@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rva333.protonmail.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2915E660BCD

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Setting the clock power down bit disables the AUXADC clock instead=
 of enabling it.
--

commit bab9fefa6ba4c56ff9360f203a97d192c15f6cd1
Author: Roman Vivchar <rva333@protonmail.com>

mfd: mt6397-core: add mt6323 AUXADC support

The mt6323 PMIC includes an AUXADC. Register the AUXADC in the mt6323
devices array to allow the corresponding driver to probe using compatible
string.

> diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
> index 3e58d0764c7e0..013b0857fb548 100644
> --- a/drivers/mfd/mt6397-core.c
> +++ b/drivers/mfd/mt6397-core.c
> @@ -125,6 +125,9 @@ static const struct resource mt6323_pwrc_resources[] =
=3D {
> =20
>  static const struct mfd_cell mt6323_devs[] =3D {
>  	{
> +		.name =3D "mt6323-auxadc",
> +		.of_compatible =3D "mediatek,mt6323-auxadc",

[Severity: High]
Does enabling this device expose an issue in the mt6323-auxadc driver's clo=
ck
initialization?

Looking at mt6323_auxadc_init() in drivers/iio/adc/mt6323-auxadc.c, it writ=
es
a 1 to the power down register bit:

	ret =3D regmap_set_bits(map, MT6323_TOP_CKPDN2, AUXADC_TOP_CKPDN2_CTL_CK);
	if (ret)
		return ret;

Since CKPDN registers in MediaTek PMICs are Clock Power Down registers,
setting a bit to 1 explicitly disables the clock, while clearing it to 0
powers it up.

Because the AUXADC clock is explicitly disabled here and never turned back
on, will ADC read requests in mt6323_auxadc_read_raw() fail or time out
waiting for AUXADC_READY_MASK?

If the entire driver is functionally broken due to this, could it
subsequently break dependent features like battery management and thermal
protection?

> +	}, {
>  		.name =3D "mt6323-rtc",
>  		.num_resources =3D ARRAY_SIZE(mt6323_rtc_resources),
>  		.resources =3D mt6323_rtc_resources,

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-mt6323-adc=
-v2-0-aa93a22309f9@protonmail.com?part=3D3

