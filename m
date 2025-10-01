Return-Path: <devicetree+bounces-222951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E13BBAFBDD
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 10:54:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13B782A0BF4
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 08:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F9D62D7DC3;
	Wed,  1 Oct 2025 08:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QBRY0eU8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0FB2D59EF
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 08:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759308868; cv=none; b=dYcFsi5n6yrJ2MOZWGdZbggo+dl2hnaTBbd2trjz2S9lhVN80y2NbbBqvq/k0EVdWgE+2DP3vUGvT46/mO6PIL2gz2otDHLCj0JULtVqLOJbp+EvDAjZocLliLCZA2klha2p4YLn/oXZVNUKkKgdetXLLGjQlYdHZ3aFisVlqfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759308868; c=relaxed/simple;
	bh=sLy1r4an6UfTJPaHkyT9U6fPTve0eRlEi9oZ3JIBjEQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qEm0wzp8B/uY6Pwhr20a0iFBbAj0XHNuMIvcF2FKUgb3SjJcfJnYZHzf8BA/xCC+2yJXBQ3PhEg/3dEblFIkrX/NxEkt3+WvgyqU51zM5L+I9zdm44PQ/eRyL2rYOjbjuKvdCA1jY02So2N13gNa+usFyW903pfRgqlS/ZK539Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QBRY0eU8; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-3324523dfb2so6676803a91.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 01:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759308866; x=1759913666; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sLy1r4an6UfTJPaHkyT9U6fPTve0eRlEi9oZ3JIBjEQ=;
        b=QBRY0eU8r1XfWAXMKmj0Fx3Q1MYTQYPluYFWuwrfrLBjECvHfP6SpxosiN85WViT4H
         KNVtdzge5K4q/are8hSQFQt+FAVbhSovreAYW8J5sTGBqqGvy93Y8lNWJQ1uDJR9abv+
         6peMX4A9tkUFripY27Fehg8wB4iRDjj515UO3c+PmhrOK6GnrI5+BPsfnQJKbD+VuV1K
         IxEOtS2eQygaAkuTEUCFEhZVxe+EfZhRcbV+KxqamuR07JYM7FuKdAAaib1GRIJQo+yw
         y8k3+ZF3DjsdnfKg3m18KaZ0F58B6Ja/SwYcjFCOlrVgzlX2ou2XtZtGboiHgGUwMOwI
         OUmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759308866; x=1759913666;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sLy1r4an6UfTJPaHkyT9U6fPTve0eRlEi9oZ3JIBjEQ=;
        b=OFSis6egJBqVAsB/bSL35yC5AM3VO6lHPowEpl0gkiP+3K5R3eq0I8KtS9lraZIRQJ
         ucbHfVXwrz98q5CqVPjuPMw8+QDrq/fiVklYgJVzR2HGonqWXMqIGNVQ+s8RCZzcQun9
         0/q/wCwbIjYT3Ven7zuMxDb+4uW2k8LAKRV9sN6gTIoxPSQWN7P60XXbm9IAnFoFQoUT
         RstGcvnKnWKousFcd4UZx3zOmyGXIy26b5/TYxhYOzUIbH+2SDtGPcHCOSpJ1+1vG8MI
         KiEqyK5L+uXLLhEzVPXCAVdiAce/7xJRa/AveKPbbyKYdwjPthe3fpNXSlXn9o/gEOHc
         oRBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpqdMq1TcdIOiKmsvxMHQ2SIE8543yGRfyiatAX/Xhpv849KacUBky1pEzNyHLkhSXu9iY9CeZDyd+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7WuK84lDLXY6rSO3q7yBAXHvaQBuyAVnjcus+gmHOHeTJD1kT
	8AhCuc8e3wGTXw4cphMAP/WoERmgn1MWrXWfXhyQ4ZfBKA+8RtGDTqkkwtu4dXg0F0cdsxsKfW2
	N3H1TYga2HNr8A6Lu8X9FEMAYg0gQtqo=
X-Gm-Gg: ASbGncum+32HEYVAoHISIrZCG0LShfgLMukKp+zSxP9jcObsOY6aeiPb5y2+Z/9md6V
	lJwgkFuKLtdKuyl4kVbHqQrmnJ9XNHPEbsy28Cgv6Yky7GaKiaDzCMY9ZsZvu7T9s6M2JVdca8z
	uvhFtuY9ecZGXOsagjBScGUHSL7OTQkkf1YsI6otPpY5iYBeG6fKmW1S7CF/skA1PQbN2XwndZj
	YEidpGwHaxzQjDoEcr8zrQ4VamwHLHWWMg0K930CD4gd1iTs11JKUTgFKKCB2lK+Q==
X-Google-Smtp-Source: AGHT+IFkHVvzIlBnrVeHVBtBctgazh/MCfsQv0mLNCnxfXKJW1PT7QAVMcEH+xX6FJvFAD4mRgwQJtqqKlzNOAz6QnA=
X-Received: by 2002:a17:90b:4d0a:b0:330:84dc:d11b with SMTP id
 98e67ed59e1d1-339a6f36367mr2940411a91.18.1759308865859; Wed, 01 Oct 2025
 01:54:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250917074812.4042797-1-kevin.tung.openbmc@gmail.com>
 <9bb9929a-8130-48da-983e-2901a7c3da36@lunn.ch> <CABh9gBew1=hbJvg1Mhg5dE7Lr_Z442_kbBX6zTs_6_C2NRyLbw@mail.gmail.com>
 <7e6f568da28d7a63738b6ed22b33db3df4c478c9.camel@codeconstruct.com.au>
 <CABh9gBcoWbXurPo0f9U9+gz8k6gttUvj=NMMDVfgjo5dgaTLSA@mail.gmail.com>
 <CAL_Jsq+zBK1CBJX0XcaqaYeOPUhoRE-nMeYvkTNwQovJ+dakGg@mail.gmail.com> <090d0e196fd0f814b5385f2c6e47e5196f0be649.camel@codeconstruct.com.au>
In-Reply-To: <090d0e196fd0f814b5385f2c6e47e5196f0be649.camel@codeconstruct.com.au>
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Wed, 1 Oct 2025 16:54:14 +0800
X-Gm-Features: AS18NWDyzaFR3D4tmBrIV6Dx9lyGm72vUyiAB7CZStN-eawEDelhMt9miv_jN1k
Message-ID: <CABh9gBcaUbwR9ScT_xSYo3q6FHZaMyXYewByPQoReUp1pktcEQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] Add Meta (Facebook) Yosemite5 BMC (AST2600)
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 25, 2025 at 8:16=E2=80=AFAM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> Hi Kevin,
>
> On Wed, 2025-09-24 at 08:34 -0500, Rob Herring wrote:
> > On Wed, Sep 24, 2025 at 8:05=E2=80=AFAM Kevin Tung <kevin.tung.openbmc@=
gmail.com> wrote:
> > > I also checked the work with `make CHECK_DTBS=3Dy
> > > aspeed/aspeed-bmc-facebook- yosemite5.dtb`,
> > > and the warnings that appear are not related to these patches.
> >
> > Um, they are related because they are warnings for *your* platform.
> > You don't care that there are warnings for your platform?
>
> Which is to say, by contributing a DTS that relies on the ASPEED DTSIs
> you're now part of the community of people interested in maintaining
> support for ASPEED SoCs in the kernel, and it will be appreciated if
> you could help improve what we have.
>
> If you could pick a warning or two from the DTSIs and contribute
> changes to address them that'd be great, as this improves the situation
> for everyone.
>
> Andrew

Sure, I will look into contributing a patch to address some ASPEED
DTSI warnings and improve the overall situation.

