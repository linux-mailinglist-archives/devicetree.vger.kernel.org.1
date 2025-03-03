Return-Path: <devicetree+bounces-153220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA7DA4B986
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 09:38:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B1133AC9ED
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 08:38:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C90A61EE005;
	Mon,  3 Mar 2025 08:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="dggZQvV3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103041EB1BF
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 08:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740991101; cv=none; b=GzQYcGrlxgnQQD3iwg1teF/78COqzSqFMlRpjtuQNP3pA2FaidbSjfQ99GoaoRAe0leZcMhKKOd4NN+AnuEX+WiN//PKFC060lfrU0RarwTIirvJXmy7mGdHoNbtNCy0Djrn5xQ6oH9/xEmRlWPYpdu2iLTzPUzqa9oYzZM2Ds4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740991101; c=relaxed/simple;
	bh=j0Zg6zDwqBJl9XRcUP62Tk9aOlk8S3geXSs4RyGKrkk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IHhaqv7j33xaLjn3XF39AJPYBXPnrSK7KtBTliKxzmfJkdv3Si12/MM/5/oI5zf/1yz8P3c1JAiRhv3QPnzMPItZ8u2U4p9eHpqLcjXRcgrJHsBQHPhDismMqGgF5TItiilV2ToVY1t2duukrifUZcb5G6Y35dalzFEpK01fYzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=dggZQvV3; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5dca468c5e4so7301064a12.1
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 00:38:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1740991098; x=1741595898; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YQk2xNROAbUunePjjPQL+I4XS/ltDuWUPTvnmWm1qXc=;
        b=dggZQvV3pT2mlupd9scXXjjeaKW6dnYwVRpyX5bXi8C+fazQrFgxcKRaZ1GP7EsV3R
         QAcgVrrVwjWjo/ouhwB5xK2n7kwTsTx1yANfZxNTv4kSz2J/31NABhpYoejrS/iGl0e1
         PVf/N+2SLCyZ6USM+yqxZ1vvDNwkeZf2TscMZqnbgB+ZBIQ4SpHAF4lVMQizEhRLBvCT
         NUFDZiXW1CxdS4YSavSW58fpDUGvqHZeB3ONrHgnW6xFrkHVbU3O/TKB6KYozc0nfouz
         mcaHGK4c2HAbG08jlAwoiL8Wbze+zDmkFvvriQCQVSRZZzS45vTfK3owwOBtjenpSful
         Hxgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740991098; x=1741595898;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YQk2xNROAbUunePjjPQL+I4XS/ltDuWUPTvnmWm1qXc=;
        b=tkkG1i8GtJJH9mMuOcRLF+/21nXziP/+ECHXR1l/DWkZVvGVvz71qpav6+YmnTmKYn
         fHaefiBBhTMQk1Dn7PzzftAyx2Huh4aTeheKr55XN8LS0pqYESGcihKnwU3H02wkzVv5
         RaDucvoBXK/OpqqsCrG7mJpioKIV6vMXZdpJ84nwGd8MPw7ncv3q9o1jn1n1VtIhlx6G
         2T+BeMaU0pFDpkvnX3NPH93/SRMsRExEPJS3zg0xYWcTyVvtjwNTcwZK2fPylw6aqWB6
         ZbiS9hdDD8cqgOsh/xXHBOLSWqWh3McjH4PPj2uktgOdFzxzLtZKju9jPuT2rNIFuy1W
         WcwA==
X-Forwarded-Encrypted: i=1; AJvYcCXrR3feCYIUFRVDC1TVJPuOZbYgEESzW/CI7M1AMv3jMBCCvSypRkhn65MCuAIgJfX5GcAmUPmbTupZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ50a03n/6kTnaZc1r+EBen2xx50RtJIW4p2mZMrBEhT0AH6Ke
	pPwWkHwKW8sIsvoqnbo0OQRCrcMe2FPbjuEolnf5pc9Kjat/0LGjRTuk1+ZraBo=
