Return-Path: <devicetree+bounces-195429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F0AB019FB
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 12:52:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82AD9766682
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 10:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F4B02877CB;
	Fri, 11 Jul 2025 10:52:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37ECA2877E8
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 10:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752231124; cv=none; b=isAzEqmTmxaFg1lBPi1IJM1mAgsR+sRDpHsjz3z/pUfKEtJ1M0AqEVsKwazZe6fklI+11PGSfw/2VDfh7vwJKcOUfVac5Ws4tiZe+YcKRPmLHkPJ+3gGB/JoAfMv2BOHqKnn9yLJ/fgZSxAqCu0EzpXD5yi+aYvVT4Bl8ksag3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752231124; c=relaxed/simple;
	bh=U1IxpQc/YzLZ4HlV89An5zCtzvT5qjRVQDhbyk4gcqc=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SR99qQQRbCAy6WETnWBp8ba2TvmfMEiHsAMYaY2aVeLuBsGu/we2Ix7jJwD5+/0NNyiuxMajMwbZz4NDYGeVInkDIIufLWY0lLTrGrLHGkMBSsFwCbJwsQEXmO9vAJTj84HJMillxQWU1dDqeru0uoM1W00rzVu9qzvl1IMrOqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS34.andestech.com [10.0.1.134])
	by Atcsqr.andestech.com with ESMTPS id 56BApeFe051347
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK);
	Fri, 11 Jul 2025 18:51:40 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from atctrx.andestech.com (10.0.15.173) by ATCPCS34.andestech.com
 (10.0.1.134) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Fri, 11 Jul
 2025 18:51:40 +0800
Date: Fri, 11 Jul 2025 18:51:40 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
CC: <arnd@arndb.de>, <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <aou@eecs.berkeley.edu>, <alex@ghiti.fr>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <tglx@linutronix.de>,
        <daniel.lezcano@linaro.org>, <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <soc@lists.linux.dev>,
        <tim609@andestech.com>
Subject: Re: [PATCH 1/8] riscv: add Andes SoC family Kconfig support
Message-ID: <aHDsvMgSm87/wHpg@atctrx.andestech.com>
References: <20250704081451.2011407-1-ben717@andestech.com>
 <20250704081451.2011407-2-ben717@andestech.com>
 <CA+V-a8unFMmA2NdwuofTL1fx8vVHtD8Y9QbW2ec8B656DK6AAw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+V-a8unFMmA2NdwuofTL1fx8vVHtD8Y9QbW2ec8B656DK6AAw@mail.gmail.com>
User-Agent: Mutt/2.1.4 (2021-12-11)
X-ClientProxiedBy: ATCPCS33.andestech.com (10.0.1.100) To
 ATCPCS34.andestech.com (10.0.1.134)
X-DKIM-Results: atcpcs34.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 56BApeFe051347

On Mon, Jul 07, 2025 at 10:50:38AM +0100, Lad, Prabhakar wrote:
> [EXTERNAL MAIL]
> 
> Hi Ben,
> 
> Thank you for the patch.
> 
> On Fri, Jul 4, 2025 at 10:02 AM Ben Zong-You Xie <ben717@andestech.com> wrote:
> >
> > The first SoC in the Andes series is QiLai. It includes a high-performance
> > quad-core RISC-V AX45MP cluster and one NX27V vector processor.
> >
> > For further information, refer to [1].
> >
> > [1] https://www.andestech.com/en/products-solutions/andeshape-platforms/qilai-chip/
> >
> > Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
> > ---
> >  arch/riscv/Kconfig.errata | 2 +-
> >  arch/riscv/Kconfig.socs   | 9 +++++++++
> >  2 files changed, 10 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/riscv/Kconfig.errata b/arch/riscv/Kconfig.errata
> > index e318119d570d..be76883704a6 100644
> > --- a/arch/riscv/Kconfig.errata
> > +++ b/arch/riscv/Kconfig.errata
> > @@ -12,7 +12,7 @@ config ERRATA_ANDES
> >
> >  config ERRATA_ANDES_CMO
> >         bool "Apply Andes cache management errata"
> > -       depends on ERRATA_ANDES && ARCH_R9A07G043
> > +       depends on ERRATA_ANDES && (ARCH_R9A07G043 || ARCH_ANDES)
> >         select RISCV_DMA_NONCOHERENT
> >         default y
> >         help
> > diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> > index a9c3d2f6debc..1bf5637f2601 100644
> > --- a/arch/riscv/Kconfig.socs
> > +++ b/arch/riscv/Kconfig.socs
> > @@ -1,5 +1,14 @@
> >  menu "SoC selection"
> >
> > +config ARCH_ANDES
> > +       bool "Andes SoCs"
> > +       depends on MMU && !XIP_KERNEL
> > +       select ERRATA_ANDES
> > +       select ERRATA_ANDES_CMO
> > +       select AX45MP_L2_CACHE
> Do all the Andes SoCs require all the above three configs? (If not I
> would add it based on the SoC which requires it.)
> 

Hi Prabhakar,

Thanks for your suggestion. QiLai SoC does not need below two configs
since it has IOCP. I will remove below two configs in the next version.

Thanks,
Ben

