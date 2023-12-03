Return-Path: <devicetree+bounces-21106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD9C802551
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 17:09:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 841D2280DFE
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 16:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD47D156EB;
	Sun,  3 Dec 2023 16:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="SIihe6oh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E188CF
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 08:09:04 -0800 (PST)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id AC4C83F193
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 16:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701619742;
	bh=Jr2viQE+KNXdoLwjt3YG8fOnB+WKPmtD8qV0RS5wcNE=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=SIihe6oh8Pdg/qzj6ZLeulNjUKAEY45iD1C8Y/jpN0FxCuX2ETt716dOAsORS97Ps
	 a1uf5lM6VcCn9E3oVhMu3fhyhiJoboAgpsYExq/KQ1nen2N2S2YBLFhB83zxkIU1CK
	 NOuOLsUnPeBl38U95GCTX6PFtCoemsqw5vqvrTuu/jA/KhEPlJzN1gajiNmlTjv0U8
	 u3Trk+aLtJqeB06EsxkASd43Gvn4I9M7EJA/5cGmVqR3nzEvAcOsU1sNOOeeoWcG3A
	 EBWgsHEffQaZKUgWyZiEAxUMPB2dTWVyHbhEyzpInhAZ9FupqVZ0GvAeriyVzjlF1T
	 Udb7SW279X9bQ==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-423e0957b35so53063931cf.2
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 08:09:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701619741; x=1702224541;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jr2viQE+KNXdoLwjt3YG8fOnB+WKPmtD8qV0RS5wcNE=;
        b=DLPpwaH2z9zFd0akC4Q1yWxYzl++nwILySEtrV04MFLhSN5yw1Ie7YHTYegVmuRbej
         0TSaj1pvCCNxh4minIFUaiUVAcpKqitGwHGAubFXQh2uCpFTPXs7UwTAyGDKKjn9rokI
         MFeIs1/PLB29a9NHO+DYZjOmVsvD3kQ1wL95aJHhDeBEvhwnqeu+a9vqODTzIwUtTSht
         s6paexQlEeipBk3YaQ8kw1STyiPc4gxLeFQJFkFNksq/wcLR2PsnUYYObo4dwJ1Zu9+F
         Lf7+05BVFhoaGl2+UWBrj7bgqwDMy8f//VDyd3K/OOptrTtI8PBsK2pMIMAalShMy4Vh
         bWBw==
X-Gm-Message-State: AOJu0Yw0sdzyHlUWz8eJVrCsgVnzcHAddvyswQMPdLPjOmSwzCC+NE+x
	KKyWJLGBc2Eo/C2NbgAlmc51JcioestH6J4FmwVNHm7ur5DVlXoqnWsATb85v0skxr4cG+JC44H
	AIMWrckF0808m0uxzxkAlUP3NUKVaQU4x/bYcv0btele/fi5lYn2rwqw=
X-Received: by 2002:a05:622a:1010:b0:425:4043:1db6 with SMTP id d16-20020a05622a101000b0042540431db6mr4559528qte.137.1701619741639;
        Sun, 03 Dec 2023 08:09:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IElcjoXi0CImvP0OyCrnumGiuHmDr6BY0KTDzIC+pp9TQpbbFvQn54i+0pGeMyf5ZofZVoSlxlxQt+VbXqNHm4=
X-Received: by 2002:a05:622a:1010:b0:425:4043:1db6 with SMTP id
 d16-20020a05622a101000b0042540431db6mr4559513qte.137.1701619741411; Sun, 03
 Dec 2023 08:09:01 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 3 Dec 2023 08:09:01 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231203-mountable-snowsuit-24e4252c9eb5@spud>
References: <20231130-bobbing-valid-b97f26fe8edc@spud> <CAJM55Z9=smqcZ=su1oNdk1YZL_XdYAKrwtrZS7ScS=cAVmxZOA@mail.gmail.com>
 <20231203-mountable-snowsuit-24e4252c9eb5@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sun, 3 Dec 2023 08:09:00 -0800
Message-ID: <CAJM55Z-cb=0X2xToKnEwmqMkBSZkQ-kjAZyoGo1AY=edTLvxew@mail.gmail.com>
Subject: Re: [PATCH v1] riscv: dts: starfive: move timebase-frequency to .dtsi
To: Conor Dooley <conor@kernel.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-riscv@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Walker Chen <walker.chen@starfivetech.com>, JeeHeng Sia <jeeheng.sia@starfivetech.com>, 
	Leyfoon Tan <leyfoon.tan@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> On Fri, Dec 01, 2023 at 02:44:58PM +0100, Emil Renner Berthing wrote:
> > Conor Dooley wrote:
> > > From: Conor Dooley <conor.dooley@microchip.com>
> > >
> > > Properties fixed by the SoC should be defined in the $soc.dtsi, and the
> > > timebase-frequency is not sourced directly from an off-chip oscillator.
> >
> > Yes, according to the JH7100 docs[1] the mtime register is sourced from the
> > osc_sys external oscillator through u74rtc_toggle. However I haven't yet found
> > a place in the docs that describe where that clock is divided by 4 to get
> > 6.25MHz from the 25MHz.
> >
> > I expect the JH7110 mtime is set up in a similar way, but haven't yet dug into
> > the available documentation.
>
> Your other reply suggests that this is a fixed division for the jh7110,
> in which case it makes sense to leave it as-is. mpfs is different in
> that it is fixed to 1 MHz regardless of which of the permitted external
> oscillator frequencies you use.

This is what I've found for the JH7100:

osc_sys (25MHz) -> u74rtc_toggle (gate) -> ? (div 4) -> mtime

The divide by 4 is not in the regular clock tree, so if it is configurable it
must be some bits hidden in the syscon area or something. The only restriction
I've found in the docs is that it must be strictly less than half the rate of
the core clock.

For the JH7110 it goes:

osc (24MHz) -> rtc_toggle (div N) -> mtime

..where N defaults to 6 and this is also the maximum N.

/Emil

