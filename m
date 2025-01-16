Return-Path: <devicetree+bounces-138970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AB3A13687
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 10:24:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 874E83A70CF
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 09:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 753BF1D90B9;
	Thu, 16 Jan 2025 09:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WBABoPfq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC1EF1946C8
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 09:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737019480; cv=none; b=SGJHlpu4ykSJtrzPEDuis8Jc6JIBWzVmyqjsMQpW3+3Zosr757Hs2nSAlPO/L2HWiEOT8mlbVuzEa/IalLg2x8nSlZmmkYjsNoprgikGT24XSMV46RE7wWN82Rfqpw8ApefRXNRPZxg6UczAIK8Km9tCWLBQRELT+oxjy1L1+tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737019480; c=relaxed/simple;
	bh=wz/6VArm0fm4IK+UCKlCzR1Uz0mgnf9Z2nHw/aBWy9c=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Bzna1F5S/IUU4G57zS4RXhU2H+x2ODlVkJOriY8Z/y2Ny7VLvMdN2o0W5Hnax1HtgkqDtx21QRBZRwbIa83ZIUrrai6YlcPQLZTnVANhk2kd2ufm/+SZ+1m+GdUduQgDNZ6CsmLcr+4ySXnNxFUWlBhgPTMdxsWwEGyfKgYirys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WBABoPfq; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4363ae65100so6048025e9.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 01:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737019476; x=1737624276; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3lIaWSI2S+exW7AJdc9gF6v3PkwuGrMgeaYPmVrCZYI=;
        b=WBABoPfqO5GXPHk4+l212iVmfvolEeqlbvg+E2BIbuj++xJs4P9MzwkS4ZT0TPc0yl
         xiXhkcDHxk0k7+n88Df7LI4pZOGFZ0PC+W9q3c6yJw5pk7uYoBFryud5pwc1G3s44g+0
         zWlYhjKrgOqkJCS8gKL8TlCmaMmSvXPKZAAxmtrNYWD8yfEyMjKXzY7PURZpMsjDFd7O
         RnNyhSelOr3BgWcRoHBRZabvpUxMIswiSOLKUZva7EgCTAyBDROjIPv9AYPZPSNrebLF
         wp7wmwxcsBUcTcuAe0ROb4KGYYQ9knTqy0NMmyzY95OxtuEZyV3f08sMePhYHIY51XgE
         YGYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737019476; x=1737624276;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3lIaWSI2S+exW7AJdc9gF6v3PkwuGrMgeaYPmVrCZYI=;
        b=NEoZtDb/3dtBQj/CSHntuWqv/Ntm89J7ia96aYNq5LAC8h5VsycXfqB/KkV4JiBqIF
         euWfGUEX74iVnbksxIOi9BAr3migVCpGI0Mo5dop7F8nOJ175Q4r1NoNH1A0P8I2L4EI
         egYUGXqoNfWwnqy76U2vlaCRpKmhabswsPx9lCNCpSIxUDppf0mO4bZhmWcaCXdxs9Ho
         tsNlsFHHljjFdL0KTIWkRHynW6yb0VEE7u8jHm0sHG8tjOHBNVPbrvzuRlz0YsHJr0In
         qWXpvXbdgLafUYr2L3T8IhTIPKPCxO96i2hTkEMnPsTBKgIaUfGUxyf1K4NdArQM9jUW
         v5hg==
X-Forwarded-Encrypted: i=1; AJvYcCVs2shOiTYT6Cltu2HhVD9HhhMVCQDD1Wb/OqpPdttp6sAKsrkZk9g/LihVEg0Fsk/Bk3RKSqOk/MHB@vger.kernel.org
X-Gm-Message-State: AOJu0YwYkRbnar2rjWaSGev2jjSQUKLZ3yJkMPYj9OVrrwoHVduFInUl
	GDGEmz2uiGhrNR+H6XjWXhr7ib+o9/Ww3FCV54OTvavjbvF5/Xyhb6zflfUXisI=
