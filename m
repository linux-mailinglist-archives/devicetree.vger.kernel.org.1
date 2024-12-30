Return-Path: <devicetree+bounces-134694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAFE9FE4F5
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 10:42:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6834D1623C0
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 09:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D0851A2C04;
	Mon, 30 Dec 2024 09:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dvHv8Qld"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2024213A88A
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 09:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735551736; cv=none; b=KiUVYHbIjb0UN3rry9zXz6wTI8YQuKpbYWBC870X+JqfuNZTiYY2DtqeucRK+4rxl3AJF3eI1sUa7QzOg5kGE+CpvkmWe5w344fTjSeBZm1+l6x0nx4bLMHydxZb10Yyt3QHUpzJer3d6ILgapJl9LiQHmRNcJOTxkc9NCyNcAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735551736; c=relaxed/simple;
	bh=wkAMKoK9eXHvisljqOh0xduQCxlWVCM79SXkoNDWUZs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=OGSoSrWsDQcOyZZcVr9LqYDRtI77iIb3eAZcxOlpl5olRuPgXXlHA0w0BFEd/psa+jz+3P+km/lTPyMXH9/4SL0ZdtWCRZPLBb9RtiDX64ha3ZFDzkjuEVIperwCQuBF74mPtPDqyh6askO6tmW+azcCSf4puX7on7E8g9j0wpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dvHv8Qld; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4361f796586so94467595e9.3
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 01:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735551732; x=1736156532; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gGIMD82EQXCe920lMZBT0vgSEL4JqCzlYEeZ1q3K4Rw=;
        b=dvHv8QldCd2g37uY6VQAPy/KlAuE1TwCcDl02pB9j/lJl0b4HRzMv7kEzVZFFuQ1X8
         7eX6kICXjPZJHtz1zA59WZkMJddUod/BcFssAhYT5NDxtUQX9t49Ybz54zdkk5kFG0JC
         ka4Pe9UpIqKGKQLVF6eIx+IpbkZv7AExp2j6KQdyjMd47q+M+hIrF0bA8VTiTZKVjRCd
         18tpK51d0clx8ss+rahblk7s6UpoHAGZ0dGnpj148Mb5R41BLET3wMfVCP9I603Qi3Pn
         C4g+AtkzPYDVFCQgwzK6RJztIEJFuGd57EsVjPITOpgtsZkan/2KAy2OfT0XqJ4RrYNy
         m0Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735551732; x=1736156532;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gGIMD82EQXCe920lMZBT0vgSEL4JqCzlYEeZ1q3K4Rw=;
        b=pJODa86H+07tturwiaTrP82DJhjhT57MwNVC2eEqSCUyuGvEWa+JzRrCJ+a/jeIYQQ
         Iw/syQDrTE+AE8qIjSOX6DksPAVz4qMNsyEOB75a0C8JwIUAdNiorcXcH34XR+PpjNV7
         Faomjjk//S360cmMkHJ/tY2F5yZ7wQWqHRJjiVIvNux9gyJZ3yhJeZRbnxlvFzplAQP3
         atK+YxWl7NUuzqH098pWXV+2dtW4ma/ZUQ5HxsS/mxRgwfa25wOfsJu9NzpKwQO+hprq
         OIEeswalzXfrkaQXM88Ru323Am79axQ4w0JdVp11SNMIX5+KGrC//Oi7I18F94sM2IDX
         Oo1w==
X-Forwarded-Encrypted: i=1; AJvYcCUYgikOHB1hPuKItoHFEFOyt5wPSJc/HxDyW+JAwnXh+TU3zEtGmUmPeISKrhsQcpe6QiS6k4MRjLNs@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfmn8dcPI2flEg54ilyV1tsQwNuzlf3uU0msJGbWJFNTX0JJZ1
	frGJann9kO5SOhoP1mu+MT6sr5DEuKuTIDYir/Sd0GubE/SplJ+eJrsVCRnvNAg=
X-Gm-Gg: ASbGncsWSX0vTQZsABB6khZEiayh7aUqhvE2BlEi5GFAM3sOT2bIwe5jam/l6i0r2fn
	e4oSFXHos0dP7niKfEFoUILi6c2tREkPL6Jy3fXMvWwuVXJf6j6IJiMP8nrbOTcE1W7+TF8/Y9f
	cMxNDQ8u9P1DcShA8q+ttfroiHVpAAVvovhdslNWErpuaMs0QgeV+/FTZ+stXam5wIcYbcaJrTx
	oB+7KUDIRsa8d67Ime70TRvrMAnEQZ6cwbR1qPKCviIa3YsF5rCePC4w5jm4+fwMzCW7NC/JJdc
	U5JSFZ+b2tYdgwGWJCregZtJiKIRFFKxzA==
X-Google-Smtp-Source: AGHT+IHBKn4a3ySWSY/uoCuvBX0ugkKYOuHtD4GkEJzkGHuDK6bAar0fJXWvVbPXYOXhtB8znXv28g==
X-Received: by 2002:a05:6000:1f87:b0:386:256c:8e59 with SMTP id ffacd0b85a97d-38a221e2757mr35807480f8f.3.1735551732484;
        Mon, 30 Dec 2024 01:42:12 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:883b:3c16:2465:ad55? ([2a01:e0a:982:cbb0:883b:3c16:2465:ad55])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c89e357sm30390424f8f.72.2024.12.30.01.42.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 01:42:12 -0800 (PST)
Message-ID: <a6106504-8b0b-4e0e-b287-7bc08a04b932@linaro.org>
Date: Mon, 30 Dec 2024 10:42:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 16/21] arm64: dts: qcom: sm8550: correct sleep clock
 frequency
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Leo Yan <leo.yan@linux.dev>, Georgi Djakov <djakov@kernel.org>,
 Shawn Guo <shawn.guo@linaro.org>, Stephan Gerhold <stephan@gerhold.net>,
 Zac Crosby <zac@squareup.com>, =?UTF-8?Q?Bastian_K=C3=B6cher?=
 <git@kchr.de>, Jeremy McNicoll <jeremymc@redhat.com>,
 Rohit Agarwal <quic_rohiagar@quicinc.com>,
 Melody Olvera <quic_molvera@quicinc.com>,
 cros-qcom-dts-watchers@chromium.org, Stephen Boyd <swboyd@chromium.org>,
 Rajendra Nayak <quic_rjendra@quicinc.com>,
 Martin Botka <martin.botka@somainline.org>,
 Jonathan Marek <jonathan@marek.ca>, Vinod Koul <vkoul@kernel.org>,
 Tengfei Fan <quic_tengfan@quicinc.com>,
 Fenglin Wu <quic_fenglinw@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
 Alexandru Marc Serdeliuc <serdeliuk@yahoo.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Sibi Sankar <quic_sibis@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Jun Nie <jun.nie@linaro.org>,
 Max Chen <mchen@squareup.com>, Vincent Knecht <vincent.knecht@mailoo.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241224-fix-board-clocks-v3-0-e9b08fbeadd3@linaro.org>
 <20241224-fix-board-clocks-v3-16-e9b08fbeadd3@linaro.org>
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
In-Reply-To: <20241224-fix-board-clocks-v3-16-e9b08fbeadd3@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/12/2024 11:17, Dmitry Baryshkov wrote:
> The SM8550 platform uses PMK8550 to provide sleep clock. According to the
> documentation, that clock has 32.7645 kHz frequency. Correct the sleep
> clock definition.
> 
> Fixes: 0b12da4e28d8 ("arm64: dts: qcom: add base AIM300 dtsi")
> Fixes: b5e25ded2721 ("arm64: dts: qcom: sm8550: add support for the SM8550-HDK board")
> Fixes: 71342fb91eae ("arm64: dts: qcom: Add base SM8550 MTP dts")
> Fixes: d228efe88469 ("arm64: dts: qcom: sm8550-qrd: add QRD8550")
> Fixes: ba2c082a401f ("arm64: dts: qcom: sm8550: Add support for Samsung Galaxy Z Fold5")
> Fixes: 39c596304e44 ("arm64: dts: qcom: Add SM8550 Xperia 1 V")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi                | 2 +-
>   arch/arm64/boot/dts/qcom/sm8550-hdk.dts                     | 2 +-
>   arch/arm64/boot/dts/qcom/sm8550-mtp.dts                     | 2 +-
>   arch/arm64/boot/dts/qcom/sm8550-qrd.dts                     | 2 +-
>   arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts             | 2 +-
>   arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts | 2 +-
>   6 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi b/arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi
> index f6960e2d466a26bec4e5c3d31ac0bf54168ca1e5..e6ac529e6b7216ac4b9e10900c5ddc9a06c9011c 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi
> @@ -367,7 +367,7 @@ &pm8550b_eusb2_repeater {
>   };
>   
>   &sleep_clk {
> -	clock-frequency = <32000>;
> +	clock-frequency = <32764>;
>   };
>   
>   &ufs_mem_hc {
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> index 01c921602605726928bcba71abd937869880ea0d..29bc1ddfc7b25f203c9f3b530610e45c44ae4fb2 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> @@ -1172,7 +1172,7 @@ &sdhc_2 {
>   };
>   
>   &sleep_clk {
> -	clock-frequency = <32000>;
> +	clock-frequency = <32764>;
>   };
>   
>   &swr0 {
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> index ab447fc252f7dd705fbe29725805bc1c146c10f9..5648ab60ba4c4bfaf5baa289969898277ee57cef 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> @@ -825,7 +825,7 @@ &sdhc_2 {
>   };
>   
>   &sleep_clk {
> -	clock-frequency = <32000>;
> +	clock-frequency = <32764>;
>   };
>   
>   &swr0 {
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> index 6052dd922ec55c65089e6b08e36c355b01bf24fa..3a6cb279130489168f8d20a6e27808647debdb41 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> @@ -1005,7 +1005,7 @@ &remoteproc_mpss {
>   };
>   
>   &sleep_clk {
> -	clock-frequency = <32000>;
> +	clock-frequency = <32764>;
>   };
>   
>   &swr0 {
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts b/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts
> index 3c5d8d26704fd925857b5ddcc6067c2b14e1403d..e8383faac576a2f401fff74231a764712c832291 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts
> @@ -565,7 +565,7 @@ &remoteproc_mpss {
>   };
>   
>   &sleep_clk {
> -	clock-frequency = <32000>;
> +	clock-frequency = <32764>;
>   };
>   
>   &tlmm {
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> index 85d487ef80a0be5c3586d9de69327abd2b64209b..d90dc7b37c4a74cbfb03c929646fda3381413084 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> @@ -722,7 +722,7 @@ &sdhc_2 {
>   };
>   
>   &sleep_clk {
> -	clock-frequency = <32000>;
> +	clock-frequency = <32764>;
>   };
>   
>   &tlmm {
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

