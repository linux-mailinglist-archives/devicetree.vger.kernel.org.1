Return-Path: <devicetree+bounces-293008-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FhrEsTT+WlHEgMAu9opvQ
	(envelope-from <devicetree+bounces-293008-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 13:25:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E37704CC940
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 13:25:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0A91B3075BC3
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 11:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 545AB42B748;
	Tue,  5 May 2026 11:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vG+6Em6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3004D42B73A
	for <devicetree@vger.kernel.org>; Tue,  5 May 2026 11:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777978869; cv=none; b=GS6E5rx2Ujsmz+/2ltDH7TP6ZVjAHRVQ8jcE+QGrssGOH6FfwZcxYA1QBlVaSsdRPevz1ivffKkZkulpihRZujNnWVhm0SIo8gZelmOAn/NKfC5bdfvDDGNKCoVnynAbaguqJD3Qt9SN0fOBq1upspIvtkTqE/ioo7A4LiQOGwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777978869; c=relaxed/simple;
	bh=Gj2bHm4zNpSEC6+wrNz3pfDebX2PidU5EUuw9Af/4u4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fqWMcQp93e8Ix+0TrXPapSkB4faDsiNSIalz4yR+SfBVcia5I/K0gMtMsHxYIBy1uBetgnNR4yEz3gH6LVY+8yQ9b914SnFhtFWJ9unfncOGpDfLPBYcdzB/vWJWXafeAnE2jI5eQsWM5PdMNaG+ouD3cmtmSrfedNy0tACMleM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vG+6Em6Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3A80C2BCB4
	for <devicetree@vger.kernel.org>; Tue,  5 May 2026 11:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777978868;
	bh=Gj2bHm4zNpSEC6+wrNz3pfDebX2PidU5EUuw9Af/4u4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=vG+6Em6QrbjbDu4fQh74rgBpLeXoNCR1ZqgVdcHsGMTbO+xguHSRqMNYK3bTflZSX
	 dz6GXgWig13stSnU9KLssU7P7DwUy07FKQDQ97LP4Ty5mwVS4UY2BV4dOaCgsITp7O
	 QPR1FGy6FZ4vmOq3U6k9ftfj+TOq7SB/HrsVUQZf+M3Ev4nwdA67IRWB+s5+lJWp1S
	 9MG7a0bfNZTRbPmjrWgtZp8LPNUR0ip6hzQudzaLJc4deMnEWUm7SmPBIylPfjYs9o
	 RFYEE60SiLLPQfezFlcCu7UYcvNwK/Txr7/lArYGbGLutFrAoZ11H4pDIngaUzLGfw
	 T6x8Ti7TtouZA==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3939d2bd739so19104031fa.0
        for <devicetree@vger.kernel.org>; Tue, 05 May 2026 04:01:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/jiJPyqDopLjY402CowfnNLOuHriKrHMFLRNfK3Uf/WLsKjE15Scnd9+TtJdhvJ67lthzAIgeBzldk@vger.kernel.org
X-Gm-Message-State: AOJu0YyN662OAQXIJf3puiBbeCKGLq+tgPZUepRJE5btSDk8tvOfJQOu
	OEXAXAeAsnvuiCi3eo9nrDv8mRqHYj3VSOorAcYzoRF8ieMdnWGJivTwJ9fKRENxBon4zTShStx
	v6WVhuUqNB1voX2Ine05Aw0d1d3hLEFQaHuT3uc61eA==
X-Received: by 2002:a2e:be2a:0:b0:38d:e977:554b with SMTP id
 38308e7fff4ca-393784e0e7fmr51024941fa.16.1777978867389; Tue, 05 May 2026
 04:01:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1776872453.git.happycpu@gmail.com> <33d515f13769c685e6811463a14e111252a7c58d.1776872453.git.happycpu@gmail.com>
 <CAD++jLkOZGunkfs2EO_DQDPLnLVp+OPG6o4EKaY5GkAcqYQy5w@mail.gmail.com>
 <CAMRc=MfQY2Z+q=YGO0jEBip0dGjyq+uCH8EZwi9RaUOJxf74UA@mail.gmail.com> <CAD++jLkkhB89iM3iBv+8cwK9fmmGWrEvDez1VcjGiWZp543hdg@mail.gmail.com>
In-Reply-To: <CAD++jLkkhB89iM3iBv+8cwK9fmmGWrEvDez1VcjGiWZp543hdg@mail.gmail.com>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Tue, 5 May 2026 13:00:55 +0200
X-Gmail-Original-Message-ID: <CAMRc=MdctKbMG4G7KDLPE1OH2607gfUebxp=PD1K82KiN988mA@mail.gmail.com>
X-Gm-Features: AVHnY4KKsIg-vAq-cjCyQmj06qgBmn2Bc-pDO8TeRzXHAEeJq5F_HBCq72RIhL4
Message-ID: <CAMRc=MdctKbMG4G7KDLPE1OH2607gfUebxp=PD1K82KiN988mA@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: gpio: fairchild,74hc595: add
 registers-default property
To: Linus Walleij <linusw@kernel.org>
Cc: Chanhong Jung <happycpu@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: E37704CC940
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293008-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]

On Tue, May 5, 2026 at 11:46=E2=80=AFAM Linus Walleij <linusw@kernel.org> w=
rote:
>
> On Wed, Apr 29, 2026 at 11:04=E2=80=AFAM Bartosz Golaszewski <brgl@kernel=
.org> wrote:
>
> > >   lines-initial-states:
> > >     $ref: /schemas/types.yaml#/definitions/uint32
> > >     description:
> > >       Bitmask that specifies the initial state of each line.
> > >       When a bit is set to zero, the corresponding line will be initi=
alized to
> > >       the input (pulled-up) state.
> > >       When the  bit is set to one, the line will be initialized to th=
e
> > >       low-level output state.
> > >       If the property is not specified all lines will be initialized =
to the
> > >       input state.
> > >
> > > If you want to set up initial states, use this property.
> > >
> > > This also makes it possible for us to centralize the handling later o=
n.
> > >
> >
> > Ah, the old initial/default GPIO values problem strikes again. :(
> >
> > IMO this is software configuration, not HW description. I think the
> > driver should do it based on the compatible and/or machine. It should
> > not be a property but if Krzysztof is fine with it, I'll queue it.
>
> This one is particularly uncomfortably hard to define.
>
> If we depend on the machine we need to sprinkle
> of_machine_is_compatible() over all drivers.
>
> A lot of detailed properties that could have been handled by a few
> gazillion of_machine_is_compatible():s are already present
> in the kernel.
>
> What is good about the property that has the same name
> is that we can create nicer looking kernel code that is easier
> to maintain. The DT maintainers may not care about that, but
> from a GPIO subsystem PoV I think the line-initial-states
> are better.
>

Fair enough. I'll still wait for DT maintainers' formal Ack before we
carve it in stone do avoid getting hit on th ehead with said stone
later on. :)

Bart