X-Gm-Gg: ASbGnctw1MAokXP2+uOwxb6FCTbr5x9BjSPa7MLkZPnzl6iAG4d3EqVZ22v+emdW7B/
	RXH1T3Ou5NI1SErJnH5lPn7jpxAUveMZ6FKGoW8bJ8n9R7kUawWG25bVSDChHteOy3yCTGTTqEZ
	VnOB/X584hJditYWuyv+XE15YS4H+X3833HWIG6qww64lGNe9EtnUeuU52Knsj5FjfDwCRh53eM
	ll03uDOzPyWfdNFbarJGaON8yIFS2FAbMNU5kYjJmX9OwqxqUq1kjZZRTeseJrMbIaQBv3wJUr8
	QCImInaW1aDyVxOfGkCd2TCadfBOitU=
X-Google-Smtp-Source: AGHT+IFEgF8BZ/mYTGL6mOSmrxd/cLDyZc/Tv7cZxz3UDZhV9tkkfFiLKZQrO9BAMPcCteDuw4L/HA==
X-Received: by 2002:a05:600c:1987:b0:434:fddf:5c0c with SMTP id 5b1f17b1804b1-436e2679e05mr308050335e9.4.1737019476004;
        Thu, 16 Jan 2025 01:24:36 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:69b:c51f:3072:d4f5? ([2a01:e0a:982:cbb0:69b:c51f:3072:d4f5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c753c617sm52784235e9.37.2025.01.16.01.24.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2025 01:24:35 -0800 (PST)
Message-ID: <e61d05d3-eb9d-4b58-8a56-43263c58f513@linaro.org>
Date: Thu, 16 Jan 2025 10:24:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 8/8] ARM: dts: msm: Use Operation Points V2 for UFS on
 SM8650
To: Ziqi Chen <quic_ziqichen@quicinc.com>, quic_cang@quicinc.com,
 bvanassche@acm.org, mani@kernel.org, beanhuo@micron.com,
 avri.altman@wdc.com, junwoo80.lee@samsung.com, martin.petersen@oracle.com,
 quic_nguyenb@quicinc.com, quic_nitirawa@quicinc.com,
 quic_rampraka@quicinc.com
Cc: linux-scsi@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20250116091150.1167739-1-quic_ziqichen@quicinc.com>
 <20250116091150.1167739-9-quic_ziqichen@quicinc.com>
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
In-Reply-To: <20250116091150.1167739-9-quic_ziqichen@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 16/01/2025 10:11, Ziqi Chen wrote:
> Use Operation Points V2 for UFS on SM8650 so that multi-level
> clock/gear scaling can be possible.


I've already sent a similar one at https://lore.kernel.org/all/20250115-topic-sm8x50-upstream-dt-icc-update-v1-10-eaa8b10e2af7@linaro.org/

Neil

> 
> Co-developed-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Ziqi Chen <quic_ziqichen@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 51 +++++++++++++++++++++++-----
>   1 file changed, 43 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 01ac3769ffa6..5466f1217f64 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -2557,18 +2557,11 @@ ufs_mem_hc: ufs@1d84000 {
>   				      "tx_lane0_sync_clk",
>   				      "rx_lane0_sync_clk",
>   				      "rx_lane1_sync_clk";
> -			freq-table-hz = <100000000 403000000>,
> -					<0 0>,
> -					<0 0>,
> -					<100000000 403000000>,
> -					<100000000 403000000>,
> -					<0 0>,
> -					<0 0>,
> -					<0 0>;
>   
>   			resets = <&gcc GCC_UFS_PHY_BCR>;
>   			reset-names = "rst";
>   
> +			operating-points-v2 = <&ufs_opp_table>;
>   			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
>   					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>   					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> @@ -2590,6 +2583,48 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>   			#reset-cells = <1>;
>   
>   			status = "disabled";
> +
> +			ufs_opp_table: opp-table {
> +					   compatible = "operating-points-v2";
> +					   // LOW_SVS
> +					   opp-100000000 {
> +							   opp-hz = /bits/ 64 <100000000>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <100000000>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <0>;
> +							   required-opps = <&rpmhpd_opp_low_svs>;
> +					   };
> +
> +					   // SVS
> +					   opp-201500000 {
> +							   opp-hz = /bits/ 64 <201500000>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <201500000>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <0>;
> +							   required-opps = <&rpmhpd_opp_svs>;
> +					   };
> +
> +					   // NOM/TURBO
> +					   opp-403000000 {
> +							   opp-hz = /bits/ 64 <403000000>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <403000000>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <0>,
> +									   /bits/ 64 <0>;
> +							   required-opps = <&rpmhpd_opp_nom>;
> +					   };
> +			   };
>   		};
>   
>   		ice: crypto@1d88000 {