X-Gm-Gg: ASbGncvpy/63AAre/f3NjwP16FHgs/hEOLpMtUoEnKJqE/cy+EuQdPTHjfEUbBFM2n+
	dj+MbZXE6wTMVKdtc0wY2FUjIJ2wNlANpZtOuXE60roT7KR9fyiG3Dd2+elKRV1u+g84DvPyk1Y
	F8M6ehP063VKbVPM9Z5nD2avkSOHe3PSt1conT3ZsdTL71Z86+iDnLKk/OxEWXW6pBqd//apdzV
	DfUXLp/Gqa7HD11Ia2l5CWu/M8EH0Hm+aiOAsVfgpgntj2aby+8EcD1Q5NR0NlZWC9lHEoI0em7
	UDFM1p03C8qeQENWHpJNw004nV7mSQYWYV8Ku5sD1tq1Uvj3KRIKRGc3
X-Google-Smtp-Source: AGHT+IFVwVDJq2GzOlT/TEj1tNqLe6aqacbfxkkGcxDDEFi9TNJRnV4PSA6nZiqQzltKffqId4/sKg==
X-Received: by 2002:a17:906:7308:b0:ac1:df33:25b9 with SMTP id a640c23a62f3a-ac1df33268amr85643966b.40.1740991098316;
        Mon, 03 Mar 2025 00:38:18 -0800 (PST)
Received: from [192.168.50.159] ([82.78.167.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf1aec8164sm718325666b.172.2025.03.03.00.38.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 00:38:17 -0800 (PST)
Message-ID: <6d762706-27b5-4b0b-bcab-ae96a831c03a@tuxon.dev>
Date: Mon, 3 Mar 2025 10:38:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 17/21] ARM: dts: microchip: sama7d65: Add RTT and GPBR
 Support for sama7d65 SoC
To: Ryan.Wanner@microchip.com, lee@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 p.zabel@pengutronix.de
Cc: linux@armlinux.org.uk, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
References: <cover.1740671156.git.Ryan.Wanner@microchip.com>
 <6a1c058edee3fe1459dcb3a93a0a789a9ffff5f3.1740671156.git.Ryan.Wanner@microchip.com>
Content-Language: en-US
From: "claudiu beznea (tuxon)" <claudiu.beznea@tuxon.dev>
In-Reply-To: <6a1c058edee3fe1459dcb3a93a0a789a9ffff5f3.1740671156.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/27/25 17:52, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add RTT support for SAMA7D65 SoC. The GPBR is added so the SoC is able
> to store the RTT time data.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>   arch/arm/boot/dts/microchip/sama7d65.dtsi | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> index b0a676623100..aadeea132289 100644
> --- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> @@ -120,6 +120,13 @@ shdwc: poweroff@e001d200 {
>   			status = "disabled";
>   		};
>   
> +		rtt: rtc@e001d300 {
> +			compatible = "microchip,sama7d65-rtt", "atmel,at91sam9260-rtt";
> +			reg = <0xe001d300 0x30>;
> +			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk32k 0>;
> +		};
> +
>   		clk32k: clock-controller@e001d500 {
>   			compatible = "microchip,sama7d65-sckc", "microchip,sam9x60-sckc";
>   			reg = <0xe001d500 0x4>;
> @@ -132,6 +139,11 @@ chipid@e0020000 {
>   			reg = <0xe0020000 0x8>;
>   		};
>   
> +		gpbr: gpbr@e001d700 {
> +			compatible = "microchip,sama7d65-gpbr", "syscon";
> +			reg = <0xe001d700 0x48>;
> +		};

This node should be before chipid one to have them sorted by node address.

> +
>   		dma2: dma-controller@e1200000 {
>   			compatible = "microchip,sama7d65-dma", "microchip,sama7g5-dma";
>   			reg = <0xe1200000 0x1000>;


