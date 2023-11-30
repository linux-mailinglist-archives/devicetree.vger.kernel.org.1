Return-Path: <devicetree+bounces-20335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6035F7FEDEB
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 12:31:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1ACEE28208E
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 11:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 992673C091;
	Thu, 30 Nov 2023 11:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uJLEf+HZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3BDE1708
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 03:31:07 -0800 (PST)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5cc3dd21b0cso8421987b3.3
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 03:31:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701343867; x=1701948667; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ds7ABFYrMMycv745Smb8RwddOGN4IRIdlcfUsv1PeZg=;
        b=uJLEf+HZUTpkUYhyMEKBjM1Z8TCvMmvF+arIHSiMSEwCJArUOzcrABTy/0jSXaWi8d
         wrPmJNMyPSaRJ8QdpRNzXVtmP3j/l8HZdqIIJ6vA8T9h7A7d3Otv0eJ2xL2OLEJGvp5/
         nmwc14Ok0rHEMkSLsn5i77lB0oQ7BHuPnaAU3VQGZ+FDSlDH5UnvBjMzbexAJtKAIGh5
         hxodA9wIoWRYWF4VYNIQJ0SSh+OEg23wnxxEQaW8LqoeNWs7WqoEJHU3KbDsqBvys+6j
         j1J1JhzigWQoP2N5lDcGcc3i6ZPG2DLJ2FepuWIf86LgboovAX8QOX779spqesaqq2O4
         v2mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701343867; x=1701948667;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ds7ABFYrMMycv745Smb8RwddOGN4IRIdlcfUsv1PeZg=;
        b=tHDaGbQ/zDsKINX661Bx5r0GkHITrLZELX9W51rrYBJBnFThvrk3ooRRs4cDsOQEs3
         pE2UjbdHi8/JmVv6udVXhQKXPl67xH4GQ657+Oe61g63Aqs/4t+geSEBz16Bcxt3WiR3
         BmRU2T593XFNokoWHVwcK9w9tlKW1vbiLEnvTZeoJb4f0Ryug1MHqB0Zb9hQYGGioy4h
         05kwn6LABO5lDcIXhO1RHHLb2V0ZMd2PCKwuP3KLWevROd3DRHNygY7AaVh6Du4MTrko
         CVntuoNv8YhzTFmG0uj4/K+WOVZOGIj1eTdgo6b1X6n8CQ2kKvMC6yxUzFJ4CPn4uEx1
         ayMQ==
X-Gm-Message-State: AOJu0Yyroc98UmLf+rLWcmH7caun57NEZKIQtfjtopsU7ijqtC320Ysb
	GTgT+ydoiP5Os891AlrWfly+nO+B9CmAdXnXDVCEmQ==
X-Google-Smtp-Source: AGHT+IGAESo71TcDtp4PhAumypPzLOYsMlreSo9KOtjEUiXzZQ5yHW7O4gv5AvPrsbQWkUO+3HKTXPu2yghcVpnpeDA=
X-Received: by 2002:a0d:ca93:0:b0:5c5:a04c:5eb2 with SMTP id
 m141-20020a0dca93000000b005c5a04c5eb2mr23685462ywd.33.1701343866889; Thu, 30
 Nov 2023 03:31:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231123-topic-amlogic-upstream-isp-pmdomain-v2-0-61f2fcf709e5@linaro.org>
 <20231123-topic-amlogic-upstream-isp-pmdomain-v2-2-61f2fcf709e5@linaro.org>
In-Reply-To: <20231123-topic-amlogic-upstream-isp-pmdomain-v2-2-61f2fcf709e5@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 30 Nov 2023 12:30:31 +0100
Message-ID: <CAPDyKFq7-sGF+obKXOYHaox=Ak29HuJ1=ZMfGiBHrMOQqiiH4A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pmdomain: amlogic: meson-ee-pwrc: add support for
 G12A ISP power domain
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Daniel Scally <dan.scally@ideasonboard.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 23 Nov 2023 at 17:17, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add entries for the ISP power domain found in the Amlogic G12B SoC
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/pmdomain/amlogic/meson-ee-pwrc.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/drivers/pmdomain/amlogic/meson-ee-pwrc.c b/drivers/pmdomain/amlogic/meson-ee-pwrc.c
> index 0dd71cd814c5..fcec6eb610e4 100644
> --- a/drivers/pmdomain/amlogic/meson-ee-pwrc.c
> +++ b/drivers/pmdomain/amlogic/meson-ee-pwrc.c
> @@ -47,6 +47,8 @@
>
>  #define G12A_HHI_NANOQ_MEM_PD_REG0     (0x43 << 2)
>  #define G12A_HHI_NANOQ_MEM_PD_REG1     (0x44 << 2)
> +#define G12A_HHI_ISP_MEM_PD_REG0       (0x45 << 2)
> +#define G12A_HHI_ISP_MEM_PD_REG1       (0x46 << 2)
>
>  struct meson_ee_pwrc;
>  struct meson_ee_pwrc_domain;
> @@ -115,6 +117,13 @@ static struct meson_ee_pwrc_top_domain g12a_pwrc_nna = {
>         .iso_mask = BIT(16) | BIT(17),
>  };
>
> +static struct meson_ee_pwrc_top_domain g12a_pwrc_isp = {
> +       .sleep_reg = GX_AO_RTI_GEN_PWR_SLEEP0,
> +       .sleep_mask = BIT(18) | BIT(19),
> +       .iso_reg = GX_AO_RTI_GEN_PWR_ISO0,
> +       .iso_mask = BIT(18) | BIT(19),
> +};
> +
>  /* Memory PD Domains */
>
>  #define VPU_MEMPD(__reg)                                       \
> @@ -231,6 +240,11 @@ static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_nna[] = {
>         { G12A_HHI_NANOQ_MEM_PD_REG1, GENMASK(31, 0) },
>  };
>
> +static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_isp[] = {
> +       { G12A_HHI_ISP_MEM_PD_REG0, GENMASK(31, 0) },
> +       { G12A_HHI_ISP_MEM_PD_REG1, GENMASK(31, 0) },
> +};
> +
>  #define VPU_PD(__name, __top_pd, __mem, __is_pwr_off, __resets, __clks)        \
>         {                                                               \
>                 .name = __name,                                         \
> @@ -269,6 +283,8 @@ static struct meson_ee_pwrc_domain_desc g12a_pwrc_domains[] = {
>         [PWRC_G12A_ETH_ID] = MEM_PD("ETH", meson_pwrc_mem_eth),
>         [PWRC_G12A_NNA_ID] = TOP_PD("NNA", &g12a_pwrc_nna, g12a_pwrc_mem_nna,
>                                     pwrc_ee_is_powered_off),
> +       [PWRC_G12A_ISP_ID] = TOP_PD("ISP", &g12a_pwrc_isp, g12a_pwrc_mem_isp,
> +                                   pwrc_ee_is_powered_off),
>  };
>
>  static struct meson_ee_pwrc_domain_desc gxbb_pwrc_domains[] = {
>
> --
> 2.34.1
>

