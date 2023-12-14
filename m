Return-Path: <devicetree+bounces-25560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B79813A07
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 19:34:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29283281230
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 18:34:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5369D5A0FD;
	Thu, 14 Dec 2023 18:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="YNRAxn6N"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94D74CF;
	Thu, 14 Dec 2023 10:34:04 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BEIXumW081352;
	Thu, 14 Dec 2023 12:33:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702578836;
	bh=gh6wsVmxg2mdw23YLINnnRtb54FDmZeh9eGm3PU2HB8=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=YNRAxn6N8nGXxxOZzwgnuKtKiw2T6hSJ14VYlNlUpn73iGLpOcfmsCfx2d2ucouKd
	 h+rLRG0rAqYezA4BzQ3qd8t6ET4xMQtwCnrbj3hiJziU1GSZ1D6Aj8vRDDtq4f6Wb+
	 w4dzAA/6pWnEr/jLBzrFHSb8pjbl1DHhM/Ru+Xbc=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BEIXuYT020753
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 Dec 2023 12:33:56 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 14
 Dec 2023 12:33:56 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 14 Dec 2023 12:33:56 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BEIXuDU063957;
	Thu, 14 Dec 2023 12:33:56 -0600
Date: Thu, 14 Dec 2023 12:33:56 -0600
From: Nishanth Menon <nm@ti.com>
To: Andrew Davis <afd@ti.com>
CC: Vaishnav Achath <vaishnav.a@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <j-choudhary@ti.com>,
        <u-kumar1@ti.com>
Subject: Re: [PATCH 2/3] arm64: dts: ti: Introduce J722S family of SoCs
Message-ID: <20231214183356.hi5d6cuqmqltiy6i@footnote>
References: <20231213124930.3012-1-vaishnav.a@ti.com>
 <20231213124930.3012-3-vaishnav.a@ti.com>
 <20231213202705.6tspycl5qicb6gwd@germproof>
 <08eccba2-41df-91e7-c1e5-e03190402c23@ti.com>
 <20231214122713.qx7as6grpvlq3ylw@stoic>
 <f2bc6c68-742a-4a21-956e-91ee0933dd96@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f2bc6c68-742a-4a21-956e-91ee0933dd96@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 09:43-20231214, Andrew Davis wrote:
> On 12/14/23 6:27 AM, Nishanth Menon wrote:
> > On 14:07-20231214, Vaishnav Achath wrote:
> > [..]
> > > > Trim this down to what is different from AM62P?
> > > > 
> > > 
> > > Thanks for the review, I will trim this down in next revision, but the above is
> > > just a summary of the main features of this SoC, pointing to AM62P feature set
> > > here seems confusing to me. why does a new user/developer using J722S need to be
> > > aware of the existence of AM62P to just understand a high level summary about
> > > this device?
> > 
> > Since this is a reuse device. Helps with review and focus on deltas.
> > 
> > [...]
> > 
> > > > > +	l2_0: l2-cache0 {
> > > > > +		compatible = "cache";
> > > > > +		cache-unified;
> > > > > +		cache-level = <2>;
> > > > > +		cache-size = <0x80000>;
> > > > > +		cache-line-size = <64>;
> > > > > +		cache-sets = <512>;
> > > > > +	};
> > > > 
> > > > ^^ this is a duplication of am62p5.dtsi? what about the spins with
> > > > different CPUs enabled?
> > > > 
> > > 
> > > Yes it is a duplicate, as of now we are not aware of plan for spins with cores
> > > disabled, so just followed the pattern followed for other Jacinto devices
> > > (J721e, J7200, J721s2, J784s4).
> > 
> > None of the devices have been as close a reuse device as this has been.
> 
> I'd argue J721e and J7200 are more similar in terms of reuse. It was a
> mistake to model them as simple super/subsets of each other, only causes
> confusion later. Let's keep at least this top level file, we will end up
> using it more as more features/deltas are enabled/found.
> 

yes, we do need a top level dtsi for the SoC. just minimize the amount
of duplication.

[...]
> > > 
> > > [    7.492406] platform 79000000.r5f: configured R5F for remoteproc mode
> > > [    7.499887] platform 79000000.r5f: device does not have reserved memory
> > > regions, ret = -22
> > > [    7.508271] k3_r5_rproc bus@f0000:bus@4000000:r5fss@79000000: reserved memory
> > > init failed, ret = -22
> > > [    7.517549] remoteproc remoteproc0: releasing 79000000.r5f
> > > [    7.523338] k3_r5_rproc bus@f0000:bus@4000000:r5fss@79000000:
> > > k3_r5_cluster_rproc_init failed, ret = -22
> > > [    7.532993] k3_r5_rproc: probe of bus@f0000:bus@4000000:r5fss@79000000 failed
> > > with error -22
> > 
> > Yes, and the approach should rather be to disable the remote procs in
> > the board or at the SoC dtsi in a consistent manner. I had previously
> > suggested to do that SoC level (which means at am62p dtsi) since the remoteprocs have direct
> > dependency on how the memory layouts are partitioned in board.dts - but
> > i had asked folks working on remote procs to do that consistently across
> > SoCs. I don't see that having been done so far.
> > 
> 
> I fixed this for a couple SoCs way back last year (7e48b665100ee), seems
> folks kept adding mailboxes/rprocs un-disabled in the base .dtbi for
> new SoCs anyway :( This needs fixed in AM62p .dtsi first, then these
> disables can be removed from here.
> 

Yes, hence blocking it from here on. Cleanup, then add.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

