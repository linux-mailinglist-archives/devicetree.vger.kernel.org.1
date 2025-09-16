Return-Path: <devicetree+bounces-217882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 02203B598EB
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 16:11:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C5C31883CD6
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 14:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C13A0316905;
	Tue, 16 Sep 2025 14:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b7oRb/Fn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E838928315A
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 14:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758031319; cv=none; b=onk06Y8XViyaf+DJahnlbPMO6HAvQZtTVRiTCW72AvxRxkDpPUh8t7hb0LOmla2YXkD+ov/orP+X7GwiqDUqlEiD2/i5Udd7lJoaLa5QJ9ejT5IdrGxlF98VciQ4fke9DRqxem0ZETDClwX7KVMe5fm6EoTX73cdc4HGP8xPIo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758031319; c=relaxed/simple;
	bh=jxnqzczZbbOSMi5t02loBOLyXo7kXtt+w3BDV7IeZfY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Nlt2ru80XRfs/xa/JwClxzw3+mLQ8Bv9FNJhUBuj3CLRVkvp6XQmUrgK/dPPz+YMiHvLQ3meNgJfJo8Rh+aiNhT0TK++sn1/1BWRcODXrHb8S+DIZ1YeRhrIOKJ2ypj8PaemaJ/4nfnSSq/6L2WOuxStMlyXQN1WKXi7Qk9ZEpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b7oRb/Fn; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-afcb7322da8so321990266b.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 07:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758031316; x=1758636116; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+1/wO2aa6vwf2RnAiZIcGlD55m2MeNlNGw0Ms6XcA88=;
        b=b7oRb/FngBaBg8MUVyrJJyt3CErG5S7LRVYKHdpUNyqBj5C3NkLGvr0zF/RONe/Snp
         hmYd6LLOygfIAW4q0sU9NW5KpMm8SWEL8xFIuoZgVkqmrk771wKAvfZryrFEydSI20fI
         OwxF97041wPP/MgCpEQzxPzgg3l3BRptyfqLtNZawMQbmvl0tr/o3RQbQQ1/+128bHtQ
         TV+mga7aqVK5MpSbk8srbanZh+UAtOLqZBO0xg4I0A1FniGvilPe4c438ns8r6kDjuk8
         RIQ5WzL/KIR40KyXy04Au3fqVYXoi8pdNHGRmo9/0ZCEdD9LKViODumUAVgTp9ESSOCI
         ODkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758031316; x=1758636116;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+1/wO2aa6vwf2RnAiZIcGlD55m2MeNlNGw0Ms6XcA88=;
        b=gQ/q8NmwueushWE3tl1JZUbu8o98uZ4+Z5JtNli3yrLSB8XN/99H1zLIP2H8lXJHYm
         QxLcWu2QEk1/HtFDKpPElNQWzNqtLBYWJ7Hi6NruI7csmACfLn9165sQNUaDf15C13u2
         kk9IxexiBGdo/m9kDbhGz1MHdmSunXCR4NtfYW4mndwSEejGbB8EBC7SkfxvS+RfJaML
         JEPYAkf/ttECWJT57Rb9ty3myqizzIdZdIL9sQ13meNUl8wGJCNmtf7irWwvdNaxXEdy
         7IoUVOepu9uuYxZSxV8amvLdY+hDHpAu29YLhQpJ0DAgNTEROVVdX9QkKSKaC+8HOhib
         t8cg==
X-Forwarded-Encrypted: i=1; AJvYcCXPRBepipJgWTdUmf4ut0R+54kaPLhcuuHn1uhpTRA6Hs+r+ktevtwwtKV3YTUk5fPqM1LBfuaPGYJz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1bcTtkZw/mZOTbe/3o3vxVk29E5bsO2Fn/ZpCSCgRww287uSE
	LCQyjMncWt/b2G6yDEpNXq/IFQNxGTX+Dh2WyiL7H727SJL8Ve2jW3/rz+p5W6vLnjeA10TZogC
	9OnVXAo47ckyfZ7SB/0nw0QjmQm+xQPc=
X-Gm-Gg: ASbGnctojdwUcOkUeYDLR+dYVmss6ibdPDmOJVefLWbELOcKOV3FzAEkqXvvuwSFMnx
	fa590mvzfm3vuPTJGtywK3qvny0Fb/0XFAqvqx7bkkVZB9MDfDE/17QwB4L7nTsw+BZpj9s+CYD
	rC6XBvC+tseConJ/UInsdeo6rv4dDBizEnA9NlLcEDtp+PBF3fGtA1GA42heMaN6SaXOOGIOK6a
	4IGd7z8
X-Google-Smtp-Source: AGHT+IF6Zy4nzr1OXuX8lE0GqEoG4kJn0jZymLRdcAOKhzS2jAVa02oHblL7nubcp0VuU3f+RU4UUOjge2+K+7voqcc=
X-Received: by 2002:a17:907:9629:b0:afd:d994:7d1a with SMTP id
 a640c23a62f3a-b07c3ada566mr1656686866b.63.1758031315726; Tue, 16 Sep 2025
 07:01:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250908105901.3198975-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250908105901.3198975-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <aMlgg_QpJOEDGcEA@monster> <CAMuHMdXWVXd5FauMYNq0yXgQa87F4Z9HcGOu2O_ercQg48GNoQ@mail.gmail.com>
