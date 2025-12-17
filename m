Return-Path: <devicetree+bounces-247301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A15CC6AAD
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:56:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 649263054CA5
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 445CE33D514;
	Wed, 17 Dec 2025 08:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5JoQ3QX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEDB338592;
	Wed, 17 Dec 2025 08:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765961210; cv=none; b=VCAhgfZ3xtFeEmvpOIxBm4gk+rB2aQLBJNxngh4sdX/7DVzR3wHI38DmSCI04mT7FMAr/0BvqTIeskNi/+Wzn1fN0nWw5z+4Ao4hH6/A3HHB4dTtlkr24vVSFNYym9SDmyQUS588CyAp5TDBssJLHyXERhxSOo7/ix1RE6PSz54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765961210; c=relaxed/simple;
	bh=s2Dgh+dmkf0TMVXXuHt8+nrb/Om3p6Xd3RiNZiJizYQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tWTKpwwLWNyspHkxlnOJYEkhArFN4ktL8cbuA8T/uGg8GSGf9zBwH+kDLZLpXNUht1Ysqdm/fupKna2+G45KtTb4sWay0TN4sR6Qv/Agf+DFVXRveQmcCKLuYk/mX4VXyT+XBqSnD7jJYp2+GzW0G4tIni1CO0Q8GJ6SXPheHv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5JoQ3QX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A82F7C4CEF5;
	Wed, 17 Dec 2025 08:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765961209;
	bh=s2Dgh+dmkf0TMVXXuHt8+nrb/Om3p6Xd3RiNZiJizYQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H5JoQ3QXLUecX3tVAQ+HHEJ065K3VwJLmWpmMl3UK1qnBv2vxsGiT87kPZ6tpAIw5
	 f2txVO/QZIxh1cz39umV0O6Z/25+NxluHHkUD1ipJMXjxY5Xc82CB5X3/hbO9lEYwZ
	 w2JvIplrH5LbMc52uuY1r0frC8sfaslUG5/B2oCaisoRiKZdKw+24FAjan8itMdA7v
	 CHcPr86/imyMQdy6enFYl1kl7faaUpRmWcOTjV5CIZ7sJyUdZRvYMDjyJagLfmIoSP
	 evvFXlkBwdCiBi2sEbJPQW8TyS+1u6bEHWqMC0RR3tZhA9flpmtm6WEU3J3vwHervZ
	 ZPZf2Cg4qGABQ==
Date: Wed, 17 Dec 2025 17:46:45 +0900
From: Nathan Chancellor <nathan@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Nicolas Schier <nsc@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: Add Makefile.dtb* to DT maintainers
Message-ID: <20251217084645.GA41539@ax162>
References: <20251215191421.3137362-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215191421.3137362-1-robh@kernel.org>

On Mon, Dec 15, 2025 at 01:14:20PM -0600, Rob Herring (Arm) wrote:
> Since the DT related parts of kbuild are now split out to separate
> makefiles, list them in the DT maintainer section so they don't fall
> thru the cracks.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Acked-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 5b11839cba9d..cfd00518df3c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19557,6 +19557,7 @@ F:	include/linux/of*.h
>  F:	rust/helpers/of.c
>  F:	rust/kernel/of.rs
>  F:	scripts/dtc/
> +F:	scripts/Makefile.dtb*
>  F:	tools/testing/selftests/dt/
>  K:	of_overlay_notifier_
>  K:	of_overlay_fdt_apply
> -- 
> 2.51.0
> 

