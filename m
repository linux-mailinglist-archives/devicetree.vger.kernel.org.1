Return-Path: <devicetree+bounces-58872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5588D8A3780
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 23:04:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A0E09B239BC
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 21:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6593814EC53;
	Fri, 12 Apr 2024 21:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="LsdnpNnM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A1D44361
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712955835; cv=none; b=H2Tjd3LoPCjtwKI8m9u57deAV71McurwrQ2JNHm/pMTkP+zV0Gn1cmWPiGsPnrzdsIMV767+yZiCvX98pqLPpHFDinbg5Jt+8IWDlC9VYeBpp+p1g5bR2s3MeH9sTGiyOktJyfn3clmzZZVfkckc+MnfENSpFAms9Xp0NQgwIUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712955835; c=relaxed/simple;
	bh=ZPOljcUhl22FSoHSYfFQzaj3bojSiqS5Tmdy9qXTodQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ri1WAdgzBKNJyr0XUdLY2Azh3upiQmgHBSBZC5DbKIMALln+h+A4AuNl2B0S8cn9DfnUpj8I9vt+7/rLJNvYo9TCgyV/ou1hfosUm8x9ZeB8wfafjkFunhtpos3U0FHTgvmryQpj3J7VZ0MeXP1o+U0QwNwIZcbFFBu+g0WILHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=LsdnpNnM; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1e5c11076b9so6224045ad.3
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 14:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712955833; x=1713560633; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aSqmAxropEDfNCG6GQv7daH4xVtfVuXJw9jJz7os0WU=;
        b=LsdnpNnM4wuvP2v+D3LUt/tT2f6tB7xE8Yde3hiBTr6yAi6dkmJFRYvQRZJZGzfFUS
         OXLwDzpUCv7aZPQazhAOLfHBSDqK1FbhWA3rA7sBg34QYkPWwiojVbSejKy6uQdnUWzm
         ezjgwhyGI2aPQ+Ybh5sydgdf1JwWi2DMECjD7UagFx/1Wrer7B8N4Cz47wigorbuFYzf
         qS19WnVJFMIIiiDg8LiXubDWyNE0yps8nABs5yvytmjZbwqbyNip4Xinnv6YV/YbzU44
         acAybz2ZwHOn2rJ34rD9wWWFacmZ0VPTwFGgpiDrYapz2ai6PnY7jGW50JYxcmno8XF8
         AWcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712955833; x=1713560633;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aSqmAxropEDfNCG6GQv7daH4xVtfVuXJw9jJz7os0WU=;
        b=w7JSJ7IPCsLhxdLtvivVN78C7SgiD5ryHciANSJB06nvV1cN1u4k5HQ11zFh8YPXNP
         Ze44AblWPXxQ/DTPZGkFT+uyo7q1MjtCxh4a+znbnOkx2o41jYE3GPaFgiMe1pj0pmvt
         R7SzQSnWeIl4Negsrz6r4UkpIcsX0oJlnxfOZ7euWdp/NQQ9rxqru9X81MQd99eMDIPP
         OfbK6xe4h3+SVDF5kXvAIowyIQT01EhW5ODH9UPfyqVxD4QYLtQUHjdxtr6I98ldzJfZ
         cpN3amXC84G793YoN+AGmfTImaKbNya2f7qKuyhbkjdLGmuFc0o713vMmGkf1s+5QPwC
         gHLQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmeWnwYh0RaAXl4YZdOS7DFOZaKF5BnYCu5xE2uQ8Z3EFtuiJE0HfXnQI1KlhuFTIA862tEPWN2ICdQszDDgd9c8nE+Yhg/Gnshg==
X-Gm-Message-State: AOJu0YyoMqkNZ7GxbMkmnO1Q7OQ75bggkZXFXj4cd97OgpO0/Hitft9l
	kunZyLyRjs7HshmGUtTfKE4Gsj5uNXMHtIGgq0LuchFkuDNkCkvespJKJBVW7H4=
