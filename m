Return-Path: <devicetree+bounces-154124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF24A4EEDC
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 21:54:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7F37D7A4EA4
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 20:53:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43499266B69;
	Tue,  4 Mar 2025 20:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PXfdPzfE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D161C84D7
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 20:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741121683; cv=none; b=G7BrhXkc71UX5HMyAVIdiS7DH9THvBa4Sp4v/5+T5Jbwc8Vm/EKJBsjhV9hHbF7ap0MZzzYGqcz3Vj/UjptYCy7E2vR2iRPF0PB/RMFbPFKCE3uDlYbj9WF8DVUrw4eXNiTNCtsTtJ0Uz6mW/78LNsneVJYJ4xLRRJB9L34o2Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741121683; c=relaxed/simple;
	bh=4YVqOK61xx6ybzPmoW75jTuHGNHJK+27NwkAqvhAD7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sTM4VBaVj9ESu1n2q/vVHuPyDMOHXoexhFfX4iH0KQq/ZIuMJ5IdXX4O/lsrrxSjPscOezV08qidTsAFi7F6+D2bPbrlG0dIWWB9hcoZIBPGZBodc3nEhcMj7o/Tv6KxZVybkZ94ZFE/dWa0D6aqW8z2B6v343tSqyaYW4q9ABA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PXfdPzfE; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5495c63bdc0so3869339e87.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 12:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741121678; x=1741726478; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9S5RcvtMlSmmNkHaVMZQhGkdtEWYN039+ylDnNnTkA0=;
        b=PXfdPzfEz5oyl/Zm1pzTWlGTkVCgtjFUg8033Wy+ssHglM59MtmLTEHb/Kjs0Ibarj
         CNAewORfeXspv8f0UqPMOPWxoDpzds2RIZ+bvkhfmYTyfSNWKg88yh9Tqx/4zX6KfZCZ
         aMPM0jcCxlHVSPY/XKnvT0GrP8dP4nZHbilln40O9OM87Sh5ZLTeqsZylEKULYjaO5AB
         7H1hM3gDUig3JldDvUU267DKB55nS1+QqgrFth9CEEiygZCuP4pMLPmuOiA644DsgEp8
         HMBvQ9Wq+9SDG9fEwg10hTZodsI+2CaaNlL3yn6C+imzXjupAhaoplz2KaoE9qsCGJr0
         FAwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741121678; x=1741726478;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9S5RcvtMlSmmNkHaVMZQhGkdtEWYN039+ylDnNnTkA0=;
        b=NyQvWUdh9Bqe/Wem+NPXnOhoQYDLsZzBFYN1yhZtBrU6oBrGWsB1p3zQjZATp08ZJ2
         kEJ+ABJyVITFKGTb9iQ+zpz9z7WT8bBOI6JBYjNVwcjgN72A6eI9ve36Pl8Sc4ezxrOl
         7p1ua6DdcAu+JVFU1aOh2WcU8jDHPRhcdZi0FtG9/DYFptjEEuJtL/U8LT2IgxpKbhbU
         Daq2BfLxfTMKxay9fIW42HegeDtwQOigYpbv+VJNOs1QIpQm/O6rZngdHoF7toWBuTpg
         H9bRlC+zxj/Fu9HYFHmtlMBmHl0bVRe+phATYfKpjPMpshpI7hHuRLvpQGmxQTvu+yak
         e08A==
X-Forwarded-Encrypted: i=1; AJvYcCXpGbjR2WSyiXUJi4mgSTF75xWg4NIXxH9r+LDwuBiy/S7TtW1OwNuFmq8EQIyieMMjWIOSc7OaP5Iq@vger.kernel.org
X-Gm-Message-State: AOJu0YxkAStclzPxiB5OXq2Cg43QY1u+ayfFRl8dGOjOZ+iC4fZeVsJE
	UESeVtegtx4uuOgsIvJi3SIyH3HifxaX+jNK128tWIqRvTy9KuRwBNak7Mg1YD0=
X-Gm-Gg: ASbGnctQ3dGiyFn9T+aBqAxAWLRn8h/dgr4MFJ/H2E5osRdS6aCY6XEt92Z63UszOWW
	BkqZmFpG2m8dWHqo4ACtbPIW/0L8phSWvg4+TciSxBCWSDZ2e7xWBjrQY0DfZXMQE5Qb7lXTe2H
	U0f1o7WyvVv/kHX0YWENW4bt1784ZSf2FPlOeBMSp32nf32ZE6oRGYF+sz6me9nhm4Z/MjMhLEU
	SpCAfNrSR5GfE1TL0Fqwe21NScWiF/lg9a0VvA3NO8QQym+JOHmZgw1Nzq5oFppja8b6Dbhg1vV
	OH450seNB2YGU8LcFASWhZQrAS0PpZ23mVGElBUY2MpnM0Ifg8vcdWE5kAYC+ZWeOuSy33qzFGI
	2NR7LLyeRyErPZkJNhhvh0Dgy
