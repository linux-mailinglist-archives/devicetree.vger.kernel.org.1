Return-Path: <devicetree+bounces-240101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 01109C6D6C2
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:30:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 25F3F4F1A33
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D91B3254A9;
	Wed, 19 Nov 2025 08:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PB3CBKb/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10000320CA7
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763540526; cv=none; b=khQKAnXnDzPHUK+8S5W16oPWARbov3imV+Onvvcxxqk8mC0AcJFgyrjyWdrPeuHixXeHIFcrGy5FTo3HTFhk9gpDk1lZZQWR6DS7sB6Y1gS8vz6lmuE8IWZRLyXAwxDgCCVJ1apcv7IXcIiR5QKkITIV27PCdv5qmHu9CZ+a4MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763540526; c=relaxed/simple;
	bh=XmQKQMt4wHrjO/28Gu11FuM6OaOs0LzzT2cJNi0JrP8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M7Qt50m5RryBp0i7nCPv08OiyBQMLS1JFS5xPOPxm2FI4hgKcALokz+dLdorshX3TNY3xcZlBmCDNhqJPUoh2HqYDbyN4foKf2X7D2mRVCf1PDFNUOqnc5mVYiYZO8Ly3GrniVWykryEjhieh3G9Bxy6UqLVH5sLWgVN3J4sabs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PB3CBKb/; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42bb288c1bfso2716062f8f.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 00:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763540522; x=1764145322; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=prHnOWL3KZTfGMcuYs6Gvqk+F387R0tzV57ZZJJ4m2w=;
        b=PB3CBKb/fsNQmtd606CzGl0TRxYBnz6gVGoAOYcKUkXF/D5a4dIo7e7r23dvOeYoGN
         YbT7E1LOn7JCLYxV5F4LbCx4zVDW8EXms+HOdKk/29CCp+M0Wtv/yz7M/QzRGTLK+Xva
         mzEywQsJDqNqAOTCXoh85RUMSbazbKuVlE67FMmHFBdTZeRVyrthILOrsxj2U7rPdaO+
         tF0J/H5R3goVu9gffnR8u5zsJ9m42XoHeauQ/sfhD01vizYBEJYYyQ+m+//6p+eQCLqZ
         cBq+V1Du6hJBoXMSpatqHT0ps8Vwm97dlW+N/skHgR1Ff59yK47/Mug3UeUqHDI0IO66
         QEwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763540522; x=1764145322;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=prHnOWL3KZTfGMcuYs6Gvqk+F387R0tzV57ZZJJ4m2w=;
        b=pkQ0FEZUd093+uPpc1llT5614TnxI4O3Cg0Au8fxdAmajxwK0kbhj3UDRAtr+Qqb/d
         CXEMNYPgm8n8MacAiJmX2tkai35k0V6dy2wzgttLIflTbKnw9aHQioIj8hGpudLrfxMC
         9GONR8ue6W4Pu4IDucYZrIkzkp3ZdT+1Wd6rh97g7dg/Fng11xv+iLu1Fs/Y9LERzyrw
         Vt6ULu1jkaVp8is4e84tyV3WnKnWjQlhuft0r6OB3r93U03w42VnfHTuTOno7dwjE/Cp
         YaiDW6XErBJY9q2XB98CH6hOLsNO6vFxuBtPRUG/5OANyouOKmivIwRMDpsVCBDbNFCk
         jizw==
X-Forwarded-Encrypted: i=1; AJvYcCVH0DOf1nvCDU2WgHqyMHRZubvVg0Wvz04JpS9ANURehbJhlZRGzJ45vKIzEr95+O5hAws45NBmNmeJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxYe8zixEE+CP+2Dvs0DqJNxTMkxxjQ94OCjW90OnoilSRWhRK2
	LXz+MMq1N8HloP27p9x3UrbvAp0R0FjaWeYvQ0LhkzT0ncri50qpfQiS3nqfkmdwKCU=
