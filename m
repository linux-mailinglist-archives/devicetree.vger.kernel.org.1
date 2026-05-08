Return-Path: <devicetree+bounces-294474-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDs7GOLF/WkpigAAu9opvQ
	(envelope-from <devicetree+bounces-294474-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 13:15:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5C84F58F7
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 13:15:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FA04303C62E
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 11:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67715366563;
	Fri,  8 May 2026 11:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOrU2gjT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFC5366548;
	Fri,  8 May 2026 11:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778238892; cv=none; b=V1PQWeltmnuaStkB0E2XDJdciL4X2MfDq+e25hyKNzDj8/F/PjFXCvCVetjNHE75VgW+EpparjycMRXLi48MzQOT2SLQ3NkK87CV/f3+hcgpfGSR2nbOLdnwjXF6dMH2h173lGfiChmu6zaUVUWT6trXv0qwqmXprGaHCVAFCV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778238892; c=relaxed/simple;
	bh=N8/TlknTCIAmm7VK5XnWcLlnoXQaSSgG0+J5zy49JWI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gDX5CoHDsT2AwDcf5EEw6KRfelxJ5lx/+F2z7lS8GZG72ydczaAD3B31HvlRtmi6GLHBQl7yOXmp71SG/aY4wb9Nn7VW65ZAj1e+xDcpcTFCFAcHLE+t2XJAOEo8gKWJXDFLS9eFNsHtOMwYXVwUCMk1IVbVlL4N7ry8NlnrQUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOrU2gjT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9707BC2BCB0;
	Fri,  8 May 2026 11:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778238891;
	bh=N8/TlknTCIAmm7VK5XnWcLlnoXQaSSgG0+J5zy49JWI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=kOrU2gjTEW5egjRZVCOcLfeDnnDB+KpdFQtgFMqBuUqVYaanWXsFvARvYBzrYLloh
	 mZUUO50hZ6MGQH1u1jlzw8Z2j6I65tX3B2q6zAaxV4AeqCV3WE/pDOw4fwbH97BBer
	 GEqBKvxN2t8l5Sb6qrlkCULxQCEgyDAEtrGNjmq1KRGGyQ2m0RyKFd1NUWNX6E/ky7
	 4KAwWo+Zg3an/ANgO2Mivtw73pqy5hdItasST57vNfFj7fCGn5NUuaAZk0YZXS5TSs
	 nxzXg3LsB5GRB7ScPSnDqy0/7VfLjOHHjlLREZU5B9x7vWT+cAJ8H6AUEdUPOgn77w
	 DxS/d8q3a75IA==
Date: Fri, 8 May 2026 12:14:41 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: "Stan, Liviu" <Liviu.Stan@analog.com>, Lars-Peter Clausen
 <lars@metafoo.de>, "Hennerich, Michael" <Michael.Hennerich@analog.com>,
 "Sa, Nuno" <Nuno.Sa@analog.com>, David Lechner <dlechner@baylibre.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] iio: temperature: ltc2983: Add support for ADT7604
Message-ID: <20260508121441.39ad9f65@jic23-huawei>
In-Reply-To: <af2no3bJA9MSjXvV@nsa>
References: <20260427132526.272716-1-liviu.stan@analog.com>
	<20260427132526.272716-3-liviu.stan@analog.com>
	<afCVtXBHIIoLlsRo@nsa>
	<SA5PR03MB83772D8F6A3CC39094DE5241F63C2@SA5PR03MB8377.namprd03.prod.outlook.com>
	<af2no3bJA9MSjXvV@nsa>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: BF5C84F58F7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-294474-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Fri, 8 May 2026 10:19:15 +0100
Nuno S=C3=A1 <noname.nuno@gmail.com> wrote:

> On Thu, May 07, 2026 at 05:25:58PM +0000, Stan, Liviu wrote:
> > Thank you for the comments, and I apologize for the late reply.
> >=20
> > On Mon, Apr 28, 2026,  Nuno S=C3=A1 wrote:
> > ... =20
> > > > Both sensor types expose an IIO_RESISTANCE channel reading from
> > > > the resistance result register bank (0x060-0x00AF), added to
> > > > the regmap readable ranges. Scales are 1/1,024,000 for copper
> > > > trace (result in mOhm) and 1/1024 for leak detector (result
> > > > in Ohm). =20
> > >=20
> > > But for userspace we report both in Ohm? That's the ABI AFAICT. In DT,
> > > you also mention IIO_TEMP is used:
> > > "IIO_TEMP reports coverage percentage"
> > >=20
> > > Can you expand more on what the above means? Are we reporting milli
> > > degrees celcius to userspace? =20
> >=20
> > Yes, both IIO_RESISTANCE channels report in =CE=A9. The commit message =
was=20
> > misleading, it described the register's native units (m=CE=A9 for coppe=
r trace,
> > =CE=A9 for leak detector), not the userspace output. The scales are cho=
sen to=20
> > cancel those units and give =CE=A9 in both cases.
> >  =20
>=20
> ack
>=20
> > As for the IIO_TEMP question, the chip's custom sensor table stores=20
> > temperature in Kelvin (same as the LTC2984 custom RTD table). For the=20
> > leak detector, coverage data is encoded as (P + 273.15) K, so when the=
=20
> > chip converts Kelvin to Celsius on output, after the driver applies the=
=20
> > 1000/1024 scale, the IIO output is P * 1000 millidegrees C - 0% reads
> > as ~0 millidegrees, 100% reads as ~100000 millidegrees. But yes, the=20
> > actual useable quantity is coverage percentage, not temperature. Is the=
re
> > a more suitable existing IIO channel type for coverage percentage?
> >  =20
>=20
> Will defer this to Jonathan but if we can have a real of the coverage
> given the temperature, I guess this is ok. Given that I think we don't ha=
ve
> a better channel (unless we add one?) for this. Or just extended_info...
>=20

I have no idea what coverage percentage means in this case.
Can you provide some more details or a reference?  Google isn't giving me
anything useful.

>=20
> > > I could not find the datasheet so I guess it's not yet public? =20
> >=20
> > Correct, it is not public yet. Will upload the URL once it is.
> >=20