X-Google-Smtp-Source: AGHT+IEOtfsrGOvmFZobDx+oZIyIEnB1hXJRroDDmgDp9zSXNOuvWX12AXzBQuPGec6sDnDDhBi5CQ==
X-Received: by 2002:a17:902:e5c6:b0:1e2:adce:9139 with SMTP id u6-20020a170902e5c600b001e2adce9139mr5386874plf.44.1712955833353;
        Fri, 12 Apr 2024 14:03:53 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id f18-20020a170902ce9200b001e511acfd0esm3424844plg.140.2024.04.12.14.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 14:03:52 -0700 (PDT)
Date: Fri, 12 Apr 2024 14:03:48 -0700
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
Subject: Re: [PATCH 08/19] riscv: Introduce vendor variants of extension
 helpers
Message-ID: <ZhmhtLS5NuRrPOfu@ghost>
References: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
 <20240411-dev-charlie-support_thead_vector_6_9-v1-8-4af9815ec746@rivosinc.com>
 <20240412-dwarf-shower-5a7300fcd283@wendy>
 <ZhlypvTdsFPZBr08@ghost>
 <20240412-drab-french-55d8ff2c8cfa@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240412-drab-french-55d8ff2c8cfa@spud>

On Fri, Apr 12, 2024 at 09:40:03PM +0100, Conor Dooley wrote:
> On Fri, Apr 12, 2024 at 10:43:02AM -0700, Charlie Jenkins wrote:
> > On Fri, Apr 12, 2024 at 12:49:57PM +0100, Conor Dooley wrote:
> > > On Thu, Apr 11, 2024 at 09:11:14PM -0700, Charlie Jenkins wrote:
> > > > Create vendor variants of the existing extension helpers. If the
> > > > existing functions were instead modified to support vendor extensions, a
> > > > branch based on the ext value being greater than
> > > > RISCV_ISA_VENDOR_EXT_BASE would have to be introduced. This additional
> > > > branch would have an unnecessary performance impact.
> > > > 
> > > > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> > > 
> > > I've not looked at the "main" patch in the series that adds all of the
> > > probing and structures for representing this info yet beyond a cursory
> > > glance, but it feels like we're duplicating a bunch of infrastructure
> > > here before it is necessary. The IDs are all internal to Linux, so I'd
> > > rather we kept everything in the same structure until we have more than
> > > a handful of vendor extensions. With this patch (and the theadpmu stuff)
> > > we will have three vendor extensions which feels like a drop in the
> > > bucket compared to the standard ones.
> > 
> > It is not duplicating infrastructure. If we merge this into the existing
> > infrastructure, we would be littering if (ext > RISCV_ISA_VENDOR_EXT_BASE)
> > in __riscv_isa_extension_available. This is particularily important
> > exactly because we have so few vendor extensions currently so this check
> > would be irrelevant in the vast majority of cases.
> 
> That's only because of your implementation. The existing vendor extension
> works fine without this littering. That's another thing actually, you
> forgot to convert over the user we already have :)

Oh right, I will convert them over. The fundemental goal of this patch
is to allow a way for vendors to support their own extensions without
needing to populate riscv_isa_ext. This is to create separation between
vendors so they do not impact each other.

xlinuxenvcfg does not fit into this scheme however. This scheme assumes
that a hart cannot have multiple vendors which that extension breaks.
xlinuxenvcfg is really filling a hole in the standard isa that is
applicible to all vendors and does not appear in the device tree so it
is okay for that to live outside this scheme.

> 
> > It is also unecessary to push off the refactoring until we have some
> > "sufficient" amount of vendor extensions to deem changing the
> > infrastructure when I already have the patch available here. This does
> > not introduce any extra overhead to existing functions and will be able
> > to support vendors into the future.
> 
> Yeah, maybe that's true but this was my gut reaction before reading the
> other patch in detail (which I've still yet to do).

- Charlie


