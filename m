Return-Path: <devicetree+bounces-184950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A09AD5CDD
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 19:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94C321897FDF
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 17:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C046521B9C8;
	Wed, 11 Jun 2025 17:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="wdxaolpv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0901C21A433
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 17:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749661898; cv=none; b=NY+rsWsYCodGkjxXMfLfQ0KuMMvmCncaEvtTWaPOI8fvuQ8ZvmcmBFTARe22Fa215gvypT9Eau7jFufQPJUT0/rGlS3Otk92+RpOUPlMsGMJZpvNu7vIMpnobpXxXImaquOvNduuHtMDXWNeJXVLLoqFlhjoXJP5E+xE9KGawZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749661898; c=relaxed/simple;
	bh=0rrg/j7xfhTAkqxbkBAoMJ5H3OvvTULkSZkoAyObnB0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k4AvVG9Tju/ft00Mt3AC6G53IVJXIv1bfrE5nsef0uFbzf8Mg1HKwGmLKt5p+QXV2/gmqLvd0+uh7y4ckwu9JqXYA4N3FOGAwF9lMaM33o+BzidzMowXyQhDUayZNGEnAmJTwmsNzs9p/iEBsSfErmEyHeufkksNo6xrW9S1imU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=wdxaolpv; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7399a2dc13fso182040b3a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 10:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1749661894; x=1750266694; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DucyK9ccxpyapq2woQL0qei/WtX3FmKICxB9cQHabrs=;
        b=wdxaolpvOcQk+DMpNJwKvcK/UgxQpXmPELZqGs2B6AhuzelhNhk+vPbWpsYWsTkoeR
         0XTxjhFLnAJMq/KlT2Hn3ETh7upcddNvHBsEY3ZohKAEbPH90EUl3gnVfc1gPycCJBqL
         i+1Dm9RQF5wEGWZp1vls4+O7QaCM0TjxnaZHs4/H/rG6ao0NeOL1CHeUCvA+buVlf35N
         tXIy0UtbK3zyGFLMhF7xm1ywIKwfgu+C0Gsxsstg3uxCW9j48ObT58ppJ5zRU4Teb1/s
         uThSX7ckXEfHPo0G2gVvNR/fxb4ENMdDgDga7SjEFszmZcg+Q0JtIWitpeMnnDy6sOJC
         eUiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749661894; x=1750266694;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DucyK9ccxpyapq2woQL0qei/WtX3FmKICxB9cQHabrs=;
        b=UY8Sjs4dlq77xV0Ua9unrd3gZzXK+4uGL3D8S2sW0BmlvQe2ioN9pNLM9qWL1tBGP+
         EpevmhzzS9hhc3yHh+jya7jxzN3yofAIZqYQes8P+MBLNTo6XNRsUpbxpYi31ULEAo3S
         wPkdDXdAI9yAq+OvfCOYPg+zf4+5vVl4vI5RQaJGYhtHmRfOanyDC/vEVoysPqmpORco
         OUS09CKsOjdvFj8mBmuE+hm790Jh09ijYk5/l1foJ4jHNqLn5G/x2czPSXZY/Ydk+tw0
         67zUqomaMOpHraHhJwBYIkeVDjqp6/HyHpiUS+r0k505/gecXwX/ESlrOpoSCL/VcWMt
         36AA==
X-Forwarded-Encrypted: i=1; AJvYcCW3TJVo/OgYWrzrbHC6IeVcWh8eQ++N44tlSI44auj5wfQr9xscsCVdegLtg47i8KA5LutnAMAuHKjH@vger.kernel.org
X-Gm-Message-State: AOJu0YyJVSNaH0XtWZvL0RgnnNn+A2ZLAp/mTT2ZpoTgt+4LFqskmTSw
	Lthf1QOCpR7spg2290fRMUN45OnnGSzh1wyeH9EesHNNsH4DZg/gXknkfaq3qoFOs3w=
X-Gm-Gg: ASbGnct/jyImNdEzPmbMSgakevHThPzXFdJtSdxyZ5/pT3r1Yv80ke6L0hdb1py/1L2
	VTbIRHyxtUJ/IDXRR8eK4CEz+vDASdHqg1opq3Z+HWHmMUX/65iY1694vzENLJLBQKtaS8ayMUJ
	nlYY3mNfHPnOlbDX80PF7c3S4sQ/sODZSfRFR12/OSRJFCE1/CTrCMIg4ox/H9GoYK79HBB7jsH
	HSfwaZ+/35HawxaIOWpcBUjjuciFNJvHXHdrhDtZ/dNKOgzN7c4XHQbnyEKPfQmCZVnaVFg4Ql9
	YBuDTF1/EeTGX4N8Ay7/kKYppEQRBSHucZHi/5vWSuV0zJT5TuWRLWA02CAoIL6SZSP9GpLyaw=
	=
