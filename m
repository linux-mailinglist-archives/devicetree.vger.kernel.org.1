Return-Path: <devicetree+bounces-51153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DC287E53F
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 09:52:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2A4EFB20817
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 08:52:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6DD28DB3;
	Mon, 18 Mar 2024 08:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nSe6UA7H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E750028DA6
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 08:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710751950; cv=none; b=Z+il+4cQRn9GgwBY4+OiqBpCsHmG2wNIGDQzMrt3/byLwr85vgfubjlTSjxZ+r7z6i3KWQlHT8kOWpZ8g6ZmpBbfVj0tz7k81dgX7v19njQNOWQy4eaVD7Ufp8POaJ94DUVQt3HDYMtmjiqr8YCJnqu6x9Qopi2/oyDFk/5llpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710751950; c=relaxed/simple;
	bh=GUiZOljZZCQ6KLDONbeZl1yR9+RFtSZ/NilXA1E2+dU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=IXDFl1Bl2vC9uFRM1LjmMF18MHaW4XiGs9/nXsYSAzSEZMeHQy99PvWu6VO4VG8X6IxAGRuKGR2t6aLfjO2wWMYPYN2d1onI9IHT07nKot7Z/5LvidA/fY5P81MzvQ6D0kGRVVuzRO+DyJ0Wow7MGEm8wfRSQoIZCERa26DKynw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nSe6UA7H; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-33ed4d8e9edso1542572f8f.2
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 01:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710751947; x=1711356747; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i6UMWdi6YpiZ/NlXwld8jB4DogbMlixTU7wdJd6oBLQ=;
        b=nSe6UA7HonLd0Ooze21vZUWD6BFM9+Px/rSvG9Zye9v4VLSaPB6txhtxE0P2uW8Ve0
         ouTAFPvDK+MviBH0fzo8RzzGTe156JkZaF967uSQ0A92WCjTdlMpq3PeAGpZ/B86cCiN
         Cw+rZGGutBY/O1NU6RpWwKsli1TZUiUDy/1+IZ5sG8pQOuchXPVD7amv8OHK0XSIvOLu
         E7YPorWjE51GuTSPmWSPlQ2q9sClUViX82s4+ivAIeUf2qjiUvu5hQqINGuUYy5sGCaY
         aWng1j+8t9MBkW5O4SUtTkEHyZ6qiGSxi5taaQEcteDsFXLP1SyEZ+50VzdWtllZCNIW
         Am9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710751947; x=1711356747;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=i6UMWdi6YpiZ/NlXwld8jB4DogbMlixTU7wdJd6oBLQ=;
        b=bxR8vZwZaOrCPYWYqwqG6XRJJKlQXbEasUF+0TmIJkzQ7N26ElvcGdqjwEdDfYWVfj
         7nbXj+rvndPr9McQxOyAyZFLY+anqz0gB2EdDC8S3Cz1JhYk5pazw7RLHeh7YIkIW1Zg
         wURttRLFzAYM+7L8upj3vCFP72kDkNch63yjt5fdMnaK1WsN3aBAYEOdVarJ3fbTcxx7
         pa68Y4cgSFKIEu6PponJ+dzJ0+j8aMhwwEe4xntPwlu1XLClLuC0fj9+JsvTB8K+SXr+
         ljq+U2dQ2i6DroMtyw1DeAZIfFi0o7lcLSw2yXneA3enAG6r1BrfCKkl4aTZ8SqgszGV
         xJaw==
X-Forwarded-Encrypted: i=1; AJvYcCXUnHC3MqyQl4oHcdglfdTaPIhH0ln3/7XLDRrHbeHKzHQgSr/MVLVZGBXNOP4rCm+376DyQfI7TcTBxape0ruhY09Qlikr0LVa/w==
X-Gm-Message-State: AOJu0YyVBzVOcZ5mFXQVslz9ex62mmXV7PDJD5al1wKHG4teMMt4yQCe
	2nP6Z3sElKCx3z7iPNyK8Z6weozljFYyBU1lK9MYUu4u95I599be8L8VuoDy1AI=
