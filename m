Return-Path: <devicetree+bounces-63611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 294B38B5926
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 14:54:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BE521F21A26
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 12:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8CC956B69;
	Mon, 29 Apr 2024 12:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="beXvTYLh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2703B4CB57
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 12:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714395133; cv=none; b=kOdyp5pxrTqX6s4eJkTZ34860mXHqRjO4ZUzELhkzmsi/mx+T4qqVh0T1U6ls1s3QPoh75idIGF5/eAWhegru1p9eGLMslYykDg0wJHRT8Z9C9o6XaUOfZ0tVjg8dsjbU6t47HoHF340CnE+/Yq56fzCi8l/9e4Sgajq96DG91M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714395133; c=relaxed/simple;
	bh=7lbRgFPIQxBCnpdJT0ebmHKskPiCKX5emjUFiRvEJtA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=nl6kJFAy8FwrB/g6FScpHkIf14j9SeXjL0qka5Kpey2VxfCHoMT4Sa3guof+fPZZPI8nULvvNcGf8rYsju7HWhmY9o2aCgIgB81xjBPAtRGKIUwlg8nJFAeolgv+QIQDqAY9+3Nsic4IsbXLkXnKiuRcHSJ1csaiqn4D1AkvC3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=beXvTYLh; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-41b782405d5so32994465e9.2
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 05:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714395130; x=1714999930; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=81ad4FqPdXOFXNwRNhIxfIPt+h8Wtrz4rsWIYuMSywY=;
        b=beXvTYLhfKfS5EAOr+UAFuw0Uj72oXlSo+/Rx5pem+GZAzHZwqeurKAwGtgKMLxLKs
         rBwBtndkeOA1UNwgzKxLv7ZzGeYv5sfn9yQb4UzvJvlVdfCAtxR3tejyQgCI+1e5I2ix
         dFszoNjLkkcaBKOXeoRB4dlheCCupGGObt/2iHqmts9NUUypRAlxdftF4Ai5XiifDTVT
         HjnSZtg7b0rxVLQ01vKS5UBsi/yeJxzvVcjVqFbUMvxAcD9FLmecwiJ6puA9w+tCUGYM
         AKxe8+GwXr6m77HqMtzo0VxueuN1na6+DgJQ1sHQEWzkkHJGDv93aFewcKgsrg1grh78
         LzVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714395130; x=1714999930;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=81ad4FqPdXOFXNwRNhIxfIPt+h8Wtrz4rsWIYuMSywY=;
        b=ImST//92PFgvnGZPTyCjPme/l+34CxXyt77h6TdT/tbdAqz7obXxx1hpsSVhfP91Pm
         Eof1L2t9i48wTjR2XqPftGBiYRgP2z1T2TTGieNU+C7b+SVj9f6BwxM0URyB77bTVlGh
         6BXnwkDb5XKhON/efWhMnCxAcOl2h7rdY5PVk3YU88dCAxhtrbsx9c3MOwqrwYKSV95a
         REgajjmi4R9Opev40VjecHOTETqEAiinewFuxhL3I+72RM6yKgOsFUboVl15TOgHSDAD
         ufu/ZbVEvfY+tvs4eTCn8XrH9tHUySQdK6Z2rP9GF96MxGTxOf+oQeriDg0z5YdUiPn5
         wGVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbIcc+MJaBiJ7AOEGZW8WoS59V47sTMUVaOX0rRCW6n2dYzRmbk0d9RoaK9RwBvjWc3l2GeVANQPUn0EUMZeHswmghMcaUs5XCrw==
X-Gm-Message-State: AOJu0YzZsKBFe/6BFJR+uRoDL4nss3rdIaImr+rXjr9hrPh+aj6MHxik
	7N6XPvLPBVwppqKrytsgziY1bNkQJN5VZjrNVX2uXrqITdMeIXUGM2k2STlI4lM=
