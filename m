Return-Path: <devicetree+bounces-58826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A7E8A3481
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 19:12:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0EC22285790
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 17:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CD5114C587;
	Fri, 12 Apr 2024 17:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="D+RLPQOu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D49A59144
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 17:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712941944; cv=none; b=gKPezr24tC25I4aEcI0Kmmj6IFzOPRWvnTghhBzK+8/Qw+r0GITlmrpUjDElvlvCcfJf0srsDbupHFwEJHqmP+lqhmXhXt7w5r+RBHz8yVc6OzMh5bVJ74QehozSbBtMT57qtyGkgWv1kAes8tAVSqIeSofJ/7Y+t6dCngjouEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712941944; c=relaxed/simple;
	bh=zqFAuUa4RtTLPiQXk/lFHSFz6oHcmMCx6C1nVyRW8AM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UpuR21fOMOmIRWwqTIJ+rZ4JCoptTD1lcYU+kPkkdbxY9xh+CtGtr/YfErfUsD6J9SeH6W5saqMxNPPJ6m71sbBDGzEx1OoddwJvLQd3hgD+mttx0izkqCZg/Cxhc/3KJudcBHYSenfu+rUvyCCPlyeLRc7zkRF3Dk9JD3wQi6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=D+RLPQOu; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-517ab9a4a13so821777a12.1
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 10:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712941943; x=1713546743; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V6RQsJgA0sqhyVb4iUdwKlWBxVZP7PvFbdqSmnVezOg=;
        b=D+RLPQOuO59Frl872Dq1M1BXp+H6DMxSrUpYFhphqoStzdMR5F5CmS+v7VjCYYBFk9
         VyxPjF2P2a1sfW38Msxs07wCvPIk2OrtWZgnAsOywGWA3zUK9yUwUDtvhnE/C/mBYoR0
         3a84ssdOeskMF336DP4192GCjKJfsIckDwa0AMlqoR1t/B1NK6oewhuFNNL7FsK4nhuS
         /1yWKDVCK68KPbJyV6Aduv9vOwdsH2s11d3Oqhj42xAmT4gl2Di5xiRfsPjFvNi2Dkcw
         dT9j3BRnG98HpCXMy7mPTICPjclKHObbjsaoZlVL20yrmIJIWgErGX0eAuoTxXaWQj8T
         Klrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712941943; x=1713546743;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V6RQsJgA0sqhyVb4iUdwKlWBxVZP7PvFbdqSmnVezOg=;
        b=C1oL/gNclYxtIBvjaLR0GPnVTczuKZNxGAjUnVQh1m2JyNKfI350XsizWWNn844fth
         0ZthHXtUhAY9n6T1HYN4NQM/DBvcdMxrkQbuiWQkghMJyR1Unf+s0Q1uRkuUXgQZ0mEb
         5AWvzP8DpAch6kJqga0Xs57GVc/3V/DMTZUMK5LIdWmw3VC0adTwmAMk/lX2YnxqR2MO
         CJDue+SFSpON9BIkMJ33O4oO6uE1eqWbZne9AOJnuz4VM171yQW5nbf5mx1utu6YbhAw
         8TDqaeChjg2w3HOtREoPspmP9Qbg309iUaX09DEINcqE+d2ymS2JQ2AeeW4ZuKfvk7PB
         Uqwg==
X-Forwarded-Encrypted: i=1; AJvYcCW9iBoOyrDnIXaFn7+8cxngTD3LcTmQH2Bz5YMl//bBJbzMakvW9as8TsZ7vP4LfeAQTz0NyDQ0SzxSvzo3pqMoehV1Z8/4UDR6lQ==
X-Gm-Message-State: AOJu0YxGwdMi19ckSoXsXVof8vT3hDcfq5GmiVcW4ySam0mCzhivKp0H
	CE0hLyvg5emOXvmjRDlGk/hQMs9oVnK688pLuQF6Ti8GtRCYwWUcKem9GrsXZzc=
