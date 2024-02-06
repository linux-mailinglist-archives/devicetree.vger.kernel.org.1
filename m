Return-Path: <devicetree+bounces-39243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F0784BD0A
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 19:42:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C160B23B4E
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 18:42:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6431134CC;
	Tue,  6 Feb 2024 18:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t54LG0m5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E1213FE5
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 18:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707244964; cv=none; b=sh81aulZL0vtXWJuIvl+GXXOb/t6gyu9rOi4k7ze27yUslHm3qr3wet+9R3iLOsC3nlzsmxDuUxErPxXevNvZu6OsygjAuriQ4USj5FuPNH1QnZLxz6w6OH4BkB4kD7Wq6b++covvgYRefA8Ls95TYLrhXuivgWbonGScRQt1rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707244964; c=relaxed/simple;
	bh=8MBaPabl0Bb8vU/2dLb7YtAB4T72Dtck7qdoLLQY0+g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ledKSLiZ+tz9M867Emn74s56Um2tfLhZAVRYjNSOp7rHCUgo518iLr12ALRC+SYCaFsiai8+Q8ApUxbQKJ8qK/luaARgcDxSYXHGd08qQ0UCpfOti+X361hckVwlAWZE0/iYv+GZPpqrzUycrwyxpYsdGq+NTRdZpMvcoW03Zsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t54LG0m5; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-55ad2a47b7aso7695745a12.3
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 10:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707244960; x=1707849760; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CV/6DGRY7F0B4TiYPGlbuRxOZltTnz6gkeLa95KIEeM=;
        b=t54LG0m5WdAqmSSKke/GmJcBc4RXgHHDPyLank6li49psSQkYIE22q0U/rHr6ybuPF
         ot+OkGmqjAZ3+qBYY8Z2efAsb3jOpwzF4ITVClCOr6CTZ5gqlD9mACgGsQr2e66pyjSA
         /unkmHXHoyPd6mCv/XDnL2+/nNBWd6C1KtKDlmUo7cB4BgWs9tuxDrqEmHDC8Q3yZGZZ
         bq2ZwZ5NOzl/ivMIF6RHhggLPsvjPXCTz4gT6qvZscCt5GPYZgGs9q1RHV7GdjUgNPPT
         D9suxhwfjesuktpNYoFJeFjlqybkb1NRgnK2UApI8fE3+UFZk+5C2TpdY+WsQPNruzxU
         xKbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707244960; x=1707849760;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CV/6DGRY7F0B4TiYPGlbuRxOZltTnz6gkeLa95KIEeM=;
        b=UuKQbEtLwXbP2MUiiy0vGy7YSp1B6zQOMuyTXNgMWMbe/8JfaLWoOVun/oVQTd1Zb5
         DeHLiu2Tv8wMT5753fuFb3FHeE6aW3/B2qf/MYWzhPvsKi9hNz01Q7HA0MoD1pUwuIet
         zJfoGV6lk8V50FlLLrRcNRH0jmWESe1627WVGpfSTCW7PXpmoRlNiu0e29IZaj05D/4X
         MJlDqsuvdJuiT28oVxjQKZ3Q/c4h9ZAocaQ4jEIj/OMji1PyfZyecuMtr66KgSN9WOgE
         DQQNPOVA7oteUPoii0GWPZfkG2/ZKNaoaXMK80AZYF2S3cD/kn184+MrVTPSdTt4oFwJ
         02Vw==
X-Gm-Message-State: AOJu0Yz7jZbsG396207dkIOZJvc0+E85WriVMTwr+hj7a0cyGOnaLcz+
	Avf7PiIUvMziQnHIRtBnl6NV72/VsB4Sw2UKgFujJ909A80FCHksWL72lFll+T8=
X-Google-Smtp-Source: AGHT+IEO0ATnE8Phd7dm6ARNRR8q9Xnd2l2uEpSzz8LWBBdkN1/vfqnnKDm/J5Q61B0urpBIW1LtwA==
X-Received: by 2002:aa7:d78e:0:b0:55f:adc6:4ee7 with SMTP id s14-20020aa7d78e000000b0055fadc64ee7mr2243064edq.32.1707244960376;
        Tue, 06 Feb 2024 10:42:40 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUnD00nltNonygXyK4VjlYfQI+kO3r01XnKjIC2YQ35vpxeaaqhosToIo0p1nJcWMJ7kUjlYFJfwbByUYcCzIFN40pWSLjanhUj/TwK8BTqm427FdW2sXP8bK++oIAUNhcH7xXJXGZsLj+RA7OXeuiVtdvPdiIFztPohGDWyxgwQJ41D5acC7GfylOU/f30o9UpWtb5VkdW5qOAYjP2aJfqoH+anym/vL5Ixsg8JV2dPUnWFELmluUyRMsimlJ/uK++SVVupCSXbNG83EEsVnZdj5qXnz/oKAEOSSAzsNs=
Received: from [192.168.192.207] (037008245233.garwolin.vectranet.pl. [37.8.245.233])
        by smtp.gmail.com with ESMTPSA id k10-20020aa7d8ca000000b0056007548c9csm1283846eds.48.2024.02.06.10.42.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 10:42:40 -0800 (PST)
Message-ID: <1ca4d384-9df4-4c00-a4c9-0c5ff491616e@linaro.org>
Date: Tue, 6 Feb 2024 19:42:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] soc: qcom: llcc: Add regmap for Broadcast_AND
 region
To: Unnathi Chalicheemala <quic_uchalich@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <cover.1707202761.git.quic_uchalich@quicinc.com>
 <169277f53affed98ef41e5a7cbf2401fe62716bd.1707202761.git.quic_uchalich@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <169277f53affed98ef41e5a7cbf2401fe62716bd.1707202761.git.quic_uchalich@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6.02.2024 08:15, Unnathi Chalicheemala wrote:
> Define new regmap structure for Broadcast_AND region and initialize
> regmap for Broadcast_AND region when HW block version
> is greater than 4.1 for backwards compatibility.

Are they actually separate regions and not a single contiguous one?

> 
> Switch from broadcast_OR to broadcast_AND region for checking
> status bit 1 as Broadcast_OR region checks only for bit 0.
> 
> Signed-off-by: Unnathi Chalicheemala <quic_uchalich@quicinc.com>
> ---
>  drivers/soc/qcom/llcc-qcom.c       | 22 +++++++++++++++++++---
>  include/linux/soc/qcom/llcc-qcom.h |  4 +++-
>  2 files changed, 22 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
> index 4ca88eaebf06..fbd2542cd4c5 100644
> --- a/drivers/soc/qcom/llcc-qcom.c
> +++ b/drivers/soc/qcom/llcc-qcom.c
> @@ -849,9 +849,14 @@ static int llcc_update_act_ctrl(u32 sid,
>  		return ret;
>  
>  	if (drv_data->version >= LLCC_VERSION_4_1_0_0) {
> -		ret = regmap_read_poll_timeout(drv_data->bcast_regmap, status_reg,
> -				      slice_status, (slice_status & ACT_COMPLETE),
> -				      0, LLCC_STATUS_READ_DELAY);
> +		if (!drv_data->bcast_and_regmap)
> +			ret = regmap_read_poll_timeout(drv_data->bcast_regmap, status_reg,
> +					slice_status, (slice_status & ACT_COMPLETE),
> +					0, LLCC_STATUS_READ_DELAY);
> +		else
> +			ret = regmap_read_poll_timeout(drv_data->bcast_and_regmap, status_reg,
> +					slice_status, (slice_status & ACT_COMPLETE),
> +					0, LLCC_STATUS_READ_DELAY);

struct regmap *regmap = drv_data->bcast_and_regmap ?: bcast_regmap;

?

> +	if (drv_data->version >= LLCC_VERSION_4_1_0_0) {

This check is rather redundant.. If there's no such region in hardware,
it won't be described, and as such the _get()s will return some sort
of an error.

Might as well make it a comment that it's intended for >=v4.1 and
definitely leave a comment for the next guy that there's a backwards
compatibility quirk involved..

Konrad