X-Google-Smtp-Source: AGHT+IHPKfiVh9BBq/DHFeVf8RX9T6viUqIN5WUKbWYGpanTpWtdV+/1EZm0Ddh9RKSSQMvhDeO7Ig==
X-Received: by 2002:a05:6a21:998a:b0:1f5:9d5d:bcdd with SMTP id adf61e73a8af0-21f97753907mr937975637.1.1749661894141;
        Wed, 11 Jun 2025 10:11:34 -0700 (PDT)
Received: from x1 (97-120-245-201.ptld.qwest.net. [97.120.245.201])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7482b083f05sm9373821b3a.89.2025.06.11.10.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 10:11:33 -0700 (PDT)
Date: Wed, 11 Jun 2025 10:11:31 -0700
From: Drew Fustini <drew@pdp7.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: Rob Herring <robh@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dave Jiang <dave.jiang@intel.com>, nvdimm@lists.linux.dev,
	Oliver O'Halloran <oohall@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3] dt-bindings: pmem: Convert binding to YAML
Message-ID: <aEm4wztFPMY0KKC4@x1>
References: <20250606184405.359812-4-drew@pdp7.com>
 <20250609133241.GA1855507-robh@kernel.org>
 <aEh17S0VPqakdsEg@x1>
 <684993ad31c3_1e0a5129482@iweiny-mobl.notmuch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <684993ad31c3_1e0a5129482@iweiny-mobl.notmuch>

