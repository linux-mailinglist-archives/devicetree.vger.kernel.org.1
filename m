Return-Path: <devicetree+bounces-257934-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFdbJNfKcGkNZwAAu9opvQ
	(envelope-from <devicetree+bounces-257934-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:47:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FFD5706A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:47:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D9CFF3E39EB
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53DB8481665;
	Wed, 21 Jan 2026 12:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mm4G93lW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F71624DD1F
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768999051; cv=none; b=LVUNX6s46+4nbzdsjw/m0RMbnbt08sJMQChMLVlfLvi8MUu9V0H/G568G+eVIN5p7CJB5s6qAOTk76nzhrV0yjHHxMMGX8tI6LlQxqj1KPPFpj+/zpF3Lo7eUb6iMHMzX6YyNyW6rLuh47iqVsezyKWYU9gv8nieLNpORM0oM1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768999051; c=relaxed/simple;
	bh=4yDk0YzwcgRZtGSj4ei7B8A94JHRo53iqPEmX48GdrE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QiHN+vNUIC/vccvUB+MPrZMm7I46lCucqfhoSVkdctbWjMtfAVLgGn2TXDFlu0/bN54N2qlQf+MH5dbnXOKUo4JJwhz1BcMGgRAcP1DiFJ4+R/Ftf+7wU9YLkvn7P2dGoHNTzjgtjsW9Aj0xkNkqq7ZpCDikdX6fkhi4OVVUeJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mm4G93lW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D58AFC2BC87
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768999050;
	bh=4yDk0YzwcgRZtGSj4ei7B8A94JHRo53iqPEmX48GdrE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=mm4G93lWIA9UaBISB/Ayk26q4tR7YLoh1louvS4bpaY21TKADKJn6geoVDfwQuUFJ
	 ueHwkKqGyU9Y/mTm7LKn1CzvLIVxz9uft7wAYO+Jr0MKhLY2Q+Jxg8kssxPbSw5jJY
	 9E1JrzzusZQ1bYuwxzoSrTgJUEgJwsKO7O136o+C4lJ0zRf3CjMzViX6FzUOsLxGBN
	 5hXGq1MH0Ds0FKpoi2XGD4hO1BTIMf8WviS+yxnzAq9Imveo1GNbuTQICM87hBvyrD
	 +KaidTZukkrqeqtVlyex3uzuPMAHwqgKHT3MhirBFKgmRaxIg5so0zSYBHSJoB2P4k
	 j5bTHSIayyK8w==
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-790992528f6so57921767b3.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 04:37:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXjMtCIgSAErUZv3SSL3102JxeMORi7XWbw9ZKN6rndcg1eHb9ay6isldjAFaO4XfyXALxT9NAF+LNT@vger.kernel.org
X-Gm-Message-State: AOJu0YwgunvxO57bx3oeRAJXRZheqQNzTK0i1AQ20KBXIEYiwEF5SjiK
	8syly/pc61Nx1DTWf/3kl/HK2ZVMaYOHck9mEHXMWBs5iG6TR6wW87EOzbd0J6IEfPY2FcP3F9A
	DqNozm8qluBnNne73rG1BBubuMLRHG1Q=
X-Received: by 2002:a05:690e:134c:b0:63f:b545:9961 with SMTP id
 956f58d0204a3-6493c7f3e1cmr3654844d50.29.1768999050179; Wed, 21 Jan 2026
 04:37:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116152621.75205-1-antoniu.miclaus@analog.com>
 <CAD++jLnTM2u0pD3EddbfpmAHY_SDb-cm+5kfEWWEF9o0i5LSmw@mail.gmail.com> <CY4PR03MB339998CE283A3D13B534F47A9B89A@CY4PR03MB3399.namprd03.prod.outlook.com>
In-Reply-To: <CY4PR03MB339998CE283A3D13B534F47A9B89A@CY4PR03MB3399.namprd03.prod.outlook.com>
From: Linus Walleij <linusw@kernel.org>
Date: Wed, 21 Jan 2026 13:37:18 +0100
X-Gmail-Original-Message-ID: <CAD++jLkvqkHKRnrCCFc=mRBxtt7=fZHH+nDjuJwp5YayCC7z4g@mail.gmail.com>
X-Gm-Features: AZwV_Qj3CYv5rgay4qpd-ICP46yHeP_suVP8hDCWR8K7lKMjAgsQzM4WKXSRC2k
Message-ID: <CAD++jLkvqkHKRnrCCFc=mRBxtt7=fZHH+nDjuJwp5YayCC7z4g@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] mux: gpio-mux: add enable GPIO support
To: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-257934-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	R_SPF_SOFTFAIL(0.00)[~all];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,baylibre.com:email,axentia.se:email]
X-Rspamd-Queue-Id: 46FFD5706A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 3:28=E2=80=AFPM Miclaus, Antoniu
<Antoniu.Miclaus@analog.com> wrote:


