Return-Path: <devicetree+bounces-146483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C3814A35272
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 01:10:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16BFB188D7AB
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 00:10:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4AAB275417;
	Fri, 14 Feb 2025 00:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X9tDXlms"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BBD28F4
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739491795; cv=none; b=dU6YBclHYQmDRANd1F/+vZK5o93QTlGzUOfihtHqv4Rh0+sH5YgVQXBMOQLSEgiB7vmcMJpYkcBIaXAfB9MI9nVZjXLzqAdjZixTsHHsd9q8RaHml8dIhJNKldNtexOkVkXaibAzreZytrS3zQsXrwEwXStXtQLKt+HcKzllPxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739491795; c=relaxed/simple;
	bh=lEZkR6Mx58pSq0zExuloJ9MtvWHa8LHWfZeVjgG9WZc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D5yl0Uy/XkR1cEV8oR+jytVM+KC8SK80WZnpnn8wH9hZpSO2Bk7kBspsaCJFyLMy41AMdrGA+CQzcFu6N8bqd8+3N2swRUhOQO8ZmNsPApmY7WV7od49TZA6OqnFV3O36tBYmemKYwn1dmPWzjM+SEe2SDc6+iwU05ryXTToh3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X9tDXlms; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e46ebe19368so1199648276.0
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 16:09:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739491793; x=1740096593; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NqP9v9jg7baLiU2+93UgvbM9b74Tce3qrWwn1lgosFQ=;
        b=X9tDXlmsUsIQfkaNZDlkbTZOQ6yJZhTnEba9AZbqdWmtiAnd4eL5TS1OF04JD17+ea
         fOofewEVHOYcK02S5TygPLISQmY/3Uk4kcpGydKsR5TXMmFrvS7IrtDLD4vUFCTPH/F0
         PFOVKzmXj2kyXNCr2zvUlrRCHWY3AVzIos1Wif9ULHw/79JCkiQG+lqakWt9D/FyNM7l
         o+tExlNa0I7ciMuKBWs8Q4mxjQFiULrmRLSn8dKJ/qxM6IDnIzFDxL0mpoEpKtMtyKNl
         cdicpkLsAGQjNrIieya1OdDUovgu0jpQBKYWvOJTDaZ2ulvUuBZAG7hcvSX9e0cA3l05
         cXBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739491793; x=1740096593;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NqP9v9jg7baLiU2+93UgvbM9b74Tce3qrWwn1lgosFQ=;
        b=xA4i91g7rvkN8JhyisxQVLLrBWQbVcJTWbgvLorgc/bBiJp41auZbRTnbGoyonFWfC
         puEY8qg7+KAIwrGx47ZUmuRu2s+3ruVvtLIhgAzzTkIxWrUlvQLv7FDPBR3nRdssVIsv
         1OOMkNrCMBAztrA1u5cwRRx92ccU8Zwj34qg+R2eJ5Tm1uHkJSJsLhaUvByhuxJaFnp2
         hoOdqfGjBHZlEcb+1PJafZoua+BNbrZibb9z15ndaSQpcVPcbX2ZRuRB1RdJcNtUhjCL
         80YROBC/cIqffLM7d05vKRU6dnFapLHlgQkh+aa8phrWlHwPfTfeWMmq/CR4S9N1ICBE
         fg4A==
X-Forwarded-Encrypted: i=1; AJvYcCUsvfPpUIyUf+EcYKjxm+kDR5ovqdIWcZlsGnsUQZh3ffqNSw6IIP44juoWaVMnH0txHoTQP3CEsf8z@vger.kernel.org
X-Gm-Message-State: AOJu0YxdylSueZ8C8PtLKvZqjD/1rLSw/o8ITg7mn3BdBuweGoK4XoJU
	XShzrxawce3CBRj0/5fOeV3PyhPDKEvTy9WQbDHNPkBkBHvXsQV3moK/gsOU9qw1YaTZgOyu80p
	LdNfrKD3guojxoocJsbap6Wa9afpdMEvBmC9bAQ==
X-Gm-Gg: ASbGncuKKdfA7ksOuga4uDyRGZse/UOwS1LyySw6qgs+83VxWevvGUR2+qq1HGPo7ej
	7zCqIoJO7/Yjf5n973NeaMp5QEyGkFIbZ5zL+JUHc9oVUhEy/aXcIJtoj/I/RsCkb+sxmEx0MDn
	quRWETKHNS/KSfHEIp+45M+wLQCAh5dNk=
X-Google-Smtp-Source: AGHT+IFd1EJtDVBHgzWdjgXFsf5jdNOMTYWQT9HHkgAZZC7VuvxH9RsRYnYxxoGtNZLN5u0QJ7cWcZkPmK0FyJYTFow=
X-Received: by 2002:a05:6902:13c6:b0:e5b:3f8e:9e65 with SMTP id
 3f1490d57ef6-e5d9f0f9e38mr9401293276.12.1739491792768; Thu, 13 Feb 2025
 16:09:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250213204044.660-1-wachiturroxd150@gmail.com> <20250213204044.660-2-wachiturroxd150@gmail.com>
In-Reply-To: <20250213204044.660-2-wachiturroxd150@gmail.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 13 Feb 2025 18:09:42 -0600
X-Gm-Features: AWEUYZnCMGwjd-AHWAZ_AQIcjbuE5HV5DBnJ9ZGUM8sZFqDGixnVhaKZX3Cd9ko
Message-ID: <CAPLW+4=STm0=K8s+BTxiHWP9F_waw2H=fQ4W9_NTm7a4JcFy=w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] spi: dt-bindings: samsung: add samsung,exynos990-spi
 compatible
To: Denzeel Oliva <wachiturroxd150@gmail.com>
Cc: andi.shyti@kernel.org, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, 
	linux-spi@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 13, 2025 at 2:41=E2=80=AFPM Denzeel Oliva <wachiturroxd150@gmai=
l.com> wrote:
>
> Add "samsung,exynos990-spi" dedicated compatible for the SPI controller
> on Exynos990 SoC. This ensures proper representation of the hardware
> in the device tree.
>
> Signed-off-by: Denzeel Oliva <wachiturroxd150@gmail.com>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  Documentation/devicetree/bindings/spi/samsung,spi.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/spi/samsung,spi.yaml b/Doc=
umentation/devicetree/bindings/spi/samsung,spi.yaml
> index 3c206a64d..1d3c95bd2 100644
> --- a/Documentation/devicetree/bindings/spi/samsung,spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
> @@ -24,6 +24,7 @@ properties:
>            - samsung,exynos4210-spi
>            - samsung,exynos5433-spi
>            - samsung,exynos850-spi
> +          - samsung,exynos990-spi
>            - samsung,exynosautov9-spi
>            - tesla,fsd-spi
>        - items:
> --
> 2.48.1
>
>

