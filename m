Return-Path: <devicetree+bounces-78540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3782F9128F4
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 17:08:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF4591F27454
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 15:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2539481A7;
	Fri, 21 Jun 2024 15:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="EbLTCULT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C432D60C
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 15:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718982486; cv=none; b=BBSmBK7MYgQKH3xz07irejpBrWIFlRMTbYnaPZsIn+3hPBav5ltcbBfekSu/lK9gw9vK6SWoGV2T29nCbw2V2UwZVuPiS2qj3uvKNERCgxGYxmyfCcEQrp3+OKUmjc2qowc4k7muNDGltoc99QkSn8qbxLN3p6FY5cumYGbgRd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718982486; c=relaxed/simple;
	bh=Mfbs86+7m7VjWbpg442N0c7HyCNSgaJeK9YGCTPFwj4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gok6cdN1fRCdwIF1pt5IOkmQVQGRyTa7QJYVIEDhywKVai5b07r5mu/hfvjcUxSZeyCj3qBOfAf7PHDURhL3hN9KahttGpRZIPCbYU/JhwdOcGvqGtOpAXihmNBjZUvZ1p4ilSOvuyDY1ZFgZ3ZuGjoe9kuUInP60jwq/MgD2m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=EbLTCULT; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-421b9068274so20078385e9.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 08:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1718982483; x=1719587283; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UTWHPV88FmCEJH+LG722CyH2FEJ+u15rMxRs38TdpJE=;
        b=EbLTCULTTau4CB7cnTmZFS3zWxJMxSMtJZsUC/kbEC3J2uH4LuwAGxEGXduSvH0x18
         PMU8ATRJc1j+GSG4iZcE3pxY30+AB52qL0gXG9nQ3PumU0BtJQOCmby5Q43HnunHb7Yx
         R+LZLpy6knTIkSH+9C2N0Qnk1Jjo2l0jx0EOFCCD8/Q81v4qfOvBJZiFYyLmy6x4g9+2
         Wd5rSwNWjbx3BRKQWjMAwAOaDc1YJLRdsklsQtmvysVZTOtrH/21fk9r3LG/mixkl4TE
         xMUCvUFsHr4KFT4Ii+hg2AC9m4pOt8R49AUt6WYF5tVLUaJbd0yybxhTVN3VnO25qTHf
         CxPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718982483; x=1719587283;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UTWHPV88FmCEJH+LG722CyH2FEJ+u15rMxRs38TdpJE=;
        b=AIDVXcLdyjtjwNKjl2YS95FLUJ7ZwxR0w7k9txuusngWcaH3sO6bUZjUNzTrSn7f/5
         GBD/xxWx7lmNY2w0vYvm77DdrcrRra8ciGPsVYJwU2xItxTEnv02fr2GyxVhr3MHznPM
         TmRTqd/T4lJ0PZ0ffqIAulkaEhgU/H4ghOAx+8kAZc3px9WAtQiRNj5fbiwvG520qFcK
         UtxpBvd27Qy/vVQzEh7QHWUDN5EUw4eWYhzxRMYF6H5tah4LmI2whEdzAYo9WMKqdOSc
         qjSlLgX1kej5h+X84kueeYNWNkFDPDe6t0vBchOhi7RmwK4AogoO7HdIjV9/Ivo8BJjP
         iJFw==
X-Forwarded-Encrypted: i=1; AJvYcCVC9BxE/um6FnJ8r/jRrXZo+xGfjZeZei8ZhME85dMdgLCn/8eVyS28Sy3IH01caGMod8PCoiLLgcxm20WDXtj6oeGKToj9xrJNzA==
X-Gm-Message-State: AOJu0Yz+HqR2q80HyvDaPcQF0Rp4Bjm5EPCcHRv9frOXqIbpf2XzI5Ix
	8hMHWnGXWY1qCImiLMmdE78TIpKhMPWOfn9XfsN+1vsC1oyRqORw1Yre5xC+fkg=
X-Google-Smtp-Source: AGHT+IEIRpUWHcw8XTIcAv4v8Oe5k9VV3v98Ohw140EkoEs6DEAbUs8kPNn5uZbUGX5eMmzZdCfjhg==
X-Received: by 2002:a05:600c:4f45:b0:424:777d:dcc with SMTP id 5b1f17b1804b1-424777d1648mr63667245e9.0.1718982483038;
        Fri, 21 Jun 2024 08:08:03 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3664178f5f7sm1935800f8f.19.2024.06.21.08.08.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 08:08:02 -0700 (PDT)