> > From: Linus Walleij <linusw@kernel.org>
> > Sent: Monday, January 19, 2026 1:19 AM
> > To: Miclaus, Antoniu <Antoniu.Miclaus@analog.com>
> > Cc: Peter Rosin <peda@axentia.se>; Rob Herring <robh@kernel.org>; Krzys=
ztof
> > Kozlowski <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>;
> > Srinivas Kandagatla <srini@kernel.org>; Johan Hovold
> > <johan+linaro@kernel.org>; David Lechner <dlechner@baylibre.com>;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org
> > Subject: Re: [PATCH v4 0/2] mux: gpio-mux: add enable GPIO support
> >
> > [External]
> >
> > Hi Antoniu,
> >
> > thanks for your patch!
> >
> > On Fri, Jan 16, 2026 at 4:38=E2=80=AFPM Antoniu Miclaus
> > <antoniu.miclaus@analog.com> wrote:
> >
> > > This series adds optional enable GPIO support to the gpio-mux driver.
> > > The enable GPIO allows the multiplexer to be disabled before changing
> > > address lines and re-enabled after, preventing glitches that could
> > > briefly activate unintended channels during transitions.
> > >
> > > This feature is useful for devices like the Analog Devices ADG2404
> > > (4:1 mux) that require enable control for glitch-free operation. The
> > > binding documentation now includes ADG2404 as a supported device with
> > > a dedicated example.
> >
> > Overall the idea is sound!
> >
> > I don't know if "enable" is a good name for this GPIO though,
> > because as I understand it the signal passes through the mux even
> > if it is "disabled"?
> >
> > I would call it "hold" and make it active low if it holds the mux
> > state when this signal is low.
> >
> > hold-gpios =3D <&gpio 0 GPIO_ACTIVE_LOW>;
> >
> > this will have the intended semantic.
> >
>
> Thanks for the feedback!
>
> Looking at the ADG2404 truth table, "enable" appears
> to be semantically correct:
>
>   EN  A1  A0  S1   S2   S3   S4
>   0   X   X   Off  Off  Off  Off
>   1   0   0   On   Off  Off  Off
>   1   0   1   Off  On   Off  Off
>   1   1   0   Off  Off  On   Off
>   1   1   1   Off  Off  Off  On
>
> When EN=3D0, all switches are OFF and no signal passes through
> the mux - it's truly disabled. When EN=3D1, exactly one channel is
> selected based on the address pins A1/A0.

Okay.

Yeah enable-gpios is fine for this thing.

>   The implementation uses this to:
>   - Keep all channels disconnected when idle (EN=3D0)
>   - Disable during address changes to prevent glitches
>   - Enable to activate the selected channel

I'm a bit sceptic to how it actually works in practice.
You need to specify what the truth table says: all swiches
will be disabled when enable is off, that actually doesn't
guarantee there will be no glitches.

When you disconnect something in a mux it usually enters a
tristate (high-Z) on the output, does it not? It doesn't really
"hold" the signal that was going through.

This means if there is something connected to the outputs
this will definitely see a "glitch" as in the signal being
disabled for a short while when enable is held low.

So the output will occasionally be disabled.

I think what your patch achives is that none of the outputs
will ever be *enabled* by a glitch. But instead you introduce
a mechanism which will randomly *disable* *all* outputs
when the state is changed.

This can have side effects if e.g. one of the lines on the
output is something logic that is actively pulled down, it will
dip to zero.

But I guess that is not a problem with the intended applications,
since the signal going through is analog? That analog
signal will probably be sustained on the output if and only if
there is something like a capacitance there holding whatever
signal was before for a short while, right?

I think this needs a bit of description about how this works
in a practical use case. Also as comment in the code and/or
DT binding.

Yours,
Linus Walleij

