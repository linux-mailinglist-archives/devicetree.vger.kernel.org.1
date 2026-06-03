Return-Path: <devicetree+bounces-306166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hLKxMtoQIGqDvQAAu9opvQ
	(envelope-from <devicetree+bounces-306166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 13:32:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E90A6637177
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 13:32:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=protonmail.com header.s=protonmail3 header.b=MRpgLKYK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306166-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306166-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=protonmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CA0E7303E2D7
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 11:24:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 603AC389DF3;
	Wed,  3 Jun 2026 11:24:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-24430.protonmail.ch (mail-24430.protonmail.ch [109.224.244.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E94230FC1B
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 11:24:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780485891; cv=none; b=kzyaSqdOz8+lPYpAzL/WhQ8eXo4ZOdh6ehabazULRtEsNY9gHVcIMKzqaFM2wwiQaGyDfTm7IpTaxbalZo1SoPeXGsddkmXjkSaavTz3evRlR8rJW8cJ1zZkOjhxhFStxI1QwxS070wZeAao2xwZTaqnJvqx/SbcUB9af7c0PXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780485891; c=relaxed/simple;
	bh=OdfGuMOh314Lom/keymekeDmoGpb8VppsbCHJXeMeK0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=becQnyiAeMMuSNI5Y0clorgDXHCACpjV2aRF/6ogTCroIqUPBlsCcghm59wE8Kx0RH7Fiqa1HRJWcu2N6T87QdEvKQmP3nvOfn7JsFjscWA+9SxhRr/MMl7GyQcbRNFpCaQjj8zSQjrBYiubvdUgt7hG0S6t5XkqzXORqUTgwCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=MRpgLKYK; arc=none smtp.client-ip=109.224.244.30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1780485882; x=1780745082;
	bh=P45qutj83EPuBcxc7lV8YTtEi6GE80sIlzmJ+HSce+I=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=MRpgLKYK4k+5y4H94xvCl6mldixarjou5AVOOKQYEqmpdAnG+mmwrV7krO1EWADHv
	 aIWlAxRZZkhxKlNzNIp8edSNuRtsGBAMb8BQ/V4mwEUjIc5rp7M4567lNK2PMvInP4
	 6TnQ/n4H15vzo/wjeOXPTbphLcVQyf0rUIwCEFYOx53sKXri9+aEPkiKnG+ujwAxHx
	 VDQLLeqI+1ZU/lRanp1vRHwQxSENibnLBQLKaKPmvSFXqOdUfSY86KDTPvwQHvVTG3
	 8UzWb8SQ54cbR9n6k0nOWhrEsmn9dUNCCx8j/skIdpm4LaAnk08ID8F4b9p+kJ+1zd
	 QwGCJc5ywhPvQ==
Date: Wed, 03 Jun 2026 11:24:37 +0000
To: =?utf-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>
From: Roman Vivchar <rva333@protonmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH 2/4] iio: adc: mt6323-auxadc: add mt6323 PMIC AUXADC driver
Message-ID: <RRvh9UBBrqdfKoCLaqgfcQ06UY-BSM2hQ0F6F1YkdB2k2RXYMQmlCG4phXk72oGY03t1g1kDI4z-SDeKlYkUv84-AjNLaWK7tDQlpEFQVKk=@protonmail.com>
In-Reply-To: <2df4cad5e29fbcb4c5c5f59ea0bf322c7a301bdc.camel@gmail.com>
References: <20260602-mt6323-adc-v1-0-68ec737508ee@protonmail.com> <20260602-mt6323-adc-v1-2-68ec737508ee@protonmail.com> <2df4cad5e29fbcb4c5c5f59ea0bf322c7a301bdc.camel@gmail.com>
Feedback-ID: 173184497:user:proton
X-Pm-Message-ID: 23b503d43eacd82716b8210413e6edddc9faa175
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:noname.nuno@gmail.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lee@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:nonamenuno@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[rva333@protonmail.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-306166-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_FROM(0.00)[protonmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,infradead.org:email,protonmail.com:mid,protonmail.com:dkim,protonmail.com:from_mime,protonmail.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E90A6637177

Hi Nuno,

On Tuesday, June 2nd, 2026 at 7:42 PM, Nuno S=C3=A1 <noname.nuno@gmail.com>=
 wrote:

> On Tue, 2026-06-02 at 15:46 +0300, Roman Vivchar via B4 Relay wrote:

...

> >
> > +MEDIATEK MT6323 PMIC AUXADC DRIVER
> > +M:=09Roman Vivchar <rva333@protonmail.com>
> > +L:=09linux-iio@vger.kernel.org
> > +L:=09linux-mediatek@lists.infradead.org (moderated for non-subscribers=
)
> > +S:=09Maintained
> > +F:=09drivers/iio/adc/mt6323-auxadc.c
> > +F:=09include/dt-bindings/iio/adc/mediatek,mt6323-auxadc.h
>
> The above file was not added in this patch

The header file is added in patch 1 (dt-bindings). Following Krzysztof's
feedback on the previous version, I squashed the MAINTAINERS into this patc=
h.
Please let me know if I misunderstood anything.

...

> > +=09MTK_PMIC_IIO_CHAN(accdet,    MT6323_AUXADC_ACCDET,    MT6323_AUXADC=
_ADC7,
> > IIO_VOLTAGE),
> > +};
>
> All of the above are IIO_VOLTAGE. Just remove _ch_type then.

Ack.

> > +
> > +/**
> > + * struct mt6323_auxadc - Main driver structure
> > + * @regmap:        Regmap from PWRAP
> > + * @lock:          Mutex to serialize AUXADC reading vs configuration
> > + *
> > + * The MediaTek MT6323 (as well as a lot of other PMICs) has the follo=
wing
> > hierarchy:
> > + * PMIC AUXADC <- PMIC MFD <- SoC PWRAP (wrapper for PWRAP FSM)
> > + *
> > + * Therefore, PWRAP regmap should be obtained using dev->parent->paren=
t.
> > + */
>
> The above kerneldoc seems unnecessary to me.

Ack.

...

> > +=09case IIO_CHAN_INFO_RAW:
> > +=09=09scoped_guard(mutex, &auxadc->lock) {
> > +=09=09=09ret =3D mt6323_auxadc_prepare_channel(auxadc);
> > +=09=09=09if (ret)
> > +=09=09=09=09return ret;
> > +
> > +=09=09=09ret =3D mt6323_auxadc_request(auxadc, chan->channel);
> > +=09=09=09if (ret)
> > +=09=09=09=09return ret;
> > +
> > +=09=09=09/* Hardware limitation: the AUXADC needs a delay to become
> > ready. */
> > +=09=09=09fsleep(300);
> > +
> > +=09=09=09ret =3D mt6323_auxadc_read(auxadc, chan, val);
> > +=09=09=09if (ret)
> > +=09=09=09=09return ret;
>
> Could be return mt6323_auxadc_read(...)

The mt6323_auxadc_read returns 0, while IIO expects IIO_VAL_INT (defined as=
 1).
Should the mt6323_auxadc_read function return 1 for success?

Best regards,
Roman

