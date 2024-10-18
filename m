Return-Path: <devicetree+bounces-112756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DF99A371D
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 09:27:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04D441F21E8B
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 07:27:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB5818A92B;
	Fri, 18 Oct 2024 07:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XlNpA2Sq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B98184535
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 07:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729236409; cv=none; b=gBNfVFVXHPd0o3e1/FuwDmNrsAtI2d8ATKKfudGME/EP+rSeac3uWl/CivfhJA6745Tb/VtSF4vqZaE2RxlX0sWrxxSciMeoJWedlZZSr8Zw44x7Ca7WB83AJGZyd85aCnJklBYRdrV59U0Rc4Q7VtmiwmO8oR/S0+RbUpcVU7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729236409; c=relaxed/simple;
	bh=cmX78/NjQSPOEuSFKaXzPwEemfjjqoTgsq95vgKoAHo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=gAv1Rzu6+0ugooIdFxvpgaEkefrXmz42JqKEDyDGMnibmYWYHxKTAQZiw8rBWmrOSWgMgQIWLAdPy3t5an3a6GMYg886ZRMO8YMS2Rb5KInZuNiJzSufZcHxeFy2/wcOqsffYkhFA+dreLUxPsXfJ7N0G7bBGsg8yTJoBLZsO9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XlNpA2Sq; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-37d4d1b48f3so1312569f8f.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 00:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729236405; x=1729841205; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N4jrK5q/aoXE5D0XtwRQGRgEBkDTA8rIA0t/1mpgmdw=;
        b=XlNpA2SqI8SO9dl8xk69BQLX57dJE0PXr7eZ3zad6GlE4BBzm/DhGuXUb51+e1qmPN
         fVEch8gamSQwXKRNs4cWZnnZxJ+RG+ZhjtRAtOD6ubFm/hoHxcDPskfm2zl/4SJYfjLx
         0lJr/WuWOF1cGI9xLiGt9ZxVVYHicpRMnZ0Za3d8EREAw6z7ha6Lhv1Z/3W/aoKdQjqk
         WmyPvq1Iw22OLG4MhIZTcZtS7qm2bE1f9Aqj5yYMqtr03qw504ZL+Cs52nze3hINhMqb
         o8TpJUQ4uH5DgGvnAO+TK0tq/pqAj08pt84UtSZ30HvJ+cp5ZBthgkFT7I5SXynE/MIY
         8HSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729236405; x=1729841205;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=N4jrK5q/aoXE5D0XtwRQGRgEBkDTA8rIA0t/1mpgmdw=;
        b=YDtdqkxcw5zuEIDXGxLy4+dmJkl6IqK6BLX28HVTNfvrF2VKDCwT/ACVBCpIU/rcEL
         JouAOddxbnn+LGssur8IRlO3eu2sz7O44sjLGz+FkdgZ2e/S8b3h0kNu6IWa+xwla6eX
         A38Vp9zjY+6NAqoQcbsLix3G6f8KLfOMftIr5j67D9gOyfx8i203/DpJer2tvDUQDsFj
         q88AM8Zpq80YJBWruEqORN1FbipFTnOGJifN7b7t3Q9i+9LOus8+vJzilu0wK7iK04QF
         DqeG70E4bbtfAJFTVxqoBGvqUJmHU9QfT/JLRbKkR8SHarxgNEC+222UIh8nPjD5N/ah
         I+AQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOhjC0JM4/waNtLhY5A9M42LIuzwSu9/iTg45OKIk24vvFKZNPV4TXKG9JENQS6DSpm727uJEmfAos@vger.kernel.org
X-Gm-Message-State: AOJu0YyY18il7rScD/Nu2YILtRaOtD+tChT34WAwdMvkwdj9W0X7wj5L
	gyQZVOYPmkwwOirsVTFkWM/v/FDbt1AjtCEwNh2s0b0SXDl9j5YBFr5VZbtaDu8=
