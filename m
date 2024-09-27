Return-Path: <devicetree+bounces-105820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF2698810A
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 11:06:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 022F01C212C0
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 09:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7959318784A;
	Fri, 27 Sep 2024 09:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Q6OKGRtC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0855F157490
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 09:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727428011; cv=none; b=PJ/93oIiadU3I1nagCFxihoYbFr+e8xVHICYqMJ6KiXjHBLgg8Mxj+Ddg+70DhHNfYtwh3wVpuZ4Mi3nzRFbLXycjg+W9kutZJbMU4HAcRavYuIgI8ify+NOcG0xcgYw8qQYd0kyE8e3mXImTQd2WlX5yaVGYDQuLW6g9Z8sBXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727428011; c=relaxed/simple;
	bh=p/tL/mEtgxya4nQTMT45w11AbEgp01edlss3aQNmTWA=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tiJ4mZgq5tk3AHMk6Yk3VNMpDV0f5FQCS9ebX90dtI9VzMlgPJQBMVe+djNLHOlrpDqD6AzxOCVjfGWHqidU8a+66ZYgpJucWy6bDha/JPJ/ZwIFNMF11IjDz9QRfRqSvjQRMqpR5/deiRl2CE0TXrDtKZpJl829MlUGIa2CU9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=Q6OKGRtC; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id AAB483F5D0
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 09:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1727428002;
	bh=TdWwWyYx3NSL/g/B28NaT9+skLBhcn0OqBIgUz2KJ8c=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=Q6OKGRtCoymKplpEvLWt93Tfkj+2C1ts7djqeY15rfy4A9FXn6uxcl+YPgtNin6SE
	 00Eehkaj8k2KIYNdQxoxKSSz5prILkeLJvkh87W+dykXxoDy39SVMOnyYnqBHVFCP1
	 oHx963Nkk07NYZISvCSPgiAdLFqpgbmsSiGAv7aXb0oqslwVPr4QcSt2n0V7gmmgDp
	 +aDlTYzYupjhuZQvp5T1hf8AOEwrcvtkWZf0iJLu23tslmWVDFLT4XmaNn06ZgtDyS
	 4e2+sKgnYmjP7fgpIw00nyIbpLh3dS8KSD84/85gIHQB+Y442/QEBtXOKbn3OO+kGp
	 UY7fVzl6frZIA==
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-286fa354e34so1311377fac.1
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 02:06:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727427998; x=1728032798;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TdWwWyYx3NSL/g/B28NaT9+skLBhcn0OqBIgUz2KJ8c=;
        b=n2rZM1y1mNwxqO76AVuegcb/24n/0Xu7o6pTRxd9BSqsJmTnu52kM/GrMe2cd3r4Ie
         3FLRYUgmqZ9NTIlfl8eJZdEYS0Gwq9nd+uQXJ9cG8lsESsTQnegYI/uDkvXsLqZkznOI
         KixY3myW9D3DOD1XzLQrk7jmwhaJxrWbVE09JFoDyfEGO9m0EGbWD3gJ7zQoPQ/mpxSU
         rmZNgL3Ia7Kv13OkmobhCet5y0VrbpyqiTws2i6Ru5VMiR+B9v7cDwfDekf7PYdaQ65K
         hHtP0f5l8Lnp/1OoYdHMhRMxpHjx6PXDkrFjWwHeOvhRyR0ZFM8cXzWkQMi4AUU0Yw7W
         mm5Q==
X-Forwarded-Encrypted: i=1; AJvYcCW82iyL6B5Xg3ayQylCRGu6kICc/79C8q1kviEcJNzhstcrKnjDNTLSzrHNr19Jmr8XGmCVrl8E9Cl5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9vyovygSNR7FEvz/Izsb2TJuIwDtkYpDj4rQx1xjiLbDNKsGX
	o8gGC6lvi0AiJY77MBy/4Fwvk8rzolQ7Xfsyb0fzxyl1xsBZta+NDTS0CFdgHoy7GvFafFA7X3v
	qk7+U3ctfQqY6jfVq8K6MTYFNdufKKsWDG35lY1fsbBMYCh+yIPl1tnH4vRAONZ8k6L3Nv9WKI1
	O7V6pRnTbVaK6Nn4TkoAzbMYIgD2tq1n4xoSJ9XtHe14vWIBPMFQ==
