Return-Path: <devicetree+bounces-254400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C48B2D17C80
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:53:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B67C300E149
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:48:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7A9C387580;
	Tue, 13 Jan 2026 09:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LkWag/L4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60DC387360
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768297711; cv=none; b=lmxPiQqK6bXTt3QyDCPhVDp+zhoFH91dLPnvr8gD21zgsAcmxFiuAAnsBq8dzCDDj2NaoOnp/gmBl6MZuLj3TXlprIgKrzLSDZmwHod1qPWdNNewUM9xKkIX50LJdFIPf2wNiuWzqVyz1wo0+R9G7vkFo78b/MaBXCjBujzxHME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768297711; c=relaxed/simple;
	bh=V/o5Of18SvRD0bKbXw4V0vOAcDQ8q63HXxcM8v84mKA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Soes4+OTAoBQntBbazBua4bAdZB4Evp4CNDUCcjypFJzc5eQKUDtl4kdxkjZrBu6gu5d//3BFyBlnp6l8rAozBSYi7dbOvsTuRacybchLr18e6ow2i3ILEADrEdiLisb3KtGnEMbBtlFlaRe2PAfTxIACBPGRSykDVJW/l0g63E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LkWag/L4; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso67043815e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768297708; x=1768902508; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z2Z8ukA7DGkNaKMh98IZliPoCFBW4qyMMOnL2mucm+s=;
        b=LkWag/L4hiNvT4K8JRD4bDqe/MEbdVsbCBECkNr+ogHEqsMRY9Pe0vc4i5xIU9QdfM
         hHBSh5NRsrXAM/ApIN4zBnJ4NX+Px+nTf9oJa6pRVwohx5HF2nxhHKIKThRI3JOBlrxR
         0RJ+I4Gyd/yK24FuBKuikqtkcgcmfyChEBbsPHJM8ceG14OQg3eYlm6NMFuhssRKCh+B
         vDa6ySGevA8q9bRNVFiHH+m/cWbuiAs4u48pJbGyxQkah5387L6jaABGpAwz70Dvbc2C
         xo6OHXRAxv9v5h3dDnVp+qV0ccJDOqPzWYpRxhvuVhglib0fK5SlVSkEZ6v+nxFmg4st
         NN1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768297708; x=1768902508;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z2Z8ukA7DGkNaKMh98IZliPoCFBW4qyMMOnL2mucm+s=;
        b=Pqqv6cnZkn9SqwOFco8UyJk3k5Uqf/iSBojrlf0FL3RsWgyZz9jGUMEux5WZui5YJk
         pfBIfOMoseE3p9ymCczUbeCArVSPNQk3sNW4of/FfvY7bWeBqvj5+9ZA0szx9IO5N3qs
         pXqKw4sDC2JDf+R6BLYMlGtV50i3jf6Un5jnlTc6Ze+7t4R3lZb6cAxvXTJj9cn74DZZ
         YSC0SAuWiIXLzuHRrnDkAswexZjWxyiooYfemUhSByo7gCOoLZt22LaZbTSVQWbEewFr
         mLveezs86F/n7LB9JnrOQ1twmOllzLOOBPvzExD9gJiCifKDx+XtED4h4DmRxzEjEbpf
         Vr9w==
X-Forwarded-Encrypted: i=1; AJvYcCWU+DQNFh1G1+ofsiDRALLKJtOB2bn3Uha+xBNeG/0Q2wsTL1XLYmLeWfhLZU6FXFUP+q2Aoo1iz+O7@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4Anss8AOJ/bTrONOBXjSr4JD4y4zDk4cJ3g35Mk5MQZaCfD+s
	f7T8DzpJJLZzaV7RriICJL3ce+YWVpcYK63kmaB0f1EoxnA0LfDrVVoxbpeeoooijys=