X-Google-Smtp-Source: AGHT+IHRvjid4hGA5bSp2QT33q7Uk/lS6mc/wJi4SYdJbLsVnz9me859Z6q5uU7ai/HgxCiOEJ82Dg==
X-Received: by 2002:adf:fa4d:0:b0:33e:c5fd:662b with SMTP id y13-20020adffa4d000000b0033ec5fd662bmr7996520wrr.4.1710751947023;
        Mon, 18 Mar 2024 01:52:27 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:ad2b:a316:59d9:3dbc? ([2a01:e0a:982:cbb0:ad2b:a316:59d9:3dbc])
        by smtp.gmail.com with ESMTPSA id i7-20020a5d5587000000b0033ec68dd3c3sm9289562wrv.96.2024.03.18.01.52.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Mar 2024 01:52:26 -0700 (PDT)
Message-ID: <869e106f-b953-4615-8dc2-bf200af6f3d9@linaro.org>
Date: Mon, 18 Mar 2024 09:52:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8550: Fix the msi-map entries
Content-Language: en-US, fr
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240318-pci-bdf-sid-fix-v1-0-acca6c5d9cf1@linaro.org>
 <20240318-pci-bdf-sid-fix-v1-2-acca6c5d9cf1@linaro.org>
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
Organization: Linaro Developer Services
In-Reply-To: <20240318-pci-bdf-sid-fix-v1-2-acca6c5d9cf1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/03/2024 08:19, Manivannan Sadhasivam wrote:
> While adding the GIC ITS MSI support, it was found that the msi-map entries
> needed to be swapped to receive MSIs from the endpoint.
> 
> But later it was identified that the swapping was needed due to a bug in
> the Qualcomm PCIe controller driver. And since the bug is now fixed with
> commit bf79e33cdd89 ("PCI: qcom: Enable BDF to SID translation properly"),
> let's fix the msi-map entries also to reflect the actual mapping in the
> hardware.
> 
> Fixes: 114990ce3edf ("arm64: dts: qcom: sm8550: Use GIC-ITS for PCIe0 and PCIe1")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 10 ++++------
>   1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 3904348075f6..3348bc06db48 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -1755,9 +1755,8 @@ pcie0: pcie@1c00000 {
>   					<&gem_noc MASTER_APPSS_PROC 0 &cnoc_main SLAVE_PCIE_0 0>;
>   			interconnect-names = "pcie-mem", "cpu-pcie";
>   
> -			/* Entries are reversed due to the unusual ITS DeviceID encoding */
> -			msi-map = <0x0 &gic_its 0x1401 0x1>,
> -				  <0x100 &gic_its 0x1400 0x1>;
> +			msi-map = <0x0 &gic_its 0x1400 0x1>,
> +				  <0x100 &gic_its 0x1401 0x1>;
>   			iommu-map = <0x0   &apps_smmu 0x1400 0x1>,
>   				    <0x100 &apps_smmu 0x1401 0x1>;
>   
> @@ -1867,9 +1866,8 @@ pcie1: pcie@1c08000 {
>   					<&gem_noc MASTER_APPSS_PROC 0 &cnoc_main SLAVE_PCIE_1 0>;
>   			interconnect-names = "pcie-mem", "cpu-pcie";
>   
> -			/* Entries are reversed due to the unusual ITS DeviceID encoding */
> -			msi-map = <0x0 &gic_its 0x1481 0x1>,
> -				  <0x100 &gic_its 0x1480 0x1>;
> +			msi-map = <0x0 &gic_its 0x1480 0x1>,
> +				  <0x100 &gic_its 0x1481 0x1>;
>   			iommu-map = <0x0   &apps_smmu 0x1480 0x1>,
>   				    <0x100 &apps_smmu 0x1481 0x1>;
>   
> 

Acked-by: Neil Armstrong <neil.armstrong@linaro.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD

