Return-Path: <devicetree+bounces-159022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1E9A6941A
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 16:53:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 687BA420D8A
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 15:53:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13D031B6CE0;
	Wed, 19 Mar 2025 15:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IPgVT0oM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9DE1DD526
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742399576; cv=none; b=T90mOZdAdZR7+7RSFb5q0Pi6RNoidIRcqcbe0dM+ODWpUfowHFnthA0+Wdq1RvzWF17+qF/c3NPV5cKFOQCwF7fq5hy90G1qh57uPPPI81ZynLDb2YMNULWzWo6pNlqBp4fBf8vUrl6WYQFe9gk9yrRoMqz0Io1O5rysjY3QjD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742399576; c=relaxed/simple;
	bh=O11BgruQbl+UKgDttpGfPSppdluCW3BNuYGdXOixy6k=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=bXM6movWsjbdQWWx0O+4Llf29c9S4qdiummrW6yHR3QMumQEUz18+EgPK7DoU61ZZscEi1v3PqQYd9nqw9S5V7YYjItfZxSXpQJDL9pDDSIhVd9DKOouiERINlMpOui1ezRm05EiPxZkzWtuEv0DcDEmMZUUdXzRZXseqAWckwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IPgVT0oM; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-399676b7c41so2211565f8f.3
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 08:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742399572; x=1743004372; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OtS7yrlPmvbmoIZ5I3j5iqPfhEamBd1a1pbda+O2aq4=;
        b=IPgVT0oMtKgPbVTsrimDkNKsLb44VRrLiN7gqASDcjIW3PbPPQk3uC4xw6uf1qTPcj
         CsCDWnGMevAJhuX9ScNh/vvp5WInY0VHroC1plfe6SeZ1qpr9/fWNqAnRvAWNijGBK/O
         hMI3fV7885I/sXXjwRK3yJNyBQEoN2QjDf/ZLe75KUDHLnRwvrZLzdIdMtge4Ral0Z+f
         SB9LyAcUdHNHWP/LyPgjFUbocQBKvxbfYUn9crLvk5QWJvvfntbqP7P7f7GxizKuYO63
         JoCv+ljsAfxHQARBxGTNsos733siiyhC46pSoXwHOE8T0oJMZuXlAh2rpHIb5vWZGvxW
         Gkcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742399572; x=1743004372;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OtS7yrlPmvbmoIZ5I3j5iqPfhEamBd1a1pbda+O2aq4=;
        b=w059xwMJuQ7qd0f7KSnQIGOLsBJ7TPd+r1P0XUubtv3m+e4I0m1b2MjurtGLG3iAgL
         JHFubH9ImMzfxPGNjYdM2mMW29UIxXHHT+mhiQvVDisfx1ZlpYGLXBxN14vcD8h15+qO
         gT3FWP3CNi9KvE3Vxjs3UjsjKlf3GbBUcM+SjjzHdZ5a0sET/NsbpJoPyStaQHtd+9eD
         g6Idr6A4odVnVjj8bqJ7nU8P+xTUiz04Ys0yu4KGUzrIJdDdCUKRaPxozqoVvG/O23Ms
         WKrDr8VIXMJQkaXXIHWotUaRM2YFTHmRQ0lz6tUH7KoP9iFyvR/O844k3mDVoIdFvJ/T
         GmLQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQSZQkFEGvj+pRqWZwYsMWFEjP2cd+2/T2gPrFgPBYT6kQwWJ+P18E1UMIVzBVZwXC0dvilCb6u/iF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5Gv6ClkaXa/GYzpvtKQRGZewNoiA7EdGhZcAb6usKrURoKg+4
	i4E0NRUoyn+8FtM6RPPqYOep2NX0nTqy1MLYJHIROxLgS2ktQJbJEeZe5reO1Yk=
X-Gm-Gg: ASbGncse3VsyWBi4nqMWY3wecQOKmCxSqK0MpkYbOUIh59UajqVzW2KlYOD2ixSvQQc
	1voltGybXTKr2TBNzcmn0Y5U2EFvzwkFlWg4odfHVbXHNpbmav145j1XD5Ol1d93Sce+KAJiDbV
	r+Y/9OmKCv+NPvcy1W2l0AOraO4nkQyOIPrKAHQBT3AjXaXQvretIKVORomBp4bu3jHfHDkq8Rp
	j+KQlGgVf8Ao/lAW1JkTHyp5Ar5/fdZUcsFVAZSAUhd2Lso9evDORxa7yj0aGO+SqAAfrHQPeJw
	lbdB5bE5WldgjeFVVbtMDP2tyWG1JDemS8+LTuE3Ty/pWVmi31H97RRzX4LTptTulbae2cqlng4
	xSUR82iK/hgQnHqPF6Q3AVg==
