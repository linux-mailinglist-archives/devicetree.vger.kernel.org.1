Return-Path: <devicetree+bounces-239472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C9708C6548D
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:59:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B16A93471CF
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:52:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 787292C21FA;
	Mon, 17 Nov 2025 16:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="moFMWyOV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772CD2FAC16
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 16:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763398335; cv=none; b=rRy/eBQwwj3kqCfCnvE/4q1H5IQF+55P782RoWYahhIjlbn8pQkdItxniBrWr1VhoVmN9Pklr21dUiTd7tjTaOw9q6nVkpP7JKbMf5F6VanAjaC2kKk21ZwiGpEmL5H4P1xjCU29aKWe3jIfSsOa4XV5BHI/ibB2a9cx/B23b30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763398335; c=relaxed/simple;
	bh=5N5BBDCaROrlQhOSlahnjjq9n1TCWXRHJ0Hh2ui4S7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dUld3yh+gqZlvf+ro+G5TawBK1Q3ZRVs19P55M98esc7CtcpnATjsOocTam+KqVKnhy8Q6ZIH7ZVlamsPEXUDH75iSjqRDeSwmDCHjbeUiCQJsfflxHnuhAe6zjlxO/tba4PdULsfEDm9jG2R1uG+WArFQFhfJUpJGtTjSVVo5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=moFMWyOV; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7b7828bf7bcso4544281b3a.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 08:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763398333; x=1764003133; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zUj9CnAKaYL4CSPf9nhifExVFiQR0npQvu3foEooZYY=;
        b=moFMWyOVaAh0hI1G8Q1PSVYT5/BU3pHrvq8veWGGhO8z87G9km4IJpeSDlH87xunR7
         7ZdXrvLAjG3We4P/o+JDxHH3uwxSatCitKoWMkfR9EqouMcEY/xsOFj+UkS1We1aSqsF
         uwiH68oekTG8RGMK9evvgilvY5RJ14kFWj3a2WudrXLf+4NeY2mFnqr5yZz5l1+P6xfy
         0rcTWcmTbmRgamUUwAWB9Scs5DMEUZRt7Lx+g/83yeT9RmcT8JI5D8DEnvcoDgWgeu3P
         uYtfhYl8zdIXtj+tF7rGytzhz1yX2acFGUh1W5QWT1hBlRiOLg+R8T3iWq8lh4F7gxvk
         qTog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763398333; x=1764003133;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zUj9CnAKaYL4CSPf9nhifExVFiQR0npQvu3foEooZYY=;
        b=T+41N+BSfIBaXUJENjWg7+TnCpMUWWLy4DrpyLk/obclKeI5T4pC4RqXnOKl5ZCQr4
         G0KtaxNBIWsf1l+PZrRVgCRxph/jQ5lHd92nrIOXpLrqJf+HrcK+SOlyccF029J1ag5a
         qIlh0pgOb0+rEcBWdAtaIEej0ny+qXU9Fo5lopAE1hs1rhzhiHE0z7Td/wskDCTq7rzb
         /WI/NU9K9WfI4qSBWjiPwZGhOnf4I4L5v8n88zuGzsNBXCKgKFiOqJfRTJr6RCzZHVYw
         jzeJ16xr0QEje5P7cD4P+OzqeirG1lgmoA9qwqPYTDBKJVCoOPFZgoS0SSz1Epe+4jLg
         7+IQ==
X-Forwarded-Encrypted: i=1; AJvYcCWD0dkeMt51plc0HlLJAIY1yP94BqU6qsucQCbXrlICvubl5dBiZXH96NqEJrclf0cuytCbMquFKmT5@vger.kernel.org
X-Gm-Message-State: AOJu0YzxFOu8QB+9D5wE1Ilje/5LGD8niowvyuMjPjEzpJpLAImubaus
	lpQc2N2ousBJOsLghfAQ9RhIM0XpV4YKwppSDONaXwmnoJAQUjhvSuaCOKDrbuscNkI=
X-Gm-Gg: ASbGncv4Ry5ZZKBJ5qKxXNLOkZxaIc00w6KBfjT6ZPEOrlSvdDR7QAEJIxpcb/knTDD
	wKtkM5FLoIEw7h9Xe7E+i90kPNUvJ8ZwgMHwr74l0/wJIGFVhpJ+8vytWyuHHvG/G/rqcwHMcLy
	OTdD1ZktI6kbCMYbbIiGQvANdCxkI12luFV9hiZ6PqJgq+MEV2WeeC/XQ5u4EP+K0EBqXEVIH5U
	cDqzM1HEfrD1VpvLMdjYlwmdoFPbybhcshi3d/GbCB5nDPOxeYLasjrBxqP8uyFHOTi9hHJPnVt
	fPxQWm8LTCHAfokD6GywCAi6pSWTJp4WhFZ1+zRoxmswvoqDpNJGzb4dXj7d/8fSl3HE48eJnTs
	eQcJjxFD0AAuNK2Ocf+glv00V0Q3FfyXsGMvl8f11+3Uv81Prd1CKjW2V9Y1BBo/DAGSSuffhcc
	wO2EU=
