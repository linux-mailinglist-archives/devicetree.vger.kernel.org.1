Return-Path: <devicetree+bounces-317137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OkWWFT6PQmoA9wkAu9opvQ
	(envelope-from <devicetree+bounces-317137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:29:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B926DCABA
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:29:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="X/gUcjv/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317137-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317137-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2CD3130F8B42
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64915426D0A;
	Mon, 29 Jun 2026 15:20:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAD4426D03
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 15:20:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782746456; cv=none; b=QergHSEPcLvY/ulgI+aqf9jM/Y5yZhefpzrhxjyAEax4LAJP+nW0tM5UniTiQ5rM1aFZKrGHi7+adXZctm5RuuvmzellJ4U5NbPtMjl58kkh5cp0xMi3577lQ7mJxSK8rejcAdSkaQWAdIrLaQc3jSqcTIQTXXClP+4Ofzc+OoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782746456; c=relaxed/simple;
	bh=nc86Jp8o62Q5nme3DvzGnKx5D+U2qvXr0jn+wTpod4M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sKmSbmZvfNzjquC7hxqsculSVjH0i/V4iKCoALyW6GD5LX7PnJCwJA+uqQLT1wLYr5juRBKd980YC9nLs0o2XFit4MWe5ZKiakqCORn3ve3LC3JSlCvHr/By5eJSin/ymSQJEPZRvjTp+lj/FPnVqSz/Yubqq+PdiHUfXDJ9BAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/gUcjv/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00F271F00A3F
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782746454;
	bh=wX2jSosalBCXeov1KAZFnmkZLC/jlFNjqnL7xit1Tpo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=X/gUcjv/e1O4kU1vRPhXCj8Nw9/Ff4OtxldD7mpprASv2Qx0LEHcdxKR0FvwQ8pTm
	 QeBM6smK1MSKxoE6H3YciAnGoCIG4eMMv/gCoO/XCMeyp5F9KrV2kv7ZTWxX5fr6BX
	 nWJIY/d4So/2pGol4U/S7no1oQpqvp99qFL9sR3YahuXcI7qVVpfIkHgdG2XCwi+6K
	 MLHupZaWeecFLSHl4c2kiRwaAUcdxGgNEFdKr7fKJssw+S1KbrldgGcWnM6RGVRGL9
	 Kff61la0CCqKI4DzBV4+qA8y+8tiIXOJpYRmN5lXg4cf23CG/hMG5Cht1H02f1Scxf
	 F4RBDA1kCLWnQ==
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-39ad656869bso30218261fa.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 08:20:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpsCMGUDlGFcylre4l/qepVLHRO3Anv94alatO+ptWl9kM2+d+SURRZ0ER5uSZ4bRJV4tRiCsQXrFR3@vger.kernel.org
X-Gm-Message-State: AOJu0YwOYgJWXm/3qS7CL8t9TMNqLEb+saZTyIe9fpcK61tSkuwJ0aD4
	671p/AGodE7qGMhrxBt9Pi7i3SbBikebUlgeqQpdNQ5zYwm3Mbz8ZgMx1mE5iHz+1Y4wpMf4dVX
	Y7bPxuBfNG+p5gaRpl9ZZEqmpY23sG5g=
X-Received: by 2002:a2e:bd03:0:b0:39a:da70:2c77 with SMTP id
 38308e7fff4ca-39ada702fc0mr25197121fa.3.1782746452424; Mon, 29 Jun 2026
 08:20:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260629-a733-rtc-v2-0-7b72112784f8@baylibre.com>
 <20260629-a733-rtc-v2-1-7b72112784f8@baylibre.com> <20260629125305.0DF981F000E9@smtp.kernel.org>
 <1jpl198jzk.fsf@starbuckisacylon.baylibre.com> <20260629-aliens-busload-ef9178973b4f@spud>
In-Reply-To: <20260629-aliens-busload-ef9178973b4f@spud>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 29 Jun 2026 23:20:40 +0800
X-Gmail-Original-Message-ID: <CAGb2v67QV4gt=iXvaWeRCAxcasvzSpgTPodHhspd2ka19Hgdtg@mail.gmail.com>
X-Gm-Features: AVVi8CdsTodw99fmrCaHKTshq-RBAGtmS8kU99BDukgcJtbj15UOd7IbhDxIdwE
Message-ID: <CAGb2v67QV4gt=iXvaWeRCAxcasvzSpgTPodHhspd2ka19Hgdtg@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: rtc: sun6i: add sun60i-a733 support
To: Conor Dooley <conor@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>, sashiko-bot@kernel.org, 
	sashiko-reviews@lists.linux.dev, linux-sunxi@lists.linux.dev, robh@kernel.org, 
	devicetree@vger.kernel.org, conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317137-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:jbrunet@baylibre.com,m:sashiko-bot@kernel.org,m:sashiko-reviews@lists.linux.dev,m:linux-sunxi@lists.linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid,vger.kernel.org:from_smtp,baylibre.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C2B926DCABA

On Mon, Jun 29, 2026 at 11:16=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Mon, Jun 29, 2026 at 05:05:51PM +0200, Jerome Brunet wrote:
> > On lun. 29 juin 2026 at 12:53, sashiko-bot@kernel.org wrote:
> >
> > > Thank you for your contribution! Sashiko AI review found 1 potential =
issue(s) to consider:
> > > - [Low] The `clock-output-names` property has a global `maxItems: 3`
> > > constraint and a description limiting it to three clocks, which contr=
adicts
> > > the new clock outputs (IDs up to 11) added for the sun60i-a733-rtc.
> > > --
> > >
> > > commit a1565b632e372c724867216463a453c9d1600ad2
> > > Author: Jerome Brunet <jbrunet@baylibre.com>
> > >
> > > dt-bindings: rtc: sun6i: add sun60i-a733 support
> > >
> > > Adds a new rtc compatible for the sun60i-a733 SoC and new IDs for the
> > > peripheral oscillator clock gates of this SoC.
> > >
> > >> diff --git a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a=
31-rtc.yaml b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc=
.yaml
> > >> index 9df5cdb6f63f2..197a6f67b180a 100644
> > >> --- a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.=
yaml
> > >> +++ b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.=
yaml
> > >> @@ -33,6 +33,7 @@ properties:
> > >>            - enum:
> > >>                - allwinner,sun20i-d1-rtc
> > >>                - allwinner,sun55i-a523-rtc
> > >> +              - allwinner,sun60i-a733-rtc
> > >>            - const: allwinner,sun50i-r329-rtc
> > >
> > > [ ... ]
> > >
> > >> diff --git a/include/dt-bindings/clock/sun6i-rtc.h b/include/dt-bind=
ings/clock/sun6i-rtc.h
> > >> index 3bd3aa3d57ce1..5132a393ca4b6 100644
> > >> --- a/include/dt-bindings/clock/sun6i-rtc.h
> > >> +++ b/include/dt-bindings/clock/sun6i-rtc.h
> > >> @@ -6,5 +6,9 @@
> > >>  #define CLK_OSC32K                0
> > >>  #define CLK_OSC32K_FANOUT 1
> > >>  #define CLK_IOSC          2
> > >> +#define CLK_HOSC_UFS              8
> > >> +#define CLK_HOSC_HDMI             9
> > >> +#define CLK_HOSC_SERDES0  10
> > >> +#define CLK_HOSC_SERDES1  11
> > >
> > > [Severity: Low]
> > > Will adding clock IDs up to 11 conflict with the existing clock-outpu=
t-names
> > > constraint in allwinner,sun6i-a31-rtc.yaml?
> > >
> > > The clock-output-names property currently has a global maxItems const=
raint
> > > alongside its description:
> > >
> > >   clock-output-names:
> > >     minItems: 1
> > >     maxItems: 3
> > >     description:
> > >       The RTC provides up to three clocks
> > >
> > > If a device tree author attempts to define an array of clock-output-n=
ames
> > > to document all outputs for the allwinner,sun60i-a733-rtc node, won't=
 it fail
> > > dt_binding_check validation because it exceeds the maximum allowed it=
ems?
> >
> > Not quite sure what to do with that one.
> >
> > The h616 compatible devices all exposed more than 3 clock through the
> > provider, even if the higher IDs did not have define.
> >
> > The clock output names for the h616 compatible device are not really
> > supposed to be defined through DT ... at least AFAIU ??
>
> The output names aren't even defined anyway, so the property is not
> really all that helpful. It's worth increasing the max to whatever is
> permitted now and look into the conditional sections to see if any
> constraints need updating.

Or just not allow it for the newer RTC compatible? On the kernel side,
the sunxi-ng clk library doesn't even use the property, presumably because
the library mainly targets the main clock controller that has at least
tens of clocks. Writing clock-output-names for them isn't really scalable,
and sort of useless as the name can be inferred by the clock ID and
compatible.


ChenYu

