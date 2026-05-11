Return-Path: <devicetree+bounces-295640-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GF7nODjyAWqymgEAu9opvQ
	(envelope-from <devicetree+bounces-295640-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 17:14:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA84510F62
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 17:13:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CFCCF308930F
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 15:00:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18FE2402449;
	Mon, 11 May 2026 15:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnbpSZMk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82B03FE367;
	Mon, 11 May 2026 15:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778511608; cv=none; b=RQyYuW60XnRCRTt3wMMCjXWF8OFZfjVOaB7a/dMLXSNVfMqXsHVuzpZ0rfaERr58gfJBFoyzMlubSv41mCdzznay6mWAOC6pS7+4pY40umKUmvNzLnmcK7be7msBdUehgN42o2HHeCkeMRci59hcuQ9wJ8B9jPLsM5z8a0unGDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778511608; c=relaxed/simple;
	bh=Y3S7NebMEgoweWjfFugWq7o4sN1kkLZsS91N38m26Ew=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IgG99oBM3RScfJiLqz4KQ957Twwy0O0GwRfed5iM85kAYRygd+LheBzfYhyvGAcXYbTnXoLIGSY6+jLK4qkjLzD+efJSDs3fmWL0hyv22OVNiJ4RlJClfhlojguzxsNxDlXo/0b7IYvr8WjCQTqX8wE5D5Q2Vq7Ms3/JFVmlfgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnbpSZMk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C312C2BCF6;
	Mon, 11 May 2026 15:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778511607;
	bh=Y3S7NebMEgoweWjfFugWq7o4sN1kkLZsS91N38m26Ew=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=HnbpSZMkpGIOPcnxWiU952Qk1w2ZySTpCIV5q9x7Kv5vm206TeBNS8oDHpz6L+nMf
	 bWJPGD1eioHY63JFOBhanFErsq8qGEPVC3sb9gxjy9OFjqBbaYQ2aadkh1iMAfPLGu
	 HsqFTcdi/cM7wz6Yq1BpLEfkueMMGAnQuQ9/7F8YkjinSq7I+4Vt5amVgiJHQIss64
	 JjLxvzF/r/+SCFaJuCsHNEYiY1gQJBkDaW+K1j/xd694UE0qzicrIicXY+Mxn/7diZ
	 0tTtnhp/bSDLNa951G69Pkj1GI9I78rIhIVeF9pNymMRZ5RWaGhgcUfiGnwkU0lq88
	 v6KTxQEZAnrLQ==
Date: Mon, 11 May 2026 15:59:58 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, ak@it-klinger.de,
 dlechner@baylibre.com, nuno.sa@analog.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 11/11] iio: adc: hx711: add support for HX710B
Message-ID: <20260511155958.4fe72038@jic23-huawei>
In-Reply-To: <CAMB+xkZ4MjhR3jU_L3=a=2+ubJ3oeL=x18dypEbRDa9My=LAzw@mail.gmail.com>
References: <20260510194947.31997-1-piyushpatle228@gmail.com>
	<20260510202657.38326-1-piyushpatle228@gmail.com>
	<agG9FAXXiTKDIEDf@ashevche-desk.local>
	<CAMB+xkZ4MjhR3jU_L3=a=2+ubJ3oeL=x18dypEbRDa9My=LAzw@mail.gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 0CA84510F62
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295640-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Action: no action

On Mon, 11 May 2026 19:19:40 +0530
Piyush Patle <piyushpatle228@gmail.com> wrote:

> On Mon, May 11, 2026 at 4:57=E2=80=AFPM Andy Shevchenko
> <andriy.shevchenko@intel.com> wrote:
> >
> > On Mon, May 11, 2026 at 01:56:55AM +0530, Piyush Patle wrote: =20
> > > Add support for the AVIA HX710B ADC, which shares the HX711 GPIO
> > > interface but uses trailing PD_SCK pulses to select the active mode.
> > >
> > > Model the HX710B with variant-specific channel tables and IIO info,
> > > track the active channel across conversions, and use the fixed gain
> > > value when computing scale.
> > >
> > > Also update the adjacent Kconfig text, file header, and module
> > > description so the driver text matches the newly supported variant. =
=20
> >
> > ...
> > =20
> > >  #include <linux/slab.h>
> > >  #include <linux/sched.h> =20
> > =20
> > >  #include <linux/delay.h>
> > > +#include <linux/types.h> =20
> >
> > Seems wrong order.
> >
> > And here + blank line to make linux/iio/* to be a separate group. =20
> will fix the include ordering and grouping if a v8 is needed.
>=20
> > =20
> > >  #include <linux/iio/iio.h>
> > >  #include <linux/iio/sysfs.h>
> > >  #include <linux/iio/buffer.h> =20
> >
> > ...
> > =20
> > >       /*
> > >        * triggered buffer
> > > -      * 2x32-bit channel + 64-bit naturally aligned timestamp
> > > +      * up to 3x32-bit channels + 64-bit naturally aligned timestamp
> > > +      *
> > > +      * aligned_s64 satisfies the 8-byte alignment requirement for t=
he
> > > +      * timestamp. For HX711 (at most 2 active channels), iio_push_t=
o_
> > > +      * buffers_with_timestamp() places the timestamp at offset 8
> > > +      * (scan_bytes=3D8, already 8-byte aligned), identical to the o=
riginal
> > > +      * 2-channel layout. The extra channel slot for HX710B does not=
 affect
> > > +      * the HX711 ABI.
> > >        */
> > >       struct {
> > > -             u32 channel[2];
> > > +             u32 channel[3];
> > >               aligned_s64 timestamp;
> > >       } buffer; =20
> >
> > Why can't we used a recently introduced macro for this?
> > IIO_DECLARE_BUFFER_WITH_TS(). =20
> Yes, this macro can be used here, I will use the
> IIO_DECLARE_BUFFER_WITH_TS() if a v8 is needed.
> Also when should I proceed to make v8? Is it needed?

Yes to being needed.  I replied in parallel thread.

> >
> > --
> > With Best Regards,
> > Andy Shevchenko
> >
> > =20
>=20


