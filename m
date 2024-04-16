Return-Path: <devicetree+bounces-59579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAC68A61BA
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 05:34:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A398C1F21016
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 03:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C72231804A;
	Tue, 16 Apr 2024 03:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="htLgbxQE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBA817550
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 03:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713238450; cv=none; b=chXmWgL6wSzQQwMidIcytmNdbl69SQn0KNismUZ0UIjOA71oPt3BTr7meI7OEYtOFK1ynDpXGTU62oE/S/Ht3oF7D42xGs6Np3mMPL0in7hZCP9eR6dfHlsODhu/fUh4yEDzEf73ibjf9YddF2TR5+wlTFEU9M81I51/HNuXRzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713238450; c=relaxed/simple;
	bh=U4TMxR4A/cSP9bRdDsci+dqTH02fWMDh5jtAouNaMFU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MhPKWnurME+fPfDAs9khYKw1JU3AmlW/WzEV+FtQDi4zaTpx3ecQLV/BpU5EcwUY80X2eh1cP7dJBL0MZiYZ2SNoLj4liys/ioUKyNCdaO7RXXlmXb1V2LTbMOIu9OUm8aIEb87BpNS+oR/1JUG4Ft8ObjcSgzs5e7HZwocuwCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=htLgbxQE; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-5d3907ff128so3142692a12.3
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 20:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713238448; x=1713843248; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+EWmrrioxcbdhmgLzVDWs0ZmfxosK3ySncICyoT9RVM=;
        b=htLgbxQEGIF+TfNKXCNC61imbGXjMWrsnpqFXoc0RmXScZflNlbDW+RjW1F1bGTMW9
         /r0lyu5QA2OU0DVVvl5WcigJGOg1ggDx7isXPh+VLRILNuPy0EcfZpLRykAwXMJsd7bb
         Kfpvm59iIAExUQUR6kl6PyEWfsAW77sD5dsb5YjhFoHKtRcT9uGrifAXO/zebh4HUTqA
         9vkE9tRsWXXhj/3+jVmizMSUMPls6Rcp3l5ZVkJkFGHLOZuOPJzyIQYRbyUHMpSllJiR
         k+GDUo5WjyiYJIEasnnVAFLN3MBWZy+lA3WHikQkk6qZsKKsym7OroMHW1Joe7G5hTAn
         2JVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713238448; x=1713843248;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+EWmrrioxcbdhmgLzVDWs0ZmfxosK3ySncICyoT9RVM=;
        b=TZ2bWt0BAXzTXvcMEUqlalxesTsG2rwsdH4/syAgheainmnxOri6xnjUlBeMPgVI+n
         Dn8KkxlzCf2l8xAjhvvYA9jc9ontqzlmw0BmChEZMoxLgVyDz12Pg+hYP6hGESqBRsxE
         T1fGEgm4C7YtnBYypzNLFxvyoxC3/L3UAbRVc+l8RVTy1lJmotC/lWc/MReVjGce0aV6
         Cs7wl6FSSmNxsr/5FhbbHOtZHW7mztOgm+Q+F8OqD8FaB6rTy1t/pz/be4oNYZDIUKoK
         y0UPCtjbOxG9M6j9zVoZz5Sd3dLa48Ya96eFUydwF4/IeXbjDn/MxxeEROU8TeIKcjII
         44aw==
X-Forwarded-Encrypted: i=1; AJvYcCXNdJXjpZLqb7eDmxaLFd1loVU22CcAPCl+I4JCrUQ29I9ktcHDroqQj8LeZea9RkMZ6y2ZQhalF7c+3YHCH8924Sv/9iRJBkyMfQ==
X-Gm-Message-State: AOJu0Yxr52DUfFkqVyuSxYrCrs1xeEEYero6PSUyRtxI/60PkF1k8/YU
	QLRfCCpPhwpaKmPCx1swtFeew2AbAWK8sDgPzK/svjKrY7ZX+2jSe7atrtf7M14=
X-Google-Smtp-Source: AGHT+IG9jfOvCmqHl4/Fyo/8q6SyIRFlYI9sihLFkiHMi13PEhJw0HyUWWTm9jC0FXv9X1osScl9nA==
X-Received: by 2002:a05:6a21:8889:b0:1a5:bc5d:3c0a with SMTP id tb9-20020a056a21888900b001a5bc5d3c0amr15476979pzc.61.1713238448517;
        Mon, 15 Apr 2024 20:34:08 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:fd:b04f:bfdd:b666])
        by smtp.gmail.com with ESMTPSA id i15-20020a170902c94f00b001e25da6f2f2sm8653509pla.68.2024.04.15.20.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 20:34:08 -0700 (PDT)
