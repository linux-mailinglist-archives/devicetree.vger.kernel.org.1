Return-Path: <devicetree+bounces-58877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F25018A37E2
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 23:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A78B02844C6
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 21:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 038E815217C;
	Fri, 12 Apr 2024 21:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="bgH45ume"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E68B152160
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 21:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712957507; cv=none; b=tPH6+rbgnQooO93ORzIhv9m5RP1Z/6iPZ04P1LJiuwM5GwHUsbksBoixhTpH1AySI/xalVsjTYGiaAB4J6tcy9klr2mkIw1xRYtDlRPTLJj2+joIDBY8Kqp8OhtuwsUuUKmMA3A7C1cqK5fiiSjTR/3+y2ngwKylPJauHsk7c2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712957507; c=relaxed/simple;
	bh=hVHetCUPxRFHk5Gzc/GJaChOYGmBj9BTBCoF8SbK6Uw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lSH/61IgweyW5fRpXXIqa88g9yfstiGESvubKXbIZHhQcBIT2WmEEH9FSgYF8+3STzahJzRFJWUkjzr1S6dD9k2SEphJuyscJH5pjRV9z+iovHxOrW/NBURiAQMlux7LbXpnd77XS5nFlskd866XAPaAip4aD8wLhNnMmWiN45U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=bgH45ume; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6ed2dc03df6so1181155b3a.1
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 14:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712957505; x=1713562305; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=voVXHLevuqJNzT+bs7/EqrNPPg6u1fkprZIxe/QalLU=;
        b=bgH45ume/ZEfDDpb4B0UDim6cB4LKqiMtez1llT9FbxQt5OBgjwN2i8dpMtAO3+8oL
         ckFWbCvIWvQBNXIdKBq4Lj6ZyBCn+MIJZUiDZc/6T5JwV1b5CnkTHFA7+m5y6f4X305m
         uE8ShbdJ/muVDQ5/pR6oANkZSCvhhE9rlM15JKgU1AauJFTu5ZDjWPOTXA4yn81A+2Cz
         MeOlecv0zv3HcfmybSjLccBYo3PvES/HSKvdTQ7fjzztEfqzLNtoMTpNwVKb9QWrOulF
         1+JmOhci8BgPGFa3TdBDxaqUv/qtCdxQJSOCUwH05wEUE+HOcQ2iSZ8Wfix+OHjQeZ/a
         vBrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712957505; x=1713562305;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=voVXHLevuqJNzT+bs7/EqrNPPg6u1fkprZIxe/QalLU=;
        b=XwjhzP3XXNEy5KTvWOCaIF7CcMTkpmnyDS+2QUZ6orBPPzs+r8uEDBQdTicMc01OfR
         rC5cXuRVpjNNEHtNVF502nNQV+Hu6yl0mXn+cax1QadMo4SXLxnwa50i66O/GrX7jqil
         gn9Vq69bzxmzBFBwAKsa3ZXGYpGHpqtSZMRgMy75/Cvf44Fdf/IYjvSKWfWfhmmlXizT
         Q2RZa1RpN4LK5YlU4nMH/DBsxUaolXMSObkMAGoTwbrt/7I/q7QU3rQAldt8e+XBQQs/
         2ASrYxqwA4fkhiPOdt84lgkjR06ZRQaqwdyk7O6HIhmYF8pqyppfZbDQxRwE+4mbnRsI
         /8Dg==
X-Forwarded-Encrypted: i=1; AJvYcCU9vfAtEbZEwOgUrXeAVq+FdpvL9TFWYE5CzX7x1reQsg2nFRMecxxDNBNnK1cA0jqWe/d8e3+Em11ZQVeHQd3YlPo4nNj5nijd5w==
X-Gm-Message-State: AOJu0YyV/0/1FJAoyVCNXky5NnJby8pomSL7lWrFywA83qZ51hSDZMWe
	cOF8OKVjvH/EHWCCqvq+RBuqs80Fvxj2QTCKHrfdn8aNg8QtobVfRY9M0Px8zIw=
X-Google-Smtp-Source: AGHT+IERI9B+BrmtTh0aeho0vx1NlGjhWinYXb/3YQQZhSK7SAPG1+V9dZjVR23iA+HJ2H/wGMNAgA==
X-Received: by 2002:a05:6a20:5d92:b0:1a7:3d5f:dd3b with SMTP id km18-20020a056a205d9200b001a73d5fdd3bmr3547889pzb.16.1712957505558;
        Fri, 12 Apr 2024 14:31:45 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id h15-20020a63384f000000b005dc5289c4edsm3063267pgn.64.2024.04.12.14.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 14:31:45 -0700 (PDT)
Date: Fri, 12 Apr 2024 14:31:42 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Evan Green <evan@rivosinc.com>,
	=?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 02/19] riscv: cpufeature: Fix thead vector hwcap removal
Message-ID: <ZhmoPuoR00aS6qZp@ghost>
References: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
 <20240411-dev-charlie-support_thead_vector_6_9-v1-2-4af9815ec746@rivosinc.com>
 <20240412-tuesday-resident-d9d07e75463c@wendy>
 <ZhlrdGXfSushUNTp@ghost>
 <20240412-eastcoast-disparity-9c9e7d178df5@spud>
 <ZhmeLoPS+tsfqv1T@ghost>
 <20240412-chemist-haunt-0a30a8f280ca@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240412-chemist-haunt-0a30a8f280ca@spud>

