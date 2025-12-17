Return-Path: <devicetree+bounces-247449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D56C7CC7CEC
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:23:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A24543003165
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:23:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BEB434C145;
	Wed, 17 Dec 2025 13:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VraeCqVa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C250C34FF4B;
	Wed, 17 Dec 2025 13:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765977807; cv=none; b=AMuWKkSfp5WTolMfWdOXcDWohLXOt5Tb+DxOGh5jhBlfyuH+mePBmwLXHqRbpdaiv892GXynKbqBFNhGVJ0o24pwlAWGHS3VZMxdzm4R8cPShfpZdbDtSU35KPnUyG+QXtaHu3MrIPobbeSQT+O/sosHblgSmnNPVPcZ9HTFAiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765977807; c=relaxed/simple;
	bh=GGgc7YVc0UiDmtHj0zdZPdIRZQuVYTCkGtkcYlg7DHI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CGO2R0jcSVXSCrgDDjuVCnlM0IqboDjAA0Ig24bJbabCAPjF6J/KgtPmY9Lv+/vuG2Yugc+aGoI0tpBjZK6jsbyBu1zHipXwXaCkP6ClcsoCPkiUkYW8HspGVOqlhjSxMG7AQ7+lorV2Sl3RHTb6RbM9qj2l0zigrLFCaTouFio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VraeCqVa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46560C4CEF5;
	Wed, 17 Dec 2025 13:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765977806;
	bh=GGgc7YVc0UiDmtHj0zdZPdIRZQuVYTCkGtkcYlg7DHI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VraeCqVaQ7bNDgtLW/ugyDG6VYpAFXbCmc6B0IZ4nQEtONYvsbqfStFy6kqGA7Phz
	 BJU4JhFhi9pbFlRnt1e6F0j1CWAPgR/ITO53p40CO0le0KVzu0O2j5PX6AiF5zJCer
	 WMBqhoUNDcHoRgXgF4vsaZjb/KoupxGWhTU3twWsSuK4Ic3NAAf5lXAIP+tqCioOMQ
	 OnyGEgzr7fZKp9XlV03Ro09br99kJ8iECigMs8UdscSF3tMmPv07mVn69NbFGsJjzk
	 NhJJ0zGS98KaJ5LOL2Gj2coBLMN77ijooXb8XIQ2/fGNzFtV6wFf5Xhpy/MALgaFxW
	 HPJnjO+c0nnQA==
Date: Wed, 17 Dec 2025 14:16:37 +0100
From: Nicolas Schier <nsc@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: Add Makefile.dtb* to DT maintainers
Message-ID: <aUKtNave_B8zY_Ft@levanger>
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

Acked-by: Nicolas Schier <nsc@kernel.org>

