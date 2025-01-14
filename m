Return-Path: <devicetree+bounces-138416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6CEA104B1
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:54:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44FED18844FE
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E124A22DC44;
	Tue, 14 Jan 2025 10:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pgO9H4qu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A541C5D7E
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 10:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736852081; cv=none; b=KT+zYtK1CSg9zgLF1NAYk9Ff0ZZ38pSCTWcOPZuPzX6lOeKYCIfODQZzdoHSlZK4V96dkGF1adSPx9y3P9YZUyugx1H77sO1KmWr+OC/RXTgSiS3FchFQZ/sFexeHJq1fjZ1qwnL96aKdRwdy718NGRSJj88W19Pz1GdAku7SkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736852081; c=relaxed/simple;
	bh=y74PAK2QBeuoEPLrSAKjDYLZJ2U2dYHzKka55S020Zs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eygNdtFlndWwxqddOmIaUKfUAUXNqrg5gp87EGIVzh0ZVd5GSvMcSSTZFrBSNKeAEXX6zeQFvPB9mgN1P6zEGOsCEKZ3SAFP1c9x9a/AfLBkGAoT0Tq73wngVlztuOFrkqxu/TGgrzJVFoV1IQ6UVosJCAEPtMovRz4DSGqLz1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pgO9H4qu; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-3003c0c43c0so50806581fa.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 02:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736852078; x=1737456878; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ylLKe5FMV6Rul0Qs+TMBWEItVz76GrL6YM2jYzLMUnc=;
        b=pgO9H4qu/9WZzYz0bjrRBUpaNzqyfBgM7Bi5RpCgY0nq+bwrm2uBrHAOufsA+WBLD8
         lu7XMwdLRMW9yY45evMHwMRZkFmR69ehjQtlh8sfIaQyjkM5F5xTkN++WiOuFjwTvvY2
         og9xhrkgb3NpfmwuSf1nhL2FeNi2dnFZCXGqolG2LA6DSBUlwOjZGWp9TzPjZXdJSWzw
         bbMeNWUbfRW/GFxKk573nBuRL1cf6W7o7NC662GZq7o79NeXRGXZwzM4E6XAOWVUo9OO
         TKRQ/VH6vjVNot0smksVrkT1ph4kWrqMkjEEUF8Q9bBNJ0d9UpG6Y2pCkuEftSRJAoMd
         Ohtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736852078; x=1737456878;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ylLKe5FMV6Rul0Qs+TMBWEItVz76GrL6YM2jYzLMUnc=;
        b=cxRXGUuSAsDxG30PExzqi2NBJ99kshZk/sll2aJOypOK1FgO9gHE9IZNnoyfjDh3m3
         8zfCs7uOgQd6XMQ7v3PiPJRrD3MKPHEs5B/0EPQsrx3tayguAJ4lEnzHRWOFKHgSylh7
         RS+80irJNJNuXyw/lAvjUTxflR5SzWh+QqEeX+s4WMkvBES9Ty8OfbWjD6w1pvUFGPV4
         ILmOmCMkn16G+jpFKosIy72sMeppegtQcZaQrT78TBtsfmAEygOhQK49r4o5PVJ1hYE2
         R6a7vm68qtaIwqC3mKmfaCdRfb+iJO14bbZBNiqwYBB3jlt/CmXtYSCykti21p0NwA7T
         1znQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8PAMXIxjBan3PQGGbbToc1EggVolq/4LpUwsilIS4CCnp1BmDGnAbtR0SJQNwwfugsYHM5mgbUFMb@vger.kernel.org
X-Gm-Message-State: AOJu0YwhId8Ti86KSKyLk6r6bKWqCyW7jXvo4Wguz7sKwr0HEzhMJovA
	5ief350bhrtkyZk6dz6v71RYeAbnoLD2Aze5xu59qi89eNmz5MEUJqM48sqwrJ0=
X-Gm-Gg: ASbGncvxFlN74Ikrn5GoIhL4JCNLruI0jZtj5cyq7dEuTLi/IvbxFvcAzuEG4KWs2vD
	oK7jlZfoH4izcciiZIheMS27/jrjzl4tDTRj7lGKpUWoEu2G90+/R2/767bUU3E65DNQHTUetmj
	GhfTUwFew4V7ZtFFUUlCbkiZUBfXZimIkMdX+IWpUtK3bZZxH/E2dzwgi2A36+Okk1M6wUdBN8a
	iN0ulbSqY2VwnpSm2cx2mXYxhjO+0juxGteaBn50odHelgVPZVnk9RD0KSiezrhMeqPND0IlPhW
	JvY/bhrs8TFXmZKFAoPYeOoRNCK3DSbTnQHA
X-Google-Smtp-Source: AGHT+IE6ff3uSDQb+B2PQwsG+1Jo13swO/F7MeEhPQZjgmCQZYaQlvgvnw5vRTqRXZ92ceMJLtTZ1w==
X-Received: by 2002:a05:651c:508:b0:302:2cdf:7fbb with SMTP id 38308e7fff4ca-305f4531690mr72925201fa.6.1736852078050;
        Tue, 14 Jan 2025 02:54:38 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff0cee04sm17903491fa.33.2025.01.14.02.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 02:54:37 -0800 (PST)
