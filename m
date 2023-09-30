Return-Path: <devicetree+bounces-4885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D52D7B426C
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 19:01:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4F24A282F03
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F115717997;
	Sat, 30 Sep 2023 17:01:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14D1C2CA
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 17:01:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D365C433C8;
	Sat, 30 Sep 2023 17:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696093280;
	bh=PtP8kQO7PSDeECoZK0s8MvcnNBLnIZH+JHVGfpAN/dQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fjYDDDhFufw5uPZYpXeI8gzp9zlxjQkRaEktPEE/pPzoV8USME1/DH898ClvwWi/I
	 Pmx2omTOtJ4+9UcJ8IHjRnqU3CE7k+bvdc12S+w+9bSOzZYjAIsntTkRoDqmCRwMB7
	 7r/YtIAibV7gTHSObGZTVrr5jdj52L++aRiLKNOeInEMk75SbWPR+LJcWfKzEUphy4
	 5AwUJ2HpjnafeTpRluTuh5Z6DbqtfsPARHp4DkC6xvdnOj9/kMIVrDSWOAmIQRNQ6J
	 A16HFdih+weJWgII9l/84JdsZVwrRHqvZ5AV341JXOxu3ZugTBiDUDvK50U5o9E1BA
	 VSS1NRbEKZLfA==
Date: Sat, 30 Sep 2023 18:01:18 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Angel Iglesias
 <ang.iglesiasg@gmail.com>, Andreas Klinger <ak@it-klinger.de>, Benjamin
 Bara <bbara93@gmail.com>, Christophe JAILLET
 <christophe.jaillet@wanadoo.fr>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 5/5] MAINTAINERS: Add ROHM BM1390
Message-ID: <20230930180118.04acbd33@jic23-huawei>
In-Reply-To: <fb19d3027ac19663789e18d4dc972a5dac0fde74.1695727471.git.mazziesaccount@gmail.com>
References: <cover.1695727471.git.mazziesaccount@gmail.com>
	<fb19d3027ac19663789e18d4dc972a5dac0fde74.1695727471.git.mazziesaccount@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 27 Sep 2023 11:28:29 +0300
Matti Vaittinen <mazziesaccount@gmail.com> wrote:

> Add myself as a maintainer for ROHM BM1390 pressure sensor driver.
> 
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
Applied, 3-5 (as well as 2 that I replied to separately).

Nice driver.  Thanks,

Jonathan

> ---
>  MAINTAINERS | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 90f13281d297..91390f571a05 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -18563,6 +18563,12 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/iio/light/bh1750.yaml
>  F:	drivers/iio/light/bh1750.c
>  
> +ROHM BM1390 PRESSURE SENSOR DRIVER
> +M:	Matti Vaittinen <mazziesaccount@gmail.com>
> +L:	linux-iio@vger.kernel.org
> +S:	Supported
> +F:	drivers/iio/pressure/rohm-bm1390.c
> +
>  ROHM BU270xx LIGHT SENSOR DRIVERs
>  M:	Matti Vaittinen <mazziesaccount@gmail.com>
>  L:	linux-iio@vger.kernel.org


