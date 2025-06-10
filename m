Return-Path: <devicetree+bounces-184466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D541AD41C5
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 20:14:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4E4E189A153
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 18:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCC1B2459C8;
	Tue, 10 Jun 2025 18:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="2UnrrDuk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F55245027
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 18:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749579250; cv=none; b=MDGOR0tvoVz2GdywYufxHEudvOLSX+7EQdwXfC/SXlDcKJJO37W7tly/rA2+FOmayjTA8+28duLFBJV3JQ6lwuiVEW4wPqa41/vxga81o5YAdtImOIwn2cNjeqk0zj9U+nweNQDLnCqQyweyNVMP1R6qSAbJV5hTyGGHWMSGXoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749579250; c=relaxed/simple;
	bh=HTzJ4CeEqQieDasfVAxFSBHNx5uBQqcVsEFN/1PuvDE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RW0GO8/NfHmlj0qqmPEdumhpH9kVOgjvQUj1WWEQZiKf+fiNS6er+VMrzAS4IQhdmd3W66UZP4bF3F/ooaHzm70H2x7zP4whbM1uAgmg/B4U/rJ7VdCAyDet56o9yVBQSWmeS835Jy7NAUIH9tlHcE/3czto9kc79ZxaBBuinbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=2UnrrDuk; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-742c46611b6so7326775b3a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1749579248; x=1750184048; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Buv6QogeYoqXPnf42/VWqtqjYW36NJ7ABH1YHvLm5sY=;
        b=2UnrrDukpeNHh88+6YLmi7MZ2u3Rtab4fBHguHIZyHNgdblRW4ZGC1+IlLTpC0bvfW
         16ZK6PkTUJT6OB4fxarjt7EmRDv/8Aj+vKbhslKJ+z3sjcaTftvjkpq1hXMUcV0uJPTP
         187LXwTp6j5gjcJQVKVV8y9cHpAeDkCnd9CTI0e5JzncyPkypPnXdLTszUhlxJc5AoHA
         L8uq65HmabCR1zDJHRbiirQrcxKqyGsSPqfZF38yysXg+4H/6/mCOlehsq+FBb9Xo0tC
         T2iSoaUJOMi5+7j83tVoCfOUNMIRX084Yb28vV6U/jx+67iTDIN27QFASYZALm2amD6Q
         rO9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749579248; x=1750184048;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Buv6QogeYoqXPnf42/VWqtqjYW36NJ7ABH1YHvLm5sY=;
        b=mO2/DCunToVHAehZF3lNTUeAKBj3dfmEFuohLfttfG5pqvfC05JI3NSXYdWGuBgvC1
         9kRFj+c/leAmD6rlmcBxgRn/xTSnTHLC36SenzrHvz5A8YwwSThtQzECnStb0w8mto60
         MCDrTcUXvqx9pYf5D/mtxf1/oh0fbQPVwCTezdtzaBVe7Ei6EzOuDvw1xjvskEmd1+xc
         44duPzGoVGqJ6oWmspQBujM/z/dpn3DnHbDgbZl9d/6BM2antAsglZeCw6jr6hbFQodX
         TIUpPrewXil3VoNSZqm/P+1fgex+PWh4ZVmNeu2Ify+HgDnlzGHLff3jfRrUVWBh7jMl
         BbJA==
X-Forwarded-Encrypted: i=1; AJvYcCUAt74PDC9Y/b/dezoUjlRdj2D6VhkDXjRGMTsKxVFkHJpHGRDRisyfQYezRY0VV2UR4elHkhad+RKz@vger.kernel.org
X-Gm-Message-State: AOJu0YxL0TDP2HbH37y6+GJKQh4srl49ECcmkNIY/oxIbu2MO4OLfur3
	s4qwBXuaGEYbP6vNI91HTdvfpGbyAufNTBuBOipPQw0wXBbOtaSNc92JQ1q7iO7Sc8AXwcFoalG
	tK6YQDyQ=
