Return-Path: <devicetree+bounces-200218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B6178B13CE5
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 16:21:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49C0A161282
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 14:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBF8B26B74A;
	Mon, 28 Jul 2025 14:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H2cjUIxd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB911C54A9
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 14:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753712096; cv=none; b=nE6SGApLYxC+Tb70VOpQesC2ssWryL9VgO3x/7kTXVGWUd4ytSYM58rHx0ytW/VWZd/sKlgIQLAhXA9NlAYVcOVhvuudowqO1MtE0rMhQ2DWHgAAcBee4XFpGzKVJlQFT088xZPyNu9+bHI+rARgi10/g34q/SGcajUkxabrXoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753712096; c=relaxed/simple;
	bh=WmyYEezoqO0MCkUD+vSc5NHbpVGcBK/7QA+pcl8s7h4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nH8KBMZtsKHoUyZDbYqygL+grB4iy7sygQk2jWXeNICom876gFdhHOGRParwlKw51LgbdhAIptPD0vyDQINPp+nuPzOkmEf8Nf2jXQpbQCccRVcKNBxrXGipOVTZVd7/+Bjj5dwPxFyT2IIsgCsjnTf6N7QraNF4EYujtC/5eRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H2cjUIxd; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-614fd1a5790so3881874a12.3
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 07:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753712093; x=1754316893; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UYwhbY7Hecbk1qZCl4MdGthfDHIANrmSUOeNszZY1sQ=;
        b=H2cjUIxdU+0vxOH0EpIfaBxEndbQijavhxOUrpT3VgXEqQUIcVtlJ7KEeSo6Lvi0w1
         DIfuHWTGroIcByRz0W7T0yPDOO2rFQISU9AcH5/Uhovh4CthOpjj7SgRRVa0rUrofpx/
         H/izjo+DAt7w5PCMmVQu3V/CDop2TSMbTKA681qWu2gEelZheyy6lw5MGtsPm6l55Fwc
         iYWU9EOgJ8bRC7tvRJGY2qzKsagMID2vdfhdBkeTSqG+Z2gwhJNhhWdwbKVDXDOoXUfN
         4s226pwKsO/55c5Ka8kg6RqSPCU1AJ2SFOGfbTtVMz62qlECfo+m+fNnUHS/AghCnEB2
         NhoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753712093; x=1754316893;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UYwhbY7Hecbk1qZCl4MdGthfDHIANrmSUOeNszZY1sQ=;
        b=mvmCFcusbw4e1489zfaMlif++66d9zKSvvSr0CZYGBiE11eRUdwnPC76y3JQwPm8tD
         beiVY1RcITFt+cjhrFKaLEZXdFZCaoipsicUiLGEflgD9Fnuxav7xZwiBNvdeWDqnb7Y
         /zi8pSXkzVnVRwVScMlRzg6/SjHtmedKr6beof4pSYYwhqler2DWPCVXnfAj6Spxg9CI
         otAX9wkjLm7VymWQq0owiXcmH/L54q/0/k+/TFsHOnVlaXp5+tam92WOEoulwBHjgG60
         bq6iDuyNFw7/YFNdKwALednpdrkqUnEQDJFKD5rBdC+AHskDKIegVLTGgc9gqTk0DNm5
         t+GA==
X-Forwarded-Encrypted: i=1; AJvYcCXWHSYOvIZBQgGRxRAwucVDap7bQdmEGUYyUiHej5jDzg+sgZVsKfEzW6T0ZS/nwhdIqazYYdaJYmBW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3A0gAQvDeMLmy3cqtyQB9XNHXmx+yBD65O/pNEk4z/TC9NIqI
	iZMN/pAAk7YlzGTY1LfaUSo7eC6pOjPWfQLTTwVqlUWrsnSsMxhb4T8WxHpOLxp0D60=
