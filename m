Return-Path: <devicetree+bounces-11188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E03EC7D4B77
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:05:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F54A1C20AD7
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E40F21359;
	Tue, 24 Oct 2023 09:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B6F1FDF
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:05:05 +0000 (UTC)
Received: from angie.orcam.me.uk (angie.orcam.me.uk [IPv6:2001:4190:8020::34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id A013EC0;
	Tue, 24 Oct 2023 02:05:02 -0700 (PDT)
Received: by angie.orcam.me.uk (Postfix, from userid 500)
	id DB11492009C; Tue, 24 Oct 2023 11:05:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by angie.orcam.me.uk (Postfix) with ESMTP id D5D0392009B;
	Tue, 24 Oct 2023 10:05:00 +0100 (BST)
Date: Tue, 24 Oct 2023 10:05:00 +0100 (BST)
From: "Maciej W. Rozycki" <macro@orcam.me.uk>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
cc: Gregory CLEMENT <gregory.clement@bootlin.com>, 
    "paulburton@kernel.org" <paulburton@kernel.org>, 
    Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
    "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>, 
    Rob Herring <robh+dt@kernel.org>, 
    Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
    devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
    Vladimir Kondratiev <vladimir.kondratiev@intel.com>, 
    Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
    Alexandre Belloni <alexandre.belloni@bootlin.com>, 
    =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
    Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 03/11] MIPS: support RAM beyond 32-bit
In-Reply-To: <b35d73e8-260e-4296-a710-f20676e17c27@app.fastmail.com>
Message-ID: <alpine.DEB.2.21.2310240303440.63803@angie.orcam.me.uk>
References: <20231004161038.2818327-1-gregory.clement@bootlin.com> <20231004161038.2818327-4-gregory.clement@bootlin.com> <f98d0cf9-6339-4cb1-8019-56bc71bfb822@app.fastmail.com> <87edi3bxcl.fsf@BL-laptop> <e5b8c68e-8a1d-45e7-92bf-db0c2fa812ad@app.fastmail.com>
 <878r89b4jh.fsf@BL-laptop> <b35d73e8-260e-4296-a710-f20676e17c27@app.fastmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Thu, 12 Oct 2023, Jiaxun Yang wrote:

> > There is a kind of mirror but its physical address start at 0x8000000
> > so beyond the first 512MBytes that are used for KSEG0.
> 
> Really, KSEG0 range is 0x00000000 to 0x20000000, and 0x08000000 to 0x10000000
> is definitely within that range.
> 
> But I'd agree that 0x08000000 to 0x10000000 (32MB) seems too small for kernel
> text and data. So yeah, it makes sense to load kernel into XKPHYS.

 Hmm, my calculation indicates the range shown spans 128MiB, which I think 
is usually suitably large to hold kernel static text and data even for the 
richest configurations.  Regardless, loading into XKPHYS isn't wrong, with 
some platforms we've been doing it for decades now.

  Maciej

