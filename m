Return-Path: <devicetree+bounces-33846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 24559836D8C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 18:34:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FFD01F25DB6
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 17:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E9B357319;
	Mon, 22 Jan 2024 16:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="MJWIm1R9"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0436E3FB26
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 16:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705941465; cv=none; b=KFib6vgapjuHJpO//S87p9PQffASNZ4gSzoEhEzIYmQ8sD+ifsBrCKL2iznrbe8PQ3zqkVAAZiWz1tWZQUVZ0jWFxryyqhPi6LMfvFj3Qm/FDnG0qVTPajtao+n2mrsViqyq+CBsGrfEUcZJy/4hiU+1Bz1SBSV+K8YQNLXcTOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705941465; c=relaxed/simple;
	bh=KkOoN25GD1zzuzfVfZSNgclmXPCJPP4I5NuDmXIDH+A=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DeSALCyskwdKh60+tGnqzcmfuFeIDXzdCCcGHTbQ4X0omd5zOOopsi+Ns6eI7pJ7Q99MtCmN9zGMFmTO4WdN8Yf+DUUp1mo7/A7X1bCbNIpMiEV+2gXvewJv2G6RE6h/IRxrg0/UDV75OS4r30owQvpKii+25dsskme12b23tX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=MJWIm1R9; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1705941462;
	bh=KkOoN25GD1zzuzfVfZSNgclmXPCJPP4I5NuDmXIDH+A=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MJWIm1R99j/gT3CHZ4+0pNq7T9D2ISy2D1Zekzf1KUxR6jcnNh1/up5HPJcmTWP11
	 fnL7+1bn/YD3VhmcGWEDyZxMQfCGjTE11XL0+kW7o3Uu9d7tgrwkHl+JfTIGiOxc9m
	 EUcI2lHpNcMrx/vByWK4kDmUxIlQACXEfX3VmmNdUUNKA5DSOcKY/rdGfjZ/opnfwk
	 mx3dz1jPNnfTQlcdzCutqGuQJ6KAfg8bLX+S49gvUY+a8bV1UybiT0yxdASQacYDxb
	 khg1+Iz8LSQAqrOCjDa4XHk5lndl+TXjZFpNduXKOjIHX5inlZAPPHv5hY7HDkoS6i
	 PYrd+Hj2A27jw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 26E543781492;
	Mon, 22 Jan 2024 16:37:41 +0000 (UTC)
Date: Mon, 22 Jan 2024 17:37:39 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Rob Herring <robh@kernel.org>
Cc: Liviu Dudau <Liviu.Dudau@arm.com>, dri-devel@lists.freedesktop.org,
 "Marty E . Plummer" <hanetzer@startmail.com>, =?UTF-8?B?Q2zDqW1lbnQgUMOp?=
 =?UTF-8?B?cm9u?= <peron.clem@gmail.com>, Nicolas Boichat
 <drinkcat@chromium.org>, Neil Armstrong <neil.armstrong@linaro.org>, Faith
 Ekstrand <faith.ekstrand@collabora.com>, Daniel Stone
 <daniels@collabora.com>, Steven Price <steven.price@arm.com>, Robin Murphy
 <robin.murphy@arm.com>, kernel@collabora.com, Heiko Stuebner
 <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 13/14] dt-bindings: gpu: mali-valhall-csf: Add
 support for Arm Mali CSF GPUs
Message-ID: <20240122173739.0e0d7120@collabora.com>
In-Reply-To: <ZXBUGhL6utV15-Yx@e110455-lin.cambridge.arm.com>
References: <20231204173313.2098733-1-boris.brezillon@collabora.com>
	<20231204173313.2098733-14-boris.brezillon@collabora.com>
	<20231205204827.GA3761421-robh@kernel.org>
	<ZXBUGhL6utV15-Yx@e110455-lin.cambridge.arm.com>
Organization: Collabora
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Rob,

We didn't hear back from you, so I assumed you were happy with Liviu's
explanations and sent a v4 with just the s/space/tab/ formatting fix.
Please let us know if you have any concerns with v4 binding docs.

Thanks,

Boris

On Wed, 6 Dec 2023 10:59:38 +0000
Liviu Dudau <Liviu.Dudau@arm.com> wrote:

