Return-Path: <devicetree+bounces-77830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FB991014B
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 12:17:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E763B21E78
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 10:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD43A1A8C2B;
	Thu, 20 Jun 2024 10:17:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA5E558A5
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 10:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718878659; cv=none; b=DjJVx71fYmqYry58PabpqGOdaMHt88KVNDd+VoO3O8okJJZJdW/pkMocVn5FAubvsbOUH1QRL+wrvh/lMS2AMXfT7XM8V56NoSzdhKmtf+5p5X+0UiqKT2bKgIICLWmou4axRqjYtg+7PsrwbzADcfzz5BDwlY41n4KB0lGpRCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718878659; c=relaxed/simple;
	bh=h7V0DxoSMVHG8VEd6s7x6wFAS8w5u2rt7fpd1rRse9Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Vx3Ewt7XYXeMC79hBecb4GPB3HYvN/kUAXPlS2cXAcbUKBXHmd+OCSHJSIBYPhrWrhrFylPR1AtSqSavkYWafMUvMHj88REOAT8l59Q6avebUuVtTcEyV4BhP4hsZ+OH8y7O3LAo0ytwesJ8kv7qeL+T+8+Yn9tKqwXcr8w8hvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ebe40673e8so6611721fa.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 03:17:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718878654; x=1719483454;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bf8vNA5yuOytQH9oqGaxBvwD+CmbF2hsnog35+f66vs=;
        b=gOL0gDK5RZE3JXpJ+uDIEXBxPuN7Qtw0SQdMUxbuSN8CqwNMRZRIVZ4qeqRDT+OSNG
         q0LjO0euu9oeDIbWkueb1BdtNiWMDJpzMu2IIj9PyE33qwLTRUSLD1GYAVCS+5NziBre
         zlaCr2qgmYqLkagvbBW/2AqlvsyontYJ+22x/hv/84RMz1UtrjhGJAh6xWLiF56XjjS/
         LyUjljqlt6qzmyNPoYaVAgERVp+BjYAQGUFkMK1aYA3O4ajthcILWcM9jswM3wr39knf
         pJi6ZozyOwL12oU2Fhi5/+5iazX6r0n+g16YlgD1CR+Va1jqvlf4anJX78HYzEUDQltA
         uN4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWhUKCPQGiCuL6QSzmlAYFvqmUMW7zsNt3lx1oMZKz7XpT16ta0lr5k8TbcSCQhDKvPGZQzsCgMvWE0MxrfSkEONzCWA8L2WRNjLw==
X-Gm-Message-State: AOJu0YwPMw/RMG4Stfbk48BTbloiSJ59jWAPr2IX+eYELn8B3NpHPvyx
	dJL5DFVoQq+6o3TmHFypc2PlZdAm9j+F2E9fJWqGOb31Y9sQQFcfJrTvhVIV0bw=
X-Google-Smtp-Source: AGHT+IH0hJ6IjHBHKNUwjwgaDfny8C4RZo6bUxzYxw/fFd4szYJtt2Nt6EISknmn1a+Vggl8pFR6Kg==
X-Received: by 2002:a05:6512:1247:b0:52c:84bf:d1f9 with SMTP id 2adb3069b0e04-52ccaa2a879mr3198157e87.8.1718878654235;
        Thu, 20 Jun 2024 03:17:34 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com. [209.85.208.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2879978sm2011947e87.182.2024.06.20.03.17.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jun 2024 03:17:33 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ec3f875e68so7932061fa.0
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 03:17:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXkmfxjMMsmKeaNdwigqyhK7f/AIo6lyu7OhHap0UZhBPtrOPB4jPWo2MSU/kZL594EC+GIegao8tUdzps+QSiSy4I7sqmGLcGzag==
X-Received: by 2002:a2e:3c18:0:b0:2ec:3c55:3056 with SMTP id
 38308e7fff4ca-2ec3cfe174dmr28682841fa.44.1718878652049; Thu, 20 Jun 2024
 03:17:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240616224056.29159-1-andre.przywara@arm.com> <20240616224056.29159-4-andre.przywara@arm.com>
In-Reply-To: <20240616224056.29159-4-andre.przywara@arm.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 20 Jun 2024 18:17:19 +0800
X-Gmail-Original-Message-ID: <CAGb2v65-tPgwJW4Yy80nBBkFg7kvtu_50Skd_ZF9gSFNAJzbRg@mail.gmail.com>
Message-ID: <CAGb2v65-tPgwJW4Yy80nBBkFg7kvtu_50Skd_ZF9gSFNAJzbRg@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] dt-bindings: iommu: add new compatible strings
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
> The Allwinner H616 and A523 contain IOMMU IP very similar to the H6, but
> use a different reset value for the bypass register, which makes them
> strictly speaking incompatible.
>
> Add a new compatible string for the H616, and a version for the A523,
> falling back to the H616.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

> ---
>  .../bindings/iommu/allwinner,sun50i-h6-iommu.yaml          | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-=
iommu.yaml b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-io=
mmu.yaml
> index e20016f120175..a8409db4a3e3d 100644
> --- a/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.y=
aml
> +++ b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.y=
aml
> @@ -17,7 +17,12 @@ properties:
>        The content of the cell is the master ID.
>
>    compatible:
> -    const: allwinner,sun50i-h6-iommu
> +    oneOf:
> +      - const: allwinner,sun50i-h6-iommu
> +      - const: allwinner,sun50i-h616-iommu
> +      - items:
> +          - const: allwinner,sun55i-a523-iommu
> +          - const: allwinner,sun50i-h616-iommu
>
>    reg:
>      maxItems: 1
> --
> 2.39.4
>
>

