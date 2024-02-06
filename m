Return-Path: <devicetree+bounces-38904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B36284AE37
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 06:55:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7C752874F0
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 05:55:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F7087F472;
	Tue,  6 Feb 2024 05:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="mEn0c1cQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CFE77F7E8
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 05:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707198894; cv=none; b=ES5vob03JX+9VLMKqBOYdKhRcK8+GtX86itaXVC+C/Y39NnVRmJG7hPwFjXxzi7KMLP2ArJtDwVyBN1YH9eqKcw1wQtrd2go3hTpFKmBVjUnkWBiV7F3g3dI6bvKL0U6J/69JjthO2nUCE/UnqGzmXdnzlBJmRCi1rZ50w87qKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707198894; c=relaxed/simple;
	bh=wqaA3OoXDWlX//VDvJy2vgmQEdAqGqgvYRWWrJpJDUY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=JeeHmYZFJFmSSM42YvOFNV0XU2xpcy1xWJvDxU7H/tHxb4u1thuMxplJrwWaK6UhBroQCEDsYaVaLOzXtSHQKIo5TOS6wjzG1Xde7m8Qj7VrgI8OzWgxYEpxiB2OCbBeMgYknI+eGMIFfXgaX+FaNmMHHzkN38znYtZXCtTDhYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=mEn0c1cQ; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40fe2d3d5a9so1686385e9.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 21:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1707198890; x=1707803690; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BTY1QBAZTWEgUTJ50PFVukt0GrjEOa549/HqPP8e+bE=;
        b=mEn0c1cQWPKhibFG8wVRLFtXAldb88hbN6cXn07bndaX+cu+4S6S4M5cKr2PFeOLA+
         wC2SVUvaYOSo/SFpu/EF/P+0ASvBhLsC/g9hYUBhLnzNxIV2f+8neF5iuNwNHxEf5ciT
         rMRoB+62+3ald5OcqVL5cp86QaYwZXdg6UzyE4YDR47joM0O+2inrJMdSADkOvBCkHM4
         q6ItAsuLbx3QT4D0WIrR8BEx1wJY17v6LniWHfotjOPLXLc8MkR24D1maHl41Jp6tQ+X
         THEvuZZ2cIW4oZWeVhMwAhNZFIgZIICSvYMieYLnFrbp8Om3QElVCtfkbgxLg5k6qLBX
         idmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707198890; x=1707803690;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BTY1QBAZTWEgUTJ50PFVukt0GrjEOa549/HqPP8e+bE=;
        b=e3LTbKgI1uQvXTjudOj2/W70XWLDG4AtnOp3J0z+UYx6ivq6zRu+9CiluXuCkbtOgZ
         pJfP1sPZLkVxzkMMrYYRjw/fQadvmpjtoGMJyiCoMXA4huIEN5F1VtEEXOf2C9D6/VV1
         Z9PiXoTkGgWFmA2mX5E/Tb1qqjUA+uNdVAcnygb2Hcwa+QP6aMsmynDEQgN0FBYrl2LQ
         sczIBEJZTOMzu5FCUD6dWxnAx5Kv6TrXe9FxDrkE5esUeBYbEDz4PbdnZ0WTttvV+BKg
         jwUXxuakjTQEsl6UeLpjssMbD0mTSb0wRVYqN5cCU1oNxiR9qiWpuG6UQYe60/c8Zp3y
         NkqA==
X-Gm-Message-State: AOJu0Yz3gqDGaevJQ4J7U1AahbXrfwF11jWRZZ92gsXqNqenUrqNnJso
	el3B6Mrn02jVutFcVbP4GPYu34LsMJTki/lKGfVaVqNRkGxZor16Oj9dyoFdiCc=
X-Google-Smtp-Source: AGHT+IEvGBnActUAu0BCa5hFJpoZeCTBqeuLBV8E8iuP45AWz8rKTDXuJ8EaVdAWla8jMfh26r+E1Q==
X-Received: by 2002:a05:600c:4f51:b0:40e:4806:f436 with SMTP id m17-20020a05600c4f5100b0040e4806f436mr603514wmq.3.1707198890571;
        Mon, 05 Feb 2024 21:54:50 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUTkORDlPYl+vANvx/D4Q9dJgi1J2wftRMmPO6f46Y5Sd4BnVKKIMqeETxDBNQDD51YT/nbeCapIEqVTzMKOPexGzt+E+SGiBfNX1kQ2Mu1o6UICao3rJqfaLREU4fvhlAgZbqoiW4l558pDeOSkkfGbXp0BJsd1r1dSHKwKUqg0ADUWSBLXaSCrRbxx+uas+g6uPvPPfs0JwoZbq+3wtQEn3+ppEtvJkHT099/XlwKGJ2tJH1roldRpXgLd5A41qoBVPM7SxFDOOj8Xvb1LyyIrum3AyA+oSFmPK9BRbpd+0/q3GLEqaPvYjgJJT9RS98sNn7gPlI7Bu85m48Tzr6LA6BrxfZAKeFXPyaWFQbfJloBFjdC+s+rbdv7OW3M+POgS0Ic6Z3KSJhEZMmPWn4T
Received: from [192.168.50.4] ([82.78.167.154])
        by smtp.gmail.com with ESMTPSA id fa13-20020a05600c518d00b0040fb03f803esm741966wmb.24.2024.02.05.21.54.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Feb 2024 21:54:50 -0800 (PST)
Message-ID: <35eca42a-5bb0-4d24-972b-6fe2fb4d87ab@tuxon.dev>
Date: Tue, 6 Feb 2024 07:54:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] ARM: dts: microchip: sam9x60ek: Add power-supply
 properties for sdmmc nodes
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240205080027.4565-1-mihai.sain@microchip.com>
 <20240205080027.4565-3-mihai.sain@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240205080027.4565-3-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Mihai,

On 05.02.2024 10:00, Mihai Sain wrote:
> The sdmmc0 and sdmmc1 controllers are powered from 3.3V regulator.
> Add vmmc-supply and vqmmc-supply properties to sdmmc nodes.
> The sdmmc controller from SAM9X60 MPU doesn't support the IO voltage signaling/switching required by the UHS sd-card.

Please wrap the line at 75 chars (see [1]).

Thank you,
Claudiu Beznea

[1]
https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html#the-canonical-patch-format.

> In order to use the sd high-speed mode, keep vqmmc at 3V3.
> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/at91-sam9x60ek.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sam9x60ek.dts b/arch/arm/boot/dts/microchip/at91-sam9x60ek.dts
> index f3cbb675cea4..b19a0956dc97 100644
> --- a/arch/arm/boot/dts/microchip/at91-sam9x60ek.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sam9x60ek.dts
> @@ -560,6 +560,8 @@ &sdmmc0 {
>  	status = "okay";
>  	cd-gpios = <&pioA 23 GPIO_ACTIVE_LOW>;
>  	disable-wp;
> +	vmmc-supply = <&vdd1_3v3>;
> +	vqmmc-supply = <&vdd1_3v3>;
>  };
>  
>  &sdmmc1 {
> @@ -568,6 +570,8 @@ &sdmmc1 {
>  	pinctrl-0 = <&pinctrl_sdmmc1_default>;
>  	no-1-8-v;
>  	non-removable;
> +	vmmc-supply = <&vdd1_3v3>;
> +	vqmmc-supply = <&vdd1_3v3>;
>  	status = "disabled"; /* Conflict with flx4. */
>  };
>  

