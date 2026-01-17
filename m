Return-Path: <devicetree+bounces-256319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D529D38AD4
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:37:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D55AE3024247
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55A3915CD7E;
	Sat, 17 Jan 2026 00:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m2scSSDI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f49.google.com (mail-dl1-f49.google.com [74.125.82.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9146A33B
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 00:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768610274; cv=none; b=d6cABSFIVIxpXE+yUtOtyniy140iAFe9Ho8IJxljwwza5HT8yLEMwYj91/Gi5cZ9s57YdhOHQt+7AI9hjFgI4Ia5sEVX5q/v+2cXpWNFDaECb/u0UGGhvE3qSr3cCOjjyYHaUyOlU9WDZtAz1SIjnzFFzj8sTBoQB7FPGBEZkXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768610274; c=relaxed/simple;
	bh=znyQ+dZG4FmrCdaja/PAQUFVQieYDJ5NvjiGGHTkMq4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZC3HYCivLB2R3dopJ+CIdKhWCnJPCXfl3NFALFz6l67zlW/s5SX2PN+NWAAgdB8VBd7ZaiRiGLHG8Owvm4r7/amAPBJZJiJgniz5GzCzAtrH2wY62KxBLZPEkNNhCbHI1ZTEb4GFYQxN4/drlP5sib/3t744Ju2mqXxmJ1+XuZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m2scSSDI; arc=none smtp.client-ip=74.125.82.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f49.google.com with SMTP id a92af1059eb24-12331482b8fso1222753c88.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:37:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768610272; x=1769215072; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QwUvDT/SlBc0Eqpr7nL2iXfaEJNSim3jrEuKQhva72I=;
        b=m2scSSDIftPj5VzDc1Cy+GBYCo3WMFP7TswOJLmngNqmOKhw6aAxwtTmrUFSxX21MD
         b7B+FIl9Htu1Vq43EL9MaJB7OgG2IYh4moPZWH/AhchYMkBAS7KowCe0C298zEhWZwvQ
         W93gcf+eUhetVmH6I33dTwX1dvgEsc3ulT2Dfyx1xDBSZn4N437OGrzeHkRoIQa3YNtx
         GrTpQAmnoOcLgA5oxF9o3NgexeyMN0Gr9IumAjluEDzysgTDVSNljH+Ib99EZbmPezBG
         iTcZDvhZpCTUUe2PdTEY01D8vegBSqB20AXuF0qPSLV5dDKfY/dJI3pMs9NPfnYJrw+H
         14lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768610272; x=1769215072;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QwUvDT/SlBc0Eqpr7nL2iXfaEJNSim3jrEuKQhva72I=;
        b=HoEWCF5qfG/XH0pHTNAvq7cj730IRsuP+bk/af3RErAu2aqL9rRHnOn67EZQQ5KWyV
         KSyRh3cgZ2uXtOXPmjet3kS4k8EK5K0Lix8UaJgKO/vEfvNPN1nw/g01ZdDbk0ZeekEv
         so4J3GElKyjwlNsgRdu+cyqmvcE+txoHfeGgm3/57nk1BfVaeMskQZWl3lEXHJQJf1yf
         cfSBwT1OQOkMMgthQ79hbzudNJZ/UKE/AMu5k2I+yUSfaTJ8fS/P/Abi0uAEHxkX6Ej6
         6D7KOkyoKUIEeqjPzh23cC9F11J+mSRb+mOPZefq+922xuxWm1pPMmug62KcnkxLv8ij
         9qtA==
X-Gm-Message-State: AOJu0YxDglDarJrdki+ONBZZjP+xyvnG5W7rdpGH36ZZxTyVmjCciM2v
	Bh1F+NLzVLlTivWVvsA1YKxiY9EtDb/pBCq+Oj1Sc7/S8epPN4GAyyva
X-Gm-Gg: AY/fxX53X+cW/jMs8OO2Q4wJ7d8CdBGI//30rMjfW05m8ose5U4sHoeNKsEOOvtBQsO
	M5eB1TvKac54nSWViwcTaCu3Jr9WYFEHK5LyQjA1BDe5iEadjRZ6OU5DMlVDLtHetLEvkgRmm/X
	jv8J4QWxkXroSp96g0n+Cfeldq0+mmp5y4Ddf8qA56npIpfYfZvASAHnhBexmWDSJZiqWqHEDX+
	kcQo4MoEGmkX29oTwXx7+ge1HHEKgppnYF16St7s8VSZZFIV3PY+alI/vx7FEFDCQdrjTdEirCI
	VNIS8cXEZQm9HLf0WLgz+43MTejWOQSRmcdMZhYGhQlD/T0M/xKJhbLuZdGO9qrlmZAHCzUG020
	B7K3FRL2n2iKV3sUdPwvT62HjbmnkpdPGjg1ChALgSRMaZ6jJQNdoe/I2DJfW2539Aya2+Taznx
	HlWBb6pC0LTg==
X-Received: by 2002:a05:7301:650c:b0:2ae:57be:86ef with SMTP id 5a478bee46e88-2b6b3eee816mr3461799eec.4.1768610271891;
        Fri, 16 Jan 2026 16:37:51 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b3619a7bsm3954639eec.19.2026.01.16.16.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 16:37:51 -0800 (PST)
Date: Sat, 17 Jan 2026 08:37:45 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, Han Gao <rabenda.cn@gmail.com>, 
	Nutty Liu <liujingqi@lanxincomputing.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Zixian Zeng <sycamoremoon376@gmail.com>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, Yixun Lan <dlan@gentoo.org>, 
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH 1/2] riscv: dts: sophgo: Move PLIC and CLINT node into
 CPU dtsi
Message-ID: <aWrZpoMOwTnFqlGN@inochi.infowork>
References: <20260113023828.790136-1-inochiama@gmail.com>
 <MA5PR01MB1250082D757C8DEFE005EE71AFE8CA@MA5PR01MB12500.INDPRD01.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MA5PR01MB1250082D757C8DEFE005EE71AFE8CA@MA5PR01MB12500.INDPRD01.PROD.OUTLOOK.COM>

On Thu, Jan 15, 2026 at 08:49:54AM +0800, Chen Wang wrote:
> 
> On 1/13/2026 10:38 AM, Inochi Amaoto wrote:
> > As we have a separate CPU dtsi file, move the PLIC and CLINT
> > node to the CPU dtsi file. This will make the sg2042.dtsi force
> > peripheral devices, and make the CPU dtsi force CPU related
> > devices.
> LGTM, except for the word "force" in the commit message; it seems a bit odd.
> Perhaps it would be better to write: "This will make all peripheral devices
> are defined in the sg2042.dtsi
> 
> and all CPU-related are defined in the CPU dtsi."
> 
> Reviewed-by: Chen Wang <unicorn_wang@outlook.com>
> 

Thanks, it should be "focus on", I wrote a wrong word, If it is
OK, I will fix this mistake when merging.

Regards,
Inochi

> > 
> > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> > ---
> >   arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi | 305 ++++++++++++++++++++
> >   arch/riscv/boot/dts/sophgo/sg2042.dtsi      | 303 -------------------
> >   2 files changed, 305 insertions(+), 303 deletions(-)
> > 
> > diff --git a/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi b/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
> > index 94a4b71acad3..509488eee432 100644
> > --- a/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
> > +++ b/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
> 
> [......]
> 
> 

