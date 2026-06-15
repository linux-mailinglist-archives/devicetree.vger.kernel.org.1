Return-Path: <devicetree+bounces-312210-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q/8NGm+GMGpzUAUAu9opvQ
	(envelope-from <devicetree+bounces-312210-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 01:10:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF6768A8A1
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 01:10:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=protonmail.com header.s=protonmail3 header.b=ihtlWpy5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312210-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-312210-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=protonmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5DF69300C0C3
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 23:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05F073BED55;
	Mon, 15 Jun 2026 23:10:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-05.mail-europe.com (mail-05.mail-europe.com [85.9.206.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49E63BED31
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 23:10:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781565037; cv=none; b=gOEP77JKA5pIaUmYWjYgbNE8yT+H9h8v69VJcui0FYcyJVWobcgTt8ZhrpGolfjtlnqOqyWhtcvvUka+m2eeqY1VchrVRu/a9CHOHkBOv2wuUL3LVnz6CVPtqK+ipXxQTqtEkRchnBHLEFP+3VBx/11M7FSMyi+q9pbRAsbizOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781565037; c=relaxed/simple;
	bh=hbHVIkwcbFkz9MPv+duQJkasWp3O14EJ/lbKHL2f1F4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=W0+jyeXw0GsMnfXP9D2lzIhMOk+uCa7IZjligmpVikwByjhjO1vejpzCv6u+/t6MLfy2joCQMXl/NGn4abqn6IGVleGLFDJ1AGthL8Apg2HECBqZ1wpLhOkbxcX/NiIS4xcMKL1DVH1iZfcpBbfSCjMTvK4swXvH8+fWqheNy8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=ihtlWpy5; arc=none smtp.client-ip=85.9.206.169
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1781565025; x=1781824225;
	bh=HkBQfJ5TxwQinnF2S5Nb1OwyL2FsUW+lAQB1x+AgnVc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ihtlWpy52uFD/PcKYtX0bwhDVrPMOQVTrn4j23/qRLTnFvUE9KEr3rvvYRkmFIBzS
	 U5ZD8uxPvPZoogWGtS4pEY5TH60k6pe2kWDytm7X4u2Y3qfkYTV0NseUbTYiwzG/K7
	 g4PbtS46MUk9J6kXchKsNYhOeDPb8QDXdVcqUxiGsKUqz45zU99mpOEUDNji2KNRlP
	 g2eJAxBAMMTkoA5EhBWCppM9hIwqi5MXNHf5wTjhTuH4oWXysMPeMtxn7Iu5vyzGoJ
	 ZuIR7HHXvovo2Dh2PCgSz8px0MFus0qO9141fKTQo6sh+OE2C1v7BUR3uRdZ+5duXO
	 mFAA8E4dzBNXw==
Date: Mon, 15 Jun 2026 23:10:20 +0000
To: Lee Jones <lee@kernel.org>
From: Roman Vivchar <rva333@protonmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH 3/4] mfd: mt6397-core: add mt6323 AUXADC support
Message-ID: <ycj3k-vV_tQv6u9OfCTP9G9kkeeE-_dbzg_oeHPXn2pb1oZe_Sa1BH6GUGuSd_gD6uPSJiTX7tz6MTlFcqGdWX-f3GMfyW2sLgAOCw6YeNE=@protonmail.com>
In-Reply-To: <20260611163748.GB1212816@google.com>
References: <20260602-mt6323-adc-v1-0-68ec737508ee@protonmail.com> <20260602-mt6323-adc-v1-3-68ec737508ee@protonmail.com> <20260611163748.GB1212816@google.com>
Feedback-ID: 173184497:user:proton
X-Pm-Message-ID: 182c5d52f74017e86f4085f21809f8879f8a1b6b
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312210-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[rva333@protonmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[protonmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[protonmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rva333@protonmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,protonmail.com:dkim,protonmail.com:email,protonmail.com:mid,protonmail.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0AF6768A8A1

Hi Lee,

On Thursday, June 11th, 2026 at 7:37 PM, Lee Jones <lee@kernel.org> wrote:
> Interesting.  Has this been considered?
>=20
> /* Sashiko Automation: Issues Found (1 Findings) */
>=20
> On Tue, 02 Jun 2026, Roman Vivchar via B4 Relay wrote:
>=20
> > From: Roman Vivchar <rva333@protonmail.com>
> >
> > The mt6323 PMIC includes an AUXADC. Register the AUXADC in the mt6323
> > devices array to allow the corresponding driver to probe using compatib=
le
> > string.
> >
> > Tested-by: Ben Grisdale <bengris32@protonmail.ch> # Amazon Echo Dot (2n=
d Generation)
> > Signed-off-by: Roman Vivchar <rva333@protonmail.com>
> > ---
> >  drivers/mfd/mt6397-core.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
> > index 3e58d0764c7e..013b0857fb54 100644
> > --- a/drivers/mfd/mt6397-core.c
> > +++ b/drivers/mfd/mt6397-core.c
> > @@ -125,6 +125,9 @@ static const struct resource mt6323_pwrc_resources[=
] =3D {
> >
> >  static const struct mfd_cell mt6323_devs[] =3D {
> >  =09{
> > +=09=09.name =3D "mt6323-auxadc",
> > +=09=09.of_compatible =3D "mediatek,mt6323-auxadc",
>=20
> [Severity: High]
> Does adding this compatible string expose an unhandled edge case in the
> auxadc driver?
>=20
> If this device is instantiated directly from a Device Tree without an MFD
> parent (e.g., at the DT root), dev->parent could be the platform bus
> (which has a NULL parent) or NULL itself.
>=20
> Looking at mt6323_auxadc_probe() in drivers/iio/adc/mt6323-auxadc.c:
>=20
>     regmap =3D dev_get_regmap(dev->parent->parent, NULL);
>=20
> Could blindly dereferencing dev->parent->parent here, or passing a NULL
> device to dev_get_regmap() (which calls devres_find()), result in a
> kernel oops if probed as a root node?

This is intended behavior, ADC always should be probed as a child of
the mt6323 MFD because it doesn't have own MMIO space. Otherwise the
devicetree is malformed. Recent mt6359 ADC driver has same thing with
dev->parent->parent regmap.

Best regards,
Roman

