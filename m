Return-Path: <devicetree+bounces-296177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DY3NWgOA2pI0AEAu9opvQ
	(envelope-from <devicetree+bounces-296177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 13:26:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4018651F51E
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 13:26:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13C9B301050B
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 11:22:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48CF138E8BE;
	Tue, 12 May 2026 11:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvI9vmgd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2517F356758;
	Tue, 12 May 2026 11:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778584936; cv=none; b=PkO+h2/GUZTJ/Ta2VL1crFmG6LiA8VJtQJjDtRCo5TGgg0nz3AuCsLTSFE2+Ur5Io15nM3PgfngkZ9SztcpE7WQ0eG96ZxW7W/eGRhDDZnyIHQaECqs2BGrecU1YgtnQldImArbTtMyzeiTaT+liwW86KDYJlbrXNJsxNUy/6Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778584936; c=relaxed/simple;
	bh=DOiQlZe1EB4MaXBwDRxCPMJKGGDu5LYyRnNW9mPF/Q8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gA2UjNK/ySsp8X6xIVBXMBmpOWixjy9KKy+l7TEp/zMw/q6FTfLdpJi8Nta/yAg24S6JCe7dV5z2w6MzSrRCz5VGwOeSVauUNjwkY8jnQXGDPuv1KV13ctHBO9PeHZX2W3JPJc+rHFYf3U8F/nQLkxAC3F3R3eJH0efDiG/KmJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvI9vmgd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B33DC2BCB0;
	Tue, 12 May 2026 11:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778584935;
	bh=DOiQlZe1EB4MaXBwDRxCPMJKGGDu5LYyRnNW9mPF/Q8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=UvI9vmgdxl7dYDg8W5BRdJ43d3B6x6LsdMCdSx8awUDl5bM8Q6suX0Iq91vjb53A2
	 j7A0seeMOJt6QL62c9VGg99AOe0NHkqxaOdX3Zs3WTYo5BAy59gFrokPPHapyk7wtz
	 ypj63aIR4IKSfSgmbTuo94WynDdqjBtpVlaOUhKC7RouOpHHvC1cRWFH20nZchRRw9
	 GfihY7GWrsSVWpErJsivpe7/yYeHb2nzYVVw8pcMpcixCDeeq49n9IUBIsqLWpDI6P
	 Rw0Upunqzf7D6CcoNLL8j5Q62NF+Xg44HFwh+m83+8cvtHut6S5lX4FkewH9bw/Etj
	 pj/w6vyb9JgAQ==
Date: Tue, 12 May 2026 12:22:05 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Denny Lin <dennylin0707@gmail.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nuno.sa@analog.com, andy@kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/1] dt-bindings: iio: adc: add AD7816/AD7817/AD7818
 binding
Message-ID: <20260512122205.07733eff@jic23-huawei>
In-Reply-To: <f9469c48-ea67-4106-a577-4818cf3dd51d@baylibre.com>
References: <20260509022718.82957-1-dennylin0707@gmail.com>
	<20260509022718.82957-2-dennylin0707@gmail.com>
	<f6e2a4de-4c1d-46ef-b383-db62091fd0f4@baylibre.com>
	<CAGEkeHfeZWi99TMvkXHhMSrUS8PshuekqjszBXaS39VsLUZ4eA@mail.gmail.com>
	<3493d6ef-5f02-4eb1-b81a-89597045acbb@baylibre.com>
	<CAGEkeHcA+aJ_h5APbL_bG3vpyY+rSGEVn=Dk1Abe76MKDdyVpg@mail.gmail.com>
	<f9469c48-ea67-4106-a577-4818cf3dd51d@baylibre.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 4018651F51E
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-296177-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,metafoo.de,analog.com,kernel.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Mon, 11 May 2026 11:31:13 -0500
David Lechner <dlechner@baylibre.com> wrote:

> On 5/11/26 11:23 AM, Denny Lin wrote:
> > On Mon, May 11, 2026 at 7:51=E2=80=AFAM David Lechner <dlechner@baylibr=
e.com> wrote: =20
> >>
> >> Usually, we want to be moving the drivers out of staging when
> >> adding the DT bindings so that it all gets reviewed for correctness
> >> at the same time.
> >>
> >> Drivers in staging are usually there because they are doing things
> >> that are not actually acceptable for the final stable mainline
> >> version of a driver and need more work.
> >> =20
> >=20
> > Thanks for the explanation.
> >=20
> > I took a look at the driver and noticed it still uses the older
> > IIO sysfs-based interface rather than the iio_chan_spec + read_raw
> > model.
> >=20
> > Would you recommend updating the driver first, or is it okay to
> > proceed with the binding separately?
> >=20
> > Thanks,
> > Hungyu =20
>=20
> ADI's website says that these parts are obsolete, so unless anyone is
> actually still using these with a mainline kernel, I would suggest that
> we drop the driver rather than spending time fixing it up.

The ad7817 isn't obsolete yet unfortunately - that's the only reason I didn=
't
drop this last time I checked..

Any Analog folk want to take a view on this one - particularly if you
can check if it will be going obsolete soon.   Good not to waste Denny's
time on this if so!

J

>=20
> In any case, unless you have the hardware for testing, it would be
> best not to make significant changes. There is a non-standard "oti"
> attribute that we would need to figure out what to do with. This is
> likely why the driver is in staging in the first place.