X-Google-Smtp-Source: AGHT+IGENLLg9Nrtb+afnnQbyAqzrlHIs52avdhanWUzgTqUmFBmisUUxHkztjDQR67LUvfCdWQBaQ==
X-Received: by 2002:a05:6a20:550a:b0:1a9:4343:765f with SMTP id ko10-20020a056a20550a00b001a94343765fmr3511412pzb.23.1712941942911;
        Fri, 12 Apr 2024 10:12:22 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:121b:da6b:94f1:304])
        by smtp.gmail.com with ESMTPSA id u4-20020aa78484000000b006ed59179b14sm3114754pfn.83.2024.04.12.10.12.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 10:12:22 -0700 (PDT)
Date: Fri, 12 Apr 2024 10:12:20 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
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
Message-ID: <ZhlrdGXfSushUNTp@ghost>
References: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
 <20240411-dev-charlie-support_thead_vector_6_9-v1-2-4af9815ec746@rivosinc.com>
 <20240412-tuesday-resident-d9d07e75463c@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240412-tuesday-resident-d9d07e75463c@wendy>

On Fri, Apr 12, 2024 at 11:25:47AM +0100, Conor Dooley wrote:
> On Thu, Apr 11, 2024 at 09:11:08PM -0700, Charlie Jenkins wrote:
> > The riscv_cpuinfo struct that contains mvendorid and marchid is not
> > populated until all harts are booted which happens after the DT parsing.
> > Use the vendorid/archid values from the DT if available or assume all
> > harts have the same values as the boot hart as a fallback.
> > 
> > Fixes: d82f32202e0d ("RISC-V: Ignore V from the riscv,isa DT property on older T-Head CPUs")
> 
> If this is our only use case for getting the mvendorid/marchid stuff
> from dt, then I don't think we should add it. None of the devicetrees
> that the commit you're fixing here addresses will have these properties
> and if they did have them, they'd then also be new enough to hopefully
> not have "v" either - the issue is they're using whatever crap the
> vendor shipped.

Yes, the DT those shipped with will not have the property in the DT so
will fall back on the boot hart. The addition of the DT properties allow
future heterogenous systems to be able to function.

> If we're gonna get the information from DT, we already have something
> that we can look at to perform the disable as the cpu compatibles give
> us enough information to make the decision.
> 
> I also think that we could just cache the boot CPU's marchid/mvendorid,
> since we already have to look at it in riscv_fill_cpu_mfr_info(), avoid
> repeating these ecalls on all systems.

Yeah that is a minor optimization that can I can apply.

> 
> Perhaps for now we could just look at the boot CPU alone? To my
> knowledge the systems that this targets all have homogeneous
> marchid/mvendorid values of 0x0.

They have an mvendorid of 0x5b7.

This is already falling back on the boot CPU, but that is not a solution
that scales. Even though all systems currently have homogenous
marchid/mvendorid I am hesitant to assert that all systems are
homogenous without providing an option to override this. The overhead is
looking for a field in the DT which does not seem to be impactful enough
to prevent the addition of this option.

> 
> > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> 
> > @@ -514,12 +521,23 @@ static void __init riscv_fill_hwcap_from_isa_string(unsigned long *isa2hwcap)
> >  				pr_warn("Unable to find \"riscv,isa\" devicetree entry\n");
> >  				continue;
> >  			}
> > +			if (of_property_read_u64(node, "riscv,vendorid", &this_vendorid) < 0) {
> > +				pr_warn("Unable to find \"riscv,vendorid\" devicetree entry, using boot hart mvendorid instead\n");
> 
> This should 100% not be a warning, it's not a required property in the
> binding.

Yes definitely, thank you.

- Charlie

> 
> Cheers,
> Conor.
> 
> > +				this_vendorid = boot_vendorid;
> > +			}
> 



