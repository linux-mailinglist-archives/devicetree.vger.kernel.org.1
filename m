Return-Path: <devicetree+bounces-177486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 53612AB7C1F
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 05:12:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E15834C3EA5
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 03:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BD3C286D5A;
	Thu, 15 May 2025 03:12:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399254B1E53
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 03:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747278767; cv=none; b=H8n7FeRUqzOjo0tRcrjG0iXuG5p51owQDqxd3SHakN5/gW3TzZQqq3HJYhJzEIpCdXkZjMulebe2ZQ1GPdzDzkLlazjPRX76gsXrKQBncODWbWekoQsL47Dgy31fmzlVLEeeKM6aMXIeN1fycI8wzZ12SpKihkeFb1UvD3WJFK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747278767; c=relaxed/simple;
	bh=vEooOq1mF3JcMpF75SUZAU/F0rlija40yShoDfFFhe0=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=epmIgd+fkN3vDZPAFhqeg7mUNV2gLJoTs6BLce7KwT+BU8uZHG8S9Qim1Mb+EQuf9OMZockTsmC9oi6k81vGyFj08Bi2DIOOqzrwSE9yxqsa8SR9yE5geqTPrIa/XHVkxaJilZ7KHI6hhQWwj/wQUpD4xoWmHumKkEaZ8bK/hGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS34.andestech.com [10.0.1.134])
	by Atcsqr.andestech.com with ESMTPS id 54F3Caka051801
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK);
	Thu, 15 May 2025 11:12:36 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from atctrx.andestech.com (10.0.15.173) by ATCPCS34.andestech.com
 (10.0.1.134) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Thu, 15 May
 2025 11:12:36 +0800
Date: Thu, 15 May 2025 11:12:36 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To: Rob Herring <robh@kernel.org>
CC: <paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <alex@ghiti.fr>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <tglx@linutronix.de>, <daniel.lezcano@linaro.org>,
        <prabhakar.mahadev-lad.rj@bp.renesas.com>, <geert+renesas@glider.be>,
        <magnus.damm@gmail.com>, <devicetree@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <tim609@andestech.com>, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 4/9] dt-bindings: interrupt-controller: add Andes
 machine-level software interrupt controller
Message-ID: <aCVbpNkyHlfg+vc7@atctrx.andestech.com>
References: <20250514095350.3765716-1-ben717@andestech.com>
 <20250514095350.3765716-5-ben717@andestech.com>
 <20250514150102.GA2180131-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250514150102.GA2180131-robh@kernel.org>
User-Agent: Mutt/2.1.4 (2021-12-11)
X-ClientProxiedBy: ATCPCS33.andestech.com (10.0.1.100) To
 ATCPCS34.andestech.com (10.0.1.134)
X-DKIM-Results: atcpcs34.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 54F3Caka051801

On Wed, May 14, 2025 at 10:01:02AM -0500, Rob Herring wrote:
> [EXTERNAL MAIL]
> 
> On Wed, May 14, 2025 at 05:53:45PM +0800, Ben Zong-You Xie wrote:
> > Add the DT binding documentation for Andes machine-level software
> > interrupt controller.
> >
> > In the Andes platform such as QiLai SoC, the PLIC module is instantiated a
> > second time with all interrupt sources tied to zero as the software
> > interrupt controller (PLICSW). PLICSW can generate machine-level software
> > interrupts through programming its registers.
> >
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
> > ---
> >  .../andestech,plicsw.yaml                     | 54 +++++++++++++++++++
> >  MAINTAINERS                                   |  1 +
> 
> This won't apply for me due to MAINTAINERS conflict with this series. So
> apply the bindings patches with the dts files.
> 
> Rob

The conflict is due to the second patch in this series not being applied.
Should I wait for that patch to be applied, or is there something specific
I can do to resolve the conflict?

Thanks,
Ben


