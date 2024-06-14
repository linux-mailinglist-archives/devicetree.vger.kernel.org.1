Return-Path: <devicetree+bounces-75805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DA1908B15
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 13:55:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D13A11C214BE
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 11:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A0CD195B16;
	Fri, 14 Jun 2024 11:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sjP0PW25"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786FD14831C
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 11:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718366098; cv=none; b=SncOAAw3dyWQ/UGxr979D3lnrLWxh8xiscm+wtPe2V1CBtXU4GygYPN+OSQp/7q1snBfqMIzuFRqyeTxdgxN61BpyiHAT4Ik3y31dQY3ez04J0SlM7ysHX7GKwXGn6tjwI1i2sVnC2x91sHFca6zyhgxYKOJbpE1GEn2kMM1UBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718366098; c=relaxed/simple;
	bh=85ieegY4ZRySXS0goOcJsjJNIsLcqdMgFd4zp+TpD28=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=SIfsNJCAVWXQTd63Ktkfsnx7UB/UXON5IzbBHialxPraqMBpaMKNzdoT28YZcA7hZhuupMWi31FgDzaDsQdzOIE18l5WYdlQqHXEIee0prLhaUFMNTpIriov4IjVL+h0/MFDqJ9xz0fmKFEuYD25O6Z+sbwkyT/OjzGd7mkl/eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sjP0PW25; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52c84a21c62so2390510e87.1
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 04:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718366095; x=1718970895; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o0o/KdZIsDHIfbh/VW3o1QPd/tfO5jx5iqoLGvwOSIE=;
        b=sjP0PW25cINI5JskhHj1Oq9QktgdF00VWPZes774/G2W5qe19P+6s/clittRu6fh5/
         7eD6kYjCeXAOsivSLeJ0+Mbj09cql/eQ9QKT28iqKOr0pXhaSVwtPhZkwnV8k7MuWFjr
         +k4xhdb1Lv0dvSFVFZA0+z16qbA7bdRc9v2MpKO5J14T6NvLk9em/KL4BxPoQTBdziW5
         wILZBJxhbbEZUWME8IB/JLjrruBfyd/D9E9HBwl7HORiaNvpaPlCeUcismW27EzrNSLd
         PCgJEk/JFv2AEx5+mCpVZv/4M50XMOdpOAGrt4MZL/rJ8BHa4hlRZtuKp5EoNfYDsKQb
         We0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718366095; x=1718970895;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=o0o/KdZIsDHIfbh/VW3o1QPd/tfO5jx5iqoLGvwOSIE=;
        b=KHS8v46mwgrfXcaNctUDFhiW0hZ6IBH4vdA0NW3lk88YLU7yWRWDEZqPImN+6ctKkg
         EiexgUYrqBiI1zeuTfhom8Qx6t6WpXysOsclk0RaFazrG/HF0VcFM0VL7QT5k9pRvziL
         keLZVn632Yvn73Ll+YFMZ+d8Y2hZ4DzFqH3srG2DStPTsOLQZPTRyLN5T80DMs3mdjr0
         6VbRc8tLkh6o1sXQxzJfPd77M1DSboKvGxs2Xeq53gPwMnrroFWZ+z1j3oQaVeoWwrrv
         WuOPIe+lC0rfO40LAcGDCuSR4pKPlO3kfEa2QQpwE+88ZVL7kTiPXz0hcdm3volVugnK
         5A3w==
X-Forwarded-Encrypted: i=1; AJvYcCXoAVjsQlYFax+RnWdX1+EaJUHJN1CBc73reIPLAFfoJNWfShqzjTJ1L/YOjk/u3CtZ8dbIiKBYiXoQguQ9iisVrr6B/X8oigVw/Q==
X-Gm-Message-State: AOJu0YxgZwjWPUIzycNpkIRCUbeVRzAChUEqE7CisHdPrRglvOtljZ7w
	elLxwnyhciqEy9cBLA+PBdMzGaXOWOOVgSv4bjeuMF+IWJIApomjKGIKvZodcDM=
X-Google-Smtp-Source: AGHT+IHxv1qeMP3257dqiC5avIq5cWjeVODclM9Lx4o6rgMBVqOEsym0s7vCutQ6Cth3qYltkKSn9Q==
X-Received: by 2002:a19:5f1c:0:b0:52c:1e37:92c7 with SMTP id 2adb3069b0e04-52ca6e99f9dmr1683157e87.59.1718366094477;
        Fri, 14 Jun 2024 04:54:54 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc? ([2a01:e0a:982:cbb0:261a:269e:a3a8:a2cc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f61280f6sm58530805e9.27.2024.06.14.04.54.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jun 2024 04:54:54 -0700 (PDT)
Message-ID: <14712023-8469-4084-9800-1502a7fdc8fd@linaro.org>
Date: Fri, 14 Jun 2024 13:54:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: sm8450: drop second clock name
 from clock-output-names
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 devicetree@vger.kernel.org
References: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
 <20240614-fix-pcie-phy-compat-v3-3-730d1811acf4@linaro.org>
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
In-Reply-To: <20240614-fix-pcie-phy-compat-v3-3-730d1811acf4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/06/2024 12:18, Dmitry Baryshkov wrote:
> There is no need to specify exact name for the second (AUX) output
> clock. It has never been used for the lookups based on the system
> clock name. The driver generates it on its own, in order to remain
> compatible with the older DT. Drop the clock name.
> 
> Fixes: e76862840660 ("arm64: dts: qcom: sm8450: correct pcie1 phy clocks inputs to gcc")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 1e762cc8085a..9bafb3b350ff 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -2087,7 +2087,7 @@ pcie1_phy: phy@1c0e000 {
>   				      "rchng",
>   				      "pipe";
>   
> -			clock-output-names = "pcie_1_pipe_clk", "pcie_1_phy_aux_clk";
> +			clock-output-names = "pcie_1_pipe_clk";
>   			#clock-cells = <1>;
>   
>   			#phy-cells = <0>;
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

