Return-Path: <devicetree+bounces-156866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 797CFA5DB7D
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:27:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8ED2189B073
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CF3D24A07F;
	Wed, 12 Mar 2025 11:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jxpRm+nE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164AE24889A
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 11:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778740; cv=none; b=ncL0bfHYiwEJfJ4eZY8Cyp/+QzKF391ffrXrTjR/79MxZ5IGYUt5dWp28aYGbnA+fCK0xtyisxxw+741QdsvP62QmhNZs9csFdK+juEzKkQL7PHc1kB36M+DccHdhlPQrNbvnhgC0+nq2VjEaAaN/Plqx0gBdsEhmHW/Jbq8EOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778740; c=relaxed/simple;
	bh=2mAjhQ38xaV59CAo8Jko5V6MNwT7CgxOmLCldmytZvU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mZkVt+e5MrY47aoP0hFYvO0m9DNG+rWzXQZIhIvTW6u3iz+oCAU6qiLHQRGI66geCiMShhfou1VXTlXiNcFIZ+bjicLIiP5uY+Uc7JRT8WOVlmdQq6jgqrI8mREkTtRemEhhdPOCwkGGNGS3kDY847ooCQPyD0PpIBAdgb0koVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jxpRm+nE; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6fecfae554bso40779177b3.0
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 04:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778738; x=1742383538; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CiJA8cEstxgkTU1mTKMy0JGKZ+R8iGVjaXw2iJxWSRI=;
        b=jxpRm+nEkoXRMGyl6NreHJi5FcZFYUPeFG3nP0OILD3JnWXmlhFnwctheTqM52YIK7
         84Vh/1Mr+0H6zJ0w8xmQ4roiTVEopTFZ1mD1TTLCbxuONE6Ob+RRTYq50dagGU5tvsZh
         YNfxCwhAcovKC5WmUH4se0D1kCGWYVPYJ1I3hOn/YgNn5NHx+HVeImF+alRgDVYmcd7L
         HAB+I3y33GKkl01wvMOQd8EsDVlxbWK0E3Dw9fuhI5h3RKuuH/wgD1kwm6zGczR5x+gU
         ftAtJYUcY9Cq0KGLU0iEjSDlMbULqZ7A9MdNu0By+zp8ZQGV9ktavjvoCwZNgtB7ToEC
         DXGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778738; x=1742383538;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CiJA8cEstxgkTU1mTKMy0JGKZ+R8iGVjaXw2iJxWSRI=;
        b=gsoc4aQzagclGBm9oeMHyzeyyxMgyNUfda2M96dKJ807MNO+eHB5+/ofb3JowxYB6S
         PfMboTCqUkD12M78nvWgXqkYMCnmmJHVgVDajLcELMtN0E6vYNaMVkh4M2bn28hnQy6e
         yZNh1PcjaPfuxjLDM3weyAC8GcGqGd4GWhduG8CM0uWGedcAajHC5w6pp8TgQNmXYaTn
         mDLThiu1CZnD37rch/FJT+AoNw1rEl1IGJJ0pXQgWVi4lbTo9B9cLu/nTkFCe0I56F1K
         gyikIVAPMaPH8aAJpqq9b0Y6V/8dBDCn7rPL7L2smffV6w8uJgWnGK/AIh1Lp7eQDq1/
         V//g==
X-Forwarded-Encrypted: i=1; AJvYcCWr3oDvr0Sepnxd/N9ZyCDXCmHad2kDmQHru/uHEMJx/IbkQmp9QS8QY4xRAaBgFZegD338GlfMHjcA@vger.kernel.org
X-Gm-Message-State: AOJu0YzeA5yfulEObEQdP0UWGyECIRXdyiwsC5k0zXAFleTzeUwuVcwa
	VNlYIbVvgvGf+0XM91vc4RUu1rWNwTTNzebcRlgwKYGWWDm5n2IuMfeToA5+OhobP5dkqWBlFIV
	h5C6ydCNPJiaDrg62vtaiwEGeESDfOAdVE8Btnw==
X-Gm-Gg: ASbGncslw1xDtuXgMlZ0cObdG/Y8B5axu+tNkrTk8pbl/pYefLc7IK2CX26rL9RPSST
	2L5Z1uKERyMS737NyFpIslCrSNjXRs/l3Q0G4UNqEJCLLO19392Dj/UI6CiGP4Rm/pdTSc0MD14
	INeO3BcxAVoxeIM1Hn4jbNrpTc0lo=
X-Google-Smtp-Source: AGHT+IFsXLs0G0P0sl4PUE6UPS3JqqtQHaqryQbTsh+V2XVD4bcZpoq0lGo1l4XslguvHjeCee00G9KHRf+J4fl/2ps=
X-Received: by 2002:a05:690c:4b13:b0:6fd:33a5:59a with SMTP id
 00721157ae682-6ff091eaa41mr105598827b3.18.1741778737979; Wed, 12 Mar 2025
 04:25:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250307005712.16828-1-andre.przywara@arm.com> <20250307005712.16828-3-andre.przywara@arm.com>
In-Reply-To: <20250307005712.16828-3-andre.przywara@arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:25:02 +0100
X-Gm-Features: AQ5f1JpRnOY3arJkwpPqmP24JF8uLy0s3IwIKNA_9eLVMdzcVYtTB4PX7y_pSng
Message-ID: <CAPDyKFoFesrcYPDNDsvU_mLdkTGE2=7TCFrYkdFW3bp_0fLSMg@mail.gmail.com>
Subject: Re: [PATCH v3 02/15] dt-bindings: mmc: sunxi: add compatible strings
 for Allwinner A523
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, 7 Mar 2025 at 01:57, Andre Przywara <andre.przywara@arm.com> wrote:
>
> The Allwinner A523 uses the same MMC IP as the D1.
>
> Introduce the new specific compatible strings, and use them with
> fallbacks to the D1 strings.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  .../devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml      | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> index 8e4c77b7e4ab9..9f3b1edacaa02 100644
> --- a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
> @@ -50,10 +50,14 @@ properties:
>            - enum:
>                - allwinner,sun20i-d1-emmc
>                - allwinner,sun50i-h616-emmc
> +              - allwinner,sun55i-a523-emmc
>            - const: allwinner,sun50i-a100-emmc
>        - items:
>            - const: allwinner,sun50i-h616-mmc
>            - const: allwinner,sun50i-a100-mmc
> +      - items:
> +          - const: allwinner,sun55i-a523-mmc
> +          - const: allwinner,sun20i-d1-mmc
>
>    reg:
>      maxItems: 1
> --
> 2.46.3
>

