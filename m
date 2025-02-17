Return-Path: <devicetree+bounces-147284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C556A37E0C
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 10:12:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D52C8188D872
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 09:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D15311A83FF;
	Mon, 17 Feb 2025 09:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="aRbj+VwH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D621A841C
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 09:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739783451; cv=none; b=cfMZWSc572L55C19qIv8LfVQ2EUM8WWDSu514S1ASamnp9xrRg+jR836fsed+7Aq3qRDXNlOATRd63nRjikxc9/uskMxnvMcHsz8lM4YROqflIXwD+VkO9KBJmIJgChMvmI+LKLJLTwFZOCbR4tMwHd08oL99o9o0CuiuaArchQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739783451; c=relaxed/simple;
	bh=+8uc3Cl4FDkfpG7IvlrGiw305nAtrrtdyAjwd5EfOBw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BY2RtM50nXFyBpQFvVb/Gc6/sMUy9u3N76k1YQMjUxC+vW4Y0r+xTQ2reoEQ9lhWXiDzxOo+4zip8YfYmhJzfFUcLtze/GjMzeUqCCkV5lts1YxM5Pe5rfSMCOKAYih+pJEo7Au/OGszgVGDdJvqMR06bJDQ9s4jX5sXD+dHTSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=aRbj+VwH; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5ded1395213so6373861a12.2
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 01:10:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739783448; x=1740388248; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fM64uRKLmrwWOZ1Ir+jCO/kphMaDgkxnNNITVcvwwUI=;
        b=aRbj+VwHE2odjl1FWHLcw2nuW8wMlVRUX6M2ZdpQq2ECkc32IFGrsw7mpJGhyfzYcC
         PnD3Xqf/nfjWZ6oh0XXcr1SnqG9bYEXviDGvKnRVTQkRSXYZ933rNu5hoH9vsfe6vzqa
         8pAAXcOAeup/r+uq+dfbEsBGTbKtZqAe5SRIMbrAiTgJIufQrewsBfhJY3rHSuHqNKxK
         z7i7IqJb37c+dDLEVo8Z7Z37TUzHDeKITNYvVo7AQLjQrCz7b9Y4U/WaPjybJmWT5hRu
         egNKek7CuzPLRqeWzs/Hf/eiKQhNxH/Atbr1GiKsHTtkS/fFoUWgO1RgH+SEsVtyYP2y
         1+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739783448; x=1740388248;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fM64uRKLmrwWOZ1Ir+jCO/kphMaDgkxnNNITVcvwwUI=;
        b=C46/15rY4pKZlfjGJ0RJiS4z3fvxG1rCuI/Od4ozePiisVP+0+UkWxkikopsEcfPK4
         rg93SzOYpDBsObzXKdB/rp4y+cEEH0kbr2wPfGJ+W10e5iAVVmHKdqFUEmu6F+W8GUcJ
         9ToYZ5ovobh6Fb6U60DnrgoXxYvRVOp0530tFlc0dR9f/AVTSSVV2D4B6OwSHg09ifD4
         Q213s3iMUbTDQ6bCp/5RgW3X40N5CxCYoxoXweHxwp2Ig6BQK0NPcfyziOgDKVS0acjH
         OVjq+osSU0c64KoYeq103ea+3YJXIhbSuMDzZLqSipNFyIFZzIh06jG5WwkugKSCHeJx
         FsNg==
X-Forwarded-Encrypted: i=1; AJvYcCXFFB6BAdmME0lORgBuDzriDFXTA5kRVpsPoEB58+eWgF1nQNnyPfEfKjlvVDcsoeOOaAbk56a2EChy@vger.kernel.org
X-Gm-Message-State: AOJu0YyfbwivIDf4R8IUFl1Ueh+HmgP9L9bvmmeqmEc45jKKwdaN3s48
	VOFa59yV1Hc/hQVx3jaD8OjSp7EWfMq05aJeaAvuw/ynlXjQW1sHXJ8eEYArxQM=
X-Gm-Gg: ASbGncvalN6iNnkA/3OcTc0nSa+RY67UZ9kBcG4llcmouPu1THkjE4/jBHzTTP7T0qt
	cE2aw8np6QJqS3D+QtOJt77I2b8ugm73ZhtkdCsXEPuHBv7+FySLRBmWJmrHiW+LsWXD+W7/WSf
	l62LtnbFTPD3vTZELPZXmjrMPk7NIBUQXOZ38FzUkBs7gsEWcAMcuFb6CN7zhAgSZbEXXhynm7t
	Mkmv21rGbCnoNs8cCn+wGdLHq976IBWbY0ap/dbqbM3AbT3VU+Y0bsCiiHgWqrpyXoeoYC4pViy
	ivhvYIX6mJPjnVTFRlqdAJk=
X-Google-Smtp-Source: AGHT+IHrxbwT11nHlNtihnFEo6GxLB5WUZzVMCb1sDWISI6fMsTNPgPdGYggA0tSbgXZaPERaVzy5g==
X-Received: by 2002:a17:907:da4:b0:ab7:a5f2:ed22 with SMTP id a640c23a62f3a-abb70a7c9b4mr851455266b.1.1739783448057;
        Mon, 17 Feb 2025 01:10:48 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abba3d765acsm91405266b.130.2025.02.17.01.10.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 01:10:47 -0800 (PST)
Message-ID: <116c9e5c-8bb3-422a-a52d-9d6d8c79e10a@tuxon.dev>
Date: Mon, 17 Feb 2025 11:10:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/16] nvmem: microchip-otpc: Fix swapped 'sleep' and
 'timeout' parameters
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20250210164506.495747-1-ada@thorsis.com>
 <20250211065223.4831-1-ada@thorsis.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250211065223.4831-1-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11.02.2025 08:52, Alexander Dahl wrote:
> Makes no sense to have a timeout shorter than the sleep time, it would
> run into timeout right after the first sleep already.
> While at it, use a more specific macro instead of the generic one, which
> does exactly the same, but needs less parameters.
> 
> Signed-off-by: Alexander Dahl <ada@thorsis.com>
> Fixes: 98830350d3fc ("nvmem: microchip-otpc: add support")

Fixes tag goes above you SoB tag.

> ---
> 
> Notes:
>     v2:
>     - Add Fixes tag
> 
>  drivers/nvmem/microchip-otpc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvmem/microchip-otpc.c b/drivers/nvmem/microchip-otpc.c
> index e2851c63cc0b4..bf7e5167152cb 100644
> --- a/drivers/nvmem/microchip-otpc.c
> +++ b/drivers/nvmem/microchip-otpc.c
> @@ -85,8 +85,8 @@ static int mchp_otpc_prepare_read(struct mchp_otpc *otpc,
>  	writel_relaxed(MCHP_OTPC_CR_READ, otpc->base + MCHP_OTPC_CR);
>  
>  	/* Wait for packet to be transferred into temporary buffers. */
> -	return read_poll_timeout(readl_relaxed, tmp, !(tmp & MCHP_OTPC_SR_READ),
> -				 10000, 2000, false, otpc->base + MCHP_OTPC_SR);
> +	return readl_relaxed_poll_timeout(otpc->base + MCHP_OTPC_SR, tmp,
> +					  !(tmp & MCHP_OTPC_SR_READ), 2000, 10000);
>  }
>  
>  /*


