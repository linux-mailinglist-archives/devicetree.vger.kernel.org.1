Return-Path: <devicetree+bounces-95119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0D0958218
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 11:25:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 083FA284C88
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 09:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B79DF18C008;
	Tue, 20 Aug 2024 09:25:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from albert.telenet-ops.be (albert.telenet-ops.be [195.130.137.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1316C18B48A
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 09:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724145905; cv=none; b=nMOxTm1dVlW7gUA4CnE8zaGCTT9LpjL+MaITOlTfF5W7pv3otk5nVKqV3v8GZrOxupJZBrBu4tFqvqBxJw2xLVJZ8XnY7N2rJ7BxO+5OGFaagGcIZ8M68QS1PiVe+Q+ogiGZTMGE6PNWZppIj4snIA2Wy3l7R8J5J5mMICOVPFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724145905; c=relaxed/simple;
	bh=3FiOCf8fm0kY9F5zQd4hyuzaEe7QA8k0TgU05oRkPe8=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=HyVpgitT3Ps0OaoXTPi6dOuSJ9phCB1Mt1BGP+HCJYR6AZAuJCNHf2rg/HH953mKuVQIbcxg11UiRO58jFSEyX/c82IBtBfRTzkNpEht+eGzIsRR+7yl/RAWf7+KJegKbBvAEWJVThDIy+LbBEDORQUvrhZ8scwL9qL92lNATU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:a2e4:464c:5828:2da3])
	by albert.telenet-ops.be with bizsmtp
	id 29Qt2D00E2WQTnu069QtqJ; Tue, 20 Aug 2024 11:24:54 +0200
Received: from geert (helo=localhost)
	by ramsan.of.borg with local-esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1sgL6j-000Mcf-AO;
	Tue, 20 Aug 2024 11:24:53 +0200
Date: Tue, 20 Aug 2024 11:24:53 +0200 (CEST)
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
cc: herbert@gondor.apana.org.au, linux-crypto@vger.kernel.org, 
    Ruud.Derwig@synopsys.com, manjunath.hadli@vayavyalabs.com, 
    bhoomikak@vayavyalabs.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 6/7] Add SPAcc dts overlay
In-Reply-To: <20240618042750.485720-7-pavitrakumarm@vayavyalabs.com>
Message-ID: <d430d47b-b8c6-69f8-3f2c-eeed78b583dc@linux-m68k.org>
References: <20240618042750.485720-1-pavitrakumarm@vayavyalabs.com> <20240618042750.485720-7-pavitrakumarm@vayavyalabs.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed

 	Hi Pavitrakumar,

CC devicetree

On Tue, 18 Jun 2024, Pavitrakumar M wrote:
> Signed-off-by: Manjunath Hadli <manjunath.hadli@vayavyalabs.com>
> Signed-off-by: Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
> Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>

Thanks for your patch!

Please provide a patch description.
The one-line summary is also not very informative and lacks a suitable prefix.

> --- /dev/null
> +++ b/arch/arm64/boot/dts/xilinx/snps-dwc-spacc.dtso
> @@ -0,0 +1,35 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * dts file for Synopsys DWC SPAcc
> + *
> + * (C) Copyright 2024 Synopsys
> + *
> + * Ruud Derwig <Ruud.Derwig@synopsys.com>
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +/ {
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	fragment@0 {
> +		target = <&amba>;
> +
> +		overlay1: __overlay__ {

Please use sugar syntax.  See e.g. commit db2f3762d609318e ("of:
convert unittest overlay devicetree source to sugar syntax").

> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +
> +			dwc_spacc: spacc@400000000 {
> +				compatible = "snps-dwc-spacc";

Where can we find the DT bindings?

> +				reg = /bits/ 64 <0x400000000 0x3FFFF>;
> +				interrupts = <0 89 4>;
> +				interrupt-parent = <&gic>;
> +				clock-names = "ref_clk";
> +				spacc_priority = <0>;
> +				spacc_index = <0>;
> +			};
> +		};
> +	};
> +};

Gr{oetje,eeting}s,

 						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
 							    -- Linus Torvalds