Date: Mon, 15 Apr 2024 20:34:05 -0700
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
Message-ID: <Zh3xrTfjjk3b4GHb@ghost>
References: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
 <20240411-dev-charlie-support_thead_vector_6_9-v1-2-4af9815ec746@rivosinc.com>
 <20240412-tuesday-resident-d9d07e75463c@wendy>
 <ZhlrdGXfSushUNTp@ghost>
 <20240412-eastcoast-disparity-9c9e7d178df5@spud>
 <ZhmeLoPS+tsfqv1T@ghost>
 <20240412-chemist-haunt-0a30a8f280ca@spud>
 <ZhmoPuoR00aS6qZp@ghost>
 <20240413-sharper-unlivable-5a65660b19e2@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240413-sharper-unlivable-5a65660b19e2@spud>

On Sat, Apr 13, 2024 at 12:40:26AM +0100, Conor Dooley wrote:
> On Fri, Apr 12, 2024 at 02:31:42PM -0700, Charlie Jenkins wrote:
> > On Fri, Apr 12, 2024 at 10:27:47PM +0100, Conor Dooley wrote:
> > > On Fri, Apr 12, 2024 at 01:48:46PM -0700, Charlie Jenkins wrote:
> > > > On Fri, Apr 12, 2024 at 07:47:48PM +0100, Conor Dooley wrote:
> > > > > On Fri, Apr 12, 2024 at 10:12:20AM -0700, Charlie Jenkins wrote:
> 
> > > > > > This is already falling back on the boot CPU, but that is not a solution
> > > > > > that scales. Even though all systems currently have homogenous
> > > > > > marchid/mvendorid I am hesitant to assert that all systems are
> > > > > > homogenous without providing an option to override this.
> > > > > 
> > > > > There are already is an option. Use the non-deprecated property in your
> > > > > new system for describing what extesions you support. We don't need to
> > > > > add any more properties (for now at least).
> > > > 
> > > > The issue is that it is not possible to know which vendor extensions are
> > > > associated with a vendor. That requires a global namespace where each
> > > > extension can be looked up in a table. I have opted to have a
> > > > vendor-specific namespace so that vendors don't have to worry about
> > > > stepping on other vendor's toes (or the other way around). In order to
> > > > support that, the vendorid of the hart needs to be known prior.
> > > 
> > > Nah, I think you're mixing up something like hwprobe and having
> > > namespaces there with needing namespacing on the devicetree probing side
> > > too. You don't need any vendor namespacing, it's perfectly fine (IMO)
> > > for a vendor to implement someone else's extension and I think we should
> > > allow probing any vendors extension on any CPU.
> > 
> > I am not mixing it up. Sure a vendor can implement somebody else's
> > extension, they just need to add it to their namespace too.
> 
> I didn't mean that you were mixing up how your implementation worked, my
> point was that you're mixing up the hwprobe stuff which may need
> namespacing for $a{b,p}i_reason and probing from DT which does not.
> I don't think that the kernel should need to be changed at all if
> someone shows up and implements another vendor's extension - we already
> have far too many kernel changes required to display support for
> extensions and I don't welcome potential for more.

Yes I understand where you are coming from. We do not want it to require
very many changes to add an extension. With this framework, there are
the same number of changes to add a vendor extension as there is to add
a standard extension. There is the upfront cost of creating the struct
for the first vendor extension from a vendor, but after that the
extension only needs to be added to the associated vendor's file (I am
extracting this out to a vendor file in the next version). This is also
a very easy task since the fields from a different vendor can be copied
and adapted.

> 
> Another thing I just thought of was systems where the SoC vendor
> implements some extension that gets communicated in the ISA string but
> is not the vendor in mvendorid in their various CPUs. I wouldn't want to
> see several different entries in structs (or several different hwprobe
> keys, but that's another story) for this situation because you're only
> allowing probing what's in the struct matching the vendorid.

Since the isa string is a per-hart field, the vendor associated with the
hart will be used.

- Charlie