X-Google-Smtp-Source: AGHT+IFp1Xwh45F5uM+TtJfoLYHz3UDcu7l16xJaAp6HqTgpd+zORaVIg7OOFyRZZPcrcetOxY8onQ==
X-Received: by 2002:a5d:4ec9:0:b0:371:8319:4dcc with SMTP id ffacd0b85a97d-37eaa48f8b5mr1101303f8f.2.1729236405059;
        Fri, 18 Oct 2024 00:26:45 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:b623:41fc:e293:c9b1? ([2a01:e0a:982:cbb0:b623:41fc:e293:c9b1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ecf027b94sm1171556f8f.2.2024.10.18.00.26.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2024 00:26:44 -0700 (PDT)
Message-ID: <f90da4ca-4f22-4158-938f-e0d3395b19df@linaro.org>
Date: Fri, 18 Oct 2024 09:26:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 13/14] clk: qcom: dispcc-sm8550: enable support for
 SAR2130P
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241017-sar2130p-clocks-v1-0-f75e740f0a8d@linaro.org>
 <20241017-sar2130p-clocks-v1-13-f75e740f0a8d@linaro.org>
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
In-Reply-To: <20241017-sar2130p-clocks-v1-13-f75e740f0a8d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/10/2024 18:57, Dmitry Baryshkov wrote:
> The display clock controller on SAR2130P is very close to the clock
> controller on SM8550 (and SM8650). Reuse existing driver to add support
> for the controller on SAR2130P.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/clk/qcom/Kconfig         |  4 ++--
>   drivers/clk/qcom/dispcc-sm8550.c | 18 ++++++++++++++++--
>   2 files changed, 18 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index 5f7bf9db76cfcef1ab18a6ba09fb4dc506695f9d..f314f26fe136c0fc1612edc0cca23c4deba5cd9f 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -968,10 +968,10 @@ config SM_DISPCC_8450
>   config SM_DISPCC_8550
>   	tristate "SM8550 Display Clock Controller"
>   	depends on ARM64 || COMPILE_TEST
> -	depends on SM_GCC_8550 || SM_GCC_8650
> +	depends on SM_GCC_8550 || SM_GCC_8650 || SAR_GCC_2130P
>   	help
>   	  Support for the display clock controller on Qualcomm Technologies, Inc
> -	  SM8550 or SM8650 devices.
> +	  SAR2130P, SM8550 or SM8650 devices.
>   	  Say Y if you want to support display devices and functionality such as
>   	  splash screen.
>   
> diff --git a/drivers/clk/qcom/dispcc-sm8550.c b/drivers/clk/qcom/dispcc-sm8550.c
> index 7f9021ca0ecb0ef743a40bed1bb3d2cbcfa23dc7..e41d4104d77021cae6438886bcb7015469d86a9f 100644
> --- a/drivers/clk/qcom/dispcc-sm8550.c
> +++ b/drivers/clk/qcom/dispcc-sm8550.c
> @@ -75,7 +75,7 @@ static struct pll_vco lucid_ole_vco[] = {
>   	{ 249600000, 2000000000, 0 },
>   };
>   
> -static const struct alpha_pll_config disp_cc_pll0_config = {
> +static struct alpha_pll_config disp_cc_pll0_config = {
>   	.l = 0xd,
>   	.alpha = 0x6492,
>   	.config_ctl_val = 0x20485699,
> @@ -106,7 +106,7 @@ static struct clk_alpha_pll disp_cc_pll0 = {
>   	},
>   };
>   
> -static const struct alpha_pll_config disp_cc_pll1_config = {
> +static struct alpha_pll_config disp_cc_pll1_config = {
>   	.l = 0x1f,
>   	.alpha = 0x4000,
>   	.config_ctl_val = 0x20485699,
> @@ -594,6 +594,13 @@ static const struct freq_tbl ftbl_disp_cc_mdss_mdp_clk_src[] = {
>   	{ }
>   };
>   
> +static const struct freq_tbl ftbl_disp_cc_mdss_mdp_clk_src_sar2130p[] = {
> +	F(200000000, P_DISP_CC_PLL0_OUT_MAIN, 3, 0, 0),
> +	F(325000000, P_DISP_CC_PLL0_OUT_MAIN, 3, 0, 0),
> +	F(514000000, P_DISP_CC_PLL0_OUT_MAIN, 3, 0, 0),
> +	{ }
> +};
> +
>   static const struct freq_tbl ftbl_disp_cc_mdss_mdp_clk_src_sm8650[] = {
>   	F(19200000, P_BI_TCXO, 1, 0, 0),
>   	F(85714286, P_DISP_CC_PLL0_OUT_MAIN, 3, 0, 0),
> @@ -1750,6 +1757,7 @@ static struct qcom_cc_desc disp_cc_sm8550_desc = {
>   };
>   
>   static const struct of_device_id disp_cc_sm8550_match_table[] = {
> +	{ .compatible = "qcom,sar2130p-dispcc" },
>   	{ .compatible = "qcom,sm8550-dispcc" },
>   	{ .compatible = "qcom,sm8650-dispcc" },
>   	{ }
> @@ -1780,6 +1788,12 @@ static int disp_cc_sm8550_probe(struct platform_device *pdev)
>   		disp_cc_mdss_mdp_clk_src.freq_tbl = ftbl_disp_cc_mdss_mdp_clk_src_sm8650;
>   		disp_cc_mdss_dptx1_usb_router_link_intf_clk.clkr.hw.init->parent_hws[0] =
>   			&disp_cc_mdss_dptx1_link_div_clk_src.clkr.hw;
> +	} else if (of_device_is_compatible(pdev->dev.of_node, "qcom,sar2130p-dispcc")) {
> +		disp_cc_pll0_config.l = 0x1f;
> +		disp_cc_pll0_config.alpha = 0x4000;
> +		disp_cc_pll0_config.user_ctl_val = 0x1;
> +		disp_cc_pll1_config.user_ctl_val = 0x1;
> +		disp_cc_mdss_mdp_clk_src.freq_tbl = ftbl_disp_cc_mdss_mdp_clk_src_sar2130p;
>   	}
>   
>   	clk_lucid_ole_pll_configure(&disp_cc_pll0, regmap, &disp_cc_pll0_config);
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