X-Google-Smtp-Source: AGHT+IFOPRxuHqRfeh33GhbmxDm+R/MTda18L0UeRgbusvUdJP3xLhPX9SiEJ3yvuP6kwQ9imcZQrA==
X-Received: by 2002:a05:600c:4f8e:b0:41a:fa9a:d863 with SMTP id n14-20020a05600c4f8e00b0041afa9ad863mr10318868wmq.9.1714395130525;
        Mon, 29 Apr 2024 05:52:10 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:cad:2140:d72:4b40:65fa:89e6? ([2a01:e0a:cad:2140:d72:4b40:65fa:89e6])
        by smtp.gmail.com with ESMTPSA id bg11-20020a05600c3c8b00b0041a9c3444a6sm25209788wmb.28.2024.04.29.05.52.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Apr 2024 05:52:10 -0700 (PDT)
Message-ID: <55622c35-badb-4b4c-a91f-e487d9eb8fc2@linaro.org>
Date: Mon, 29 Apr 2024 14:52:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 04/12] arm64: dts: qcom: sm8550: move USB graph to the SoC
 dtsi
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240429-usb-link-dtsi-v1-0-87c341b55cdf@linaro.org>
 <20240429-usb-link-dtsi-v1-4-87c341b55cdf@linaro.org>
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
In-Reply-To: <20240429-usb-link-dtsi-v1-4-87c341b55cdf@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/04/2024 14:43, Dmitry Baryshkov wrote:
> Move the graph connection between USB host, USB SS PHY and DP port to
> the SoC dtsi file. They are linked in hardware in this way.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8550-hdk.dts                     | 13 -------------
>   arch/arm64/boot/dts/qcom/sm8550-mtp.dts                     | 13 -------------
>   arch/arm64/boot/dts/qcom/sm8550-qrd.dts                     | 13 -------------
>   arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts |  8 --------
>   arch/arm64/boot/dts/qcom/sm8550.dtsi                        |  4 ++++
>   5 files changed, 4 insertions(+), 47 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> index 12d60a0ee095..f786d9114936 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> @@ -940,7 +940,6 @@ &mdss_dp0 {
>   };
>   
>   &mdss_dp0_out {
> -	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
>   	data-lanes = <0 1>;
>   };
>   
> @@ -1267,10 +1266,6 @@ &usb_1_dwc3_hs {
>   	remote-endpoint = <&pmic_glink_hs_in>;
>   };
>   
> -&usb_1_dwc3_ss {
> -	remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
> -};
> -
>   &usb_1_hsphy {
>   	vdd-supply = <&vreg_l1e_0p88>;
>   	vdda12-supply = <&vreg_l3e_1p2>;
> @@ -1289,18 +1284,10 @@ &usb_dp_qmpphy {
>   	status = "okay";
>   };
>   
> -&usb_dp_qmpphy_dp_in {
> -	remote-endpoint = <&mdss_dp0_out>;
> -};
> -
>   &usb_dp_qmpphy_out {
>   	remote-endpoint = <&pmic_glink_ss_in>;
>   };
>   
> -&usb_dp_qmpphy_usb_ss_in {
> -	remote-endpoint = <&usb_1_dwc3_ss>;
> -};
> -
>   &xo_board {
>   	clock-frequency = <76800000>;
>   };
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> index 3d4ad5aac70f..56800ab903a1 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> @@ -736,7 +736,6 @@ &mdss_dp0 {
>   
>   &mdss_dp0_out {
>   	data-lanes = <0 1>;
> -	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
>   };
>   
>   &pcie_1_phy_aux_clk {
> @@ -960,10 +959,6 @@ &usb_1_dwc3_hs {
>   	remote-endpoint = <&pmic_glink_hs_in>;
>   };
>   
> -&usb_1_dwc3_ss {
> -	remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
> -};
> -
>   &usb_1_hsphy {
>   	vdd-supply = <&vreg_l1e_0p88>;
>   	vdda12-supply = <&vreg_l3e_1p2>;
> @@ -982,18 +977,10 @@ &usb_dp_qmpphy {
>   	status = "okay";
>   };
>   
> -&usb_dp_qmpphy_dp_in {
> -	remote-endpoint = <&mdss_dp0_out>;
> -};
> -
>   &usb_dp_qmpphy_out {
>   	remote-endpoint = <&pmic_glink_ss_in>;
>   };
>   
> -&usb_dp_qmpphy_usb_ss_in {
> -	remote-endpoint = <&usb_1_dwc3_ss>;
> -};
> -
>   &xo_board {
>   	clock-frequency = <76800000>;
>   };
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> index 92f015017418..d0b373da39d4 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> @@ -807,7 +807,6 @@ &mdss_dp0 {
>   
>   &mdss_dp0_out {
>   	data-lanes = <0 1>;
> -	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
>   };
>   
>   &pcie_1_phy_aux_clk {
> @@ -1144,10 +1143,6 @@ &usb_1_dwc3_hs {
>   	remote-endpoint = <&pmic_glink_hs_in>;
>   };
>   
> -&usb_1_dwc3_ss {
> -	remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
> -};
> -
>   &usb_1_hsphy {
>   	vdd-supply = <&vreg_l1e_0p88>;
>   	vdda12-supply = <&vreg_l3e_1p2>;
> @@ -1166,18 +1161,10 @@ &usb_dp_qmpphy {
>   	status = "okay";
>   };
>   
> -&usb_dp_qmpphy_dp_in {
> -	remote-endpoint = <&mdss_dp0_out>;
> -};
> -
>   &usb_dp_qmpphy_out {
>   	remote-endpoint = <&redriver_ss_in>;
>   };
>   
> -&usb_dp_qmpphy_usb_ss_in {
> -	remote-endpoint = <&usb_1_dwc3_ss>;
> -};
> -
>   &xo_board {
>   	clock-frequency = <76800000>;
>   };
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> index 85e0d3d66e16..7a8d5c34e9e6 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> @@ -746,10 +746,6 @@ &usb_1_dwc3_hs {
>   	remote-endpoint = <&pmic_glink_hs_in>;
>   };
>   
> -&usb_1_dwc3_ss {
> -	remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
> -};
> -
>   &usb_1_hsphy {
>   	vdd-supply = <&pm8550vs_2_l1>;
>   	vdda12-supply = <&pm8550vs_2_l3>;
> @@ -770,10 +766,6 @@ &usb_dp_qmpphy_out {
>   	remote-endpoint = <&pmic_glink_ss_in>;
>   };
>   
> -&usb_dp_qmpphy_usb_ss_in {
> -	remote-endpoint = <&usb_1_dwc3_ss>;
> -};
> -
>   &xo_board {
>   	clock-frequency = <76800000>;
>   };
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index bc5aeb05ffc3..3ada5a30ecb7 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -2910,6 +2910,7 @@ mdss_dp0_in: endpoint {
>   					port@1 {
>   						reg = <1>;
>   						mdss_dp0_out: endpoint {
> +							remote-endpoint = <&usb_dp_qmpphy_dp_in>;
>   						};
>   					};
>   				};
> @@ -3186,6 +3187,7 @@ port@1 {
>   					reg = <1>;
>   
>   					usb_dp_qmpphy_usb_ss_in: endpoint {
> +						remote-endpoint = <&usb_1_dwc3_ss>;
>   					};
>   				};
>   
> @@ -3193,6 +3195,7 @@ port@2 {
>   					reg = <2>;
>   
>   					usb_dp_qmpphy_dp_in: endpoint {
> +						remote-endpoint = <&mdss_dp0_out>;
>   					};
>   				};
>   			};
> @@ -3280,6 +3283,7 @@ port@1 {
>   						reg = <1>;
>   
>   						usb_1_dwc3_ss: endpoint {
> +							remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
>   						};
>   					};
>   				};
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