X-Gm-Gg: ASbGncu1DAy+czvCSCbbYIhdj/0nKp73U3E4n1e9eFU/3163GMqZU/WHxXR1O4pt4AQ
	+qPqQFWnd4QkgjQx0fBI0JhrSsALZ2HXdHigZfK7wV6iiGmgwP8hT6+v3vwD0ujUuwSfH39OcZ1
	l9iSvGCycyovUutdgIa/pSMtD+vmKXe/bbUKtk5qmptrOu7B7jvzbkMu96Zx2VPAf3DUJdWtKRf
	sbTt7i6Dm4LFrq2A4LaCVzDB3PzpGf/fchNkxnVzuRI0S9cdPDazXK30bu/Ldwa4hi+oBeT3UVS
	P1NIA4jTQneCQO1v5fcuHv77LZufnVZWN+cq17MszMfipTlGjhyOov4yNDk2kmDnmT3iGoiXag=
	=
X-Google-Smtp-Source: AGHT+IEKKfnqp8pCNkWI7DvGsMSwF7RA49Rt6mnDZLu2angUdnwaCraNN4mnhemBVW55MDBsnha8Sg==
X-Received: by 2002:a05:6a00:170b:b0:748:2ff7:5e22 with SMTP id d2e1a72fcca58-7486cb4cb97mr680434b3a.10.1749579247498;
        Tue, 10 Jun 2025 11:14:07 -0700 (PDT)
Received: from x1 (97-120-245-201.ptld.qwest.net. [97.120.245.201])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7482af3835fsm7775456b3a.27.2025.06.10.11.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 11:14:07 -0700 (PDT)
Date: Tue, 10 Jun 2025 11:14:05 -0700
From: Drew Fustini <drew@pdp7.com>
To: Rob Herring <robh@kernel.org>
Cc: Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dave Jiang <dave.jiang@intel.com>, nvdimm@lists.linux.dev,
	Oliver O'Halloran <oohall@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3] dt-bindings: pmem: Convert binding to YAML
Message-ID: <aEh17S0VPqakdsEg@x1>
References: <20250606184405.359812-4-drew@pdp7.com>
 <20250609133241.GA1855507-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250609133241.GA1855507-robh@kernel.org>

