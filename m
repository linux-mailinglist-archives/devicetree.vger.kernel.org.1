Return-Path: <devicetree+bounces-200220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9F9B13CC4
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 16:17:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7AB287A9808
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 14:15:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 438D726D4F9;
	Mon, 28 Jul 2025 14:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EOE6eT/f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E2026B76C
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 14:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753712224; cv=none; b=DhelcQq0SngO50ON1opMyuYRTdYmn7c6M6yhF4f/XTcEpad/Ey29w5nSvNzEShZ9P/byrSqenJV7XL/gdNRD6naOBB+jG9Wv9F3Qis1Zesazrt/xU9kSkq/Ptd5Z371OhPyr3QgyxjXoLnNnSl4NqVGztHX0mS156zuZ0VwVJgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753712224; c=relaxed/simple;
	bh=oWZus/PApRRgGlXeH2+7LZZRDLYzvND/nR+5+yr2zkU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZHtCpLdlflokNA5V0TksJsjiz1qnPzGx0GfAGtUxuRla+BhHwdLCBP90sXOCqaglZ/qxI9WdW/nDafTICAArRz+EyH5HpgmPHOySza/x49tGldvMnU3ccQFlRueCDsui7KgM2vsMIx11WVVcio6GKi5q+P9QWIhjXWzV3ewxf2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EOE6eT/f; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6152faff57eso2153840a12.1
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 07:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753712220; x=1754317020; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9zOZIuYmUiChxW6T4ALeyJXTvfsAOgbBQ0gteD/iBsA=;
        b=EOE6eT/fyBqwOjx5z7DVmZVUBvv7siE/bCiNQDFzjO9STyTrQTfkUe6rqpxl8h+d/G
         SfZgr/XmO1p9x5Im03OMqQIJ477Uubj9o8WQ1M9UROfB5JMYhIKVxUvZz3PZuvvdWukl
         m+gGJHJbAA4czebjpye+djobkhhmTNcaKWjfALMN/JI+jHLOC8HuwYNmGnd76ogwT1jE
         zDH3XqH75QlA/AzJY2SNGrxYIL1ecfVtTWn1L8CAnBD/nRq3VQPeCFEM2vuvmcB2ZDdQ
         4r0RkoPupE08VhFpzqMilAyt/nfpLynwgbXCDvPuvV0zmoFakGYjztTnAwZlNkcELCDn
         1O3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753712220; x=1754317020;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9zOZIuYmUiChxW6T4ALeyJXTvfsAOgbBQ0gteD/iBsA=;
        b=ogYAoyv4D5jyEJQusMSjbczhO33PGKlmFyEMJqmCr8gVzJgq8BmCI0vWcrYB5xK8UY
         5GEMiG/Xx0kz0uPfCXfYEy7hifZP8jIle8FBEcQUePCeQlLFgVstSJTMLuk2teW+BCKF
         vHFFvXxHwsPp6wX+xosifg0QZM7DJqCbzoMuPD7LJzZPD/kMvWKA0HNF0EyIcGB31LD5
         1RrydwUvfvU2FLuMqNExMHl1AmkSJmAVSAPHkX8mP+LIZgsyZ40coqVnGj1gPZQzMi5R
         OGjCwBrHM0asp/z4k6tsrUwJRMKk9AUE1+BSWU9KGJd1UM/kngwVtIxrNT7KjGaPk+zf
         T80w==
X-Forwarded-Encrypted: i=1; AJvYcCUcBEEaynl2Jps4ZPwj4FzZkIDbg/QvXHTaZrQuLEDiTfZM9i3LV7B3+XSbi9mqNxYDa7/K1rPsL4f+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1f5gqVyz3NpVl2YoS6ML7biXJkrTGapW1s900q7lRzCa1i7Wz
	nraO6KYvlB7uJH6EMOcUUho55q83PWtL2akPGlmYLf4kvg9q4nWdyT6+d80hPEv9Xks=
X-Gm-Gg: ASbGncsMyfrrg6wFAXFQQ9kdeKDFHTDtBza2w6zyjezz3oEA66/NaDJfmdJolyX6bgR
	Da8rrtAEson1W/lzFB+qddSwMTVfl0/gevKqfdOYT6vGVqO69WaUC+ti0mmn6CHT4YRqq65Fsm3
	TgvIoPz3JAUAH6c4Rt8kASzSg83IC2JjY6Qf1P1/uSjbQ6igx+13cnwCP2dycv2AM+GyKz/Ap3B
	RL/YbgguDrBMVhvXimnuJ8Ifn2egdE/NrakF7vmJwRLhQ1G1Z9Ro/Drv1VKiOz05huhbHOODTAM
	3dCTYpzx1k3LDavE4wDkHADQflcCljcfAQb0fq8M2ZQtHOyCU1BuesuE1jzYwplt7/oRSDc3oRy
	Mffbtxg8+sQSgzKlsQcLNgAuqpqxKnvUqthWHZC3W0ggYeBtBq54cHckbL2oaMio=
X-Google-Smtp-Source: AGHT+IFF2jy8/UAzO9xj1temCnYhXpEOaVAh+jtnHHRa4ju0zBuFE/o752WTnfDGbuMr36P63jZ5aw==
X-Received: by 2002:a05:6402:42c8:b0:615:4227:3b2e with SMTP id 4fb4d7f45d1cf-61542273ce2mr3339176a12.23.1753712219586;
        Mon, 28 Jul 2025 07:16:59 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6153055f5a8sm1894547a12.48.2025.07.28.07.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 07:16:59 -0700 (PDT)
Message-ID: <4cb6fd0d-ae76-4a94-bbd1-ace79633c05e@linaro.org>
Date: Mon, 28 Jul 2025 15:16:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/7] media: qcom: camss: Enumerate resources for
 QCS8300
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250711131134.215382-1-quic_vikramsa@quicinc.com>
 <20250711131134.215382-8-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250711131134.215382-8-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/07/2025 14:11, Vikram Sharma wrote:
> Enumerate csiphy, csid and vfe resources for qcs8300.
> 
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 124bb56167cd..6cd6a5116f5e 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -4569,7 +4569,14 @@ static const struct camss_resources msm8996_resources = {
>   static const struct camss_resources qcs8300_resources = {
>   	.version = CAMSS_8300,
>   	.pd_name = "top",
> +	.csiphy_res = csiphy_res_8300,
> +	.csid_res = csid_res_8300,
> +	.csid_wrapper_res = &csid_wrapper_res_qcs8300,
> +	.vfe_res = vfe_res_8300,
>   	.icc_res = icc_res_qcs8300,
> +	.csiphy_num = ARRAY_SIZE(csiphy_res_8300),
> +	.csid_num = ARRAY_SIZE(csid_res_8300),
> +	.vfe_num = ARRAY_SIZE(vfe_res_8300),
>   	.icc_path_num = ARRAY_SIZE(icc_res_qcs8300),
>   	.link_entities = camss_link_entities
>   };
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

