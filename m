Return-Path: <devicetree+bounces-74898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C51904F23
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 11:23:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F3F0CB24184
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 09:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC0516DEA3;
	Wed, 12 Jun 2024 09:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="elVGqmvH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCCF16D9CA
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 09:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718184194; cv=none; b=qaVnu0Ng8HVRpz1L52fPeOuxEXUk/a4PNexg0DK8WigGVUL6rHDEm/AHcGuOzHmkNiwq9GLgH1hA9sDui1fCrQBYFp2y1lRW/3xBjMw1fVNW8k1lf69RCSg6qBmpYz4JpKf1csEuIY3ccW8zZsuBV51v3m4fEAqoG/DwQrGWxlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718184194; c=relaxed/simple;
	bh=cqAjv0ciTbfG79N6f0Qszpdg9coI8cetf/zimRgZldg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PwnsFfuEIveZTZ6o5f8LOiFEJn1pPTYOxmrmd3QXMj5Jo8QnhZyvHPQ1lTCwWGBUkGxO2z9o2aCItY2fSXvaHnzIKXC/xr8IdqGDqek2m0DndFc7SixC0ObV+QhktiF7OElBa+ECkwq50iXdFlyX5M3VTYP75Oa0/XsBQVGNU8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=elVGqmvH; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E8BDA3F71E
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 09:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1718184190;
	bh=kYhK3L+yW69WKhHxmlqNiCnuIy+fGgbMi5wRMPzQXug=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=elVGqmvHskX59F4vCEfo/vWB/kt2PNwUMVA6OCMMeV0Dg0j9xWvWwX5/Ctu7rnpRN
	 GeKqyLE5vmz2szoAV3yLwY8IlkqYiUk0Ut54Gt4jr8e7ZvgO84/+3q4RPEszY+QyU8
	 AtGVkbPTGVZDhGwJdbs6JSV2W9xIsmhQjpUCSX5RZPtNNe0RrA4cloT9WUVpmcXYHo
	 +55f6e+r2VM7JHi+ZJh5aZIz/8JgLGFWamtTiNQohnmea71nuIbbeRO8ERsTLKfgS5
	 toLDO8f125YnaKgBLkqoXIKAqjynqnZkQK/euP/Caz0vEZmALwIMlPHi+yhAQ2FaIg
	 AIGykBD1tAn3g==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4405830b0a3so20585581cf.2
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 02:23:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718184190; x=1718788990;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kYhK3L+yW69WKhHxmlqNiCnuIy+fGgbMi5wRMPzQXug=;
        b=vNfKxPU58p9XrHKn445jO0Jz2kTwge3rPPAXA0nSnUy0Gp8GfESQ39+mSJYdO/JqFT
         Yxll48dLE+EgovdOMicHCvZGmDeNnXuLhEg2X/xB9KIer4sGG/coKf4PIKpUeawN6wLL
         6Mi7M2miapKSTLg+E0YuvlK0+1QWCCI3PZ4PfWejtgMpdwBUWPC+0VfvirIPj6gzQm5I
         OM86Bx/ZrHCMN7le99OaWgy8h4kiu4sX78Wfiq+TA0IuICCuVYPTCtcVXKNo+c9iXluj
         WE1grlkPRL4XZE8x8msxsCEkvoGucfjXl1F0E1AeS/qdyBCJQbZftBVrsEP7xFosnWVx
         s+3A==
X-Forwarded-Encrypted: i=1; AJvYcCUeVNGImm/keFqvZhealvn7rpEjO1DApgJme9LJkqQKdpcfTEbFs0EHv6/kMcrpPnrqcyCcLt4o5iZCEhcRRw1ce7OghpItfp8Jow==
X-Gm-Message-State: AOJu0YzGev1MMlT0P21ITR2UK6a8pM5vNTd+VppkXmKKVOQuWFNatSrJ
	EjWmfZ935rK5qrKep1/+MUw4/vOa98AR/8obLKGkkEGjBePDymP/Ydb93gKsq4togEYNXrBjnqT
	+HOm1cs0uKzPXG37qhqI/z8fr7FZKa2+zUOGxk8n1UNV+HBZlCQJ1V2SwQ+w2x1rte7yNbh15h3
	I3TOIma8xkebsuS8Bf4eeAIIR+cB36rnjYhZHaDRxDbdtYBI6gdA==
X-Received: by 2002:a05:622a:1815:b0:43f:f238:f7c7 with SMTP id d75a77b69052e-4415abace3cmr11487541cf.12.1718184189684;
        Wed, 12 Jun 2024 02:23:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5MG8uXfoyZDoO/xNYxFjzdF/0nSHHKgK9WtkhZcuD36BVQY5EY7BluQvhT1S9z0w+/882J6EZF0XWnjMUN8A=
X-Received: by 2002:a05:622a:1815:b0:43f:f238:f7c7 with SMTP id
 d75a77b69052e-4415abace3cmr11487481cf.12.1718184189384; Wed, 12 Jun 2024
 02:23:09 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 12 Jun 2024 04:23:08 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240610-mocker-ankle-d3ee407bb352@wendy>
References: <20240610-vertical-frugally-a92a55427dd9@wendy> <20240610-mocker-ankle-d3ee407bb352@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 12 Jun 2024 04:23:08 -0500
Message-ID: <CAJM55Z8YWBedhXVgJpGF0LrifXGEjJubPvnxqdboAeW8DCLs3w@mail.gmail.com>
Subject: Re: [PATCH v1 1/5] cache: ccache: allow building for PolarFire
To: Conor Dooley <conor.dooley@microchip.com>, linux-riscv@lists.infradead.org
Cc: conor@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Daire McNamara <daire.mcnamara@microchip.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Samuel Holland <samuel.holland@sifive.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> There's a ccache on PolarFire SoC, so don't limit it to SIFIVE/STARFIVE
> SoCs only.
>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  drivers/cache/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/cache/Kconfig b/drivers/cache/Kconfig
> index 9345ce4976d76..b2d525e540212 100644
> --- a/drivers/cache/Kconfig
> +++ b/drivers/cache/Kconfig
> @@ -10,7 +10,7 @@ config AX45MP_L2_CACHE
>
>  config SIFIVE_CCACHE
>  	bool "Sifive Composable Cache controller"
> -	depends on ARCH_SIFIVE || ARCH_STARFIVE
> +	depends on ARCH_MICROCHIP || ARCH_SIFIVE || ARCH_STARFIVE
>  	help
>  	  Support for the composable cache controller on SiFive platforms.
>
> --
> 2.43.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

