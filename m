Return-Path: <devicetree+bounces-80019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E10C917A03
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 09:46:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9EA0282040
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 07:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 289E115CD4D;
	Wed, 26 Jun 2024 07:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="PDRuAxX5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C25F153803
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 07:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719387966; cv=none; b=GXffasZMTpvIrzahpwqgQYWHo+lDpQ8ge5t7MvaQ7VzCYhIFRz0auQQ2yxi8zTvt3aRop1ryAeP4oLpj0s7toCcy99ebEv2kmIZqfE0kBcseMl5X7ApQgxD+P+P8zG03kduchdxloaQqilg3SOGlWT8sRKW31ZoMJZcq1f7CQa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719387966; c=relaxed/simple;
	bh=+S/ZylBo7OkDhqSowKwWFObaRLnN9nAxnObxD0rGb+Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fEQ88RrYQt2EJ2+eOJHG94PrBR5ZSFsYNkLRX7m3V4+ChmutnAw0Sie712NhVmD9dzcjsxBvsLAex3iTeCKZQ8inyi0blzIrB+Nu5p9V6w4p5e+SMU5th/a6kbqekIU+4ancTVHNQYIGYv9PcZhc147Z2z/9eHSO+n/eA+02DkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=PDRuAxX5; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52cdf579dd2so3869331e87.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 00:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1719387962; x=1719992762; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6nCZo+jWMRZ6cgUq9Mxe++DtYRLBTMuxAvEuWj2mzpc=;
        b=PDRuAxX5PEoFRCnLtzb8Qail2JRo6XlJkOioQfY/45Q2Pe5Q4H1J/Zu/9KyxNujnRg
         S2J0xUcVG4F+oPIm4+Eu5LhVZAYM5/fLmUMAhuzLqeTy2ImN1BIrqO4aFYIdDLNui4Ee
         zQwemIPBseh0/06zstorqGL/VsXG0M2rI5dIFNewRRQ+MN4PyT+wGyhK3+hg98tvrBf2
         Kjm82niL0hF4Qi1ELGQKJACSn83OG1GjL5s6SuIM5WoCHD+9AX/c1sNt/uOr1n/dWFfU
         aPE+pPHRQPFLSxyks5E72AX50YoeEwEQaoLgAOcnFB0JxhNyMd1pAuBqXBcOVL6kbRkv
         xG1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719387962; x=1719992762;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6nCZo+jWMRZ6cgUq9Mxe++DtYRLBTMuxAvEuWj2mzpc=;
        b=i3DYbqO+vGydV0mGHqQ5yQKyYAkE+lSJ4EZfr/KbM8nS7gG/dgNSxBsnOTc1bKxKj0
         VOVMheKPGSf2wdzak43wEr0XoNuQUcITSG5eEgqOhKSgg2dzcr0WrTVCTaOobmw8oVQH
         pbBf6J4MDSlW8JjE8Ib8mh1hwsDCTyN0UwtD44ZANQI5T0VsMHjlb1X8f7Xl2OV9o2aP
         RRitQSVOVOnHRh6GsGoi5FcWBgskg1hbSYlhs4Aw1Wpo+NXEd0hD1Z8mer2JHk/PWj/H
         sypdTp2kaNT+VdfTaVbq9Xtf3soWhGtXTW/oiSGQOO8kL6tMj81FGL6Au5oRp+kbyJtC
         Oe5w==
X-Gm-Message-State: AOJu0YxCsb6c8x1EedyzFn74Yu84SOOgDJUJaSYeXDn/+OIsskHcUJc1
	PWmG98KrAvUw6vK4+MvIIDBJR9tZ9lP+FnAtzIg0hqVIjiNwNbIn3sczlZ40M5I=
X-Google-Smtp-Source: AGHT+IGQX0elEmsIgSgrE2SLocb/u9Th6sLY7fmx7i7FDBNC/6k6+LF/g+fLJC0OABw8GNYDkrkA2Q==
X-Received: by 2002:a05:6512:138a:b0:52c:f521:b1c6 with SMTP id 2adb3069b0e04-52d3ad9e8efmr2137151e87.30.1719387961780;
        Wed, 26 Jun 2024 00:46:01 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c8246b1dsm15205005e9.6.2024.06.26.00.46.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 00:46:00 -0700 (PDT)
Message-ID: <76fc0a6c-b20c-4ae0-bb4f-0023cb66962a@tuxon.dev>
Date: Wed, 26 Jun 2024 10:45:59 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] mmc: tmio: Use MMC core APIs to control the vqmmc
 regulator
Content-Language: en-US
To: Prabhakar <prabhakar.csengg@gmail.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 linux-mmc@vger.kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20240624153229.68882-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20240624153229.68882-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240624153229.68882-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 24.06.2024 18:32, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Use the mmc_regulator_enable_vqmmc() and mmc_regulator_disable_vqmmc() APIs
> to enable/disable the vqmmc regulator.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>\

Tested-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com> # on RZ/G3S

> ---
> v2->v3
> - Included RB tags
> 
> v1->v2
> - New patch
> ---
>  drivers/mmc/host/tmio_mmc_core.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mmc/host/tmio_mmc_core.c b/drivers/mmc/host/tmio_mmc_core.c
> index 93e912afd3ae..2ec1a74c85bc 100644
> --- a/drivers/mmc/host/tmio_mmc_core.c
> +++ b/drivers/mmc/host/tmio_mmc_core.c
> @@ -897,8 +897,8 @@ static void tmio_mmc_power_on(struct tmio_mmc_host *host, unsigned short vdd)
>  	 * It seems, VccQ should be switched on after Vcc, this is also what the
>  	 * omap_hsmmc.c driver does.
>  	 */
> -	if (!IS_ERR(mmc->supply.vqmmc) && !ret) {
> -		ret = regulator_enable(mmc->supply.vqmmc);
> +	if (!ret) {
> +		ret = mmc_regulator_enable_vqmmc(mmc);
>  		usleep_range(200, 300);
>  	}
>  
> @@ -911,8 +911,7 @@ static void tmio_mmc_power_off(struct tmio_mmc_host *host)
>  {
>  	struct mmc_host *mmc = host->mmc;
>  
> -	if (!IS_ERR(mmc->supply.vqmmc))
> -		regulator_disable(mmc->supply.vqmmc);
> +	mmc_regulator_disable_vqmmc(mmc);
>  
>  	if (!IS_ERR(mmc->supply.vmmc))
>  		mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, 0);

