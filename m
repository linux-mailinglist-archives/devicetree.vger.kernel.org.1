Return-Path: <devicetree+bounces-227247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A393BDFE02
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:33:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4F0EF4F8516
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 17:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 617262FF669;
	Wed, 15 Oct 2025 17:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgAQLS7S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B6728BAB9
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 17:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760549548; cv=none; b=d2f3qL4lM+GqPJwmsgfMMb2otlBNa3yDIi17z2y2UKj/5AUgSCyXWPjdVAPW6MN+IokGHJOpO02WKY/ecFbaCBKsvIJeR86yvR903pWZrjdv12mMATwQuNuqwk8Zy+bQaJ9gqjrmYwPD0o/3pqM8vfx/A9tr9575u0AN1zH9kBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760549548; c=relaxed/simple;
	bh=ypA9Y1XLCJ0JaOsZ9D7arslYmfqek9jmaC0BXfAkFiE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OJkYIE0HNjU0B5YTGkIXzIO49Vn+9mmJycYdvVGZpKN3nMnNakKk1T0/eP0qutPjNNy2iSKucIemTjSO8VKf1sS39iV7bVNDmgIwWnkaaiZZbytGwrtO+IxaR9nf09W5y7lWYjKJBocMwLsN39bOFY7OyD5nP2uu3NdzzfgK9i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgAQLS7S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D76CC116D0
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 17:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760549547;
	bh=ypA9Y1XLCJ0JaOsZ9D7arslYmfqek9jmaC0BXfAkFiE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=DgAQLS7SRvSCHOQkA1y37IESNgUB5gXrAR3FEYJwcsQvroASfC4Q9zLmdk4clrFjt
	 sOdq09PUHXECilbvbfmaD1mBzGdECa3s5cv2kFyZIhUT1QkipXZGxOcoEYcgUOsPF/
	 X6Q4fk1f1A4spJ+uQnlLZS3p0Uekq+lujVjVWlcdssHEr5FINyx6byQP1r7ACo+Uw0
	 ScqK3xqpS2VfBYytXmd1MJev7QD7o7C1g26P37JuYPOm4Qsj0gSrxRz6QOxUnAvn1T
	 Ef5p2WPtI68zahFotMdeFmZpUuRH1wNIfU6lGM8ElB1cAkfL+iKQM1VvUA8UoLZ3JN
	 1yjd8p85/GTdQ==
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b5e19810703so162143366b.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:32:27 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWKdfXVMAhcDYORAqm4rFV3yv/K/DeX8xBTek+g1vXfaKd7H5Sj8sgLEOHOuYGWsbsk0b/mX9s9dj68@vger.kernel.org
X-Gm-Message-State: AOJu0YySDR0VJ2QbmE/VVEpJfgxGe1v/ZkEItA8staXDLq3h9mI9alYK
	Vaadk/Rt1lxLJ4RrxcPaWu0Hy8jKLWxG6ruv8nX5ds8Kwsa/S3DBvB8sHs28fDyoOUNzvflkG8A
	TGQJo7pMnFSarTeFHLytGzmLTg1drRw==
X-Google-Smtp-Source: AGHT+IG7cYHekwqKp7szJI/bodQqDJQE4T7Y750zy6gYe4uNSyV1ofYKb9OXZ8WAaKzn4fGvZbq+sK2JaM6OSojZBLI=
X-Received: by 2002:a17:907:9625:b0:b2d:830a:8c01 with SMTP id
 a640c23a62f3a-b50ac4d570emr3206476066b.61.1760549545792; Wed, 15 Oct 2025
 10:32:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251010183418.2179063-1-Frank.Li@nxp.com> <20251014-flattop-limping-46220a9eda46@spud>
 <20251014-projector-immovably-59a2a48857cc@spud> <20251014120213.002308f2@kernel.org>
 <20251014-unclothed-outsource-d0438fbf1b23@spud> <20251014204807.GA1075103-robh@kernel.org>
 <20251014181302.44537f00@kernel.org> <CAL_Jsq+SSiMCbGvbYcrS1mGUJOakqZF=gZOJ4iC=Y5LbcfTAUQ@mail.gmail.com>
 <20251015072547.40c38a2f@kernel.org>
In-Reply-To: <20251015072547.40c38a2f@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Wed, 15 Oct 2025 12:32:14 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+wHG_DW1D_=dR6Q_mwyqFAXKGx771PsqjvW+XCRKM3tw@mail.gmail.com>
X-Gm-Features: AS18NWBcn_X0-kfGnOoFGvu-kGdwMnuyg_-qtR_oFRiq_0F3EMcRBbh-LtvesbE
Message-ID: <CAL_Jsq+wHG_DW1D_=dR6Q_mwyqFAXKGx771PsqjvW+XCRKM3tw@mail.gmail.com>
Subject: Re: [PATCH 1/1] dt-bindings: net: dsa: nxp,sja1105: Add optional clock
To: Jakub Kicinski <kuba@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, Frank Li <Frank.Li@nxp.com>, Andrew Lunn <andrew@lunn.ch>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 15, 2025 at 9:25=E2=80=AFAM Jakub Kicinski <kuba@kernel.org> wr=
ote:
>
> On Wed, 15 Oct 2025 06:53:01 -0500 Rob Herring wrote:
> > > > And the issue is that both PW projects might get updated and both d=
on't
> > > > necessarily want the same state (like this case). So we need to
> > > > distinguish. Perhaps like one of the following:
> > > >
> > > > dt-pw-bot: <state>
> > > >
> > > > or
> > > >
> > > > pw-bot: <project> <state>
> > >
> > > We crossed replies, do you mind
> > >
> > >   pw-bot: xyz [project]
> > >
> > > ? I like the optional param after required, and the brackets may help
> > > us disambiguate between optional params if there are more in the futu=
re.
> >
> > That's fine. Though it will be optional for you, but not us? We have
> > to ignore tags without the project if tags intended for netdev are
> > continued without the project. Or does no project mean I want to
> > update every project?
>
> Fair :( I imagine your workflow is that patches land in your pw, and
> once a DT maintainer reviewed them you don't care about them any more?

Not exactly. Often I don't, but for example sometimes I need to apply
the patch (probably should setup a group tree, but it's enough of an
exception I haven't.).

> So perhaps a better bot on your end would be a bot which listens to
> Ack/Review tags from DT maintainers. When tag is received the patch
> gets dropped from PW as "Handled Elsewhere", and patch id (or whatever
> that patch hash thing is called) gets recorded to automatically discard
> pure reposts.

I already have that in place too. Well, kind of, it updates my
review/ack automatically on subsequent versions, but I currently do a
separate pass of what Conor and Krzysztof reviewed. Where the pw-bot
tags are useful is when there are changes requested. I suppose I could
look for replies from them without acks, but while that usually
indicates changes are needed, not always. So the pw-bot tag is useful
to say the other DT maintainers don't need to look at this patch at
all.

Rob