X-Gm-Gg: ASbGncuLwRwCy7NlIqtmgNYIUuETU1ECujrfRRImXwTsNwNOnQX/GIWcEiTKmrGgC+B
	azT67d+xyDlQcYuyvOzzt1Tcr1fVY5dnTeOuYPMfb7R3Cqh1apWPMktO5cWKjyrKsrKoQoIzyyq
	Ez1y3UfhC+dxtuhlCpbyxoidxUcO8C8Swz4FrtU6dcq4jeJiSwtMhLWfSMwXanFpC+n3cRFt7FP
	kYu5ihHX/Emejcp8Go0Jink/xvdZf8g1nPXlFPhzcZyuq69J1RhL29+YD/GiVgFjNXcLBPjytmZ
	1r+MY6tChO2wO7bpblAK7+xy69Yjzl8RJZewa7LoyJDE1WpymotsqwRXGMltUQeXIVzz9DBHVxB
	n/CSgAoEgwKNOq2MVMuimHj0prT7vYOBwNXhSZHCIiKgxAvljHkuxOci7dNp4RzU=
X-Google-Smtp-Source: AGHT+IEHbvVBOTBi2wL3XYw1pOYiWmJ+jSmXZDZm1vhRUWP5YTgClxOi158f8n7e9tR07uWDsbkdCg==
X-Received: by 2002:a05:6402:2807:b0:612:b0d9:3973 with SMTP id 4fb4d7f45d1cf-614f1def683mr12512939a12.27.1753712092482;
        Mon, 28 Jul 2025 07:14:52 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61500aed9b7sm3313488a12.65.2025.07.28.07.14.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 07:14:52 -0700 (PDT)
Message-ID: <a0c910f2-3c7b-4740-b16b-f1efced107db@linaro.org>
Date: Mon, 28 Jul 2025 15:14:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] media: qcom: camss: enable vfe 690 for qcs8300
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250711131134.215382-1-quic_vikramsa@quicinc.com>
 <20250711131134.215382-6-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250711131134.215382-6-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/07/2025 14:11, Vikram Sharma wrote:
> The vfe in qcs8300 is version 690, it is same as vfe used in
> sa8775p. vfe gen3 have support for vfe 690.
> 
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   .../platform/qcom/camss/camss-vfe-gen3.c      |   4 +-
>   drivers/media/platform/qcom/camss/camss-vfe.c |   2 +
>   drivers/media/platform/qcom/camss/camss.c     | 180 ++++++++++++++++++
>   3 files changed, 185 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe-gen3.c b/drivers/media/platform/qcom/camss/camss-vfe-gen3.c
> index a5eddc8c76ae..92ee7c7b8a47 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe-gen3.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe-gen3.c
> @@ -13,7 +13,9 @@
>   #include "camss-vfe.h"
>   
>   #define IS_VFE_690(vfe) \
> -	    (vfe->camss->res->version == CAMSS_8775P ? true : false)
> +	    ((vfe->camss->res->version == CAMSS_8775P) ||\
> +	    (vfe->camss->res->version == CAMSS_8300) ?\
> +	    true : false)
>   
>   #define BUS_REG_BASE_690 \
>   	    (vfe_is_lite(vfe) ? 0x480 : 0x400)
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index 99cbe09343f2..1d40184d7d04 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -344,6 +344,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
>   	case CAMSS_8x96:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> +	case CAMSS_8300:
>   	case CAMSS_845:
>   	case CAMSS_8550:
>   	case CAMSS_8775P:
> @@ -1974,6 +1975,7 @@ static int vfe_bpl_align(struct vfe_device *vfe)
>   	case CAMSS_7280:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> +	case CAMSS_8300:
>   	case CAMSS_845:
>   	case CAMSS_8550:
>   	case CAMSS_8775P:
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index b0fd5fd307a1..abfaa489cc0c 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -2623,6 +2623,186 @@ static const struct camss_subdev_resources csid_res_8300[] = {
>   	},
>   };
>   
> +static const struct camss_subdev_resources vfe_res_8300[] = {
> +	/* VFE0 */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe0", "vfe0", "vfe0_fast_ahb",
> +			   "cpas_ahb", "gcc_axi_hf", "gcc_axi_sf",
> +			   "core_ahb", "cpas_fast_ahb_clk", "camnoc_axi",
> +			   "icp_ahb"},
> +		.clock_rate = {
> +			{ 0 },
> +			{ 480000000 },
> +			{ 300000000, 400000000 },
> +			{ 300000000, 400000000 },
> +			{ 0 },
> +			{ 0 },
> +			{ 0, 80000000 },
> +			{ 300000000, 400000000 },
> +			{ 400000000 },
> +			{ 0 },
> +		},
> +		.reg = { "vfe0" },
> +		.interrupt = { "vfe0" },
> +		.vfe = {
> +			.line_num = 3,
> +			.is_lite = false,
> +			.has_pd = false,
> +			.pd_name = NULL,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE1 */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe1", "vfe1", "vfe1_fast_ahb",
> +			   "cpas_ahb", "gcc_axi_hf", "gcc_axi_sf",
> +			   "core_ahb", "cpas_fast_ahb_clk", "camnoc_axi",
> +			   "icp_ahb"},
> +		.clock_rate = {
> +			{ 0 },
> +			{ 480000000 },
> +			{ 300000000, 400000000 },
> +			{ 300000000, 400000000 },
> +			{ 0 },
> +			{ 0 },
> +			{ 0, 80000000 },
> +			{ 300000000, 400000000 },
> +			{ 400000000 },
> +			{ 0 },
> +		},
> +		.reg = { "vfe1" },
> +		.interrupt = { "vfe1" },
> +		.vfe = {
> +			.line_num = 3,
> +			.is_lite = false,
> +			.has_pd = false,
> +			.pd_name = NULL,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE2 (lite) */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe_lite", "vfe_lite_ahb",
> +			   "vfe_lite_csid", "vfe_lite_cphy_rx",
> +			   "vfe_lite"},
> +		.clock_rate = {
> +			{ 0, 0, 0, 0  },
> +			{ 300000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 480000000, 600000000, 600000000, 600000000 },
> +		},
> +		.reg = { "vfe_lite0" },
> +		.interrupt = { "vfe_lite0" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = true,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE3 (lite) */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe_lite", "vfe_lite_ahb",
> +			   "vfe_lite_csid", "vfe_lite_cphy_rx",
> +			   "vfe_lite"},
> +		.clock_rate = {
> +			{ 0, 0, 0, 0  },
> +			{ 300000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 480000000, 600000000, 600000000, 600000000 },
> +		},
> +		.reg = { "vfe_lite1" },
> +		.interrupt = { "vfe_lite1" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = true,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE4 (lite) */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe_lite", "vfe_lite_ahb",
> +			   "vfe_lite_csid", "vfe_lite_cphy_rx",
> +			   "vfe_lite"},
> +		.clock_rate = {
> +			{ 0, 0, 0, 0  },
> +			{ 300000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 480000000, 600000000, 600000000, 600000000 },
> +		},
> +		.reg = { "vfe_lite2" },
> +		.interrupt = { "vfe_lite2" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = true,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE5 (lite) */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe_lite", "vfe_lite_ahb",
> +			   "vfe_lite_csid", "vfe_lite_cphy_rx",
> +			   "vfe_lite"},
> +		.clock_rate = {
> +			{ 0, 0, 0, 0  },
> +			{ 300000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 480000000, 600000000, 600000000, 600000000 },
> +		},
> +		.reg = { "vfe_lite3" },
> +		.interrupt = { "vfe_lite3" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = true,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +	/* VFE6 (lite) */
> +	{
> +		.regulators = {},
> +		.clock = { "cpas_vfe_lite", "vfe_lite_ahb",
> +			   "vfe_lite_csid", "vfe_lite_cphy_rx",
> +			   "vfe_lite"},
> +		.clock_rate = {
> +			{ 0, 0, 0, 0  },
> +			{ 300000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 400000000, 400000000, 400000000, 400000000 },
> +			{ 480000000, 600000000, 600000000, 600000000 },
> +		},
> +		.reg = { "vfe_lite4" },
> +		.interrupt = { "vfe_lite4" },
> +		.vfe = {
> +			.line_num = 4,
> +			.is_lite = true,
> +			.hw_ops = &vfe_ops_gen3,
> +			.formats_rdi = &vfe_formats_rdi_845,
> +			.formats_pix = &vfe_formats_pix_845
> +		}
> +	},
> +};
> +
>   static const struct camss_subdev_resources csiphy_res_8775p[] = {
>   	/* CSIPHY0 */
>   	{

This generally looks fine. Please have a look at your pretty extensive 
list of clocks and decide if you really need all of them.

I'll trust you to come back with the appropriate list, perhaps even the 
list above.