On Fri, Apr 12, 2024 at 10:27:47PM +0100, Conor Dooley wrote:
> On Fri, Apr 12, 2024 at 01:48:46PM -0700, Charlie Jenkins wrote:
> > On Fri, Apr 12, 2024 at 07:47:48PM +0100, Conor Dooley wrote:
> > > On Fri, Apr 12, 2024 at 10:12:20AM -0700, Charlie Jenkins wrote:
> > > > On Fri, Apr 12, 2024 at 11:25:47AM +0100, Conor Dooley wrote:
> > > > > On Thu, Apr 11, 2024 at 09:11:08PM -0700, Charlie Jenkins wrote:
> > > > > > The riscv_cpuinfo struct that contains mvendorid and marchid is not
> > > > > > populated until all harts are booted which happens after the DT parsing.
> > > > > > Use the vendorid/archid values from the DT if available or assume all
> > > > > > harts have the same values as the boot hart as a fallback.
> > > > > > 
> > > > > > Fixes: d82f32202e0d ("RISC-V: Ignore V from the riscv,isa DT property on older T-Head CPUs")
> > > > > 
> > > > > If this is our only use case for getting the mvendorid/marchid stuff
> > > > > from dt, then I don't think we should add it. None of the devicetrees
> > > > > that the commit you're fixing here addresses will have these properties
> > > > > and if they did have them, they'd then also be new enough to hopefully
> > > > > not have "v" either - the issue is they're using whatever crap the
> > > > > vendor shipped.
> > > > 
> > > > Yes, the DT those shipped with will not have the property in the DT so
> > > > will fall back on the boot hart. The addition of the DT properties allow
> > > > future heterogenous systems to be able to function.
> > > 
> > > I think you've kinda missed the point about what the original code was
> > > actually doing here. Really the kernel should not be doing validation of
> > > the devicetree at all, but I was trying to avoid people shooting
> > > themselves in the foot by doing something simple that would work for
> > > their (incorrect) vendor dtbs.
> > > Future heterogenous systems should be using riscv,isa-extensions, which
> > > is totally unaffected by this codepath (and setting actual values for
> > > mimpid/marchid too ideally!).
> > > 
> > 
> > I am on the same page with you about that. 
> > 
> > > > > If we're gonna get the information from DT, we already have something
> > > > > that we can look at to perform the disable as the cpu compatibles give
> > > > > us enough information to make the decision.
> > > > > 
> > > > > I also think that we could just cache the boot CPU's marchid/mvendorid,
> > > > > since we already have to look at it in riscv_fill_cpu_mfr_info(), avoid
> > > > > repeating these ecalls on all systems.
> > > > 
> > > > Yeah that is a minor optimization that can I can apply.
> > > > 
> > > > > 
> > > > > Perhaps for now we could just look at the boot CPU alone? To my
> > > > > knowledge the systems that this targets all have homogeneous
> > > > > marchid/mvendorid values of 0x0.
> > > > 
> > > > They have an mvendorid of 0x5b7.
> > > 
> > > That was a braino, clearly I should have typed "mimpid".
> > > 
> > > > This is already falling back on the boot CPU, but that is not a solution
> > > > that scales. Even though all systems currently have homogenous
> > > > marchid/mvendorid I am hesitant to assert that all systems are
> > > > homogenous without providing an option to override this.
> > > 
> > > There are already is an option. Use the non-deprecated property in your
> > > new system for describing what extesions you support. We don't need to
> > > add any more properties (for now at least).
> > 
> > The issue is that it is not possible to know which vendor extensions are
> > associated with a vendor. That requires a global namespace where each
> > extension can be looked up in a table. I have opted to have a
> > vendor-specific namespace so that vendors don't have to worry about
> > stepping on other vendor's toes (or the other way around). In order to
> > support that, the vendorid of the hart needs to be known prior.
> 
> Nah, I think you're mixing up something like hwprobe and having
> namespaces there with needing namespacing on the devicetree probing side
> too. You don't need any vendor namespacing, it's perfectly fine (IMO)
> for a vendor to implement someone else's extension and I think we should
> allow probing any vendors extension on any CPU.

I am not mixing it up. Sure a vendor can implement somebody else's
extension, they just need to add it to their namespace too.

- Charlie

> 
> > I know a rebuttal here is that this is taking away from the point of
> > the original patch. I can split this patch up if so. The goal here is to
> > allow vendor extensions to play nicely with the rest of the system.
> > There are two uses of the mvendorid DT value, this fix, and the patch
> > that adds vendor extension support. I felt that it was applicable to
> > wrap the mvendorid DT value into this patch, but if you would prefer
> > that to live separate of this fix then that is fine too.
> > 
> > - Charlie
> > 
> > > 
> > > > The overhead is
> > > > looking for a field in the DT which does not seem to be impactful enough
> > > > to prevent the addition of this option.
> > > > 
> > > > > 
> > > > > > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> > > > > 
> > > > > > @@ -514,12 +521,23 @@ static void __init riscv_fill_hwcap_from_isa_string(unsigned long *isa2hwcap)
> > > > > >  				pr_warn("Unable to find \"riscv,isa\" devicetree entry\n");
> > > > > >  				continue;
> > > > > >  			}
> > > > > > +			if (of_property_read_u64(node, "riscv,vendorid", &this_vendorid) < 0) {
> > > > > > +				pr_warn("Unable to find \"riscv,vendorid\" devicetree entry, using boot hart mvendorid instead\n");
> > > > > 
> > > > > This should 100% not be a warning, it's not a required property in the
> > > > > binding.
> > > > 
> > > > Yes definitely, thank you.
> > > > 
> > > > - Charlie
> > > > 
> > > > > 
> > > > > Cheers,
> > > > > Conor.
> > > > > 
> > > > > > +				this_vendorid = boot_vendorid;
> > > > > > +			}
> > > > > 
> > > > 
> > > > 
> > 
> > 