On Wed, Jun 11, 2025 at 09:33:17AM -0500, Ira Weiny wrote:
> Drew Fustini wrote:
> > On Mon, Jun 09, 2025 at 08:32:41AM -0500, Rob Herring wrote:
> > > On Fri, Jun 06, 2025 at 11:11:17AM -0700, Drew Fustini wrote:
> > > > Convert the PMEM device tree binding from text to YAML. This will allow
> > > > device trees with pmem-region nodes to pass dtbs_check.
> > > > 
> > > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > > Acked-by: Oliver O'Halloran <oohall@gmail.com>
> > > > Signed-off-by: Drew Fustini <drew@pdp7.com>
> > > > ---
> > > > Dan/Dave/Vishal: does it make sense for this pmem binding patch to go
> > > > through the nvdimm tree?
> > > > 
> > > > Note: checkpatch complains about "DT binding docs and includes should
> > > > be a separate patch". Rob told me that this a false positive. I'm hoping
> > > > that I can fix the false positive at some point if I can remember enough
> > > > perl :)
> > > > 
> > > > v3:
> > > >  - no functional changes
> > > >  - add Oliver's Acked-by
> > > >  - bump version to avoid duplicate message-id mess in v2 and v2 resend:
> > > >    https://lore.kernel.org/all/20250520021440.24324-1-drew@pdp7.com/
> > > > 
> > > > v2 resend:
> > > >  - actually put v2 in the Subject
> > > >  - add Conor's Acked-by
> > > >    - https://lore.kernel.org/all/20250520-refract-fling-d064e11ddbdf@spud/
> > > > 
> > > > v2:
> > > >  - remove the txt file to make the conversion complete
> > > >  - https://lore.kernel.org/all/20250520021440.24324-1-drew@pdp7.com/
> > > > 
> > > > v1:
> > > >  - https://lore.kernel.org/all/20250518035539.7961-1-drew@pdp7.com/
> > > > 
> > > >  .../devicetree/bindings/pmem/pmem-region.txt  | 65 -------------------
> > > >  .../devicetree/bindings/pmem/pmem-region.yaml | 49 ++++++++++++++
> > > >  MAINTAINERS                                   |  2 +-
> > > >  3 files changed, 50 insertions(+), 66 deletions(-)
> > > >  delete mode 100644 Documentation/devicetree/bindings/pmem/pmem-region.txt
> > > >  create mode 100644 Documentation/devicetree/bindings/pmem/pmem-region.yaml
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/pmem/pmem-region.txt b/Documentation/devicetree/bindings/pmem/pmem-region.txt
> > > > deleted file mode 100644
> > > > index cd79975e85ec..000000000000
> > > > --- a/Documentation/devicetree/bindings/pmem/pmem-region.txt
> > > > +++ /dev/null
> > > > @@ -1,65 +0,0 @@
> > > > -Device-tree bindings for persistent memory regions
> > > > ------------------------------------------------------
> > > > -
> > > > -Persistent memory refers to a class of memory devices that are:
> > > > -
> > > > -	a) Usable as main system memory (i.e. cacheable), and
> > > > -	b) Retain their contents across power failure.
> > > > -
> > > > -Given b) it is best to think of persistent memory as a kind of memory mapped
> > > > -storage device. To ensure data integrity the operating system needs to manage
> > > > -persistent regions separately to the normal memory pool. To aid with that this
> > > > -binding provides a standardised interface for discovering where persistent
> > > > -memory regions exist inside the physical address space.
> > > > -
> > > > -Bindings for the region nodes:
> > > > ------------------------------
> > > > -
> > > > -Required properties:
> > > > -	- compatible = "pmem-region"
> > > > -
> > > > -	- reg = <base, size>;
> > > > -		The reg property should specify an address range that is
> > > > -		translatable to a system physical address range. This address
> > > > -		range should be mappable as normal system memory would be
> > > > -		(i.e cacheable).
> > > > -
> > > > -		If the reg property contains multiple address ranges
> > > > -		each address range will be treated as though it was specified
> > > > -		in a separate device node. Having multiple address ranges in a
> > > > -		node implies no special relationship between the two ranges.
> > > > -
> > > > -Optional properties:
> > > > -	- Any relevant NUMA associativity properties for the target platform.
> > > > -
> > > > -	- volatile; This property indicates that this region is actually
> > > > -	  backed by non-persistent memory. This lets the OS know that it
> > > > -	  may skip the cache flushes required to ensure data is made
> > > > -	  persistent after a write.
> > > > -
> > > > -	  If this property is absent then the OS must assume that the region
> > > > -	  is backed by non-volatile memory.
> > > > -
> > > > -Examples:
> > > > ---------------------
> > > > -
> > > > -	/*
> > > > -	 * This node specifies one 4KB region spanning from
> > > > -	 * 0x5000 to 0x5fff that is backed by non-volatile memory.
> > > > -	 */
> > > > -	pmem@5000 {
> > > > -		compatible = "pmem-region";
> > > > -		reg = <0x00005000 0x00001000>;
> > > > -	};
> > > > -
> > > > -	/*
> > > > -	 * This node specifies two 4KB regions that are backed by
> > > > -	 * volatile (normal) memory.
> > > > -	 */
> > > > -	pmem@6000 {
> > > > -		compatible = "pmem-region";
> > > > -		reg = < 0x00006000 0x00001000
> > > > -			0x00008000 0x00001000 >;
> > > > -		volatile;
> > > > -	};
> > > > -
> > > > diff --git a/Documentation/devicetree/bindings/pmem/pmem-region.yaml b/Documentation/devicetree/bindings/pmem/pmem-region.yaml
> > > > new file mode 100644
> > > > index 000000000000..a4aa4ce3318b
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/pmem/pmem-region.yaml
> > > > @@ -0,0 +1,49 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/pmem-region.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +maintainers:
> > > > +  - Bjorn Helgaas <bhelgaas@google.com>
> > > 
> > > Drop Bjorn. He only did typo fixes on this.
> > > 
> > > > +  - Oliver O'Halloran <oohall@gmail.com>
> > > > +
> > > > +title: Persistent Memory Regions
> > > > +
> > > > +description: |
> > > > +  Persistent memory refers to a class of memory devices that are:
> > > > +
> > > > +    a) Usable as main system memory (i.e. cacheable), and
> > > > +    b) Retain their contents across power failure.
> > > > +
> > > > +  Given b) it is best to think of persistent memory as a kind of memory mapped
> > > > +  storage device. To ensure data integrity the operating system needs to manage
> > > > +  persistent regions separately to the normal memory pool. To aid with that this
> > > > +  binding provides a standardised interface for discovering where persistent
> > > > +  memory regions exist inside the physical address space.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: pmem-region
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  volatile:
> > > > +    description: |
> > > 
> > > Don't need '|' here.
> > 
> > Rob - Thanks for the feedback. Should I send a new revision with these
> > two changes?
> 
> I can do a clean up as I have not sent to Linus yet.
> 
> Here are the changes if you approve I'll change it and push to linux-next.
> 
> Ira
> 
> diff --git a/Documentation/devicetree/bindings/pmem/pmem-region.yaml b/Documentation/devicetree/bindings/pmem/pmem-region.yaml
> index a4aa4ce3318b..bd0f0c793f03 100644
> --- a/Documentation/devicetree/bindings/pmem/pmem-region.yaml
> +++ b/Documentation/devicetree/bindings/pmem/pmem-region.yaml
> @@ -5,7 +5,6 @@ $id: http://devicetree.org/schemas/pmem-region.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  maintainers:
> -  - Bjorn Helgaas <bhelgaas@google.com>
>    - Oliver O'Halloran <oohall@gmail.com>
>  
>  title: Persistent Memory Regions
> @@ -30,7 +29,7 @@ properties:
>      maxItems: 1
>  
>    volatile:
> -    description: |
> +    description:
>        Indicates the region is volatile (non-persistent) and the OS can skip
>        cache flushes for writes
>      type: boolean

Thanks for fixing it up. That looks good to me.

Drew

