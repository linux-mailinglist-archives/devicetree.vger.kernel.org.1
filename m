Return-Path: <devicetree+bounces-256340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 53005D38B80
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 03:13:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1ADAE3036438
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 02:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3AFC2DB789;
	Sat, 17 Jan 2026 02:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XOWhbie4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3AE24501B
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 02:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768616006; cv=none; b=kw/4kT2ctU9sgIPrtG5obpPUxWxp+DwbkQAYdTCFNEmYEiNVxAFnG1eI2bne09CGOsOyXRWUedVUEAz59a81+v4Xu6a0E7PDRizQya/I4lXLioqIuJ26kmJ2ogdLVmiNQ9MQmSr0pLlbDKsepxEOTBlGzmuOQhhKoxIA4pR7+/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768616006; c=relaxed/simple;
	bh=WnbZ+diR5kVGMAEUJH5qwKXMKHbtB3/wTuJv9BYk9MY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZhyAJWUybGASnoUlTYLnnngb3QE2ev2ATEHxf2PQ7N4LxesldMsvW3qk8KqpbDRJ2PbqHWTIFSe4gvs48OO/KPSzfpUMAMLcz92O0i5OqlNlAowTw8lw3bzYq/DhmQF1qL7K1gjKpT0r5svyf9Gl2D3omOb8QtQzHhKKDwr9StA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XOWhbie4; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-8887f43b224so49909896d6.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 18:13:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768616004; x=1769220804; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dta8pivS2rued3Q3ChMqGgKi/kS9yYaS8vWr9CkDH7o=;
        b=XOWhbie47j/fpsYzRfxs6EYoOXfHQkATQpRoxrwcVkEfb/CA0R4Zcqnrq297U2ncDc
         s5nijeboHNSaEg8CZR7gBBBB3E8+H9pEmBXaVX6dOYripdnkHNsKsykepXEbW8t7/mR1
         Vi7MljVGCVjOeXjGDkMoWOktZHanGySI7S88J7FO3QEQwmUlaO9rLU6HnETwDNNtjq7t
         YSb3mzBO1uCLrwVGf6X4rteBezzMnMGfAUvJ1K8amkkxuLoFApTHiXIkZ/mbrhIB38N1
         1K1zGf4eJXlE+AigPEzbGebUETBGlKRPwkbEbvKuGSH4WEz9Cnv02eG0oRH9wcIuZXwf
         CdNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768616004; x=1769220804;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dta8pivS2rued3Q3ChMqGgKi/kS9yYaS8vWr9CkDH7o=;
        b=fZAlPx3f2VVzsZ87C6mdMDyGFm3FnIZCrqstYibdH7tcqHRe0IT32V4TWHe5DJKhC1
         m3F8a2YFD8gjs8DvZOmZLOz9sLctEDiT4nTmFLWr35QXOLQPVCPssnPJiLCSUf3YOWF4
         beyiqwelKMuBUsL6Tcnb52DsZg/DtYTWJ+APKDt6Vz93upCPCEOHSTV3R11MmV1ynyVj
         9U6m4QV6UkxhNeosaCL0FPsCdrGT9sooCyylHOV6C9fgE5Dz9d0D7ZqOvtlTozpH/TUQ
         hmx9HPqHV2yO0XtEcN7ZbX4SYLnv8JKSJZGWRHVKQkGhU5Ai/wFi5J91djbiL7oFc4QM
         O9UA==
X-Forwarded-Encrypted: i=1; AJvYcCUu6pU/wDvmSHw/vm00aWXp8vdfQfLaWrJ4EwvnwTXDEvmS6CzrxrOKwBhcjDUQ731zyJP6qkFD1IpR@vger.kernel.org
X-Gm-Message-State: AOJu0YxlgSxZjDEoy6+7ZKCwmqKwRKDsQa0MpnwZZXBOcIsMjzUxBFZ9
	NKJEV25Om2tywUQvehTsw0s1oI/UwK24dOq84n1rw6hBvGC4AKsFWFxhT7+XwXs3u3s=
