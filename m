Return-Path: <devicetree+bounces-135562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0034BA01561
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 15:50:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B020C3A0550
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 14:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E87561C1F31;
	Sat,  4 Jan 2025 14:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="dDe3Onzq"
X-Original-To: devicetree@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1654119922A
	for <devicetree@vger.kernel.org>; Sat,  4 Jan 2025 14:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736002223; cv=none; b=mAeF6RcIB1X3waS/0NmIOE/3jVSaTIRvMIRERV68ve3REl6w8XU4aYvLLdCABKffEbZvupkFDYW8NOsZXFVUR966lVLm7e+5/pUb2t90Yg5Qq+mpVNDZxtoIMgxnPD5KmUft+54iP/0LQVpxWWQwHdBCm76Wbi2WxPAP8nAkqhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736002223; c=relaxed/simple;
	bh=4bf4pavVpF+pyI0is+w3RLenY4A2F6NwCECyY2dkxh4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CX8ufocgyiN2e+YCV2enHKjCelh/LlxWnZ1jd8rdtQia6mXor4kWc401DvKvGjt3c1Aunu5qKuJejlb+PCUZoE9NCzlTkvrQCpxrf1YIMqZDOmv3GnTBBmFUYoWJ0BhgowM6POeBf83tamZwzY3l7HO3fo4pF6JVW58474rALKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=dDe3Onzq; arc=none smtp.client-ip=185.67.36.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 5999D240028
	for <devicetree@vger.kernel.org>; Sat,  4 Jan 2025 15:50:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1736002220; bh=4bf4pavVpF+pyI0is+w3RLenY4A2F6NwCECyY2dkxh4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=dDe3OnzqTTueKGDMPE2BtSNuXMEgWS439/KUkggBc1vNsiQ+XueyT53Eiu4wKRA3W
	 WYB+Sg+2HjSTXkNsfQ/Hc/l348OZqCdcI/jAV99NDs4BpYG7u2wl3283aLB0+FdRgr
	 Wad64+Wv4Bu9c0rvAPdH5eFXiOElRboLbIJqvJwkajfl1OaLHm7GTSTNHGWaGJv2FR
	 BhJlDQfQTHMlTHg8cfeoZ5VK9q6B6i66no0L9Td9E4Y6RUSegX8fuHfPgSOEp6Mq2c
	 lOZczDEeH2fVuBbmDqlcoWOzGRcFTSpPB4EVxtF44+D5IiHgubIM+FA6A8g9IYvO6E
	 848VJaaVjrkgA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4YQNf04cSFz6twh;
	Sat,  4 Jan 2025 15:50:16 +0100 (CET)
Date: Sat,  4 Jan 2025 14:50:16 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Rob Herring <robh@kernel.org>
Cc: j.ne@posteo.net, Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Naveen N Rao <naveen@kernel.org>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Frank Li <Frank.Li@nxp.com>,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [PATCH 14/19] powerpc: mpc83xx: Switch to of_platform_populate
Message-ID: <Z3lKqLXphxeI1Gvo@probook>
References: <20250102-mpc83xx-v1-0-86f78ba2a7af@posteo.net>
 <20250102-mpc83xx-v1-14-86f78ba2a7af@posteo.net>
 <CAL_JsqKU0AQ+ym_iDZSN5hNUTMF0bgjqu-aAVtG792Mw_eZTbg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqKU0AQ+ym_iDZSN5hNUTMF0bgjqu-aAVtG792Mw_eZTbg@mail.gmail.com>

On Thu, Jan 02, 2025 at 12:51:47PM -0600, Rob Herring wrote:
> On Thu, Jan 2, 2025 at 12:32 PM J. Neuschäfer via B4 Relay
> <devnull+j.ne.posteo.net@kernel.org> wrote:
> >
> > From: "J. Neuschäfer" <j.ne@posteo.net>
> >
> > Quoting from drivers/of/platform.c:
> >
> > > of_platform_populate() - [...]
> > > Similar to of_platform_bus_probe(), this function walks the device
> > > tree and creates devices from nodes.  It differs in that it follows
> > > the modern convention of requiring all device nodes to have a
> > > 'compatible' property, and it is suitable for creating devices which
> > > are children of the root node (of_platform_bus_probe will only create
> > > children of the root which are selected by the @matches argument).
> >
> > This is useful for new board ports because it means that the C code does
> > not have to anticipate every node that is placed directly under the root.
> >
> > As a consequence, the of_bus_ids list can be much shorter, and I've
> > trimmed it to the necessary parts:
> >
> >  - device-type = "soc" and compatible = "simple-bus" for the SoC bus
> >  - compatible = "gianfar" for the Ethernet controller (TSEC), which
> >    may contain an MDIO bus, which needs to be probed, as a subnode
> >
> > Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
> > ---
> >  arch/powerpc/platforms/83xx/misc.c | 6 +-----
> >  1 file changed, 1 insertion(+), 5 deletions(-)
> >
> > diff --git a/arch/powerpc/platforms/83xx/misc.c b/arch/powerpc/platforms/83xx/misc.c
> > index 1135c1ab923cc120f377a0d98767fef686cad1fe..bf522ee007bbb1429233355f668fc8563d8ca4e2 100644
> > --- a/arch/powerpc/platforms/83xx/misc.c
> > +++ b/arch/powerpc/platforms/83xx/misc.c
> > @@ -94,18 +94,14 @@ void __init mpc83xx_ipic_init_IRQ(void)
> >
> >  static const struct of_device_id of_bus_ids[] __initconst = {
> >         { .type = "soc", },
> 
> of_platform_populate() won't work on this match unless there's a
> compatible in the node, too. Can we use compatible instead or are
> there a bunch of them?

In arch/powerpc/boot/dts, I can find the following cases of device_type
= "soc" without compatible = "simple-bus":

- arch/powerpc/boot/dts/tqm8xx.dts           (MPC8xx)
- arch/powerpc/boot/dts/mpc885ads.dts        (MPC8xx)
- arch/powerpc/boot/dts/mpc866ads.dts        (MPC8xx)
- arch/powerpc/boot/dts/ep88xc.dts           (MPC8xx)
- arch/powerpc/boot/dts/kuroboxHG.dts        (MPC82xx)
- arch/powerpc/boot/dts/kuroboxHD.dts        (MPC82xx)
- arch/powerpc/boot/dts/storcenter.dts       (MPC82xx)
- arch/powerpc/boot/dts/asp834x-redboot.dts  (MPC83xx!)
- arch/powerpc/boot/dts/ksi8560.dts          (MPC85xx)

i.e. there is one affected devicetree. I can simply patch that one in
the next iteration.

> 
> > -       { .compatible = "soc", },
> >         { .compatible = "simple-bus" },
> >         { .compatible = "gianfar" },
> > -       { .compatible = "gpio-leds", },
> > -       { .type = "qe", },
> > -       { .compatible = "fsl,qe", },
> 
> Better still would be if we could move the remaining ones to the
> default table and just call of_platform_default_populate().

of_platform_default_populate does sound preferable.

I'll investigate why exactly the "gianfar" match is necessary and how to
fix it in the corresponding driver (I don't think it's general enough to
warrant being listed in of_default_bus_match_table).


Best regards,
 jn

