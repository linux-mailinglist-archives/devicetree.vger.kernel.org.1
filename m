Return-Path: <devicetree+bounces-183477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8DFAD0D05
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:07:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58DCD170344
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:07:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5869A219A67;
	Sat,  7 Jun 2025 11:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="aTrMvR0e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99FC02185B1
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749294429; cv=none; b=BVlUP2rcabZafXCT0z77XpfZd9HytZ3CDfPkALaslUoJNqmrxdsZPtLtYTeccZir85dSkN8V+3d61l08qcfgSyfmbDU8z6eyt5Lvlb37KZ6G5dZr3GmVBVLkJp3ExGCgzoorNkhooWHoJNwcamD8d6CISbsr4+U7gLNN7mGWv1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749294429; c=relaxed/simple;
	bh=vicUU9PHI2hVlzAUIoglCN2hj3dmlD4qUda4Sx3foGw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=PoboXh/bjY+P/7b2DN1Oqsb8BO7R5fBqT0CePLFkWcuK9M7mRwfMXFBoSsbXA3sRT0yJ1TxHg/zueFtGiAAW0tW1GYUR0VXIGuG+mtkX2iCY99V0g6F4s2oij9ingc7uVztJrud0V2h02EIq2Y2LvIdp/2AcjY52mOnj2vP4qTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=aTrMvR0e; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-60179d8e65fso595302a12.0
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749294426; x=1749899226; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZpeOeAdGqxMbXCn6EnheQKl037hSzc1P5CMiTi/s4OA=;
        b=aTrMvR0ekfVYHIA/tiDfCpqsHL+XGnGfduwB0gkxxmTqWzYI3ndoZGG/PmMQlqmIc9
         tbTMfc8xJZgdFupxtZDAiOrfWoMjAo4e19OyPLLPYuKxCs2Az/MguwXuLav58Dx+A8Gc
         HnbuwxlDMphhmHJjfBVQbjDUHjo3a/zCYB6y1oFgah9EkTY117kboIwpazmyA3aDpIBi
         R151OCIofVpaRqO0BrQ0kT0yc69ff/HG390QOk4YuvJ5BieIi7k6fpwlcYxxaWbga7z3
         cLU8HTyrUa54OPTOPwMTxrGkqWSgTBUK4YTJp7qaF738zkBqoQgtkQgMyowHE7GCZqls
         NVBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749294426; x=1749899226;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZpeOeAdGqxMbXCn6EnheQKl037hSzc1P5CMiTi/s4OA=;
        b=wefiAwNxC8JprPhXBVg7qsGZJdBYoc+EYFUn9HHQgyzg/XcUjd/tv2oy/3GZp1MAs0
         sp+RvAogWTOpdZrFzKv9df8Zh+fDtZQze6w5XZC5hkCLfwdShtnXNETtTSqVGctGvH4j
         k3+RMM2tgLKesjFleMv2gQe9meb8oHI8UpXuRyXvY6WaIO53zhyOIFfffFnbirkwN3Ys
         Rc9UTID/pU1tWFfApsMHo47XNG4PG18nP78ioUWX8Hmv7NKVh5IN1LdBIr1i7sUkn5Wx
         lMrExFF/1710KnixwmRU6WpXDhiibEM8nNk5RpRZuBjp572RVpOGZyG4F7qXqQsJEbJE
         OBNg==
X-Forwarded-Encrypted: i=1; AJvYcCU6PArHGNz6L0CsON1IEavVYmewTn2yC1bATxVUNd3ZY0y4Nisn6bPVT9SMprFLkO3ACgHRL1peJ+0O@vger.kernel.org
X-Gm-Message-State: AOJu0YzPpF8tEqFUHIEwFYVBLpmbMNsF31OV7+nGwjPHtzgQa/UpJtB8
	hLFBmkMSeuEv5SlgMBbScV0kV9s0UhlnqJcJ0LvEi8FTYzzvQqa6lgSn7cArOeoIRVWdeLlWMzH
	4pV9x
X-Gm-Gg: ASbGncsw+D01Eh6x5wO1EEyXMSqVKJReDCteNtgQh1pcOfXvWjTbksExWe/IwI7guwG
	ZXzaU8wUvJaO8Mvo/T3ZjmPETYk9HxsuXjjQUaTB5QlYveCa0UaRKqoqNo6LKaHQkHyNAhn9Mui
	JGehDonQmGCopM7Xc1XFUvs4B1y+srBwAh89WGNUmE5tPnnKf0xlwThTq9tPu9iPaGk0pRvEcCd
	oiJ/I05Jtc0pZm264f+SkvX8j4hAyDq3r2Zag+AxoUYNfPl1QiW/A7lv9dXEssdlbmpbegNyXUe
	OVY0AJbIEp8CVYeHH907uyPsdhqHqexCW+LVAUVtAQtUDRS3JC/kNhAOf1SzEDHI85wrW4I=
X-Google-Smtp-Source: AGHT+IG3M8z181em7vBtuZBZYwhYQocgtGu/WkgrN5sHYgBLnsseshvmDwY/I6GFT297t5L4kOKqyw==
X-Received: by 2002:a05:6402:4407:b0:601:a431:86cc with SMTP id 4fb4d7f45d1cf-60773be8fafmr5653795a12.5.1749294413789;
        Sat, 07 Jun 2025 04:06:53 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc1c8ecsm262161066b.94.2025.06.07.04.06.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:06:52 -0700 (PDT)
Message-ID: <55a5a22f-aaf3-448e-a628-6309db283182@tuxon.dev>
Date: Sat, 7 Jun 2025 14:06:51 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] ARM: dts: microchip: sama5d2_icp: rename
 spi-cs-setup-ns property to spi-cs-setup-delay-ns
To: Manikandan Muralidharan <manikandan.m@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, tudor.ambarus@linaro.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250521054309.361894-1-manikandan.m@microchip.com>
 <20250521054309.361894-4-manikandan.m@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250521054309.361894-4-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21.05.2025 08:43, Manikandan Muralidharan wrote:
> The naming scheme for delay properties includes "delay" in the name,
> so renaming spi-cs-setup-ns property to spi-cs-setup-delay-ns.
> 
> Fixes: 46a8a137d8f6 ("ARM: dts: at91: sama5d2_icp: Set sst26vf064b SPI NOR flash at its maximum frequency")
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
> changes in v2:
> - add fixes tag
> ---
>  arch/arm/boot/dts/microchip/at91-sama5d2_icp.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama5d2_icp.dts b/arch/arm/boot/dts/microchip/at91-sama5d2_icp.dts
> index 9fa6f1395aa6..fbae6a9af6c3 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama5d2_icp.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sama5d2_icp.dts
> @@ -714,7 +714,7 @@ flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <104000000>;
> -		spi-cs-setup-ns = <7>;
> +		spi-cs-setup-delay-ns = <7>;
>  		spi-tx-bus-width = <4>;
>  		spi-rx-bus-width = <4>;
>  		m25p,fast-read;


