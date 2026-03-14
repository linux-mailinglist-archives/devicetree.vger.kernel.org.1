Return-Path: <devicetree+bounces-275697-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AZWfAFpUtWmezQAAu9opvQ
	(envelope-from <devicetree+bounces-275697-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 13:28:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 547AC28D21B
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 13:28:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8774B300C017
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 12:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BD6D23B61E;
	Sat, 14 Mar 2026 12:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjhh0hxa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7899242050;
	Sat, 14 Mar 2026 12:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773491286; cv=none; b=JcMf3wLea4+J7K8PAlCio7mIe3xmX18cTr5O4ObwDUOY6LNjYTAgP79a9a5fq/xIOEGBPYDRpC+2Kj8n3DHPMzixwLEqGC9KB5d+a7DjtEQ3+i32XmlJvZ+8lKBOKVjmjjGmKnM+znwIyhQAyx5nRZyiI7XUMt4fAEVvDQZShKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773491286; c=relaxed/simple;
	bh=875Lx9GdJ2JYYcgoslCqGduvaB4Sx0zWJoBv3nkvLv4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Q8iEUjMOOSo4sRwv4/kC1ulMx6b2I5OHJbaXuxNGBiMkTjS7wT5/cozFplbaXiFjpUbs52f3qT0hejfEovEMuAbcaM9R3VHKPrLR/BsOCxH1j1pMHnG2h1bWAQUY+stP7+q7c36tDLCcfTY2vZFld49rkoUxttqLQDD3JoSPMsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjhh0hxa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3EC4C116C6;
	Sat, 14 Mar 2026 12:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773491285;
	bh=875Lx9GdJ2JYYcgoslCqGduvaB4Sx0zWJoBv3nkvLv4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=hjhh0hxa3JBgGmMLHMPi5yd2rKzxXostHKu7tMmvo9AAqbYemQ/vJ9pqxjq8AWV1V
	 tBFHuOLeRrbnh/nyG+Sm0AhAJiV72w43lg0Mefsouc7BiSWv1qCvm07Z9Oi6vB64lR
	 kphYoKb1kh5D99WweBHf3CuVRDztlEfyXRjqliOTFQwInuPIP2ZLthGsCtnjVyhTAU
	 Dru6bLW0TvbHJ487HAsCGMjpHsFl1ZWUClq+91C75nPaWUh60Op38UpRxVB2/1AV7y
	 wuqL4Zv2kXcjQRwHkiXqm4f/vk2a/5Q5et6eq2M6BhFpugknqfyy/u5mOYyHmAYUci
	 RSymLihjag1HA==
Date: Sat, 14 Mar 2026 12:27:53 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Sirat <email@sirat.me>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] iio: proximity: add driver for ST VL53L1X ToF
 sensor
Message-ID: <20260314122753.327058bd@jic23-huawei>
In-Reply-To: <CANn+LW+mg9Ridm3aMrVhy7cgvmJO0JNV_s_myfRCW8gPv7Ggkg@mail.gmail.com>
References: <20260311224044.21480-1-email@sirat.me>
	<20260311224044.21480-3-email@sirat.me>
	<abLUgxivQnz2ISeY@ashevche-desk.local>
	<CANn+LW+mg9Ridm3aMrVhy7cgvmJO0JNV_s_myfRCW8gPv7Ggkg@mail.gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275697-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sirat.me:email]
X-Rspamd-Queue-Id: 547AC28D21B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 12 Mar 2026 23:37:26 +0600
Sirat <email@sirat.me> wrote:

> On Thu, Mar 12, 2026 at 8:58=E2=80=AFPM Andy Shevchenko
> <andriy.shevchenko@intel.com> wrote:
> >
> > On Thu, Mar 12, 2026 at 04:40:37AM +0600, Siratul Islam wrote: =20
> > > Add support for the STMicroelectronics VL53L1X Time-of-Flight
> > > ranging sensor with I2C interface. =20
> > ...
> > =20
> > > +static const struct regmap_config vl53l1x_regmap_config =3D {
> > > +     .reg_bits =3D 16,
> > > +     .val_bits =3D 8, =20
> >
> > No cache?
> > =20
> The result registers change on every measurement, so caching doesn't
> apply well here.
> Will add .cache_type =3D REGCACHE_NONE  with a comment to clarify.

That's always the case, so more interesting is what registers
don't change? Can just mark the result registers as volatile
and get the advantages from caching the rest.

Someone else may have commented on it already, but please
slow down a bit on sending new versions.  Typically 1 a week
is a reasonable cadence unless things are very near to merge
and you are being asked for minor final tweaks in which case
one every few days is fine.

Jonathan



> > > +};=20