In-Reply-To: <CAMuHMdXWVXd5FauMYNq0yXgQa87F4Z9HcGOu2O_ercQg48GNoQ@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 16 Sep 2025 15:01:28 +0100
X-Gm-Features: AS18NWCVgZqFQH49bSZ6oVph3-y6Eo3LOyTc2vGW-dgo3A64cLzcN5-yV35knnc
Message-ID: <CA+V-a8snd9Qeb_Fbj=_E6Y28EUV-ad+PO=cZcWrZ2F1_RwscGw@mail.gmail.com>
Subject: Re: [PATCH net-next v3 3/3] net: stmmac: dwmac-renesas-gbeth: Add
 support for RZ/T2H SoC
To: Anders Roxell <anders.roxell@linaro.org>, Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Richard Cochran <richardcochran@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Russell King <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Vladimir Oltean <vladimir.oltean@nxp.com>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andres and Geert,

On Tue, Sep 16, 2025 at 2:31=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
>
> Hi Anders,
>
> On Tue, 16 Sept 2025 at 15:05, Anders Roxell <anders.roxell@linaro.org> w=
rote:
> > On 2025-09-08 11:59, Prabhakar wrote:
> > > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > >
> > > Extend the Renesas GBETH stmmac glue driver to support the RZ/T2H SoC=
,
> > > where the GMAC is connected through a MIIC PCS. Introduce a new
> > > `has_pcs` flag in `struct renesas_gbeth_of_data` to indicate when PCS
> > > handling is required.
> > >
> > > When enabled, the driver parses the `pcs-handle` phandle, creates a P=
CS
> > > instance with `miic_create()`, and wires it into phylink. Proper clea=
nup
> > > is done with `miic_destroy()`. New init/exit/select hooks are added t=
o
> > > `plat_stmmacenet_data` for PCS integration.
> > >
> > > Update Kconfig to select `PCS_RZN1_MIIC` when building the Renesas GB=
ETH
> > > driver so the PCS support is always available.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com=
>
> > > ---
> > > v2->v3:
> > > - Dropped passing STMMAC_FLAG_EN_TX_LPI_CLK_PHY_CAP flag in stmmac_fl=
ags
> > >   as it is always set for all the SoCs.
> > > - Updated Kconfig to include RZ/T2H and RZ/N2H.
> > >
> > > v1->v2:
> > > - No changes.
> >
> > The following warning is seen when doing a defconfig build (make
> > defconfig) for arm64 on the Linux next-20250915 tag.
> >
> > First seen on next-20250915
> > Good: next-20250912
> > Bad: next-20250915
> >
> > Regression Analysis:
> > - New regression? yes
> > - Reproducibility? yes
> >
> > Build regression: WARNING: unmet direct dependencies detected for PCS_R=
ZN1_MIIC
> >
> > Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
> >
> > This is the build warning:
> > WARNING: unmet direct dependencies detected for PCS_RZN1_MIIC
> >   Depends on [n]: NETDEVICES [=3Dy] && OF [=3Dy] && (ARCH_RZN1 [=3Dn] |=
| COMPILE_TEST [=3Dn])
> >   Selected by [m]:
> >   - DWMAC_RENESAS_GBETH [=3Dm] && NETDEVICES [=3Dy] && ETHERNET [=3Dy] =
&& NET_VENDOR_STMICRO [=3Dy] && STMMAC_ETH [=3Dm] && STMMAC_PLATFORM [=3Dm]=
 && OF [=3Dy] && (ARCH_RENESAS [=3Dy] || COMPILE_TEST [=3Dn])
> >
> > WARNING: unmet direct dependencies detected for PCS_RZN1_MIIC
> >   Depends on [n]: NETDEVICES [=3Dy] && OF [=3Dy] && (ARCH_RZN1 [=3Dn] |=
| COMPILE_TEST [=3Dn])
> >   Selected by [m]:
> >   - DWMAC_RENESAS_GBETH [=3Dm] && NETDEVICES [=3Dy] && ETHERNET [=3Dy] =
&& NET_VENDOR_STMICRO [=3Dy] && STMMAC_ETH [=3Dm] && STMMAC_PLATFORM [=3Dm]=
 && OF [=3Dy] && (ARCH_RENESAS [=3Dy] || COMPILE_TEST [=3Dn])
> > I: config: PASS in 0:00:01.592356
>
> Thanks for your report!
>
>     config DWMAC_RENESAS_GBETH
>         depends on OF && (ARCH_RENESAS || COMPILE_TEST)
>         select PCS_RZN1_MIIC
>
>     config PCS_RZN1_MIIC
>         depends on ARCH_RZN1 || ARCH_R9A09G077 || ARCH_R9A09G087 || COMPI=
LE_TEST
>
> "ARCH_RENESAS" is wider than "ARCH_RZN1 || ARCH_R9A09G077 || ARCH_R9A09G0=
87".
> I would just change the latter to ARCH_RENESAS.
>
Thank you both. I'll create a patch updating it to use `ARCH_RENESAS`.

Cheers,
Prabhakar

