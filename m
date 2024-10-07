Return-Path: <devicetree+bounces-108369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1759C992695
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 10:05:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39A731C21EB1
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 08:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6860188013;
	Mon,  7 Oct 2024 08:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dI/ChHbc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C015849C
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 08:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728288315; cv=none; b=hl9jCtREJ/FbDtUHfJll8Yx6ngmmyzRInRqTCmnenWac6PIo7Ft3M3bC6DFqipW5cCXYdQZwMDkVbIHSxFA0RCG1zOyaTnQCk1F81MeAc6uSwkdXpCoaPg6rwLZQC0w42ne38ehczVut/vN49pg5ttzF8PAUieG+e3aL9DF/F58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728288315; c=relaxed/simple;
	bh=WR3k/UWUY3JLCggtl8vM66rf4EoXPTOkmnrbj3uQQRA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=oHn3/0ozecDUkI1T9v7RRLxDNZjIlaf+WMqBn7eFrDWH+L/3Oj5SfJTtQw8EUVW8mHsbA7cUcKgzkAyFuS8TT9oYrCkUvR0HUlZnC5G0xRagVK7OTkWGQDRMUhLiptfCXD9qK58/TigzS1Eb15gewk0VQEhX7XLo4l2MUn9JkJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dI/ChHbc; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-42cb806623eso36912085e9.2
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 01:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728288311; x=1728893111; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lFnLYkKTDIXKXrJBh+inLDexXIYWE25RlyyZH2KwJVk=;
        b=dI/ChHbcnRg1D3l/4va2OcWnKd8bnS38BocV5bwjTd+09xE4srfDFh5rO6cktm3SoK
         v7nn/VLlBr4l/OCsvNau4tMrCYLPzYtP0sqwJqCbOqUKOEin7Nqkh/4wgsoP6zLDGBjZ
         Tkdkjrywlg0y7svEd3wIoCoxPimZrhmJ8j8H+cCZJUmknqJmxcbds2UnrIuHA9T287Xr
         4nHrTbFBCakQhkYXgzwmzQWt4TKjI1egyI96W/K3bfK4aJzlcdAODC/+9J3GpRiV3u0A
         v5WwTVrNeg4f+d8CRkyPDeVdk84b568nPm9Np/oi7+OAPaEUNjD6q49/6OzTK28uRkcE
         HOWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728288311; x=1728893111;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lFnLYkKTDIXKXrJBh+inLDexXIYWE25RlyyZH2KwJVk=;
        b=pg+SkM5kwQ7E9UEfjC6BfqfHf1d1hfStPJMVkfBtmSlhQEhKJQP6/fS1RxnQs4emcB
         TuZtIl2r0bohizyg9j6XWwh0nSc2imP5yr/qevUhtTXJ3Buf3C9TkSqCxE+lzZ//9gKC
         SkIXXRwK/L+wQtnUUhdcXawk/vcqq4uHbRSoPoa2wkXngnaWu+o6tR/AS8LS4pXaUOHw
         ARcxQJXzAg+tjURJytciltpfnZsKSyH0QebTJh+4H8CXynHb8+CrJc+mHeUeH7iQ5FpV
         O1vkUltFG+yM4KMYEcLxp0TCKtzC0xrpBhvUVKLePq1RRXI0nxyjigeAKKOkJX0ZSqqR
         bxfA==
X-Forwarded-Encrypted: i=1; AJvYcCWUPKQiEy0mjY+jhEk2rJJMEoNoW9/ho8tlgVgTOjEHJvME0BMZOCtu3leQ2hI1AxvTHyGREsXnVE45@vger.kernel.org
X-Gm-Message-State: AOJu0YzAILeDhJyWmNt3IY/bOaURn5UrY+n50JRFuAFgAOwHxZQXG+IW
	VhbJ/l0WHCpxQriHGt0+leM/g4pi7Wi+PAlrOMtyZJ6cSeIS1YsmFCP02AgZals=
