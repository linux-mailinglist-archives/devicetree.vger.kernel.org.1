Return-Path: <devicetree+bounces-185765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB01AD8F6E
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 16:25:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 658823AA2F4
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 14:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16ADC1917F1;
	Fri, 13 Jun 2025 14:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cdGpqlWh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1730A18FC91
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749824442; cv=none; b=Fr8PsZiGE2/LBqvHtfoAYfxMhskjPSrFu6Q6txQm02F88JmPoXI5Setc16w02F8oP91qh3DBWEbR17pu8+dSoHZLvskZ1psEemRt8Xkte2/+0nKAkhBGs1sSwACuBdwQicoNBP0aoNUcNo92rf5ex0IcLajWTt3MZAm66Sj8fFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749824442; c=relaxed/simple;
	bh=kv1f/hNYa1plr+nIIidlV+b2spVNxEsefZHdz8jWfaA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lYtgTUf3mRLgIClSTZn/06GlNQPuURBvuR8PsKJPmjtzkgJ5rD4aiiwOcuI2uHexSS0Mq4xq2ArhAJLo9gnSZEHNxeBeIX/P36qNRSALAa88QRC6Pu0kTqmc9yHyl/4T73jLXdDhOvO8WA6TJGd/iqL9ECDVIR4EFwMCh0XUeFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cdGpqlWh; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a365a6804eso1429546f8f.3
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 07:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749824438; x=1750429238; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i4mYyZ+2tTkkCoL3k1TKqHg7lSWacSP72TFpyhWIgbk=;
        b=cdGpqlWhs4QxY2Y5nRfZyKIdS++zLpr9DaOp8VmmzNrHDbkYI18BPEU2L3hd/waaFx
         1wJcppnAAJddTIfPilNpHUyQm3x2xteyv7btSqWn/WlxeuK6x9GeDmYYz6TjO+Z/1yPY
         H+qWxIQPfGE46YUtvHV+x5wRI0zkwvtE+vPNFyzCjXb0E5MXlc9eKflSMREE+hJyA4LZ
         dv3MGcdco1qA5YsgW/mvF6HRwAq7hDz/KXRlR+MBIvs+xQtwHXDF12cx21D9xU/xs01O
         F+kaN/B7SawErRKCe4HscnutxhRLMnsr8Mz7N9Jv5yXhBglwbWgrPF9gz67ciJuQnVaK
         NhCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749824438; x=1750429238;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i4mYyZ+2tTkkCoL3k1TKqHg7lSWacSP72TFpyhWIgbk=;
        b=FIZjAyjwfIN4OsP3l8dBZaXlVpfophE/ofUQxpL7zlyv218woYURrnT5CIaGGAv+d4
         zVIq6D12NXU/xGPhQEviUYV/5cI2pQZtrY0gH4TmDswclAlti/YXPs9Oq0b7YnCiPM3c
         iT6dlJqsSwKVxZcmbP+0zDke8yH+/l0N1gqJQoTg1BVtxFxrxBx9buJ2QIysODaLNzB6
         WoagY22YoKCmjTnWbD0H5Df3QeB6fl1/aS/YQrx69mdI0HnOyPmIYmdWIqB1AD3Rmvsp
         gYfdHd08+vqe4PUSjoRrGiztfW/mLdzYXVuP2LhEtTPslrLHmZlXX1zPj7sNjuKapi9L
         xjTg==
X-Forwarded-Encrypted: i=1; AJvYcCX4HPeNYz6sAr74kJ0j3PcLBcTVGw0d7QDj7T5uxmXmMoS5Ad4fimzJecMGspftWCVL4eMQRF2w2RQK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6lS8SdwzNDiUu/Pj2hMm3xjs2eF9E1wpsKoqMHtjrfKufZTwV
	HYOca+LrTecGDjEpWB4YPgVd2RWQdH7kU0aIXVA+u8p809MXvjtNLYuEDzKrg9QTEio=
X-Gm-Gg: ASbGncsXIBAX3fHjtrFVJ0nKSOylF1j7IxzpIySdW230z83lcGERg6kAyp/jr1D7LWM
	xZzFnujLfhrgoY7TVh7Of6ZLQvrdCSR74mnZ31XeYJVOs5kKtmpAvRYk2LxbWhtGHj9fvoEFeua
	e8qCf0ev4x+ur86b+BULBaUXWU9NNiAf6cgaVXKVWO3Tdhy8DQ3+wdeok/phWKzVc3HNKBq5RF9
	NOrxqL1IkKGVHELDslPZ034JSBVVK7+YiLEZwYpdOTquSYyKL8oIwBEkNdZSAFEQRq1JMI1SCTn
	9xerX2wksNKO/F+3pZGadiNkzuxDtgYFX6PLMT0JE0R/RUgU+7sTMv0cnvMKHu6JTQcnMHrc1TG
	+1H9MKPsN3gJfd16CZYYf7EOeJTk=