On Mon, Jun 09, 2025 at 08:32:41AM -0500, Rob Herring wrote:
> On Fri, Jun 06, 2025 at 11:11:17AM -0700, Drew Fustini wrote:
> > Convert the PMEM device tree binding from text to YAML. This will allow
> > device trees with pmem-region nodes to pass dtbs_check.
> > 
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Acked-by: Oliver O'Halloran <oohall@gmail.com>
> > Signed-off-by: Drew Fustini <drew@pdp7.com>
> > ---
> > Dan/Dave/Vishal: does it make sense for this pmem binding patch to go
> > through the nvdimm tree?
> > 
> > Note: checkpatch complains about "DT binding docs and includes should
> > be a separate patch". Rob told me that this a false positive. I'm hoping
> > that I can fix the false positive at some point if I can remember enough
> > perl :)
> > 
> > v3:
> >  - no functional changes
> >  - add Oliver's Acked-by
> >  - bump version to avoid duplicate message-id mess in v2 and v2 resend:
> >    https://lore.kernel.org/all/20250520021440.24324-1-drew@pdp7.com/
> > 
> > v2 resend:
> >  - actually put v2 in the Subject
> >  - add Conor's Acked-by
> >    - https://lore.kernel.org/all/20250520-refract-fling-d064e11ddbdf@spud/
> > 
> > v2:
> >  - remove the txt file to make the conversion complete
> >  - https://lore.kernel.org/all/20250520021440.24324-1-drew@pdp7.com/
> > 
> > v1:
> >  - https://lore.kernel.org/all/20250518035539.7961-1-drew@pdp7.com/
> > 
> >  .../devicetree/bindings/pmem/pmem-region.txt  | 65 -------------------
> >  .../devicetree/bindings/pmem/pmem-region.yaml | 49 ++++++++++++++
> >  MAINTAINERS                                   |  2 +-
> >  3 files changed, 50 insertions(+), 66 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/pmem/pmem-region.txt
> >  create mode 100644 Documentation/devicetree/bindings/pmem/pmem-region.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/pmem/pmem-region.txt b/Documentation/devicetree/bindings/pmem/pmem-region.txt
> > deleted file mode 100644
> > index cd79975e85ec..000000000000
> > --- a/Documentation/devicetree/bindings/pmem/pmem-region.txt
> > +++ /dev/null
> > @@ -1,65 +0,0 @@
> > -Device-tree bindings for persistent memory regions
> > ------------------------------------------------------
> > -
> > -Persistent memory refers to a class of memory devices that are:
> > -
> > -	a) Usable as main system memory (i.e. cacheable), and
> > -	b) Retain their contents across power failure.
> > -
> > -Given b) it is best to think of persistent memory as a kind of memory mapped
> > -storage device. To ensure data integrity the operating system needs to manage
> > -persistent regions separately to the normal memory pool. To aid with that this
> > -binding provides a standardised interface for discovering where persistent
> > -memory regions exist inside the physical address space.
> > -
> > -Bindings for the region nodes:
> > ------------------------------
> > -
> > -Required properties:
> > -	- compatible = "pmem-region"
> > -
> > -	- reg = <base, size>;
> > -		The reg property should specify an address range that is
> > -		translatable to a system physical address range. This address
> > -		range should be mappable as normal system memory would be
> > -		(i.e cacheable).
> > -
> > -		If the reg property contains multiple address ranges
> > -		each address range will be treated as though it was specified
> > -		in a separate device node. Having multiple address ranges in a
> > -		node implies no special relationship between the two ranges.
> > -
> > -Optional properties:
> > -	- Any relevant NUMA associativity properties for the target platform.
> > -
> > -	- volatile; This property indicates that this region is actually
> > -	  backed by non-persistent memory. This lets the OS know that it
> > -	  may skip the cache flushes required to ensure data is made
> > -	  persistent after a write.
> > -
> > -	  If this property is absent then the OS must assume that the region
> > -	  is backed by non-volatile memory.
> > -
> > -Examples:
> > ---------------------
> > -
> > -	/*
> > -	 * This node specifies one 4KB region spanning from
> > -	 * 0x5000 to 0x5fff that is backed by non-volatile memory.
> > -	 */
> > -	pmem@5000 {
> > -		compatible = "pmem-region";
> > -		reg = <0x00005000 0x00001000>;
> > -	};
> > -
> > -	/*
> > -	 * This node specifies two 4KB regions that are backed by
> > -	 * volatile (normal) memory.
> > -	 */
> > -	pmem@6000 {
> > -		compatible = "pmem-region";
> > -		reg = < 0x00006000 0x00001000
> > -			0x00008000 0x00001000 >;
> > -		volatile;
> > -	};
> > -
> > diff --git a/Documentation/devicetree/bindings/pmem/pmem-region.yaml b/Documentation/devicetree/bindings/pmem/pmem-region.yaml
> > new file mode 100644
> > index 000000000000..a4aa4ce3318b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pmem/pmem-region.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pmem-region.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +maintainers:
> > +  - Bjorn Helgaas <bhelgaas@google.com>
> 
> Drop Bjorn. He only did typo fixes on this.
> 
> > +  - Oliver O'Halloran <oohall@gmail.com>
> > +
> > +title: Persistent Memory Regions
> > +
> > +description: |
> > +  Persistent memory refers to a class of memory devices that are:
> > +
> > +    a) Usable as main system memory (i.e. cacheable), and
> > +    b) Retain their contents across power failure.
> > +
> > +  Given b) it is best to think of persistent memory as a kind of memory mapped
> > +  storage device. To ensure data integrity the operating system needs to manage
> > +  persistent regions separately to the normal memory pool. To aid with that this
> > +  binding provides a standardised interface for discovering where persistent
> > +  memory regions exist inside the physical address space.
> > +
> > +properties:
> > +  compatible:
> > +    const: pmem-region
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  volatile:
> > +    description: |
> 
> Don't need '|' here.

Rob - Thanks for the feedback. Should I send a new revision with these
two changes?

Drew