X-Gm-Gg: ASbGncti5N0fta7CN3M93ELGzuBeOMn+k6uJlAluigIOyA0JXmRx0kceoepyh/QkJRB
	gwOOrH5JB1EJF0C+Zn0AhqwON6EB0cIbLSY4jRv53iNVZOykYIbaW+b0MIMoCyQXSIk/WoI97Vk
	cp2TwwwVt7pkguWpv84yLvhcmD4yFVIVmna6k03b6UfaP9qwAvQ6BrXUZSMcktSz5/Mecrmav/K
	SQEDYHoQjxIS0Y6aDkIZcehGr874HOvPsrA/SoaRazXDBMpUB+xBOCYXhuoNgH8SYjsKJLBO/LI
	1ASf9mKDija8qG/4+ICAgC2SbaIHOlj4dbRNHFtmdp9vW+Q0DSmah792FN+26g0qqvgwAYTFNCF
	nqdJe+4MhqSRUekMoFng7p25+NIa9Ubtw7YRO1mpmtJ6QF6RJzmhLQWlZBzf50wEikbyl5V64+K
	Hs+1eDT1J3rusAzSAEr0wvRjiwdDAF/FQLm+V17aEPARgCENz4xLNb+nLyRpuEhCLU0lRDszYE7
	A==
X-Google-Smtp-Source: AGHT+IESR3q8PRMdgehT41zzmTrRE4kFNljWLOSoMsF6eJXC2oWLRwLzbqk1zj89EkKHUL3P6S7vaw==
X-Received: by 2002:a05:6000:4210:b0:42b:40b5:e64c with SMTP id ffacd0b85a97d-42b5938ab12mr17657397f8f.30.1763540522201;
        Wed, 19 Nov 2025 00:22:02 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad? ([2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f203afsm37294740f8f.39.2025.11.19.00.22.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 00:22:01 -0800 (PST)
Message-ID: <84e53d61-ef32-4f15-aa51-132acb83c52d@linaro.org>
Date: Wed, 19 Nov 2025 09:22:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 2/3] phy: qcom: edp: Make the number of clocks flexible
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
 <20250909-phy-qcom-edp-add-missing-refclk-v3-2-4ec55a0512ab@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20250909-phy-qcom-edp-add-missing-refclk-v3-2-4ec55a0512ab@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/9/25 09:33, Abel Vesa wrote:
> On X Elite, the DP PHY needs another clock called ref, while all other
> platforms do not.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, even though this change breaks the ABI, it is
> needed in order to make the driver disables this clock along with the
> other ones, for a proper bring-down of the entire PHY.
> 
> So in order to handle these clocks on different platforms, make the driver
> get all the clocks regardless of how many there are provided.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-edp.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index f1b51018683d51df064f60440864c6031638670c..ca9bb9d70e29e1a132bd499fb9f74b5837acf45b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -103,7 +103,9 @@ struct qcom_edp {
>   
>   	struct phy_configure_opts_dp dp_opts;
>   
> -	struct clk_bulk_data clks[2];
> +	struct clk_bulk_data *clks;
> +	int num_clks;
> +
>   	struct regulator_bulk_data supplies[2];
>   
>   	bool is_edp;
> @@ -218,7 +220,7 @@ static int qcom_edp_phy_init(struct phy *phy)
>   	if (ret)
>   		return ret;
>   
> -	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> +	ret = clk_bulk_prepare_enable(edp->num_clks, edp->clks);
>   	if (ret)
>   		goto out_disable_supplies;
>   
> @@ -885,7 +887,7 @@ static int qcom_edp_phy_exit(struct phy *phy)
>   {
>   	struct qcom_edp *edp = phy_get_drvdata(phy);
>   
> -	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> +	clk_bulk_disable_unprepare(edp->num_clks, edp->clks);
>   	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
>   
>   	return 0;
> @@ -1092,11 +1094,9 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>   	if (IS_ERR(edp->pll))
>   		return PTR_ERR(edp->pll);
>   
> -	edp->clks[0].id = "aux";
> -	edp->clks[1].id = "cfg_ahb";
> -	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
> -	if (ret)
> -		return ret;
> +	edp->num_clks = devm_clk_bulk_get_all(dev, &edp->clks);
> +	if (edp->num_clks < 0)
> +		return dev_err_probe(dev, edp->num_clks, "failed to parse clocks\n");
>   
>   	edp->supplies[0].supply = "vdda-phy";
>   	edp->supplies[1].supply = "vdda-pll";
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

