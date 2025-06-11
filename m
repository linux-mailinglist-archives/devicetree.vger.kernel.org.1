Return-Path: <devicetree+bounces-184929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 818F8AD5B90
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 18:14:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 727C517DCED
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 16:13:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41D811DED53;
	Wed, 11 Jun 2025 16:13:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C81A1A725A
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 16:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749658413; cv=none; b=RSK6tbQb+szNVh2Jj01MkUMSHlB0WIXNF+p9xdEbXVFG06qEL3pilu5Vk+sJRtQes54IW1ODGVPXmTKejKKQXq56dDf5Ls8tyIRhomGUV1SY8yw0T7lHs7oGxdRP9yBIJfvKxBuRlzayFDhkFAjk9vroXfux3M7AxJYYz2P9aWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749658413; c=relaxed/simple;
	bh=qu+BzTpHOBcwL/mmrpE/KVqv664v42AcJp4J6fP0vxI=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gpmf8t1PUFDG3NBMOMiQxSPHKXwkOuwFHZVJva8TXxPEjHUPCVjcttfF1Wjx+zmIVSWY7tkgOYa8hcdnQigNDxtVVG+mKHJzRNALikUSXHIIJ7bIKYWT1xtOaCuTujjrh2r3TjhzguXameOiKjcyCPPflr8TSwfnHjwTQaPljDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS34.andestech.com [10.0.1.134])
	by Atcsqr.andestech.com with ESMTPS id 55BGDG0d043539
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK);
	Thu, 12 Jun 2025 00:13:16 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from atctrx.andestech.com (10.0.15.173) by ATCPCS34.andestech.com
 (10.0.1.134) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Thu, 12 Jun
 2025 00:13:16 +0800
Date: Thu, 12 Jun 2025 00:13:16 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To: Conor Dooley <conor@kernel.org>
CC: <paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <alex@ghiti.fr>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <tglx@linutronix.de>,
        <daniel.lezcano@linaro.org>, <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <tim609@andestech.com>
Subject: Re: [PATCH v5 0/8] add Voyager board support
Message-ID: <aEmrHPd7RxUSOLAY@atctrx.andestech.com>
References: <20250602060747.689824-1-ben717@andestech.com>
 <20250606-booth-icky-b416c1827a43@spud>
 <aEbOLztcBsKs84pn@atctrx.andestech.com>
 <20250609-donut-oozy-4dcc8b8a292d@spud>
 <20250609-twiddling-clamp-eaa0dd2b1cad@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250609-twiddling-clamp-eaa0dd2b1cad@spud>
User-Agent: Mutt/2.1.4 (2021-12-11)
X-ClientProxiedBy: ATCPCS33.andestech.com (10.0.1.100) To
 ATCPCS34.andestech.com (10.0.1.134)
X-DKIM-Results: atcpcs34.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 55BGDG0d043539

On Mon, Jun 09, 2025 at 05:17:50PM +0100, Conor Dooley wrote:
> [EXTERNAL MAIL]

> Date: Mon, 9 Jun 2025 17:17:50 +0100
> From: Conor Dooley <conor@kernel.org>
> To: Ben Zong-You Xie <ben717@andestech.com>
> Cc: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
>  alex@ghiti.fr, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
>  tglx@linutronix.de, daniel.lezcano@linaro.org,
>  prabhakar.mahadev-lad.rj@bp.renesas.com, devicetree@vger.kernel.org,
>  linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
>  tim609@andestech.com
> Subject: Re: [PATCH v5 0/8] add Voyager board support
> 
> On Mon, Jun 09, 2025 at 05:16:54PM +0100, Conor Dooley wrote:
> > On Mon, Jun 09, 2025 at 08:06:07PM +0800, Ben Zong-You Xie wrote:
> > > On Fri, Jun 06, 2025 at 05:00:06PM +0100, Conor Dooley wrote:
> > > > [EXTERNAL MAIL]
> > > 
> > > > Date: Fri, 6 Jun 2025 17:00:06 +0100
> > > > From: Conor Dooley <conor@kernel.org>
> > > > To: Ben Zong-You Xie <ben717@andestech.com>
> > > > Cc: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
> > > >  alex@ghiti.fr, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
> > > >  tglx@linutronix.de, daniel.lezcano@linaro.org,
> > > >  prabhakar.mahadev-lad.rj@bp.renesas.com, devicetree@vger.kernel.org,
> > > >  linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
> > > >  tim609@andestech.com
> > > > Subject: Re: [PATCH v5 0/8] add Voyager board support
> > > > 
> > > > On Mon, Jun 02, 2025 at 02:07:39PM +0800, Ben Zong-You Xie wrote:
> > > > > The Voyager is a 9.6” x 9.6” Micro ATX form factor development board
> > > > > including Andes QiLai SoC. This patch series adds minimal device tree
> > > > > files for the QiLai SoC and the Voyager board [1].
> > > > > 
> > > > > Now only support basic uart drivers to boot up into a basic console. Other
> > > > > features will be added later.
> > > > > 
> > > > > [1] https://www.andestech.com/en/products-solutions/andeshape-platforms/qilai-chip/
> > > > 
> > > > Ball is in your court now, after rc1 make a tree and get it in
> > > > linux-next, and then send a pr to soc@kernel.org with this new content.
> > > > Perhaps the defconfig should go separately, I can take that one if you
> > > > want.
> > > > 
> > > > Cheers,
> > > > Conor.
> > > 
> > > Hi Conor,
> > > 
> > > Thanks for your guidance on these patches. I will send a PR to
> > > soc@kernel.org as you suggested.
> > > 
> > > For the defconfig patch, I'm happy for you to handle it. Just let me
> > > know if there's anything specific you'd like me to include.
> > 
> > Okay, I picked it up on the basis that you'll send this all to Arnd for
> > 6.17
> 
> Sorry, I think that was really poorly worded. I picked it up on the
> basis that you're going to send the other patches in the series to Arnd
> for 6.17.

Hi Conor,

According to the SoC maintainer documentation [1], I should send a
patchset (not a PR) to soc@kernel.org. Since I'm not a submaintainer yet.
I think I should not sent a PR to the main SoC maintainer. Is that right?

Further, I have two questions about sending a patchset:   
1. Should I send v5 or start a new patchset?
2. Should I continue excluding the defconfig patch, as we discussed
   previously? I think it should be included now.

[1] https://docs.kernel.org/process/maintainer-soc.html#submitting-patches-to-the-main-soc-maintainers

Thanks,
Ben