X-Received: by 2002:a05:6871:1c7:b0:277:fd73:8f82 with SMTP id 586e51a60fabf-28710c28d08mr1801229fac.45.1727427998420;
        Fri, 27 Sep 2024 02:06:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGv+HoVG+UamQzP9HYGm4dvtX0uDQArn9ex/l2o6/iZbKaH7H7PMWWqDndToxE25AX6dEyIqQ8K4thbHVn/x+E=
X-Received: by 2002:a05:6871:1c7:b0:277:fd73:8f82 with SMTP id
 586e51a60fabf-28710c28d08mr1801204fac.45.1727427998028; Fri, 27 Sep 2024
 02:06:38 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 27 Sep 2024 02:06:37 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <ZvYJfrPx75FA1IFC@x1>
References: <20240926-th1520-dwmac-v2-0-f34f28ad1dc9@tenstorrent.com>
 <20240926-th1520-dwmac-v2-3-f34f28ad1dc9@tenstorrent.com> <3e26f580-bc5d-448e-b5bd-9b607c33702b@lunn.ch>
 <ZvWyQo+2mwsC1HS6@x1> <0b49b681-2289-412a-8969-d134ffcfb7fc@lunn.ch> <ZvYJfrPx75FA1IFC@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 27 Sep 2024 02:06:37 -0700
Message-ID: <CAJM55Z8DeGJs=ASgdErEVWagy_f8JMWVe_TEWJWAcrUbzoDjOQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] riscv: dts: thead: Add TH1520 ethernet nodes
To: Drew Fustini <dfustini@tenstorrent.com>, Andrew Lunn <andrew@lunn.ch>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Jisheng Zhang <jszhang@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Drew Fustini <drew@pdp7.com>, 
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Drew Fustini wrote:
> On Thu, Sep 26, 2024 at 09:30:32PM +0200, Andrew Lunn wrote:
> > On Thu, Sep 26, 2024 at 12:13:06PM -0700, Drew Fustini wrote:
> > > On Thu, Sep 26, 2024 at 08:39:29PM +0200, Andrew Lunn wrote:
> > > > > +&mdio0 {
> > > > > +	phy0: ethernet-phy@1 {
> > > > > +		reg = <1>;
> > > > > +	};
> > > > > +
> > > > > +	phy1: ethernet-phy@2 {
> > > > > +		reg = <2>;
> > > > > +	};
> > > > > +};
> > > >
> > > > Two PHYs on one bus...
> > >
> > > Thanks for pointing this out. I will move phy1 to mdio1.
> >
> > ???
> >
> > Are you saying the two PHYs are not on the same bus?
>
> Sorry, this is my first time working on an Ethernet driver and I
> misunderstood.
>
> Sipeed only shares the schematic of the baseboard for the LPi4a [1].
> There are pages for GMAC Ethernet0 and GMAC Ethernet1. Each shows 4 MDIO
> differential pairs going into a SG4301G transformer.
>
> I believe that RTL8211F-CG phy chips are on the LM4A SoM board which
> contains the TH1520 SoC. Unfortunately, Sipeed does not provide a
> schematic of the SoM so its hard for me to inspect how the phy chips are
> wired up.
>
> Vendor kernel [2] that Sipeed uses has:
>
> 	mdio0 {
> 		#address-cells = <1>;
> 		#size-cells = <0>;
> 		compatible = "snps,dwmac-mdio";
>
> 		phy_88E1111_0: ethernet-phy@0 {
> 			reg = <0x1>;
> 		};
>
> 		phy_88E1111_1: ethernet-phy@1 {
> 			reg = <0x2>;
> 		};
> 	};
>
> so I think that does mean they are on the same MDIO bus.

It depends how you look at it. The SoC has two MACs and they can both
control their own MDIO bus. However MDIO of both MACs are pinmux'ed to
the same pins on the SoC. So the solution above just mux the pins to
GMAC0 and let that control both PHYs. Alternatively I guess one could
let each GMAC control their own phy on their own MDIO bus and then
switch pinmux settings everytime you need to need to talk to one or
the other.

/Emil

