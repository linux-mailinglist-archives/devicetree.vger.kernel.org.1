Return-Path: <devicetree+bounces-320498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QjieFUJDSWouzwAAu9opvQ
	(envelope-from <devicetree+bounces-320498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 19:30:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF922708195
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 19:30:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b="TUpm/wbp";
	dmarc=pass (policy=none) header.from=linux.dev;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320498-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320498-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 94FD53012CA8
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 17:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10A473749E2;
	Sat,  4 Jul 2026 17:30:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta0.migadu.com (out-178.mta0.migadu.com [91.218.175.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E09C348C65
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 17:30:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783186240; cv=none; b=CF6km+W1iKhdLBQe8KOhlZUz+quYMP7jW3riX7ZGaDN3nMb+3TWwPd0ybz66C6hbu2DlocdKZ9k3y0iPB+mPn8nK4zkzc0CdyMQzwy7HhHfZ9hcb29B5Pvf1ze9u9thsDTuw7Ua4nHkNM8rtM6hCQe2e2OTyOpE44XSEa3fdsHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783186240; c=relaxed/simple;
	bh=QTFOXL/7uxf5Vhh2+P3ga7eNXu/yhxwvoCw8hBStYkM=;
	h=MIME-Version:Date:Content-Type:From:Message-ID:Subject:To:Cc:
	 In-Reply-To:References; b=Ansdr2nB0SM99oLd0MabvWdNbumKtm0j0Axp80w32ZvCZxotFu2shXI3tjLQ/hVwjMflCkha/HdpjJFTI049ei1HR+bDdB9rA4irVVW+xhNEdUR9NZCBWmiAxmtATbn31qDm4T/FYNeAwlugmJFmGm/ylTjUCB7O6NFCEDqyrWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=TUpm/wbp; arc=none smtp.client-ip=91.218.175.178
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1783186225;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=njzJqdpKKKXqA0+a5qBHy09jk5HzWBDgE2/TwwrdOYA=;
	b=TUpm/wbpG3Alc1Qo+pQ7NuVKHtgH44+IAwikQGyv0ATrmjWkMJlpyrmKIQ7ZnnRqCpMTl2
	t/UHXts6aUv/w9hV5O3CjlL398fqHeXz1AiEXctEd1sz9geS7tUs1xJm5pLE5i3o+yDoet
	oXgd/xFJOAc9EX4MI0FKuwehQr4dhRw=
Date: Sat, 04 Jul 2026 17:30:23 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Siratul Islam" <siratul.islam@linux.dev>
Message-ID: <f7aba67831fbee343c105bba4bb531ce6f1c1c50@linux.dev>
TLS-Required: No
Subject: Re: [PATCH v1 2/2] iio: adc: add MAX40080 current-sense amplifier
 driver
To: "Andy Shevchenko" <andriy.shevchenko@intel.com>
Cc: "Stefan Popa" <stefan.popa@analog.com>, "Jonathan Cameron"
 <jic23@kernel.org>, "David Lechner" <dlechner@baylibre.com>,
 "=?utf-8?B?TnVubyBTw6E=?=" <nuno.sa@analog.com>, "Andy Shevchenko"
 <andy@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Ciprian
 Hegbeli" <ciprian.hegbeli@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <akk9d-Zrx52C674x@ashevche-desk.local>
References: <20260703102941.1141341-1-stefan.popa@analog.com>
 <20260703102941.1141341-3-stefan.popa@analog.com>
 <9878f042f424bfbd7fab24175298224b58e87779.camel@linux.dev>
 <akj3Ay8mwemRj-9U@ashevche-desk.local> <akkwWxCf10rfThMk@fedora>
 <akk9d-Zrx52C674x@ashevche-desk.local>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320498-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:stefan.popa@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ciprian.hegbeli@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AF922708195

July 4, 2026 at 11:05 PM, "Andy Shevchenko" <andriy.shevchenko@intel.com =
mailto:andriy.shevchenko@intel.com?to=3D%22Andy%20Shevchenko%22%20%3Candr=
iy.shevchenko%40intel.com%3E > wrote:


>=20
>=20On Sat, Jul 04, 2026 at 10:32:32PM +0600, Siratul Islam wrote:
>=20
>=20>=20
>=20> On 26/07/04 03:05PM, Andy Shevchenko wrote:
> >  On Sat, Jul 04, 2026 at 01:42:39AM +0600, Siratul Islam wrote:
> >  > On Fri, 2026-07-03 at 13:29 +0300, Stefan Popa wrote:
> >=20
>=20...
>=20
...
>=20
> >=20
>=20> > > +static int max40080_get_range(struct max40080_state *st, unsig=
ned int *range)
> >  > > +{
> >  > > + int tmp;
> >  > > +
> >  > > + tmp =3D i2c_smbus_read_word_data(st->client, MAX40080_REG_CFG)=
;
> >  > I think tmp can be initialized, since it is only assigned once.
> >=20=20
>=20>  I don't get this comment. You mean switching to ret?
> >=20=20
>=20>  I meant tmp is assigned only once so the indirection here, i.e.
> >  declaring and assigning in two steps doesn't buy us anything. Instea=
d,
> >  it could be initialized like "int tmp =3D i2c_smbus_read_word_data()=
."
> >=20
>=20Ah, definitely no to this suggestion. It makes code harder to maintai=
n
> and the pattern you proposed is actually discouraged. You can search in
> mail archive and find like ~1-2 year old message from me with the detai=
led
> explanation why.
>=20
Thanks!=20I'll look into it. Learning a lot of stuff. But I'm trying to u=
nderstand where to draw the line though.
Like "struct xxx* data =3D iio_priv(indio_dev);" and "s64 ts =3D iio_get_=
time_ns(indio_dev);" are pretty common.=20
Do=20these calls make a special case for it?
> >=20
>=20> > > + if (tmp < 0)
> >  > > + return tmp;
> >  > > +
> >  > > + *range =3D FIELD_GET(MAX40080_RANGE_MSK, tmp);
> >  > > +
> >  > > + return 0;
> >  > > +}
> >=20
>=20--=20
>=20With Best Regards,
> Andy Shevchenko
>

