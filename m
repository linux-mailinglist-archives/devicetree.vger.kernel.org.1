Return-Path: <devicetree+bounces-170478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7FBA9AFD9
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 15:54:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA6B61B83697
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 13:53:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4E2A1ACEC8;
	Thu, 24 Apr 2025 13:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Udgb1KSZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91DF21A83E2
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 13:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745502739; cv=none; b=aNkqsm4eXjKZjIerAHV2+jIMyb8NR+DniKH9u5B/gRuRYkuR+NfnPJGxuxEv2p4qcexsAdKdZEqRIjMjmIz2y75oIhr5bPPtaAKZWsIeuI0vJKrke40hn9PcU9T/uVSB+MFxyOZVzbR0+6tuFuRoDzK2aEv88j5d0FOiXWs/fFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745502739; c=relaxed/simple;
	bh=rhbP5XkQ6X097qPz7EVXCKsH39vG5Wdg9pzdYO/O0W8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=IVogCVWwS9QcslCgUvMbZmtvoW/09FMpD0xz0sJaPyWtD27zfFkM+fmnO6WALt3gd/OG3ebVLhmNsjY3IK5u0O2CZtfWXofKex2BcZE6WCiXG5gY5kLzzwXxHdGgfAki1juNNKheNdBVOOb6JfsGmYpsXPK0kQj23vdkkSaWJ0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Udgb1KSZ; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-39c30d9085aso784166f8f.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745502735; x=1746107535; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=94knGJ71ZirGM0g1BU+o9ybsSO6EkD/aLUYDflsXGA0=;
        b=Udgb1KSZsgsKRnxIDXsift0+s/fWbsEJz6kXOJKl3gCWVIFJYqdyOzg9up/k7qw5vS
         rXnAG5ysnZCfuH2YrRBXbzsACEcAA3bgi9ojf98MhPyoFXLODnwJCy13yvpLYg03MXpw
         mO0aswRWyCdvTjNJ7p7Ubx3UKUvWjD6SI5q1fQq3/VxGuwtkup316ikSlSs2HywFXo7f
         ijiouTqFJl4fiMh83wGOnZ1I0+Hdk/JibUhgJRSx0Hdjhe+nzk8S14CAL044Fzh6U/90
         cWZSe+CI62l9O2/JriZzPS9AnVMSEvSgRRDF0xgmmiREIVXneW8t5C6fXKZzOjf5cdPi
         nuTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745502735; x=1746107535;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=94knGJ71ZirGM0g1BU+o9ybsSO6EkD/aLUYDflsXGA0=;
        b=fwfAa/MXsQ2rGJbUfksgP3jI1GFlWGDqC3P11AKaBJHPutz1oMeMc9feUw5OR284MA
         vncVdj4Yct5/klXxzANWZIzidQEaeBJnQtgJu8VK7cV5ePtAHP6b3CASnv+ot8rTMmhj
         V3k3oFYm13UQBsRKcFTXKt8zZ9cB/OxSG/uUX98azGWyho5f8gOyJj7mEMIyXh9vb6kp
         VfGZhUhy///C28c+I1yQZ3wGjf8ILxIrxDaUly3mmUz1cOsWLbIDQHsWKPUz0ziPrt55
         +m1CGndlLESrLtJ489gmmzwxnSI1aKv6sbvwLnZwZh4hE53+RDdTcQA1JMcvLmiNdra3
         1gcQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6cWQ4KKTk4GQGp7flsG+9oT8d34eY7f9I4r3JqlTdfEC6Sz8+ahFiFVBi+/j1vJvxLDqZlTkNeGJ8@vger.kernel.org
X-Gm-Message-State: AOJu0Yw31XDpHpsh07Ai/JeJlMfJXPnAg0LSM3QjdO5IwxH5v0tSoDH/
	qcCQSAvO1l4nYbx8kpS5JFBIzNscT9NF72gay5ffaysGqpbM4+ZAHA3E/nzHWjU=
X-Gm-Gg: ASbGncuVcHkMHJqGYAvwy7jhrAPmN4ozkV9bqohGDYf6MnipMWsL3CNt+JAxag/W0fg
	RbH44Z0dDKqKZr+4moJrGfFQ7kM0xvPqrwPpcTOsnKfL8vA6DjN2ekp91bkVsmDpa9imFf/+qq3
	69+HkMTZSVhOZP3fQnXBcRbcVkIzDx3h9sXud9e0Xepz95g24DIetWN4OQB98XAt8aHy5YaEPfz
	N3ul2ofCLPZNn61Mp/om5O++21Jbrr/FC7ychMgTiiTHHHfE+EVxgQaA6IJGirYdzD4+Y+ppxCX
	a0GMFbEu6zFlPT1w2UwL6uP98/tze+NyRMdP3g9+XEkdPzYAlLMvUwSf4LoXflA29kB3FbnGvai
	rnHLeWYPOc182OuOhag==
X-Google-Smtp-Source: AGHT+IE8bCi/1gtJ/3UiylMOikIwlsDkRI0Npi+UN1WfULrYkQGHsvlTutYB0ZzB44iY6EWcuAgz4w==
X-Received: by 2002:a05:6000:4013:b0:391:1222:b444 with SMTP id ffacd0b85a97d-3a06cf56420mr2551913f8f.20.1745502734803;
        Thu, 24 Apr 2025 06:52:14 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:a24a:bfda:f031:720d? ([2a01:e0a:3d9:2080:a24a:bfda:f031:720d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a06d4be673sm2140220f8f.23.2025.04.24.06.52.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 06:52:14 -0700 (PDT)
Message-ID: <e7aa786d-26aa-4a3d-92bf-7f14dcb79b8c@linaro.org>
Date: Thu, 24 Apr 2025 15:52:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC/WIP 4/4] arm64: dts: qcom: sm8750-mtp: Enable
 DisplayPort over USB
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Jessica Zhang <jesszhan@quicinc.com>, Abhinav Kumar
 <abhinavk@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
 <20250424-sm8750-display-dts-v1-4-6fb22ca95f38@linaro.org>
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
In-Reply-To: <20250424-sm8750-display-dts-v1-4-6fb22ca95f38@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/04/2025 15:04, Krzysztof Kozlowski wrote:
> Hook up DisplayPort parts over Type-C USB on MTP8750.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 8 ++++++++
>   arch/arm64/boot/dts/qcom/sm8750.dtsi    | 2 ++
>   2 files changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index c3470e1daa6b7f31196645759be23fb168ce8eb7..69a54ac0f85d5ae20d005a09fbf8da7d769a9c2e 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -910,6 +910,14 @@ &mdss {
>   	status = "okay";
>   };
>   
> +&mdss_dp0 {
> +	status = "okay";
> +};
> +
> +&mdss_dp0_out {
> +	data-lanes = <0 1>;
> +};
> +
>   &mdss_dsi0 {
>   	vdda-supply = <&vreg_l3g_1p2>;
>   
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 753b069cab1de636a3b1108747f300bec0f33980..b20fc5b5bdfab598fc7b9be53eef96cc16bc5985 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -2965,6 +2965,7 @@ port@1 {
>   						reg = <1>;
>   
>   						mdss_dp0_out: endpoint {
> +							remote-endpoint = <&usb_dp_qmpphy_dp_in>;
>   						};
>   					};
>   				};
> @@ -3064,6 +3065,7 @@ port@2 {
>   					reg = <2>;
>   
>   					usb_dp_qmpphy_dp_in: endpoint {
> +						remote-endpoint = <&mdss_dp0_out>;
>   					};
>   				};
>   			};
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