X-Google-Smtp-Source: AGHT+IHecI276kQIbxBZ9syfl92jYHLFh+TC5jrh7TzsTTTb6R0qJEIR0wIHJjht4p40zgRpFX7K5A==
X-Received: by 2002:a05:6a00:1311:b0:7a2:1b8a:ca22 with SMTP id d2e1a72fcca58-7ba3b1b0020mr16038431b3a.25.1763398332587;
        Mon, 17 Nov 2025 08:52:12 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:df44:9b1b:6b35:3fb0])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b9250cd969sm13792560b3a.23.2025.11.17.08.52.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 08:52:12 -0800 (PST)
Date: Mon, 17 Nov 2025 09:52:09 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Huayu Zong <huayu.zong@mediatek.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v3 2/3] remoteproc: mediatek: Add MT8189 SCP platform data
Message-ID: <aRtSucnncIC33zQf@p14s>
References: <20251110101342.24261-1-huayu.zong@mediatek.com>
 <20251110101342.24261-3-huayu.zong@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251110101342.24261-3-huayu.zong@mediatek.com>

On Mon, Nov 10, 2025 at 06:13:30PM +0800, Huayu Zong wrote:
> Add platform data for MT8189 to support SCP remote processor.
> This enables SCP functionality on MT8189 SoC.
> 
> Signed-off-by: Huayu Zong <huayu.zong@mediatek.com>
> ---
>  drivers/remoteproc/mtk_common.h |  5 +++++
>  drivers/remoteproc/mtk_scp.c    | 18 ++++++++++++++++++
>  2 files changed, 23 insertions(+)
> 
> diff --git a/drivers/remoteproc/mtk_common.h b/drivers/remoteproc/mtk_common.h
> index d45480ad332e..abf0dbd9978c 100644
> --- a/drivers/remoteproc/mtk_common.h
> +++ b/drivers/remoteproc/mtk_common.h
> @@ -35,6 +35,11 @@
>  #define MT8186_SCP_L1_SRAM_PD_P1	0x40B0
>  #define MT8186_SCP_L1_SRAM_PD_p2	0x40B4
>  
> +#define MT8189_SCP2APMCU_IPC_CLR	0x30010
> +#define MT8189_SCP2SPM_IPC_CLR		0x30018
> +#define MT8189_SCP_SECURE_DOMAIN	0xA080
> +#define MT8189_SCP_DOMAIN_VAL		0x3303003
> +
>  #define MT8192_L2TCM_SRAM_PD_0		0x10C0
>  #define MT8192_L2TCM_SRAM_PD_1		0x10C4
>  #define MT8192_L2TCM_SRAM_PD_2		0x10C8
> diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
> index c3c37cae933a..f311e23b6d65 100644
> --- a/drivers/remoteproc/mtk_scp.c
> +++ b/drivers/remoteproc/mtk_scp.c
> @@ -1529,6 +1529,23 @@ static const struct mtk_scp_of_data mt8188_of_data_c1 = {
>  	.scp_sizes = &mt8188_scp_c1_sizes,
>  };
>  
> +static const struct mtk_scp_of_data mt8189_of_data = {
> +	.scp_clk_get = mt8195_scp_clk_get,
> +	.scp_before_load = mt8192_scp_before_load,
> +	.scp_irq_handler = mt8192_scp_irq_handler,
> +	.scp_reset_assert = mt8192_scp_reset_assert,
> +	.scp_reset_deassert = mt8192_scp_reset_deassert,

This is the last patchset I accept for this driver where the name of the
functions don't match the mt****_of_data.  It is highly confusing, hard to
maintain and error prone.  Functions that are re-used need to be given generic
names.

Thanks,
Mathieu

> +	.scp_stop = mt8192_scp_stop,
> +	.scp_da_to_va = mt8192_scp_da_to_va,
> +	.host_to_scp_reg = MT8192_GIPC_IN_SET,
> +	.host_to_scp_int_bit = MT8192_HOST_IPC_INT_BIT,
> +	.scp_to_host_ipc_clr_reg = MT8189_SCP2APMCU_IPC_CLR,
> +	.scp_to_spm_ipc_clr_reg = MT8189_SCP2SPM_IPC_CLR,
> +	.scp_secure_domain_reg = MT8189_SCP_SECURE_DOMAIN,
> +	.scp_domain_value = MT8189_SCP_DOMAIN_VAL,
> +	.scp_sizes = &default_scp_sizes,
> +};
> +
>  static const struct mtk_scp_of_data mt8192_of_data = {
>  	.scp_clk_get = mt8192_scp_clk_get,
>  	.scp_before_load = mt8192_scp_before_load,
> @@ -1587,6 +1604,7 @@ static const struct of_device_id mtk_scp_of_match[] = {
>  	{ .compatible = "mediatek,mt8186-scp", .data = &mt8186_of_data },
>  	{ .compatible = "mediatek,mt8188-scp", .data = &mt8188_of_data },
>  	{ .compatible = "mediatek,mt8188-scp-dual", .data = &mt8188_of_data_cores },
> +	{ .compatible = "mediatek,mt8189-scp", .data = &mt8189_of_data },
>  	{ .compatible = "mediatek,mt8192-scp", .data = &mt8192_of_data },
>  	{ .compatible = "mediatek,mt8195-scp", .data = &mt8195_of_data },
>  	{ .compatible = "mediatek,mt8195-scp-dual", .data = &mt8195_of_data_cores },
> -- 
> 2.45.2
> 

