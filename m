Return-Path: <devicetree+bounces-77831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 230E391014C
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 12:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C80FC281ADA
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 10:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81AE61A8C05;
	Thu, 20 Jun 2024 10:17:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83FA628
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 10:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718878674; cv=none; b=i7UGbaZswTpJv5kwUY00+sLwYSA8MMqyJGqtKkR9w0N0YLG8453/hpOLhQalNFoW8RlQR0qGyXFs7CBV/P/JrPDEVtPW931O40R1PZRbSei5ovkg62vhee6p8jwg+U0oonpleOYYY+hWw13jCd552Q8z5oGvoOVfZ3bixESIack=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718878674; c=relaxed/simple;
	bh=iFWLkh/WpGhcD6WT3wvg3mHpb2fRwPOwZJyeCqo8YKo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tAUQTQItemsC7UDHV3GlnBHPqsYOTOYU0LOnIa+yDo8NRnAV6+Ruj3EuMo9hhfhAw9Xr9h68Z8MlbnGrOzjBrHeJCnrBZC9qq1bUVRpRAIDD2CwHTunZnn9hZOKvHNLqV9MOIUvVEIUuUl9bJM4OeHypztLMjqM+Uo1jdtXI9yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ec1e5505abso14681101fa.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 03:17:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718878667; x=1719483467;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z1YNyE70SoDdHcH7gkxf765fOcuuSZVUTW9WZEWS85U=;
        b=NwMrfL8I79U7NFX14H+NfQ3Rfwz+/iykHK9rEFqkG2/5qkVkMYKFYg9d0CeIVZlT4G
         5YlbRG3n4A8ElvLUZ2KdExeB3g02CrwcDe87j0lND3f1WE4yXRIH9NapAu4cT7kQC9E6
         xXooPGw/nE10bzyAz6IdkCOkrF1yCONk5Il2D6XTiEIebglw/Kvu5UuBRGoWN867vg2/
         ozBrzQCKnCwqHGeHMdwNHwFgrP+ZLOlJRK7xAnL0ZIEONnBKzCOIYFyunQ9DTcYpOaLq
         lPsawL6yI2Yt/8ZjUIYCvQUGMQgcC7Y5s3TI/6y9QudBnsvkc/FISXA91ij7kP/SqsiZ
         C/4w==
X-Forwarded-Encrypted: i=1; AJvYcCWHTtMRnE1I3qkgkRpSFp9rTFt6WfbK36P38ejx//XDxw5EWO8/3zEfP+MxHl2d5mbZEGtVM6uVqOU5XtOh6iUx/9zgo0EOA53alA==
X-Gm-Message-State: AOJu0Ywgc44jtqIY4P5kaMbId09cGM8A8FH6m9FGXFI5QexCCfYV2Wzc
	IoGDBB5zDp+ur1lTusKJwgFyjEXofLhvYnVLTMANmhn+VOrseqYLJuGH7arl4Zg=
X-Google-Smtp-Source: AGHT+IEmYBK5l+c5lpsqD/fElT85hE4ay6w9UX0h8D5h9Kc8uzb5IaF6eIUnh9aICsjiLMlPTmYWfg==
X-Received: by 2002:a05:6512:1385:b0:52c:aec9:790a with SMTP id 2adb3069b0e04-52ccaf4d06amr1556635e87.7.1718878667009;
        Thu, 20 Jun 2024 03:17:47 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com. [209.85.167.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282581csm1998785e87.37.2024.06.20.03.17.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jun 2024 03:17:46 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52c84a21b8cso644089e87.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 03:17:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWwGNaRu14y/Tsu+tH5sh0ayk/d6x8lFfzItAHVSUlXzMbDg5AIhiAx6IZztcsKAqmdPw/zo5H3YkJvdkdmY/zbwp9DceVpFFcfAQ==
X-Received: by 2002:a05:6512:234f:b0:52b:c140:5d5 with SMTP id
 2adb3069b0e04-52cc47cb6d9mr2302277e87.2.1718878666095; Thu, 20 Jun 2024
 03:17:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240616224056.29159-1-andre.przywara@arm.com> <20240616224056.29159-5-andre.przywara@arm.com>
In-Reply-To: <20240616224056.29159-5-andre.przywara@arm.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 20 Jun 2024 18:17:33 +0800
X-Gmail-Original-Message-ID: <CAGb2v66E50bHCoYpkkcdfd=i57aLGi6Sa+HJMzEzjpYJL3bVOg@mail.gmail.com>
Message-ID: <CAGb2v66E50bHCoYpkkcdfd=i57aLGi6Sa+HJMzEzjpYJL3bVOg@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] iommu: sun50i: Add H616 compatible string
To: Andre Przywara <andre.przywara@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Ryan Walklin <ryan@testtoast.com>, 
	Philippe Simons <simons.philippe@gmail.com>, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2024 at 6:42=E2=80=AFAM Andre Przywara <andre.przywara@arm.=
com> wrote:
>
> The IOMMU IP in the Allwinner H616 SoC is *almost* compatible to the H6,
> but uses a different reset value for the bypass register, and adds some
> more registers.
>
> While a driver *can* be written to support both variants (which we in
> fact do), the hardware itself is not fully compatible, so we require a
> separate compatible string.
>
> Add the new compatible string to the list, but without changing the
> behaviour, since the driver already supports both variants.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

> ---
>  drivers/iommu/sun50i-iommu.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
> index 20a07f829085d..8d8f11854676c 100644
> --- a/drivers/iommu/sun50i-iommu.c
> +++ b/drivers/iommu/sun50i-iommu.c
> @@ -1067,6 +1067,7 @@ static int sun50i_iommu_probe(struct platform_devic=
e *pdev)
>
>  static const struct of_device_id sun50i_iommu_dt[] =3D {
>         { .compatible =3D "allwinner,sun50i-h6-iommu", },
> +       { .compatible =3D "allwinner,sun50i-h616-iommu", },
>         { /* sentinel */ },
>  };
>  MODULE_DEVICE_TABLE(of, sun50i_iommu_dt);
> --
> 2.39.4
>

