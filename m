Return-Path: <devicetree+bounces-4816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 441BC7B4102
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 16:37:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 7221D1C208CC
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 14:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21C6D1549E;
	Sat, 30 Sep 2023 14:37:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E59DBA5E;
	Sat, 30 Sep 2023 14:37:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED0C4C433C7;
	Sat, 30 Sep 2023 14:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696084657;
	bh=8Fc/CeyGTNVfQR93VmyE2psqKuXvZfPHfaLUp1L7J3A=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=o6Cqf/Fc75retJsJnzU1RZ910q51QLx3aAp8Z0SNJqznHx/nSw9qmogYotNTqB0j/
	 2lEzUxZf6PEn7YkYNAKlCC/eKlQkHoA7h31Nstdj0CtTmfqCo//GV84q0wah//NXoW
	 IqY8dSjEO10mlbkvj2R3TS2MzN0zV3tDiP73VXaeI6/kcHqWgkrd/aLJWCfQbzMZwL
	 vMh6GCd7UW7vyGEIWpgkYniVBcBI9myl4x2hwUfmV3b73J9pSo4Fq6tHQTrLiFxeqq
	 VLTtOQx7JvUtNnXwObtYaEjcooBpPr1S39NSD0/pHA7V9sYi3I997Z7BBW0kKH+xaX
	 9eDYC1gssdpRg==
Date: Sat, 30 Sep 2023 15:37:36 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-staging@lists.linux.dev, David Lechner <david@lechnology.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Axel Haslam <ahaslam@baylibre.com>, Philip Molloy
 <pmolloy@baylibre.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 04/27] staging: iio: resolver: ad2s1210: check return
 of ad2s1210_initial()
Message-ID: <20230930153736.52229088@jic23-huawei>
In-Reply-To: <20230929-ad2s1210-mainline-v3-4-fa4364281745@baylibre.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
	<20230929-ad2s1210-mainline-v3-4-fa4364281745@baylibre.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 29 Sep 2023 12:23:09 -0500
David Lechner <dlechner@baylibre.com> wrote:

> From: David Lechner <david@lechnology.com>
> 
> From: David Lechner <dlechner@baylibre.com>
> 
> This adds a check to the return value of ad2s1210_initial() since it
> can fail. The call is also moved before devm_iio_device_register() so
> that we don't have to unregister the device if it fails.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
Applied

> ---
> 
> v3 changes:
> * This is a new patch split out from "staging: iio: resolver: ad2s1210:
>  fix probe"
> 
>  drivers/staging/iio/resolver/ad2s1210.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> index 8fde08887f7f..b5e071d7c5fd 100644
> --- a/drivers/staging/iio/resolver/ad2s1210.c
> +++ b/drivers/staging/iio/resolver/ad2s1210.c
> @@ -672,6 +672,10 @@ static int ad2s1210_probe(struct spi_device *spi)
>  	if (ret < 0)
>  		return ret;
>  
> +	ret = ad2s1210_initial(st);
> +	if (ret < 0)
> +		return ret;
> +
>  	indio_dev->info = &ad2s1210_info;
>  	indio_dev->modes = INDIO_DIRECT_MODE;
>  	indio_dev->channels = ad2s1210_channels;
> @@ -683,7 +687,6 @@ static int ad2s1210_probe(struct spi_device *spi)
>  		return ret;
>  
>  	st->fclkin = spi->max_speed_hz;
> -	ad2s1210_initial(st);
>  
>  	return 0;
>  }
> 