X-Google-Smtp-Source: AGHT+IF3JoZTickLvOwPVXpKhIHGvL/BsrsLrH9J55lj1fNWZZWbbOx5aHG2lsArXNVAi8obot0l4g==
X-Received: by 2002:a05:6512:2809:b0:545:2776:8529 with SMTP id 2adb3069b0e04-5497d32f42dmr166318e87.5.1741121677871;
        Tue, 04 Mar 2025 12:54:37 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5495d268a42sm992081e87.175.2025.03.04.12.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 12:54:36 -0800 (PST)
Date: Tue, 4 Mar 2025 22:54:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
	Vikash Garodia <quic_vgarodia@quicinc.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH 6/8] media: venus: core: Add SC8280XP resource struct
Message-ID: <6pe6kcz2vnxqnrrb2xtan5edtxslqzfpk2ccxg64rpc77lcrd7@rgxqeoldurjv>
References: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
 <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-6-279c7ea55493@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-6-279c7ea55493@linaro.org>

On Tue, Mar 04, 2025 at 01:07:12PM +0000, Bryan O'Donoghue wrote:
> From: Konrad Dybcio <konradybcio@kernel.org>
> 
> Add SC8280XP configuration data and related compatible.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Link: https://lore.kernel.org/r/20230731-topic-8280_venus-v1-6-8c8bbe1983a5@linaro.org
> [ johan: rebase on 6.9-rc1; convert vcodec_pmdomains ]
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> [ bod: added static video encoder/decoder desciptors ]
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  drivers/media/platform/qcom/venus/core.c | 47 ++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
> index dbce635f9fa45..3d23a5919462d 100644
> --- a/drivers/media/platform/qcom/venus/core.c
> +++ b/drivers/media/platform/qcom/venus/core.c
> @@ -1116,6 +1116,52 @@ static const struct venus_resources sc7280_res = {
>  	.enc_nodename = "video-encoder",
>  };
>  
> +static const struct freq_tbl sc8280xp_freq_table[] = {
> +	{ 0, 239999999 },
> +	{ 0, 338000000 },
> +	{ 0, 366000000 },
> +	{ 0, 444000000 },
> +	{ 0, 533000000 },
> +	{ 0, 560000000 },
> +};
> +
> +static const struct venus_resources sc8280xp_res = {
> +	.freq_tbl = sc8280xp_freq_table,
> +	.freq_tbl_size = ARRAY_SIZE(sc8280xp_freq_table),
> +	.reg_tbl = sm8350_reg_preset,
> +	.reg_tbl_size = ARRAY_SIZE(sm8350_reg_preset),
> +	.bw_tbl_enc = sm8250_bw_table_enc,
> +	.bw_tbl_enc_size = ARRAY_SIZE(sm8250_bw_table_enc),
> +	.bw_tbl_dec = sm8250_bw_table_dec,
> +	.bw_tbl_dec_size = ARRAY_SIZE(sm8250_bw_table_dec),
> +	.clks = { "core", "iface" },
> +	.clks_num = 2,
> +	.resets = { "core" },
> +	.resets_num = 1,
> +	.vcodec0_clks = { "vcodec0_core" },
> +	.vcodec_clks_num = 1,
> +	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
> +	.vcodec_pmdomains_num = 2,
> +	.opp_pmdomain = (const char *[]) { "mx", NULL },
> +	.vcodec_num = 1,
> +	.max_load = 7833600, /* 7680x4320@60fps */
> +	.hfi_version = HFI_VERSION_6XX,
> +	.vpu_version = VPU_VERSION_IRIS2,
> +	.num_vpp_pipes = 4,
> +	.vmem_id = VIDC_RESOURCE_NONE,
> +	.vmem_size = 0,
> +	.vmem_addr = 0,
> +	.dma_mask = GENMASK(31, 29) - 1,
> +	.cp_start = 0,
> +	.cp_size = 0x25800000,
> +	.cp_nonpixel_start = 0x1000000,
> +	.cp_nonpixel_size = 0x24800000,
> +	.fwname = "qcom/vpu-2.0/venus.mbn",

qcom/vpu/vpu20_p1.mbn

> +	.dec_nodename = "video-decoder",
> +	.enc_nodename = "video-encoder",
> +};
> +
> +
>  static const struct of_device_id venus_dt_match[] = {
>  	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res },
>  	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res },
> @@ -1125,6 +1171,7 @@ static const struct of_device_id venus_dt_match[] = {
>  	{ .compatible = "qcom,sdm845-venus-v2", .data = &sdm845_res_v2 },
>  	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res },
>  	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res },
> +	{ .compatible = "qcom,sc8280xp-venus", .data = &sc8280xp_res },
>  	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res },
>  	{ .compatible = "qcom,sm8350-venus", .data = &sm8350_res },
>  	{ }
> 
> -- 
> 2.47.2
> 

-- 
With best wishes
Dmitry