X-Gm-Gg: AY/fxX5qVe2DIcgzmyiXjQ8O+iZNS6OT5K7icr7lTvapDz/wtRO04kfOBVMgr7KiEkN
	YFZg1jFmqCMYfzZKSG9QXCKmn68Z7EMKkp6qjMIc6eHL2tfAbIqvI/9yYaBXH0I/dmJUM720Apa
	7wOhTWlsaTbrSBZ1FyUm5PJ3fT53diz87hyfnwlV+jBXu6JqXgItZi68YDmrAzPy8sk5Av/iXt0
	7MJzsBEF3y3fYMv8CZNelXFhBeXM26dRiy5WypN7hGLb/R+P4kwHEETjjPT4PR+ekoepgFsvvmg
	DgqFj5ElLVwVA/SB5Gk+7eV21nOPgmx/JfL5jelqjsV81Q9r4Oz2Xob7Yx5P4TgrzIGavnE+ghE
	qRefIXveJVoAenPtm3HLfNqRB+cOXlZmDop694JvyXdGGjvmLnR/6jIh0CrxorW5V+BLohax8ja
	3ae7dDe1Sw/w==
X-Received: by 2002:a05:7022:4588:b0:123:3bba:fc4c with SMTP id a92af1059eb24-1244b381373mr3575104c88.38.1768609928525;
        Fri, 16 Jan 2026 16:32:08 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ad740c5sm5332461c88.8.2026.01.16.16.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 16:32:08 -0800 (PST)
Date: Sat, 17 Jan 2026 08:32:02 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Frank Li <Frank.li@nxp.com>, Inochi Amaoto <inochiama@gmail.com>
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Chen Wang <unicorn_wang@outlook.com>, Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
	Longbin Li <looong.bin@gmail.com>, Ze Huang <huangze@whut.edu.cn>, 
	"Anton D . Stavinskii" <stavinsky@gmail.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, sophgo@lists.linux.dev, 
	Yixun Lan <dlan@gentoo.org>
Subject: Re: [PATCH v2 3/3] riscv: dts: sophgo: cv180x: Allow the DMA
 multiplexer to set channel number for DMA controller
Message-ID: <aWrYSw94WjqPrUkK@inochi.infowork>
References: <20251214224601.598358-1-inochiama@gmail.com>
 <20251214224601.598358-4-inochiama@gmail.com>
 <aWpcfqHDFaq8Lsv5@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aWpcfqHDFaq8Lsv5@lizhi-Precision-Tower-5810>

On Fri, Jan 16, 2026 at 10:42:54AM -0500, Frank Li wrote:
> On Mon, Dec 15, 2025 at 06:46:00AM +0800, Inochi Amaoto wrote:
> > Change the DMA controller compatible to the sophgo,cv1800b-axi-dma,
> > which supports setting DMA channel number in DMA phandle args.
> 
> 
> Does it need update DMA comsumer?
> 
> Frank


Not needed, this is handle by the dmamux driver, it is allocate and
configure the DMA channel dynamicly.

Regards,
Inochi

> >
> > Fixes: 514951a81a5e ("riscv: dts: sophgo: cv18xx: add DMA controller")
> > Reported-by: Anton D. Stavinskii <stavinsky@gmail.com>
> > Closes: https://github.com/sophgo/linux/issues/9
> > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> > ---
> >  arch/riscv/boot/dts/sophgo/cv180x.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/riscv/boot/dts/sophgo/cv180x.dtsi b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
> > index 1b2b1969a648..e1b515b46466 100644
> > --- a/arch/riscv/boot/dts/sophgo/cv180x.dtsi
> > +++ b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
> > @@ -417,7 +417,7 @@ sdhci1: mmc@4320000 {
> >  		};
> >
> >  		dmac: dma-controller@4330000 {
> > -			compatible = "snps,axi-dma-1.01a";
> > +			compatible = "sophgo,cv1800b-axi-dma";
> >  			reg = <0x04330000 0x1000>;
> >  			interrupts = <SOC_PERIPHERAL_IRQ(13) IRQ_TYPE_LEVEL_HIGH>;
> >  			clocks = <&clk CLK_SDMA_AXI>, <&clk CLK_SDMA_AXI>;
> > --
> > 2.52.0
> >

