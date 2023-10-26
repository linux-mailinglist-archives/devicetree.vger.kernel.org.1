Return-Path: <devicetree+bounces-12201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1787D84E6
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:37:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A06511C20EE2
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98FDE2DF84;
	Thu, 26 Oct 2023 14:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gz5p2yr4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE46B15AE1
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:37:02 +0000 (UTC)
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 342671B3
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:37:01 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-1ea48ef2cbfso611561fac.2
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698331020; x=1698935820; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0qleFEJdG0zueinUIrhZg05/V5NAw4EtMg/L1WU73us=;
        b=gz5p2yr4tSr0IV+WxdEQi2jepkXqTeImV3K+znSaDf4kMHSQEszK8jT0WOX8GAKL5j
         5h3Q47OaQhDjGKz9Mgk54ZsUhkCkoXfVxBwPslnOIyg0YVWAx/zLGXbgCr9yMANbpGn9
         GqEGAhZNvU3+XEY6BZyyK6TnzqWOkICUazoGX+JI5eVB09IWSwXtK9CFvqHy/rTKICh5
         P0Lk9HSgktsyW+6Wjf8mu5JPD/yoiXNm+4NI5lgYqY9o952rJlIuHXpRqy6nRiMkIm9M
         jdL8WKklwQ/CZKdJLRWpzBHGjqr6lszh1DICjQDoVbE3mE4b2f7iF1jrBdUXSqBvdC94
         LWOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698331020; x=1698935820;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0qleFEJdG0zueinUIrhZg05/V5NAw4EtMg/L1WU73us=;
        b=sZJEaqN3jh9xrQ9ECKt8bd6kwU763WytHvoR0vcLpKaD+eeL7dp2dFUB+nTkbVJQ1L
         PYVCrQvt2ODMa4eCiSTIbtkijS8tLQ1bssIwJkG048LYUUwbnKhKhq3eRxB5IfaU5eky
         taO5p4dURjdX9NwVJD+z9ZDiq1JYRkRWXa5ZLWLi3czxAffLUrpE2fy5XT/VwXssI/X7
         /5KN1IOoEzPYy+4OdBbjzn1wbFoa3wj29G9+Ts/9nMIyJjNNu+/nzQfEM0JjIhZpMy/e
         R7RUtBbGhRhWK/21vVR1S+neEyIHSEBKDTixTQy7GNxYA/s76GAljzB3StNjwyAUlL8E
         5f4A==
X-Gm-Message-State: AOJu0Yz9ZLVbV6BXsiAcvJFwEcdcMVoWNytLecROnj1FUKyre6zG618B
	qH+oXtRL4J1PocGPwvtmtkfcdwNZ1XPm3VngfJ5qaA==
X-Google-Smtp-Source: AGHT+IFzO5fLLLCSGUIZrhR1xwkvkiqrpeK/PDBIT4lzxm4y31BDe65GR+q2L7o3FGE3xTEAsLhmmntURr0yQsFbULI=
X-Received: by 2002:a05:6870:c49:b0:1ea:385:518b with SMTP id
 lf9-20020a0568700c4900b001ea0385518bmr21485497oab.3.1698331020473; Thu, 26
 Oct 2023 07:37:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231016080205.41982-1-tomeu@tomeuvizoso.net> <20231016080205.41982-2-tomeu@tomeuvizoso.net>
In-Reply-To: <20231016080205.41982-2-tomeu@tomeuvizoso.net>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 26 Oct 2023 16:36:24 +0200
Message-ID: <CAPDyKFqEP50MBE0_t5tAfsrdx8EOy5MGQWqfX0a_8FA-3cJe8A@mail.gmail.com>
Subject: Re: [PATCH 2/2] pmdomain: amlogic: Fix mask for the second NNA mem PD domain
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: linux-kernel@vger.kernel.org, Da Xue <da@libre.computer>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 16 Oct 2023 at 10:02, Tomeu Vizoso <tomeu@tomeuvizoso.net> wrote:
>
> Without this change, the NPU hangs when the 8th NN core is used.
>
> It matches what the out-of-tree driver does.
>
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>

The change looks good to me, but I have been awaiting an ack from some
of the platform/soc maintainers before applying.

That said, it looks like we need a fixes/stable tag too. Is there a
certain commit this fixes?

Kind regards
Uffe

> ---
>  drivers/pmdomain/amlogic/meson-ee-pwrc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pmdomain/amlogic/meson-ee-pwrc.c b/drivers/pmdomain/amlogic/meson-ee-pwrc.c
> index cfb796d40d9d..0dd71cd814c5 100644
> --- a/drivers/pmdomain/amlogic/meson-ee-pwrc.c
> +++ b/drivers/pmdomain/amlogic/meson-ee-pwrc.c
> @@ -228,7 +228,7 @@ static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_audio[] = {
>
>  static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_nna[] = {
>         { G12A_HHI_NANOQ_MEM_PD_REG0, GENMASK(31, 0) },
> -       { G12A_HHI_NANOQ_MEM_PD_REG1, GENMASK(23, 0) },
> +       { G12A_HHI_NANOQ_MEM_PD_REG1, GENMASK(31, 0) },
>  };
>
>  #define VPU_PD(__name, __top_pd, __mem, __is_pwr_off, __resets, __clks)        \
> --
> 2.41.0
>