X-Google-Smtp-Source: AGHT+IHKpd3gkAfLo6eOiMysNrK5s5pbt4yXFjsI7TgTM+VJCoP0aU+9dffIVA6j7xP98PniNPjEAw==
X-Received: by 2002:a05:6000:26c2:b0:3a3:652d:1638 with SMTP id ffacd0b85a97d-3a568717afemr2779241f8f.48.1749824438442;
        Fri, 13 Jun 2025 07:20:38 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a633ddsm2510693f8f.26.2025.06.13.07.20.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 07:20:38 -0700 (PDT)
Message-ID: <68d6ee51-3cd6-4e2c-8a72-6885bc33cb1a@linaro.org>
Date: Fri, 13 Jun 2025 15:20:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] media: venus: core: Add qcm2290 DT compatible and
 resource data
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
 quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 stanimir.varbanov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250613140402.3619465-6-jorge.ramirez@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250613140402.3619465-6-jorge.ramirez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/06/2025 15:04, Jorge Ramirez-Ortiz wrote:
> Add a qcm2290 compatible binding to the venus core.
> 
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> ---
>   drivers/media/platform/qcom/venus/core.c | 39 ++++++++++++++++++++++++
>   1 file changed, 39 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
> index 736ef53d988d..f1f211ca1ce2 100644
> --- a/drivers/media/platform/qcom/venus/core.c
> +++ b/drivers/media/platform/qcom/venus/core.c
> @@ -1062,6 +1062,44 @@ static const struct venus_resources sc7280_res = {
>   	.enc_nodename = "video-encoder",
>   };
>   
> +static const struct freq_tbl qcm2290_freq_table[] = {
> +	{ 352800, 240000000 },	/* 1920x1088 @ 30 + 1280x720 @ 30 */
> +	{ 244800, 133000000 },	/* 1920x1088 @ 30 */
> +};
> +
> +static const struct bw_tbl qcm2290_bw_table_dec[] = {
> +	{ 244800, 2128000, 0, 2128000, 0}, /* 1920x1088 @ 30 */
> +};
> +
> +static const struct venus_resources qcm2290_res = {
> +	.freq_tbl = qcm2290_freq_table,
> +	.freq_tbl_size = ARRAY_SIZE(qcm2290_freq_table),
> +	.bw_tbl_dec = qcm2290_bw_table_dec,
> +	.bw_tbl_dec_size = ARRAY_SIZE(qcm2290_bw_table_dec),
> +	.clks = { "core", "iface", "bus", "throttle" },
> +	.clks_num = 4,
> +	.vcodec0_clks = { "vcodec0_core", "vcodec0_bus" },
> +	.vcodec_clks_num = 2,
> +	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
> +	.vcodec_pmdomains_num = 2,
> +	.opp_pmdomain = (const char *[]) { "cx" },
> +	.vcodec_num = 1,
> +	.hfi_version = HFI_VERSION_6XX_LITE,
> +	.vpu_version = VPU_VERSION_AR50_LITE,
> +	.max_load = 352800,
> +	.num_vpp_pipes = 1,
> +	.vmem_id = VIDC_RESOURCE_NONE,
> +	.vmem_size = 0,
> +	.vmem_addr = 0,
> +	.cp_start = 0,
> +	.cp_size = 0x70800000,
> +	.cp_nonpixel_start = 0x1000000,
> +	.cp_nonpixel_size = 0x24800000,
> +	.dma_mask = 0xe0000000 - 1,
> +	.fwname = "qcom/venus-6.0/venus.mbn",
> +	.dec_nodename = "video-decoder",

No encoder - you declared one in the schema.

I think this should be:

         .dec_nodename = "video-decoder",
         .enc_nodename = "video-encoder",

> +};
> +
>   static const struct of_device_id venus_dt_match[] = {
>   	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res, },
>   	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res, },
> @@ -1072,6 +1110,7 @@ static const struct of_device_id venus_dt_match[] = {
>   	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
>   	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
>   	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res, },
> +	{ .compatible = "qcom,qcm2290-venus", .data = &qcm2290_res, },
>   	{ }
>   };
>   MODULE_DEVICE_TABLE(of, venus_dt_match);
---bod


