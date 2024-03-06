Return-Path: <devicetree+bounces-48770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BD5873681
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 13:33:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D668289625
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 12:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F44F12F5A2;
	Wed,  6 Mar 2024 12:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="AmT9WrGU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464C812F590
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 12:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709728362; cv=none; b=LC/E9lM0D4Wymjjx9ymkWIBWenedfVFASy9qMSyoILX5F5SSEnFVpvbVIDdoQQkKICZh1qvPpkNmQaJNdjVlK8IAkdWGqw1a2/DvuezAEl6FspEYYW5YaI+d5xkZr+d/FWqbqU8Ve4Lq8uMWNt83Prr5l338G2eTmexZVsukJuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709728362; c=relaxed/simple;
	bh=Fh48QOF/rP2Wea6QJXo7nphn37mP+bOZkgvPgU643Es=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WDwV9vaJQBalNIvxWMKsE29XIhS8D/gCmTSMnVaSdtMTMYP6CNKQRFKVBr0/q4AN1QvtcUPZo89Ao8h4oD0CdcMKCUAbvMT4Yn+8I6MHhEEaffcxXfqqZ3sgUxhgG+epsbZpZqbr5MgsUwsv0nLj1cFQmPlRc6j49/ANPINlJ7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=AmT9WrGU; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d23114b19dso86202241fa.3
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 04:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1709728358; x=1710333158; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BZFpTBrK/8Z8kCYIKn9a2NBq7XpVTO2NtPFOIG8kKGc=;
        b=AmT9WrGUtSA52Mi18FksO29L44XQanmNJsWXSIuvzHxpsCoO9t2GPlRwaHQjJPbR1v
         9kdw8bVsW5mFTF1PJQLlj8xaBgw+7NenSPYF5Lb0RMferiWbuw1+nOod6nFlaI2ZpuiT
         1vrjtlWY13OKj5j0IQ2OlWAa10YYAcOxipI+kMldcj04OavgNDdFX8z0+zq5lVqHTeR8
         c/7oD5GXZvqKW5OvfVM4nWogy57jbCqGvSDOxZM2aSSJrW59l5ZYOjqKOeN84nmOOuMS
         LxGzOpsJcOspIVSdh/hDnQtRvJaa4EJyjP5p9HskrohaF7k8GiQ2+uFWUPKLnZS5vhhI
         skfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709728358; x=1710333158;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BZFpTBrK/8Z8kCYIKn9a2NBq7XpVTO2NtPFOIG8kKGc=;
        b=rw9Whl7CkV1wK1QDwfWWCn9EQ0zTPXEPy5OEnihP+YAyI/3lwSQLHLqc59ldib7n19
         069Pp6frgfeFmCv07YKtd8IyvJPkFPc1WLz0ZwC3nFdIDV6d6oYqAh3dBlKQkQfwgtMO
         ghr5nR76+Fkr7iEX5VJOePBKeTwNTVBMwY8oVEyYf3SiIOovLaqSUiU5BMyWfrPh0G+d
         MWy5rKq/cLDweUcn8mq978jF+6BN7vGowWVGpyakC9UOv5MScbQ3ROjhRnpX+Bx9SdFu
         WOz9U5REKXCF5gX7qy5sxtNFRCTcMwhg3bx9dSrTUirDDIokX/VT/PHC32k7OezMZQtX
         dYWw==
X-Forwarded-Encrypted: i=1; AJvYcCXoCbaMeChmT99QEl32RsbUMQ2cpqyzfwy0Q9TPbiPyD+OXbpqqVPcC+demKffPnqia+7cEJKHtxOdc4HEdwOiPad+D0KnCqNm/hQ==
X-Gm-Message-State: AOJu0YxMG6LRRcRPkSnDYwiy006Yl0P3aDZqOCiLY7tCpLc0RG5WT6eT
	bxWocweS79ALlftCoCMc/gSMPuYT2in628UB38YawuYxYblTT875p0A+MOFJhU8=
X-Google-Smtp-Source: AGHT+IEDeb5xSs3ToNGkc9Jk0x1AGVvO+ujzXVD+OIULKvOw1p3bYond+o/FwYZgolNjYobqTCR7Kg==
X-Received: by 2002:a2e:92d7:0:b0:2d2:ed53:6544 with SMTP id k23-20020a2e92d7000000b002d2ed536544mr3310775ljh.32.1709728358228;
        Wed, 06 Mar 2024 04:32:38 -0800 (PST)
Received: from localhost (h-46-59-36-113.A463.priv.bahnhof.se. [46.59.36.113])
        by smtp.gmail.com with ESMTPSA id a19-20020a2e9813000000b002d2e419d9besm2477277ljj.65.2024.03.06.04.32.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Mar 2024 04:32:37 -0800 (PST)
Date: Wed, 6 Mar 2024 13:32:37 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: "Rafael J . Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] thermal/drivers/rcar_gen3: Add support for R-Car V4M
Message-ID: <20240306123237.GC3396349@ragnatech.se>
References: <cover.1709722342.git.geert+renesas@glider.be>
 <bd5b002a802c1e058e0048592f17862db1d04263.1709722342.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bd5b002a802c1e058e0048592f17862db1d04263.1709722342.git.geert+renesas@glider.be>

Hello Geert,

Thanks for your patch.

On 2024-03-06 11:56:03 +0100, Geert Uytterhoeven wrote:
> Add support for the Thermal Sensor/Chip Internal Voltage Monitor/Core
> Voltage Monitor (THS/CIVM/CVM) on the Renesas R-Car V4M (R8A779H0) SoC.
> 
> The conversion formulas for R-Car V4M are the same as for other R-Car
> Gen4 SoCs.
> 
> Based on a patch in the BSP by Duy Nguyen.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>

> ---
> Changes compared to the BSP:
>   - Use existing rcar_gen4_thermal_info instead of new data_v4m.
> ---
>  drivers/thermal/rcar_gen3_thermal.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/thermal/rcar_gen3_thermal.c b/drivers/thermal/rcar_gen3_thermal.c
> index cafcb6d6e235be44..a764cb1115a57562 100644
> --- a/drivers/thermal/rcar_gen3_thermal.c
> +++ b/drivers/thermal/rcar_gen3_thermal.c
> @@ -428,6 +428,10 @@ static const struct of_device_id rcar_gen3_thermal_dt_ids[] = {
>  		.compatible = "renesas,r8a779g0-thermal",
>  		.data = &rcar_gen4_thermal_info,
>  	},
> +	{
> +		.compatible = "renesas,r8a779h0-thermal",
> +		.data = &rcar_gen4_thermal_info,
> +	},
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, rcar_gen3_thermal_dt_ids);
> -- 
> 2.34.1
> 

-- 
Kind Regards,
Niklas Söderlund