> Hi Rob,
> 
> Thanks for reviewing this!
> 
> On Tue, Dec 05, 2023 at 02:48:27PM -0600, Rob Herring wrote:
> > On Mon, Dec 04, 2023 at 06:33:06PM +0100, Boris Brezillon wrote:  
> > > From: Liviu Dudau <liviu.dudau@arm.com>
> > > 
> > > Arm has introduced a new v10 GPU architecture that replaces the Job Manager
> > > interface with a new Command Stream Frontend. It adds firmware driven
> > > command stream queues that can be used by kernel and user space to submit
> > > jobs to the GPU.
> > > 
> > > Add the initial schema for the device tree that is based on support for
> > > RK3588 SoC. The minimum number of clocks is one for the IP, but on Rockchip
> > > platforms they will tend to expose the semi-independent clocks for better
> > > power management.
> > > 
> > > v3:
> > > - Cleanup commit message to remove redundant text
> > > - Added opp-table property and re-ordered entries
> > > - Clarified power-domains and power-domain-names requirements for RK3588.
> > > - Cleaned up example
> > > 
> > > Note: power-domains and power-domain-names requirements for other platforms
> > > are still work in progress, hence the bindings are left incomplete here.
> > > 
> > > v2:
> > > - New commit
> > > 
> > > Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
> > > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: Conor Dooley <conor+dt@kernel.org>
> > > Cc: devicetree@vger.kernel.org
> > > ---
> > >  .../bindings/gpu/arm,mali-valhall-csf.yaml    | 147 ++++++++++++++++++
> > >  1 file changed, 147 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
> > > new file mode 100644
> > > index 000000000000..d72de094c8ea
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
> > > @@ -0,0 +1,147 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/gpu/arm,mali-valhall-csf.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: ARM Mali Valhall GPU
> > > +
> > > +maintainers:
> > > +  - Liviu Dudau <liviu.dudau@arm.com>
> > > +  - Boris Brezillon <boris.brezillon@collabora.com>
> > > +
> > > +properties:
> > > +  $nodename:
> > > +    pattern: '^gpu@[a-f0-9]+$'
> > > +
> > > +  compatible:
> > > +    oneOf:  
> > 
> > Don't need oneOf.  
> 
> This has come up on the review of the previous version. We're planning on adding support for more
> SoCs once the initial panthor driver gets merged, but I don't think it's worth advertising it now.
> Krzyszof raised the same point and then agreed to keep it, as seen here[1].
> 
> >   
> > > +      - items:
> > > +          - enum:
> > > +              - rockchip,rk3588-mali
> > > +          - const: arm,mali-valhall-csf   # Mali Valhall GPU model/revision is fully discoverable
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    items:
> > > +      - description: Job interrupt
> > > +      - description: MMU interrupt
> > > +      - description: GPU interrupt
> > > +
> > > +  interrupt-names:
> > > +    items:
> > > +      - const: job
> > > +      - const: mmu
> > > +      - const: gpu
> > > +
> > > +  clocks:
> > > +    minItems: 1
> > > +    maxItems: 3  
> > 
> > The function of each clock based on just the names below aren't too 
> > evident. 'core' is, but then what is 'stacks'? Please add some 
> > descriptions.
> >   
> The names match the hardware architecture, where the core clock powers
> most of the GPU, the 'stacks' clock is for shader core stacks and the
> 'coregroup' is used by stacks and tilers. All this is defined as "logical
> power domains" and the implementer of the IP can decide to map them to
> individual physical power domains or to group everything into a minimum of
> one power domain. Hence the flexibility in describing the hardware.
> 
> As for describing what the function of each power domain is, I'm afraid we
> need to keep it at "matches the architecture" for now and I will look into
> what more information can be added later. At the high level, the more
> power domains you have the more you can fine tune the power consumption of
> the GPU.
> 
> > I expect there is better visibility into what's correct here than we had 
> > on earlier h/w. IOW, I don't want to see different clocks for every SoC. 
> > Same applies to power-domains.  
> 
> Afraid that's up to the SoC implementation to decide how they wire the
> power domains. Hardware is capable to automatically powering up the domains
> needed, as long as the relevant clocks are provided.
> 

