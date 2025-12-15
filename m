Return-Path: <devicetree+bounces-246747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 37471CBF93F
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:41:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EBF57301C362
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 19:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CAEF33A70E;
	Mon, 15 Dec 2025 19:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6KUoWRg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355B833A70A;
	Mon, 15 Dec 2025 19:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765826937; cv=none; b=Rv1vXifXLVYCiTVeeNdO0pTnCuOT1Zwr7yqqytX+rpxbVyCoKruVfr+AyEfMpTsV+qlIJA/M8juQ0f5fctb5PWG9ci+pFINlUCpbZhje3oPqzHYUz+0MwBRmgCK0nAOMzijQ9S1zZU6mgp5pe1GPxYnNJK4aTwmS6nizl1xGi08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765826937; c=relaxed/simple;
	bh=oYTW0QjYybosOVEUQCsC+02+hCiPEyzHFEqPW/e2wkE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j5tlncCY4Ww/R3J/QJw7HFdVWcuzkGZ1GQ26t6c0LkMDVlIqXtuwswLZiixR7JqYa26lZP8FEFVlcJ5d6hc2QSo3n7RLkOlj5UaTx9D/+ZgHnwPj57lpjJ8VuthxHOQ96M/hLx4eb91sfx/EY51kQg3wl1rvyCbh4tT+jAgZP90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6KUoWRg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7B58C4CEF5;
	Mon, 15 Dec 2025 19:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765826936;
	bh=oYTW0QjYybosOVEUQCsC+02+hCiPEyzHFEqPW/e2wkE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n6KUoWRgBIcF00Y0Da4JETqdchV0plfdynrBPvJNtDpl9pS8qG+y4YrSaoDNKobDl
	 YmFV+cYNqi1HcdkyJhP0AwfTy6CsoBam+sdfi6PuyUt5Jp7Z4JeQfAWTO7LnO5FyVT
	 abuJeEPlG2xcWkPNzEBXGSE42CdbuSsGAAdbQZEsOZ67MaQNcxHGUh22FThiPLI8a+
	 3u6cqA5DtprQgYNGKd35mN3HOLznyojSYw/4dXT6scj84m5ysGC1v87FzPQ1h68Z46
	 XnPjzYkg7FCeocR8A6Kt4JRYzQhNlNMSdwSFCr/wR2UoajOdX4bCRWDWb7AEdxxMmK
	 WBThtaMP5aH2g==
Date: Mon, 15 Dec 2025 13:28:54 -0600
From: Rob Herring <robh@kernel.org>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] of: replace strcmp_suffix() with strends()
Message-ID: <20251215192854.GA3162398-robh@kernel.org>
References: <20251215154809.70041-1-bartosz.golaszewski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215154809.70041-1-bartosz.golaszewski@oss.qualcomm.com>

On Mon, Dec 15, 2025 at 04:48:09PM +0100, Bartosz Golaszewski wrote:
> string.h now provides strends() which fulfills the same role as the
> locally implemented strcmp_suffix(). Use it in of/property.c.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> ---
>  drivers/of/property.c | 15 ++-------------
>  1 file changed, 2 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 4e3524227720a..0a68223954f09 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1294,17 +1294,6 @@ static struct device_node *parse_##fname(struct device_node *np,	  \
>  	return parse_prop_cells(np, prop_name, index, name, cells);	  \
>  }
>  
> -static int strcmp_suffix(const char *str, const char *suffix)
> -{
> -	unsigned int len, suffix_len;
> -
> -	len = strlen(str);
> -	suffix_len = strlen(suffix);
> -	if (len <= suffix_len)
> -		return -1;
> -	return strcmp(str + len - suffix_len, suffix);
> -}
> -
>  /**
>   * parse_suffix_prop_cells - Suffix property parsing function for suppliers
>   *
> @@ -1331,7 +1320,7 @@ static struct device_node *parse_suffix_prop_cells(struct device_node *np,
>  {
>  	struct of_phandle_args sup_args;
>  
> -	if (strcmp_suffix(prop_name, suffix))
> +	if (strends(prop_name, suffix))
>  		return NULL;
>  
>  	if (of_parse_phandle_with_args(np, prop_name, cells_name, index,
> @@ -1416,7 +1405,7 @@ DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
>  static struct device_node *parse_gpios(struct device_node *np,
>  				       const char *prop_name, int index)
>  {
> -	if (!strcmp_suffix(prop_name, ",nr-gpios"))
> +	if (!strends(prop_name, ",nr-gpios"))

Don't you need to negate these?