Date: Fri, 21 Jun 2024 17:08:01 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Conor Dooley <conor@kernel.org>
Cc: Alexandre Ghiti <alex@ghiti.fr>, 
	Conor Dooley <conor.dooley@microchip.com>, Anup Patel <apatel@ventanamicro.com>, 
	Yong-Xuan Wang <yongxuan.wang@sifive.com>, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	kvm-riscv@lists.infradead.org, kvm@vger.kernel.org, greentime.hu@sifive.com, 
	vincent.chen@sifive.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 2/4] dt-bindings: riscv: Add Svade and Svadu Entries
Message-ID: <20240621-8422c24612ae40600f349f7c@orel>
References: <20240605121512.32083-3-yongxuan.wang@sifive.com>
 <20240605-atrium-neuron-c2512b34d3da@spud>
 <CAK9=C2XH7-RdVpojX8GNW-WFTyChW=sTOWs8_kHgsjiFYwzg+g@mail.gmail.com>
 <40a7d568-3855-48fb-a73c-339e1790f12f@ghiti.fr>
 <20240621-viewless-mural-f5992a247992@wendy>
 <edcd3957-0720-4ab4-bdda-58752304a53a@ghiti.fr>
 <20240621-9bf9365533a2f8f97cbf1f5e@orel>
 <20240621-glutton-platonic-2ec41021b81b@spud>
 <20240621-a56e848050ebbf1f7394e51f@orel>
 <20240621-surging-flounder-58a653747e1d@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240621-surging-flounder-58a653747e1d@spud>

On Fri, Jun 21, 2024 at 03:58:18PM GMT, Conor Dooley wrote:
> On Fri, Jun 21, 2024 at 04:52:09PM +0200, Andrew Jones wrote:
> > On Fri, Jun 21, 2024 at 03:04:47PM GMT, Conor Dooley wrote:
> > > On Fri, Jun 21, 2024 at 03:15:10PM +0200, Andrew Jones wrote:
> > > > On Fri, Jun 21, 2024 at 02:42:15PM GMT, Alexandre Ghiti wrote:
> 
> > > > I understand the concern; old SBI implementations will leave svadu in the
> > > > DT but not actually enable it. Then, since svade may not be in the DT if
> > > > the platform doesn't support it or it was left out on purpose, Linux will
> > > > only see svadu and get unexpected exceptions. This is something we could
> > > > force easily with QEMU and an SBI implementation which doesn't do anything
> > > > for svadu. I hope vendors of real platforms, which typically provide their
> > > > own firmware and DTs, would get this right, though, especially since Linux
> > > > should fail fast in their testing when they get it wrong.
> > > 
> > > I'll admit, I wasn't really thinking here about something like QEMU that
> > > puts extensions into the dtb before their exact meanings are decided
> > > upon. I almost only ever think about "real" systems, and in those cases
> > > I would expect that if you can update the representation of the hardware
> > > provided to (or by the firmware to Linux) with new properties, then updating
> > > the firmware itself should be possible.
> > > 
> > > Does QEMU have the this exact problem at the moment? I know it puts
> > > Svadu in the max cpu, but does it enable the behaviour by default, even
> > > without the SBI implementation asking for it?
> > 
> > Yes, because QEMU has done hardware A/D updating since it first started
> > supporting riscv, which means it did svadu when neither svadu nor svade
> > were in the DT. The "fix" for that was to ensure we have svadu and !svade
> > by default, which means we've perfectly realized Alexandre's concern...
> > We should be able to change the named cpu types that don't support svadu
> > to only have svade in their DTs, since that would actually be fixing those
> > cpu types, but we'll need to discuss how to proceed with the generic cpu
> > types like 'max'.
> 
> Correct me please, since I think I am misunderstanding: At the moment
> QEMU does A/D updating whether or not the SBI implantation asks for it,
> with the max CPU. The SBI implementation doesn't understand Svadu and
> won't strip it. The kernel will get a DT with Svadu in it, but Svadu will
> be enabled, so it is not a problem.

Oh, of course you're right! I managed to reverse things some odd number of
times (more than once!) in my head and ended up backwards...

Thanks,
drew

