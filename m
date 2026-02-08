Return-Path: <devicetree+bounces-263669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPFqGRxUiGkCoQQAu9opvQ
	(envelope-from <devicetree+bounces-263669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 10:15:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE881082D8
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 10:15:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CF59301113A
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 09:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F88533D6C9;
	Sun,  8 Feb 2026 09:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z4/eSa/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1712533B6D4
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 09:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770542104; cv=none; b=CYA86TJSy7tHBHhfzMYgzcl4HClaNy4EjbHDia23xXfQdWWoU2ETm3+6G++fmfJLPdBO00DBpykr1FEFZp/eZArDFLEiicmgM7onvtsCCDYARvHw9h7uZuSkbW8b/RrHa+/gAV9az6a0E1k8gJi6pDBlRjmcUf74XjpnowxMmkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770542104; c=relaxed/simple;
	bh=07P0GHy06LjBjv72WxbCcNhfOqTwzCff4ji2MZrUdWk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=BNH2sFzejZkRlsn1LMC8+iF2plV3nmUnKBqy+C//QfJUI88TSSPFLjPj5UjKlTeEwuAPdKXPAI3DvuS9Lqi2t7YITqW4sDOSi07MSKv42Rgosa0hs9Zm4c/zb8JjlEpJmAIwtW3ac0b0GKrWM3YmKpRWs3jU+QlBBwd88oCcexE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z4/eSa/k; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4806f3fc50bso23015115e9.0
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 01:15:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770542102; x=1771146902; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=07P0GHy06LjBjv72WxbCcNhfOqTwzCff4ji2MZrUdWk=;
        b=Z4/eSa/kl3x/7nqPQiXj5nxNsC4HB3n9kfT7eyF8Ulb47Ez74sZgHjcOi4Ry7LPRe+
         fP3v3/isBjft8s/1OMMuw6ioQKP9rsvqdbBQkh60aIQ3ji7vqgKsq8cLhwPa0GyA9+au
         PJ5NltvG1rqEC9TDQNpb4vlXUC7hfNIIkYAtMYHua/r6GAiJL7v8lL4XmnB0xln60/jt
         m7T8VFU1tV281JBJeE9YS+dc5flAuF9oRrJM3N+/lq1ey+pzN38+nMayc2IXP4vNuGiJ
         eZLzs26j/Od8UGXnbIaosHBwoQJjyS7s82oN7thYWIpLZ4v6O2zzXdigzI+k1AqbnVR1
         kDcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770542102; x=1771146902;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=07P0GHy06LjBjv72WxbCcNhfOqTwzCff4ji2MZrUdWk=;
        b=tNgJ/L7+u6BIRN2X2kiHgOSMVX1+pybHsK7DnGPZ6ABtxlvagw4QjF3sR2/SY2e268
         fUaJ4aElRn7SRB9apINXAoKmE1+sTkMRxLyBM6NnnjGzkGQ2OCBv1d0SdyDnJROn5udU
         p0zTsgscbMJjQA6SqkK5k+Q3SgPU3j1G4Smdzuie9I8w8Ta1xMQSzE3c21vWkl711bKV
         WLHOjzK5FfWCo+t/ZFWp49xNAscVGNHJkfSwD9zMsX2GR3L+MFh46m3SeUHKlz7CQrys
         Hh1N8DiB1ZINrGyL1ef5lZplyQLpD2n1FXtSkjvrxV7UHE4NMKUy+7EP84inBJXJdnFl
         qk1g==
X-Forwarded-Encrypted: i=1; AJvYcCXJ7gtRs3NlzsAj2V8Gc+JfYNUQKKvwYreh8B+lTH9AhVbo1uGyxvflNXkmYbfqnbMlvo/qNxa06dnE@vger.kernel.org
X-Gm-Message-State: AOJu0YwMSFS/5TypRrJdDcuwAsw/sN+f7jh0OiY8laAVwuOWylJOzxbN
	Ppih+PGCRsla7DKU+s5GXIYF+HbPPjpQ3zRhHOXMS/CbSqzxK+iwgg9L
X-Gm-Gg: AZuq6aLWnXeh+rRsOKJEfXWQo4pxZtzxPrauWqIA1ZHGG5TVqd26lEd1l0a3fFjTjgf
	+jOX7trHD8SBm1ERxF+mLz1C4Xdc5F9TpoYkI0Kvw86JfIAb7kYMgcEjm8540QsQFLfPe3VanyZ
	sMm00xXXKvTV6daiLNi1fzw3LIpqsjTHbT76UST55DE3YdooaPB19j5+PGVWxMvth8ZF1wpc//m
	Zx8VtTji5wQtxDuyp7X7t9zV1hJUH029cVBI9+2iIQ/aDEFlU4/DJKeOTIIPY7UEihsLmN1+1QK
	otZc/nzt84PqXDhEKNs2pSZBfKX7SRha2DXOcLvwUmVqJtakLc6zg/JwSNrxEZrLA/+EAFtaFHi
	MLzZRbExbofDbJK2YtL9dx6By38G5d/QR3Rtfg4a1zcpRSX7iIFfmLFl/ZPIxYidoT23qQz2Gqd
	vtxow1tl2P2g8ZxJd6ibY9Duf5l6wxzgNNhil7l9fMHqTYdZwPjVNN4HRhatWcrxKQDLk3Gw==
X-Received: by 2002:a05:600c:468b:b0:46e:4b79:551 with SMTP id 5b1f17b1804b1-48320229220mr115256145e9.31.1770542102400;
        Sun, 08 Feb 2026 01:15:02 -0800 (PST)
Received: from ?IPv6:2001:818:ea56:d000:94c4:fb0e:28f:2a8d? ([2001:818:ea56:d000:94c4:fb0e:28f:2a8d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48323c0296dsm163879985e9.1.2026.02.08.01.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 01:15:02 -0800 (PST)
Message-ID: <b3571244f058133a7a0f3b5ca6ef7dc377e3fac8.camel@gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: iio: adc: ad4080: add AD4880 support
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Antoniu Miclaus
	 <antoniu.miclaus@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich	
 <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, David
 Lechner <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?=
 <nuno.sa@analog.com>, Andy Shevchenko	 <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan	 <olivier.moysan@foss.st.com>, Mark
 Brown <broonie@kernel.org>, 	linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org
Date: Sun, 08 Feb 2026 09:16:06 +0000
In-Reply-To: <20260207-evasive-mastodon-of-apotheosis-e663a1@quoll>
References: <cover.1770393792.git.antoniu.miclaus@analog.com>
	 <290f35bcbd2f1ee68333ff65f89b54ec7fbb9c53.1770393792.git.antoniu.miclaus@analog.com>
	 <20260207-evasive-mastodon-of-apotheosis-e663a1@quoll>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263669-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: BDE881082D8
X-Rspamd-Action: no action

On Sat, 2026-02-07 at 11:41 +0100, Krzysztof Kozlowski wrote:
> On Fri, Feb 06, 2026 at 06:07:15PM +0200, Antoniu Miclaus wrote:
> > Add support for the AD4880, a dual-channel 20-bit 40MSPS SAR ADC
> > with integrated fully differential amplifiers (FDA).
> >=20
> > The AD4880 has two independent ADC channels, each with its own SPI
> > configuration interface. This requires:
> > - Two entries in reg property for primary and secondary channel chip se=
lects
>=20
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/su=
bmitting-patches.rst#L597
>=20
> Please run scripts/checkpatch.pl on the patches and fix reported
> warnings.
>=20
> > - Two io-backends entries for the two data channels
> >=20
> > Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> > ---
> > Changes in v2:
> > =C2=A0 - Replace custom adi,aux-spi-cs property with standard reg prope=
rty
> > =C2=A0=C2=A0=C2=A0 containing two entries for multi-channel devices
> > =C2=A0 - Add conditional schema validation for reg and io-backends base=
d on
> > =C2=A0=C2=A0=C2=A0 compatible string
> > =C2=A0 - Update example to use reg =3D <0 1> instead of adi,aux-spi-cs
> > =C2=A0 - Add AD4880 datasheet link
> >=20
> > =C2=A0.../bindings/iio/adc/adi,ad4080.yaml=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 51 ++++++++++++++++++-
> > =C2=A01 file changed, 49 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4080.yaml
> > b/Documentation/devicetree/bindings/iio/adc/adi,ad4080.yaml
> > index ccd6a0ac1539..7108a91bb0bf 100644
> > --- a/Documentation/devicetree/bindings/iio/adc/adi,ad4080.yaml
> > +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4080.yaml
> > @@ -18,7 +18,11 @@ description: |
> > =C2=A0=C2=A0 service a wide variety of precision, wide bandwidth data a=
cquisition
> > =C2=A0=C2=A0 applications.
> > =C2=A0
> > +=C2=A0 The AD4880 is a dual-channel variant with two independent ADC c=
hannels,
> > +=C2=A0 each with its own SPI configuration interface.
> > +
> > =C2=A0=C2=A0 https://www.analog.com/media/en/technical-documentation/da=
ta-sheets/ad4080.pdf
> > +=C2=A0 https://www.analog.com/media/en/technical-documentation/data-sh=
eets/ad4880.pdf
> > =C2=A0
> > =C2=A0$ref: /schemas/spi/spi-peripheral-props.yaml#
> > =C2=A0
> > @@ -31,9 +35,15 @@ properties:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - adi,ad4084
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - adi,ad4086
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - adi,ad4087
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - adi,ad4880
> > =C2=A0
> > =C2=A0=C2=A0 reg:
> > -=C2=A0=C2=A0=C2=A0 maxItems: 1
> > +=C2=A0=C2=A0=C2=A0 minItems: 1
> > +=C2=A0=C2=A0=C2=A0 maxItems: 2
> > +=C2=A0=C2=A0=C2=A0 description:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 SPI chip select(s). For single-channel =
devices, one chip select.
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 For multi-channel devices like AD4880, =
two chip selects are required
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 as each channel has its own SPI configu=
ration interface.
> > =C2=A0
> > =C2=A0=C2=A0 spi-max-frequency:
> > =C2=A0=C2=A0=C2=A0=C2=A0 description: Configuration of the SPI bus.
> > @@ -57,7 +67,8 @@ properties:
> > =C2=A0=C2=A0 vrefin-supply: true
> > =C2=A0
> > =C2=A0=C2=A0 io-backends:
> > -=C2=A0=C2=A0=C2=A0 maxItems: 1
> > +=C2=A0=C2=A0=C2=A0 minItems: 1
> > +=C2=A0=C2=A0=C2=A0 maxItems: 2
>=20
> Instead list the items with minItems, so the order is defined.
>=20

Also looks like we now need 'io-backend-names'.

- Nuno S=C3=A1

> >=20