X-Google-Smtp-Source: AGHT+IGsoc3lhwMmNWUU7VPFLD8o2mSVAZY4GJxoMl37et8H1SS/K5nKfGy4iqKsLgIPiZmC2lFXVw==
X-Received: by 2002:a5d:5f90:0:b0:390:df75:ddc4 with SMTP id ffacd0b85a97d-39973b08eeemr3730040f8f.44.1742399572180;
        Wed, 19 Mar 2025 08:52:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f407:ab81:b45a:93e8? ([2a01:e0a:3d9:2080:f407:ab81:b45a:93e8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395c8975b34sm21539248f8f.55.2025.03.19.08.52.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Mar 2025 08:52:51 -0700 (PDT)
Message-ID: <bfba8edb-b1e9-4b9f-bf96-bcba35e0cd8f@linaro.org>
Date: Wed, 19 Mar 2025 16:52:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 4/7] usb: dwc3: core: Don't touch resets and clocks
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>,
 Saravana Kannan <saravanak@google.com>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Frank Li <Frank.li@nxp.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250318-dwc3-refactor-v5-0-90ea6e5b3ba4@oss.qualcomm.com>
 <20250318-dwc3-refactor-v5-4-90ea6e5b3ba4@oss.qualcomm.com>
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
In-Reply-To: <20250318-dwc3-refactor-v5-4-90ea6e5b3ba4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/03/2025 20:05, Bjorn Andersson wrote:
> When the core is integrated with glue, it's reasonable to assume that
> the glue driver will have to touch the IP before/after the core takes
> the hardware out and into reset. As such the glue must own these
> resources and be allowed to turn them on/off outside the core's
> handling.
> 
> Allow the platform or glue layer to indicate if the core logic for
> clocks and resets should be skipped to deal with this.
> 
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---
>   drivers/usb/dwc3/core.c | 20 +++++++++++---------
>   drivers/usb/dwc3/glue.h |  3 +++
>   2 files changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> index b428b6fc3d0a55811e2f75d33d79df4b0c67dcac..77a9848a0ac70fbe563988cecbe489130989aadc 100644
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -2198,15 +2198,17 @@ int dwc3_core_probe(const struct dwc3_probe_data *data)
>   	if (IS_ERR(dwc->usb_psy))
>   		return dev_err_probe(dev, PTR_ERR(dwc->usb_psy), "couldn't get usb power supply\n");
>   
> -	dwc->reset = devm_reset_control_array_get_optional_shared(dev);
> -	if (IS_ERR(dwc->reset)) {
> -		ret = PTR_ERR(dwc->reset);
> -		goto err_put_psy;
> -	}
> +	if (!data->ignore_clocks_and_resets) {
> +		dwc->reset = devm_reset_control_array_get_optional_shared(dev);
> +		if (IS_ERR(dwc->reset)) {
> +			ret = PTR_ERR(dwc->reset);
> +			goto err_put_psy;
> +		}
>   
> -	ret = dwc3_get_clocks(dwc);
> -	if (ret)
> -		goto err_put_psy;
> +		ret = dwc3_get_clocks(dwc);
> +		if (ret)
> +			goto err_put_psy;
> +	}
>   
>   	ret = reset_control_deassert(dwc->reset);
>   	if (ret)
> @@ -2321,7 +2323,7 @@ EXPORT_SYMBOL_GPL(dwc3_core_probe);
>   
>   static int dwc3_probe(struct platform_device *pdev)
>   {
> -	struct dwc3_probe_data probe_data;
> +	struct dwc3_probe_data probe_data = {};

This should go in the previous patch

Neil

>   	struct resource *res;
>   	struct dwc3 *dwc;
>   
> diff --git a/drivers/usb/dwc3/glue.h b/drivers/usb/dwc3/glue.h
> index e73cfc466012f07214291abe56454934ab014013..703d40c189565b1e28ae28afb8728b78f4cd2fca 100644
> --- a/drivers/usb/dwc3/glue.h
> +++ b/drivers/usb/dwc3/glue.h
> @@ -13,10 +13,13 @@
>    * dwc3_probe_data: Initialization parameters passed to dwc3_core_probe()
>    * @dwc: Reference to dwc3 context structure
>    * @res: resource for the DWC3 core mmio region
> + * @ignore_clocks_and_resets: clocks and resets defined for the device should
> + *		be ignored by the DWC3 core, as they are managed by the glue
>    */
>   struct dwc3_probe_data {
>   	struct dwc3 *dwc;
>   	struct resource *res;
> +	bool ignore_clocks_and_resets;
>   };
>   
>   int dwc3_core_probe(const struct dwc3_probe_data *data);
> 


