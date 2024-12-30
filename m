Return-Path: <devicetree+bounces-134699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 953AE9FE50F
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 10:55:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC0083A1EFC
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 09:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD0B1A2C29;
	Mon, 30 Dec 2024 09:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D1SM288U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2171A264A
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 09:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735552533; cv=none; b=KAzcoKJ3rLp4PZQWqNhQ8GG4Rr5JfUAw4INY+Zx/Fmx4ZZsEe8c+ZaI8avTz7IfQ1+cl3yw5ntEfQ+rL36qZXqR4IHQ1aTGIFdTH+4RPMTyJTfS2hPNzf00nGT3RK39dHIxgb7GNeHg1w7wuVjbZqH+acIUCAXj4WoCqccEa0F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735552533; c=relaxed/simple;
	bh=M+miScDDFHqmTi+GiN+Oi+U8XR2e1tcdufXlXPqEJds=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=lFDiQuVg4dd523t8mfZhm+Q0GZgdvfPcuN9kSXo8G5QYTQEPVbPeO6/NWgZpCq4V0ybIRq5Y9bW7Q/FeHcNHkZGslEXHbE7C+BaNyWN0G4qhYYvjb8cypoRDzOVHnaspFCZRygK6TVvsIkLTTgn2caRvBu6SUH5n2UjNQwiB7sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D1SM288U; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4362f61757fso90348245e9.2
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 01:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735552530; x=1736157330; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EwAnJkcxsn7EAvnKUqGy9C9BQqWODnfQQiu9/oYFC0k=;
        b=D1SM288UneI6SBPbj9sRB6cIHorzVKEBcY5+SFsH/DkqxeDUTJ4qIVCFvUIRXI3epc
         fHkO3xtlqGQRp9t13wlz7nVupOc8b/uW8Do1F7uAaEdOUjhpVHICiQRC9I86wqZOSMmb
         cQcc5GK3LEU7crSGbrovW2iux4dU45NeZzBNVT91y+dLgHAFBiSfj46cQ+OuvAV8hiGs
         e/3zxDwOZo10nYb10qN5t6sIUuZkFJmifZmG0ZcPllBc+gZ7Xpr4X8btm0KPQ1UQ3SoO
         a3H92mxPe87Pmr/q4TefTQeMkJ4p/FzsLdym+f1dJ/iAyWGZbp+6TlsEysBQHxSeEy8z
         qulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735552530; x=1736157330;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EwAnJkcxsn7EAvnKUqGy9C9BQqWODnfQQiu9/oYFC0k=;
        b=slYS0dxsWkl7mLqDBv3oXT/irp4kQNr0bHe/FKE+g76pTZvqoJMNm98/eIseYO7S7V
         vj6xhbodIKa70Zs8WLCWu0PCdEN4afcb7zUsxjbTdh+Y3T4FgoOwgiIIPu5DyjJJ64+W
         XekppRWbsw6WWLVdhuOhxLv+hiefiyyE7DZvm3WTQtK4HHmDNO6g3yyibP0pthYfgaL5
         okyvZydtZpV/pwjlED2Se40Me8RM+QBfhopf21xeDZf16Lp/q7DhgOvhJUz6ErutaZ2g
         hqOiRbCdgzuWwv1bvpU4sp0loD0iWCLLcHDQsoArpgLXXV75dqPWMi5Prer4TPQChLNM
         hBiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWENVHl/IiZmfiuv3cAhO4DPFmaQ75Hcm09ur3yf6a63kfLjaCP27gpOtIFMzcmiAtzDoOkOPNdg/fy@vger.kernel.org
X-Gm-Message-State: AOJu0YzBVKWYumxrE/5TuVBd1BGueBSe0trxFaxpWwc6PaAihuNqg+p6
	xcEhZkMHtq1D9w76sdx3BY/ApWWSdsuugmQbtHe5eDJgHAa8yIfBWi7Y7W2Ug8c=
X-Gm-Gg: ASbGncuCdW+u+FQBSjRRLWQLcxfJVqdCmFQVuf+gp/zVgUNcnKEs75Acjv5ICx5XS4+
	PosoRemqaj8ycYAxhpAuwZb0br+VzZnU5+RprKCahxW8bVEqO4t9wat6bBHKZGNt9jRXLvfQaMu
	f6u+ULJbFTLDt4Cfn5YZj5MxjQHqZ4xQ809UT29ZmGuyzpO4DKvY/lWSfzNw3i7sqaLAALgN2+8
	Pt20cqRj/KshAJTXsjKkNcioAs7L00pOw7C1Ersi/EaWnialIyTKUKVcSBlqBM5J6ou56wAjwAw
	Glbv6An3FXwov5PUdHzaJ8k88tQaa1gXwA==
X-Google-Smtp-Source: AGHT+IFdNbJoTRyUHSe3BWfH+hpDzCDJYSHHchJ9jf6Jrt8SN+H4dATnk9L+2XQ1MCTWkCD61qL+qQ==
X-Received: by 2002:a05:600c:4510:b0:434:feb1:adbb with SMTP id 5b1f17b1804b1-43668b76a08mr321281525e9.31.1735552530302;
        Mon, 30 Dec 2024 01:55:30 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:883b:3c16:2465:ad55? ([2a01:e0a:982:cbb0:883b:3c16:2465:ad55])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8472casm30168549f8f.45.2024.12.30.01.55.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 01:55:29 -0800 (PST)
Message-ID: <e08e5be6-9d0e-4d32-9d67-eec57634f6db@linaro.org>
Date: Mon, 30 Dec 2024 10:55:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] ARM: dts: amlogic: meson: remove size and address cells
 from USB nodes
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20241226220352.965505-1-martin.blumenstingl@googlemail.com>
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
In-Reply-To: <20241226220352.965505-1-martin.blumenstingl@googlemail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/12/2024 23:03, Martin Blumenstingl wrote:
> The only board that actually requires these properties is
> meson8b-odroidc1.dts but that already sets it on it's own. Drop these
> properties from meson.dtsi because otherwise they can cause dtc
> warnings:
>    /soc/usb@c9040000: unnecessary #address-cells/#size-cells without
>    "ranges", "dma-ranges" or child "reg" property
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>   arch/arm/boot/dts/amlogic/meson.dtsi | 4 ----
>   1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/amlogic/meson.dtsi b/arch/arm/boot/dts/amlogic/meson.dtsi
> index 8cb0fc78b2af..28ec2c821cdc 100644
> --- a/arch/arm/boot/dts/amlogic/meson.dtsi
> +++ b/arch/arm/boot/dts/amlogic/meson.dtsi
> @@ -255,8 +255,6 @@ rtc: rtc@740 {
>   
>   		usb0: usb@c9040000 {
>   			compatible = "snps,dwc2";
> -			#address-cells = <1>;
> -			#size-cells = <0>;
>   			reg = <0xc9040000 0x40000>;
>   			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
>   			phys = <&usb0_phy>;
> @@ -270,8 +268,6 @@ usb0: usb@c9040000 {
>   
>   		usb1: usb@c90c0000 {
>   			compatible = "snps,dwc2";
> -			#address-cells = <1>;
> -			#size-cells = <0>;
>   			reg = <0xc90c0000 0x40000>;
>   			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
>   			phys = <&usb1_phy>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