X-Gm-Gg: AY/fxX4NFR0CFS73mpjHz3vJ7JACelTG55gS/ird6wuRHuErpYiY+ot1piQtQ/dRVSN
	57PqOZlxK+hgfYd0LSMXpqodgHAtLr7ssUWfa5NP2tU4/THR50fl/VWvTi15dIkT1gjMiLrDzqb
	ja/C61KvRlnDb/sfWbpTTQxSQeKRmmZ/aQN4IN/B7G8BeD9MK9kRVK/fMJnFRWaoQRzc64Ia8DV
	7WClAV0AXDgvsr5XziRIYHw9tSUFNr8fKNTvIsgaRny1stImuNViRnGEXaf8wCLOGBUvTsorWv7
	r3gfsCFjYLP0nHbEz2JrjMnxFzRBokTeugvFh68sh0UF3bUsLPHVatyi74Ibc6O+oqq18F3okJf
	gXdMKY8SUVZ9sCqrhDiJtJwM6H/QaTPcPe/LnOMwIzhMk43Q96c9oP+uIm/QaKZgHYgfWtGFY/c
	aZRbRE1YxtVLBT43D1p5O+U/swuVV4KHovsLEOzuM=
X-Google-Smtp-Source: AGHT+IGumc07cnvuvZdEsZ8TB8xHT4uCRSU/r+hnR+gIj1yD1e6AC+ygZlvF1UnDCBE3zqYLhlTRvQ==
X-Received: by 2002:a05:6000:22c7:b0:430:f255:14b3 with SMTP id ffacd0b85a97d-432c379b302mr24048605f8f.43.1768297707921;
        Tue, 13 Jan 2026 01:48:27 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080::fa42:7768? ([2a01:e0a:3d9:2080::fa42:7768])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0e180csm42176801f8f.10.2026.01.13.01.48.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 01:48:27 -0800 (PST)
Message-ID: <bfe55d1b-1b45-4187-84fe-9475cb90b00a@linaro.org>
Date: Tue, 13 Jan 2026 10:48:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] needsreview! arm64: dts: qcom: sdm845: Add missing MDSS
 reset
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Petr Hodina <petr.hodina@protonmail.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org
References: <20260112-mdss-reset-v1-1-af7c572204d3@ixit.cz>
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
In-Reply-To: <20260112-mdss-reset-v1-1-af7c572204d3@ixit.cz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/12/26 13:33, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> If the OS does not support recovering the state left by the
> bootloader it needs a way to reset display hardware, so that it can
> start from a clean state. Add a reference to the relevant reset.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> It efficiently fixes nothing for us (at least what we're aware), so I
> assume the state left by bootloader is good enough

In fact it does even more, perhaps in your usecase you're not affected but
it permits resetting the MDSS while switching the IOMMU from bypass to translated.

In the current IOMMU implementation, there's no current way to keep the IOMMU setup
for an SID without a cut, leading to fatal IOMMU errors.

With the hypervisor enabled, some IOMMU entries are left to fallback in bypass
when switching, but in EL2 there's no fallback and the ARM SMMUv2 doesn't support
mapping _before_ attaching to a device leading to:
https://elixir.bootlin.com/linux/v6.18.4/source/drivers/iommu/iommu.c#L3046
	/*
	 * Drivers are supposed to allow mappings to be installed in a domain
	 * before device attachment, but some don't. Hack around this defect by
	 * trying again after attaching. If this happens it means the device
	 * will not continuously have the IOMMU_RESV_DIRECT map.
	 */

Sorry for the digression!

Neil

> 
> I sending this as a something "which seems right" and works for us in
> sdm845-next tree.
> 
> David
> ---
>   arch/arm64/boot/dts/qcom/sdm845.dtsi | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index bf2f9c04adba7..75c192eddc57c 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -4550,6 +4550,7 @@ mdss: display-subsystem@ae00000 {
>   			reg-names = "mdss";
>   
>   			power-domains = <&dispcc MDSS_GDSC>;
> +			resets = <&dispcc DISP_CC_MDSS_RSCC_BCR>;
>   
>   			clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
>   				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
> 
> ---
> base-commit: f417b7ffcbef7d76b0d8860518f50dae0e7e5eda
> change-id: 20260112-mdss-reset-06988f05af96
> 
> Best regards,


