Return-Path: <devicetree+bounces-225717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF85BD0358
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 16:21:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BF753BBDA4
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 14:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C8F5284678;
	Sun, 12 Oct 2025 14:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWhe122P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32378283FF0;
	Sun, 12 Oct 2025 14:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760278873; cv=none; b=frsDypQNh1uqQ30HVT9xyk3XU3dt9bo0cXsPSKiT0m7BjpXUM9sAnD4H1+KhToINR0aST1AKFlQju982pXrRi6xJpD94rwidkXRmi9WfWIVQjgT7m+wzcxdMld6ij84TfzZ5xibGuAc1npXRc61gWsQqF0lstHA/QXQLi/L4zbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760278873; c=relaxed/simple;
	bh=XExy5QelfgLgYyiwtAQ2Cv9cu6aIqLKW8004SlSBVnM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XI2m04V5c+577XrgO6Axue5wz/oFpt0uUWeHsu8RA+BvyzVUhhn6iBLjQTUoF8h+36669R8Y5kM0P64GMI4lY8y0Be7R1/x75qqk5IDtC+SRWyNLcCp9cslf2jk165k/indhk0x4UupmR22xSfpAtKldKKWpXPxtjmNLVoQtzVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWhe122P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AFA4C4CEE7;
	Sun, 12 Oct 2025 14:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760278873;
	bh=XExy5QelfgLgYyiwtAQ2Cv9cu6aIqLKW8004SlSBVnM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=rWhe122PVNC25hKVlxZfuUV4jejEe6oHLEw+0qhlV07I9gTQ5I4hyeWMPwFeLcpS9
	 JzCsExrfO46VwVJ9faLY3FkjZCZMKnqYebcBk6bCvNjuR4glitIeuKNiDO1h3AQMjg
	 ZFWym3xv6+DuefTbYBpspwyJbr2lnnoWHV0f4i5lKgVRyYW/ZVtl8queq0J/P/nssz
	 36mtfTxwn0Umshy1UJePpLAZniPFNqw4L0NRTIN5m6uK1krxCli7Sa+LpHrEvIiCzq
	 zTDq9e+YBuKMKzW6PXJekmir9HEFLmv102fTTA9K0N9te8hIT/lBB9Ap/NdLlpvp6C
	 tkwMOanaAoshQ==
Date: Sun, 12 Oct 2025 15:21:03 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Petre Rodan <petre.rodan@subdimension.ro>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 01/19] iio: accel: bma220: remove incorrect
 kernel-doc marking
Message-ID: <20251012152103.6b1ca4e9@jic23-huawei>
In-Reply-To: <20251005-b4-bma220_improvements-v4-1-0f449ba31585@subdimension.ro>
References: <20251005-b4-bma220_improvements-v4-0-0f449ba31585@subdimension.ro>
	<20251005-b4-bma220_improvements-v4-1-0f449ba31585@subdimension.ro>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 05 Oct 2025 16:12:10 +0300
Petre Rodan <petre.rodan@subdimension.ro> wrote:

> Remove incorrect use of kernel-doc marking.
> 
> Signed-off-by: Petre Rodan <petre.rodan@subdimension.ro>

hi Petre,

I'm going to pick these up as I read through them (if they are good to go!)

Applied this one,

Thanks,

Jonathan

> ---
> v4 - split from bigger patch (Andy)
> ---
>  drivers/iio/accel/bma220_spi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/accel/bma220_spi.c b/drivers/iio/accel/bma220_spi.c
> index 01592eebf05bb6b002d44c41cca1d2dd5f28350c..505ad70912571ba629f91e56a92898d8320e976f 100644
> --- a/drivers/iio/accel/bma220_spi.c
> +++ b/drivers/iio/accel/bma220_spi.c
> @@ -223,7 +223,7 @@ static int bma220_power(struct spi_device *spi, bool up)
>  {
>  	int i, ret;
>  
> -	/**
> +	/*
>  	 * The chip can be suspended/woken up by a simple register read.
>  	 * So, we need up to 2 register reads of the suspend register
>  	 * to make sure that the device is in the desired state.
> 


