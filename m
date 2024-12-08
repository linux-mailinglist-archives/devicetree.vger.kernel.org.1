Return-Path: <devicetree+bounces-128339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D11EE9E869D
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 17:41:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBFED163D92
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 16:41:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1BAE1714BE;
	Sun,  8 Dec 2024 16:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLoUfBvv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C0F170A15;
	Sun,  8 Dec 2024 16:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733676094; cv=none; b=g3DSmuU0oxYcnyAeEzVc5sKMfHKWMiWyM+5jYG/AhdBSCXGmJcuvUI3LRAYpswyyOpYX7T63o5IJeGI0yWqooE6SI89aYcX5ZXkWlgOMXq8gIi9BbZ37XxCEICPyMOQSVG3Xe2t8ba7rwL/prxCyIsPiWUhuuYiD2ojy2hQGimM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733676094; c=relaxed/simple;
	bh=K+F+jTNlixYTH5e7PZBrFHsaex+E+TQJEAp14fZJgS8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LthRSmKEbU4iH3no/St/4BXlSYYhzCN8GL+VynN7q1UVNOGzcNG6h+1EmsWHHYC+4s3FjsgDumNB7dUxXWNcRXGUvOsbRu6PSvOaLHCGq6L1W6UwWvEEab2l4xAzrG+Y3g/owPZeB9/Nc/1SMbmeTRIph4ECaQyJ5ocvPrS3OyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLoUfBvv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10351C4CED2;
	Sun,  8 Dec 2024 16:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733676094;
	bh=K+F+jTNlixYTH5e7PZBrFHsaex+E+TQJEAp14fZJgS8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=tLoUfBvvswCZTlHddAJKVV94FcUIyqwqPy/riawFQdMByWS5FZVoPABifn7EFeQ5o
	 w16h8tHOtRio+tUnpI5NvYDsWlt8iBlc1n4Jra+eL1oJAmP9Th0Zrc+ql8ugGgw0KZ
	 j2LrA4LinDQUl4KMo7IhAJf18ASGbd5KYK3Mcj7ttseVxYp+wsuD5tvB+fGuzyFseA
	 5rvPYkArsZU4MciUSItV/8yrPdCEfNj2pAdE8Kqc8YBOnj/JxS07Gptc4Iv56puqrR
	 +cZkznTVTnKrfkcU9qrS6HBYCpwIaJ8uuCOUBmnJylA3a6ng19Lbxnj93QOsa/6GN8
	 8fqynidxafKgw==
Date: Sun, 8 Dec 2024 16:41:26 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: <robh@kernel.org>, <conor+dt@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-pwm@vger.kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: iio: adf4371: add differential ref
Message-ID: <20241208164126.4c4fdd8c@jic23-huawei>
In-Reply-To: <20241206152207.37928-1-antoniu.miclaus@analog.com>
References: <20241206152207.37928-1-antoniu.miclaus@analog.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 6 Dec 2024 17:22:04 +0200
Antoniu Miclaus <antoniu.miclaus@analog.com> wrote:

> Add support for differential input reference clock.

If it's an input clock, why not a named clock?

> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  Documentation/devicetree/bindings/iio/frequency/adf4371.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/frequency/adf4371.yaml b/Documentation/devicetree/bindings/iio/frequency/adf4371.yaml
> index 1cb2adaf66f9..dd9a592d0026 100644
> --- a/Documentation/devicetree/bindings/iio/frequency/adf4371.yaml
> +++ b/Documentation/devicetree/bindings/iio/frequency/adf4371.yaml
> @@ -40,6 +40,11 @@ properties:
>        output stage will shut down until the ADF4371/ADF4372 achieves lock as
>        measured by the digital lock detect circuitry.
>  
> +  adi,ref-differential-enable:
> +    type: boolean
> +    description:
> +      If this property is present, differential input reference is enabled.
> +
>  required:
>    - compatible
>    - reg