Date: Tue, 14 Jan 2025 12:54:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] soc: qcom: llcc-qcom: Add support for SM8750
Message-ID: <kq5ijq5jnbl5sndr3yyfdxxo43heptilzy7sa6xfrguydzoby3@3gvee4wvno4u>
References: <20250113-sm8750_llcc_master-v1-0-5389b92e2d7a@quicinc.com>
 <20250113-sm8750_llcc_master-v1-3-5389b92e2d7a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_llcc_master-v1-3-5389b92e2d7a@quicinc.com>

On Mon, Jan 13, 2025 at 01:26:42PM -0800, Melody Olvera wrote:
> Add system cache table and configs for SM8750 SoCs.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/soc/qcom/llcc-qcom.c | 51 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 
> diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
> index 4379b5baa011aa850a2b65ec20b32519d9331be4..f4cb158e0cf9eb82147ee461f98d0e928e5759a0 100644
> --- a/drivers/soc/qcom/llcc-qcom.c
> +++ b/drivers/soc/qcom/llcc-qcom.c
> @@ -2770,6 +2770,41 @@ static const struct llcc_slice_config qcs8300_data[] = {
>  	},
>  };
>  
> +static const struct llcc_slice_config sm8750_data[] = {
> +	{LLCC_CPUSS,     1, 5120, 1, 0, 0xFFFFFFFF, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0},

NAK, things have changed in the driver.

> +	{LLCC_MDMHPFX,  24, 1024, 5, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_VIDSC0,    2,  512, 4, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_AUDIO,    35,  512, 1, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_MDMHPGRW, 25, 1024, 5, 0, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_MODHW,    26, 1024, 1, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_CMPT,     34, 4096, 1, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_GPUHTW,   11,  512, 1, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_GPU,       9, 5632, 1, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_MMUHWT,   18,  768, 1, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_DISP,     16, 7168, 1, 1, 0xFFFFFFFF, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_VIDFW,    17,    0, 4, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_CAMFW,    20,    0, 4, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_MDMPNG,   27,  256, 5, 1, 0xF0000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_AUDHW,    22,  512, 1, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_CVP,       8,  800, 5, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0},
> +	{LLCC_MODPE,    29,  256, 1, 1, 0xF0000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
> +	{LLCC_WRCACHE,  31,  512, 1, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_CVPFW,    19,   64, 4, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_CMPTHCP,  15,  256, 4, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_LCPDARE,  30,  128, 5, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
> +	{LLCC_AENPU,     3, 3072, 1, 1, 0xFFFFFFFF, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_ISLAND1,  12, 7936, 7, 1, 0, 0x7FFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_DISP_WB,  23,  512, 4, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_VIDVSP,    4,  256, 4, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +	{LLCC_VIDDEC,    5, 6144, 4, 1, 0xFFFFFFFF, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0},
> +	{LLCC_CAMOFE,   33, 6144, 4, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0},
> +	{LLCC_CAMRTIP,  13, 1024, 4, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0},
> +	{LLCC_CAMSRTIP, 14, 6144, 4, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0},
> +	{LLCC_CAMRTRF,   7, 3584, 3, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0},
> +	{LLCC_CAMSRTRF, 21, 6144, 1, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0},
> +	{LLCC_CPUSSMPAM, 6, 2048, 1, 1, 0xFFFFFFFF, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0},
> +};
> +
>  static const struct llcc_slice_config qdu1000_data_2ch[] = {
>  	{
>  		.usecase_id = LLCC_MDMHPGRW,
> @@ -3432,6 +3467,16 @@ static const struct qcom_llcc_config sm8650_cfg[] = {
>  	},
>  };
>  
> +static const struct qcom_llcc_config sm8750_cfg[] = {
> +	{
> +		.sct_data		= sm8750_data,
> +		.size			= ARRAY_SIZE(sm8750_data),
> +		.skip_llcc_cfg	= false,
> +		.reg_offset		= llcc_v6_reg_offset,
> +		.edac_reg_offset = &llcc_v6_edac_reg_offset,
> +	},
> +};
> +
>  static const struct qcom_llcc_config x1e80100_cfg[] = {
>  	{
>  		.sct_data	= x1e80100_data,
> @@ -3542,6 +3587,11 @@ static const struct qcom_sct_config sm8650_cfgs = {
>  	.num_config	= ARRAY_SIZE(sm8650_cfg),
>  };
>  
> +static const struct qcom_sct_config sm8750_cfgs = {
> +	.llcc_config	= sm8750_cfg,
> +	.num_config	= ARRAY_SIZE(sm8750_cfg),
> +};
> +
>  static const struct qcom_sct_config x1e80100_cfgs = {
>  	.llcc_config	= x1e80100_cfg,
>  	.num_config	= ARRAY_SIZE(x1e80100_cfg),
> @@ -4306,6 +4356,7 @@ static const struct of_device_id qcom_llcc_of_match[] = {
>  	{ .compatible = "qcom,sm8450-llcc", .data = &sm8450_cfgs },
>  	{ .compatible = "qcom,sm8550-llcc", .data = &sm8550_cfgs },
>  	{ .compatible = "qcom,sm8650-llcc", .data = &sm8650_cfgs },
> +	{ .compatible = "qcom,sm8750-llcc", .data = &sm8750_cfgs },
>  	{ .compatible = "qcom,x1e80100-llcc", .data = &x1e80100_cfgs },
>  	{ }
>  };
> 
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

