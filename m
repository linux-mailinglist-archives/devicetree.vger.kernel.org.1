Return-Path: <devicetree+bounces-38643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC77849D71
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 15:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2DC57B21707
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 14:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C34B2C684;
	Mon,  5 Feb 2024 14:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ijtDirDU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2CD52C1A9
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 14:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707144939; cv=none; b=sBcJEqq2WjZ7GJDk1b3R7CvOULoWcV5Xk4wHA73kYvszvRmvZJljydz3LtGGAT386Oirf98ofxRZ4O6ADEF0vAQAiFPIUaMKOA5HQlBnkC/r8Yb07KW54YiBkdsr3EZTIx9xsIRoT98a56zkdrrsPYZA1yP3mxz5oA97NT9AiF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707144939; c=relaxed/simple;
	bh=prtwngRjSPswBsLKpAV13nwxdPeqSc9QYwUzmebLdkY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nYPgZEBnYdv0JXQnNBL2z7QKUaVEYNSQwFerPe1B3z+9CMuc8yjmz8NGiTjHs2mZnsZgJNgewtS1ag3iyUBSpEZOSY6QJzYFJZo5HZY6QjAATFKom+g0ky+nbY0akdHGizOchCf6gDbeNdYT9eZ7fSIfY7ExNAM1NYQHiO/tOZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ijtDirDU; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-68c8d3c445fso9259556d6.1
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 06:55:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707144936; x=1707749736; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CV8zCL+Bkb52zUIjr4j2G2uqbzJyX+oUu0mInR3Ynbs=;
        b=ijtDirDUfgy9jKEZXCEtluOntzfHq1Fii6PLOAcwoxSe+c/+O2NF6JCoJYX+6DzY/m
         lpxeFnnmgvNkjhYlGIWSLpasaOC73ThyklLpbdjruW3f6WuMsXD0BVw2BBfMoS4a1JQ+
         oY5PO1n/Voqwm0NUoLk9u2rxreUGDxtIlxQ+TtzI6bzqC+/Qy9NuwUsLGYw44fDs/gPT
         ypf5cmV7d0buEHB6ZHKNoq7P8vTH3YUexwyUeR6WjG4moT2D0kGksW48K3yjYfnlKZrV
         H0QBTi6b/UaRV5EdIi0d7Z5GcS04CGisUWMyIMuPAXKaL5hGdZNnoZ2K/rxr8+CXHisY
         OHwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707144936; x=1707749736;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CV8zCL+Bkb52zUIjr4j2G2uqbzJyX+oUu0mInR3Ynbs=;
        b=OvNOHlWkPMZ6eOOOegbnjT+3T0LOXtqIf4aU+x8V5czg7jmSIMP3qh74jq/Z36Cn1X
         A0xIJJt5XsN/S83MCFQ+dG9Dn6IGCx6Z4/Q5sNLrwD78bHotLcPHhL+9MzTYKcsmUKDB
         rRsk9opgWY0lhxiiG8K+DDWYjZImcq6wZedOHM8H/VyaNZ5r1K2sS5Yh/HdX798U35+F
         CttuEw9cbfkO8O6UpPYZg1ktMhMDCwT8yEPMTripTpqc8TCNkrX6xG0zhRlfv97SPMoL
         uNGxLRG0u6lrY7Pgzs/oH6sY6MMMzmmY1ddb6FPqh9DQXer9swk+xYwpAii12JSUwHYD
         TuRA==
X-Gm-Message-State: AOJu0YxLMeVOp7Vf0QXEoembWy+inPYmG4ld0aiYjZ6yPjr/1bLZa5nk
	/IZfb5vUeO90qwWTcyS2o/Npi/7GSm7Nnh/64qo5PZUCwnmMLd5uOgqQOQCBCkipZyqBvvcHGOd
	28R7eDECO007IwbCsZPvWiF9nVKTz6S5Tf44GYQ==
X-Google-Smtp-Source: AGHT+IEGp95NgA3KvvkrXtsGjbN9gYfgN+bbfNs43Bva/sB71VU1nC4hj1ROtBypVVcdI/bxwL8OmPrLT5ov+2vR+ac=
X-Received: by 2002:a05:6214:daf:b0:685:6715:9693 with SMTP id
 h15-20020a0562140daf00b0068567159693mr8173405qvh.8.1707144935887; Mon, 05 Feb
 2024 06:55:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240201172224.574238-1-alexey.klimov@linaro.org> <20240201172224.574238-3-alexey.klimov@linaro.org>
In-Reply-To: <20240201172224.574238-3-alexey.klimov@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 5 Feb 2024 14:55:24 +0000
Message-ID: <CADrjBPrEL-4DqMX-MnzTO7f3=gWnwrWrDSuXCOt0ugkhDUNV=g@mail.gmail.com>
Subject: Re: [PATCH 3/4] soc: samsung: exynos-chipid: add Google Tensor gs101
 SoC support
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: krzysztof.kozlowski@linaro.org, alim.akhtar@samsung.com, 
	linux-samsung-soc@vger.kernel.org, semen.protsenko@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, klimov.linux@gmail.com, kernel-team@android.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"

On Thu, 1 Feb 2024 at 17:22, Alexey Klimov <alexey.klimov@linaro.org> wrote:
>
> Add GS101 information to soc_ids table and related entries to other
> places. This SoC product id is "0x09845000".
>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>



>  drivers/soc/samsung/exynos-chipid.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
> index b1118d37779e..7fee6094db12 100644
> --- a/drivers/soc/samsung/exynos-chipid.c
> +++ b/drivers/soc/samsung/exynos-chipid.c
> @@ -60,6 +60,8 @@ static const struct exynos_soc_id {
>         { "EXYNOS850", 0xE3830000 },
>         { "EXYNOSAUTOV9", 0xAAA80000 },
>         { "EXYNOSAUTOV920", 0x0A920000 },
> +       /* Compatible with: google,gs101-chipid */
> +       { "GS101", 0x09845000 },
>  };
>
>  static const char *product_id_to_soc_id(unsigned int product_id)
> @@ -178,8 +180,17 @@ static const struct exynos_chipid_variant exynos850_chipid_drv_data = {
>         .sub_rev_shift  = 16,
>  };
>
> +static const struct exynos_chipid_variant gs101_chipid_drv_data = {
> +       .rev_reg        = 0x10,
> +       .main_rev_shift = 0,
> +       .sub_rev_shift  = 16,
> +};
> +
>  static const struct of_device_id exynos_chipid_of_device_ids[] = {
>         {
> +               .compatible     = "google,gs101-chipid",
> +               .data           = &gs101_chipid_drv_data,
> +       }, {
>                 .compatible     = "samsung,exynos4210-chipid",
>                 .data           = &exynos4210_chipid_drv_data,
>         }, {
> --
> 2.43.0
>