X-Google-Smtp-Source: AGHT+IGrEjMOLjc4o6yunkgNDMMTRgj2SQizgjy4m7cuxGU924V6RRKaWDxgLmm9wPSV3NPtTWWp3w==
X-Received: by 2002:a05:600c:348d:b0:42c:b3e5:f68c with SMTP id 5b1f17b1804b1-42f8e24c884mr33582415e9.4.1728288310835;
        Mon, 07 Oct 2024 01:05:10 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:a99f:3c24:fa3b:1e7? ([2a01:e0a:982:cbb0:a99f:3c24:fa3b:1e7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f86b444a4sm84264745e9.29.2024.10.07.01.05.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2024 01:05:09 -0700 (PDT)
Message-ID: <9eb910d4-e521-4c14-8e73-8fd3d5ff9573@linaro.org>
Date: Mon, 7 Oct 2024 10:05:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 6/6] remoteproc: qcom: Enable map/unmap and SHM bridge
 support
To: Mukesh Ojha <quic_mojha@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241004212359.2263502-1-quic_mojha@quicinc.com>
 <20241004212359.2263502-7-quic_mojha@quicinc.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20241004212359.2263502-7-quic_mojha@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/10/2024 23:23, Mukesh Ojha wrote:
> For Qualcomm SoCs runnning with Qualcomm EL2 hypervisor(QHEE), IOMMU
> translation for remote processors is managed by QHEE and if the same SoC
> run under KVM, remoteproc carveout and devmem region should be IOMMU
> mapped from Linux PAS driver before remoteproc is brought up and
> unmapped once it is tear down and apart from this, SHM bridge also need
> to set up to enable memory protection on both remoteproc meta data
> memory as well as for the carveout region.
> 
> Enable the support required to run Qualcomm remoteprocs on non-QHEE
> hypervisors.
> 
> Signed-off-by: Mukesh Ojha <quic_mojha@quicinc.com>
> ---
>   drivers/remoteproc/qcom_q6v5_pas.c | 41 +++++++++++++++++++++++++++++-
>   1 file changed, 40 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> index ac339145e072..13bd13f1b989 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> @@ -122,6 +122,7 @@ struct qcom_adsp {
>   
>   	struct qcom_devmem_table *devmem;
>   	struct qcom_tzmem_area *tzmem;
> +	unsigned long sid;
>   };
>   
>   static void adsp_segment_dump(struct rproc *rproc, struct rproc_dump_segment *segment,
> @@ -310,9 +311,21 @@ static int adsp_start(struct rproc *rproc)
>   	if (ret)
>   		return ret;
>   
> +	ret = qcom_map_unmap_carveout(rproc, adsp->mem_phys, adsp->mem_size, true, true, adsp->sid);
> +	if (ret) {
> +		dev_err(adsp->dev, "iommu mapping failed, ret: %d\n", ret);
> +		goto disable_irqs;
> +	}
> +
> +	ret = qcom_map_devmem(rproc, adsp->devmem, true, adsp->sid);
> +	if (ret) {
> +		dev_err(adsp->dev, "devmem iommu mapping failed, ret: %d\n", ret);
> +		goto unmap_carveout;
> +	}
> +
>   	ret = adsp_pds_enable(adsp, adsp->proxy_pds, adsp->proxy_pd_count);
>   	if (ret < 0)
> -		goto disable_irqs;
> +		goto unmap_devmem;
>   
>   	ret = clk_prepare_enable(adsp->xo);
>   	if (ret)
> @@ -400,6 +413,10 @@ static int adsp_start(struct rproc *rproc)
>   	clk_disable_unprepare(adsp->xo);
>   disable_proxy_pds:
>   	adsp_pds_disable(adsp, adsp->proxy_pds, adsp->proxy_pd_count);
> +unmap_devmem:
> +	qcom_unmap_devmem(rproc, adsp->devmem, adsp->sid);
> +unmap_carveout:
> +	qcom_map_unmap_carveout(rproc, adsp->mem_phys, adsp->mem_size, false, true, adsp->sid);
>   disable_irqs:
>   	qcom_q6v5_unprepare(&adsp->q6v5);
>   
> @@ -445,6 +462,9 @@ static int adsp_stop(struct rproc *rproc)
>   			dev_err(adsp->dev, "failed to shutdown dtb: %d\n", ret);
>   	}
>   
> +	qcom_unmap_devmem(rproc, adsp->devmem, adsp->sid);
> +	qcom_map_unmap_carveout(rproc, adsp->mem_phys, adsp->mem_size, false, true, adsp->sid);
> +
>   	handover = qcom_q6v5_unprepare(&adsp->q6v5);
>   	if (handover)
>   		qcom_pas_handover(&adsp->q6v5);
> @@ -844,6 +864,25 @@ static int adsp_probe(struct platform_device *pdev)
>   	}
>   	platform_set_drvdata(pdev, adsp);
>   
> +	if (of_property_present(pdev->dev.of_node, "iommus")) {
> +		struct of_phandle_args args;
> +
> +		ret = of_parse_phandle_with_args(pdev->dev.of_node, "iommus", "#iommu-cells", 0, &args);
> +		if (ret < 0)
> +			return ret;
> +
> +		rproc->has_iommu = true;
> +		adsp->sid = args.args[0];
> +		of_node_put(args.np);
> +		ret = adsp_devmem_init(adsp);
> +		if (ret)
> +			return ret;

Why don't you get this table from the firmware like presumably QHEE does ?

Neil

> +
> +		adsp->pas_metadata.shm_bridge_needed = true;
> +	} else {
> +		rproc->has_iommu = false;
> +	}
> +
>   	ret = device_init_wakeup(adsp->dev, true);
>   	if (ret)
>   		goto free_rproc;


