Return-Path: <devicetree+bounces-60086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2071E8A820C
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 13:27:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5FAC1F244F7
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 11:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C595F13CA8B;
	Wed, 17 Apr 2024 11:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y5fIZBeH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A9113C915
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 11:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713353210; cv=none; b=b3pmNHsKI4x6BVvTFFOlVW40dOcxRERvjZh6y9Q6QVg6B0U/5GjvsPkkm5tAyaPEvm8w7taoIZZTnfnQ+VX/LsMJwhFFcI9gfzCtOwGhBWcFflYUQpoLcHyFgzKG7XU5yvraZQi6o1ViFIXoqxoObOmlWtvqmShOvW7wM9DLkoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713353210; c=relaxed/simple;
	bh=9w15mbaH1qCPmMzqW2fuVbi4t+4cdxNW7m9J6W+SAcw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Vy/uCxtYXw6JpaBPuw0+iUph69FUR1nlOioxQnXsD66Ju/uPHY6OUBwgNI7rERv8K4b0qqzL96fv+qL13nAUSon8MKKsfTq3dJhog7IUhtdUojlwVLlloFZA9RKHu56aaRu9d9p8rpl+VP35uKmFU4y5kmyHQGlWoYC2AuetVLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y5fIZBeH; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dc742543119so4831459276.0
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 04:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713353207; x=1713958007; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fEf0tlVvOtKKoShUsakltVb3hD3/VpXcFyQ1gefjJfU=;
        b=Y5fIZBeH5Vy4N3V6A691s9vvWkxIhtBUw9MmdpaEoVD3T9H1MljZRsfDVdd4zrdwub
         egO8NOLvTbbn0FedpzowPCK1rMFTJA4IjEygopfIzqnFyhdaeQBAD6XeRTOd+2OZHCiX
         KSfb7inzPb0p/Jf/F0I4GxCtZmG9z/V9I4IiOt4sopzJu8GGT40diQllvXnHsWG95P9i
         e/uOaDCNA+Azoik6ysPUxkrtaz29gLO7solHQQLdkpE25+hGGEBS0GQ/xLCogiFiyXlC
         MDGSUVHCyEXvANBW+LZywlaO3orhHIRWz0/SCCWj7oaru5ZcLNi3um46BuNY5b7kG+ft
         5T2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713353207; x=1713958007;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fEf0tlVvOtKKoShUsakltVb3hD3/VpXcFyQ1gefjJfU=;
        b=HipaVaLXP/Ey2OrXHB+2QxNKmaGs7UXh3lx/Id0ku4p3rNIT6E9JX4lz2cNFGL8cOW
         uBPs7ivYB7gKemEhKZQPDWwC7l70bvvIwVdWBEs00hgFI9bqSMPZjRNcCg3PCLV9dc4b
         mudYC43Ts+h5R67NFIUYbK9obBEqdgo0fWlFGT8Oy7k3fp4psOgK5tO+WujOWoY/gWpW
         AbEZHLj3b0x64gVT0jpSW79kmeZ5Mt5G3qUzIV0HdC2m82Bcc2yaaHfMcaQLrd7zniEN
         YqTj4n3QrbaiugPioMkCObbvUKPB4Av4/45s4mdV239e3+4P/8BEtJGecAbiqLIDcvYW
         8b4Q==
X-Forwarded-Encrypted: i=1; AJvYcCU3Q+syXwEgBJYJb99TYw/WoeLxL10bIyj2wLYt5h6n7wT6ItbjCZtx0dOlraGlAlv3knwgknSzMMKTcESadJpzyPRu0owQP2jd+A==
X-Gm-Message-State: AOJu0Yyc5EElrWpm3VX8J/2R73GQ7KUCbT/hYGgL6dAy1e4qJ+RdFd3v
	7QipMdCLyTxhoQLIo/M0M2Op8KsewJ4RVuyvRWPLypAZ5d0A/JTNTcTHmI9RFtij0fdiOqs44eB
	l7qGQcyaqaT0PHwVgpBTvpd5KGfOgvayLAEF9Lw==
X-Google-Smtp-Source: AGHT+IEQk/I5LetE/DhGDVVO0twPSlWrg1ZbN08OoWEw3G7KQntEEGuJ8Lq3vNPpkhg2jG26xZma+XZL1vf3+BIUoXY=
X-Received: by 2002:a25:d354:0:b0:dc7:45f4:44f7 with SMTP id
 e81-20020a25d354000000b00dc745f444f7mr12803841ybf.14.1713353207586; Wed, 17
 Apr 2024 04:26:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240417105605.836705-1-quic_varada@quicinc.com> <20240417105605.836705-3-quic_varada@quicinc.com>
In-Reply-To: <20240417105605.836705-3-quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Apr 2024 14:26:36 +0300
Message-ID: <CAA8EJpqaXU=H6Nhz2_WTYHS1A0bi1QrMdp7Y+s6HUELioCzbeg@mail.gmail.com>
Subject: Re: [PATCH v8 2/7] clk: qcom: cbf-msm8996: Specify master and slave id
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	konrad.dybcio@linaro.org, djakov@kernel.org, quic_anusha@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Apr 2024 at 13:56, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> The icc-clk driver has been changed to take master and slave id
> from the caller instead of auto-generating them. Update
> clk-cbf-8996 accordingly.

This should be squashed into the previous patch. Otherwise the driver
is broken between two commits.

>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  drivers/clk/qcom/clk-cbf-8996.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/clk/qcom/clk-cbf-8996.c b/drivers/clk/qcom/clk-cbf-8996.c
> index fe24b4abeab4..a077d4403967 100644
> --- a/drivers/clk/qcom/clk-cbf-8996.c
> +++ b/drivers/clk/qcom/clk-cbf-8996.c
> @@ -237,7 +237,12 @@ static int qcom_msm8996_cbf_icc_register(struct platform_device *pdev, struct cl
>         struct device *dev = &pdev->dev;
>         struct clk *clk = devm_clk_hw_get_clk(dev, cbf_hw, "cbf");
>         const struct icc_clk_data data[] = {
> -               { .clk = clk, .name = "cbf", },
> +               {
> +                       .clk = clk,
> +                       .name = "cbf",
> +                       .master_id = MASTER_CBF_M4M,
> +                       .slave_id = SLAVE_CBF_M4M,
> +               },
>         };
>         struct icc_provider *provider;
>
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

