Return-Path: <devicetree+bounces-275257-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBP7ArMYtGkihQAAu9opvQ
	(envelope-from <devicetree+bounces-275257-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:01:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B3D284694
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:01:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 439793069B96
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3795D39EF36;
	Fri, 13 Mar 2026 13:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwrZWzrV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140A139EF2C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773408412; cv=none; b=Kw9MpUia6DVv75G8KFooEZkFTm2Wns7VxI590F/PRPhq/3yfPJJ+DUfZ9jpD6v68Mm+GJaGEseYMwAmUVsclNX0wzhDdNQYloSzSdp22dFvQ0LGgtOvRothxvnQZWKd7sMHUqMQp0CHTtacRucuGt+Inmesymx7vS8Kqf+D9y0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773408412; c=relaxed/simple;
	bh=AISdWu8eVoLKl2jhVTe4EddyX7ECqkH20VxhG1FYrSM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FEPAjTbpK5TXMC8Jw6XieuqxRBID+mpnP+BzAHzMWTAp2C8Kc1j7qU42w5dpPuJj/BBqYxwHtzRpS2AwCTnlVzA9pIljrVMeqBJN173QNFzSv+HAkCql3/ujD7tlpWHb/A2J6ZtFlk+uBiG5pIhEbTNDiiWXpTvbfnBUmFqixw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwrZWzrV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC096C2BCB0
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773408411;
	bh=AISdWu8eVoLKl2jhVTe4EddyX7ECqkH20VxhG1FYrSM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=uwrZWzrVfHpeUB+OCnSFBHpLfCVLyREVSNNmz/haQVUWDBx/9Q45PkDIcCabwEMrh
	 rW0sibNFp8LiS3AAQMM3pLJsOu3hOqtXdgwO5QZQ8a3zQfOO2ROh3Ow6+GAUfPjHli
	 1/QcrcOuoJJE6AJdcvp5Wolly6LBX3lgsuLs+3AAajzMjC0k06Fhy0dxWdkWkAAudR
	 gZ6IhX0uLw0hPQ06A/Ji2XdzhOkyua2YI9B+Pc1AmUaRA0E9fvmHsTxRDehDakfO03
	 ImrQ6I1o8FjQ8QUq2ExbsnClXn1DUMdJUj5MyJEara0tYRvIDr1xRKjAkzHFZGPm21
	 1aPPNpZ5lrY0A==
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6616cb8c80cso3302100a12.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:26:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWPRMI5VZZsuVC53LdkG6mYYUg8m2iW14GbVF+ETxMgds7T2Hmj+6tiPomhPNCmpN3nTNVOUTWITTJU@vger.kernel.org
X-Gm-Message-State: AOJu0YyV9TembYU5YmS+RYgZws65aR3bh+vjbw4n3eEghyleqv2mRLqW
	X0gy7wbt+BwymqjKo5mAlGgL/N9JfnSgbgyxTEd6cm0CtqlNWjvEvW9PANFzOeWZ6RhKpx1PYCS
	8b+xoPofgA1F0jsVV4LxJ3SuZQJaHdQ==
X-Received: by 2002:a05:6402:1e91:b0:662:f822:d932 with SMTP id
 4fb4d7f45d1cf-663babbef8fmr1820274a12.15.1773408409847; Fri, 13 Mar 2026
 06:26:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org>
 <20260306-gs101-pd-v7-4-03f7c7965ba5@linaro.org> <20260312151228.GA3136988-robh@kernel.org>
 <da0726da3e59d83985650e8281ed945018a356e4.camel@linaro.org>
In-Reply-To: <da0726da3e59d83985650e8281ed945018a356e4.camel@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Fri, 13 Mar 2026 08:26:38 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKeSimB6OYFzOk2tWy-nbFez3qRwWrc=yD8uKDALYP8pA@mail.gmail.com>
X-Gm-Features: AaiRm50TuMWj7Ra8O56XpkSkM3G2RRk4u3p-yrp2uk72zHKmMKKqGtQffs4TDX4
Message-ID: <CAL_JsqKeSimB6OYFzOk2tWy-nbFez3qRwWrc=yD8uKDALYP8pA@mail.gmail.com>
Subject: Re: [PATCH v7 04/10] dt-bindings: soc: google: gs101-pmu: allow power
 domains as children
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275257-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,samsung.com,linaro.org,gmail.com,google.com,android.com,lists.infradead.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,1.10.107.32:email,linaro.org:email,1e00:email]
X-Rspamd-Queue-Id: E4B3D284694
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 5:48=E2=80=AFAM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> On Thu, 2026-03-12 at 10:12 -0500, Rob Herring wrote:
> > On Fri, Mar 06, 2026 at 10:29:55AM +0000, Andr=C3=A9 Draszik wrote:
> >
> > >      system-controller@17460000 {
> > >          compatible =3D "google,gs101-pmu";
> > >          reg =3D <0x17460000 0x10000>;
> > > +        #address-cells =3D <1>;
> > > +        #size-cells =3D <1>;
> > > +        ranges;
> > >
> > >          google,pmu-intr-gen-syscon =3D <&pmu_intr_gen>;
> > > +
> > > +        pd_g3d: power-domain@1e00 {
> > > +            compatible =3D "google,gs101-pd";
> > > +            reg =3D <0x1e00 0x80>;
> >
> > I'm assuming 0x1e00 is an offset from 0x17460000. That's not what range=
s
> > says though. It says both addresses are in the same address space
> > (system-controller@17460000 parent's address space). You need:
> >
> > ranges =3D <0x0 0x17460000 0x10000>;
>
> Thanks Rob! On gs101, the PD driver can not do direct mmio. Instead it
> needs to use the regmap that the parent has created and apply the
> offset from the PD's reg property (using struct resource::start)
> (patch 7).
>
> When using ranges as per your suggestion that doesn't work anymore,
> as resource->start isn't the offset anymore but the final physical
> address, and using that in combination with the parent's regmap
> doesn't give us the right address anymore.

You are mixing kernel implementation details and h/w. Are the
registers in the child nodes MMIO or not? If not, then drop ranges. If
they are, then what I suggested for ranges is correct.

For MMIO, your kernel implementation options are what you suggested,
do a regmap for each child, or use of_property_read_reg().

Rob

