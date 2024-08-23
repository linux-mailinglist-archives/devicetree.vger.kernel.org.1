Return-Path: <devicetree+bounces-96065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5EC95C800
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 10:25:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D1471C210EF
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 08:25:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80407142E9D;
	Fri, 23 Aug 2024 08:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I+Rejjqv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC410143C69
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 08:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724401512; cv=none; b=KpC4CKbl2V4P8QgSdcRNy/gmak/QTzSIdhhkXzplIwaq8cMF2UJSVTFjkA49fl6NbUe+aiWTsqAT9p/CLRcbkeSIqXMUWiVV+vph2rxNW5/KBR3Dyf1Z7yS1gIyaQ9ulBsjrHl9QNWjI8SLLOEllnCqPtZuvlpcFh/iH0BoPCZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724401512; c=relaxed/simple;
	bh=Prv6E+ScHb0LyR5CQ4A+EbhLnomA5f/3GEtpmq6Z++Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i8Zz1ANUw8UlRMWu2JHT2qI0ui/WzD8gMVFdQr7L8Il1//qzfXTMCzt9vNp0/OChTA9j/Ar6ZJLkaUspC8FVhJv8MHaHd8C8d1AtFqAtuJwqfF5oG2pICDrx2JT+dyHDszrR+y0y+vHD8MAy3Cxg0/4mEEDVINoJfwiUBqeTt7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I+Rejjqv; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-534366c194fso991427e87.0
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 01:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724401509; x=1725006309; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=RNVXRGnKpS8kF6YfpZzWwrX8JQATANezy1mHf5Ikppo=;
        b=I+Rejjqvc5MXi9BMhhIPULuEQgjyb654UuAQs+OEaXFYsCSDH9R0yzcbLbi3/UWKE5
         Iqf5b9DEBJthmaz+bV9gLB9p25tkhsK/vl2cZ1RpDNwK63fAkBC85j59l68QHAznWFWL
         7yuOcR0h7f4hD4y0QZUVc7XYg1/YlUghOLMZgKhC0lhXbfB4Fpj4FrbyI6nMp5Suq90C
         1YqwJrLosZEMQpt2VH24s44JozeHu5PlvO3zEZwN+jQwop+zcp3Bxc3z4GAu73DNUl2a
         j6FBKG6HLUhCWxqV2yALrBh19x50IwzRlEpZ82K6cKD1ocl0acG2uhWun6rGo8dLEmms
         nV1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724401509; x=1725006309;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RNVXRGnKpS8kF6YfpZzWwrX8JQATANezy1mHf5Ikppo=;
        b=iKDHFEWikiwqa7vXnnjgR2fFGg2PMKW3CTQ6SVsbDF8DsGLACU/xNieXpj3ppygglF
         ZwFFwxEX2t16UReWDvNEsBd4VvRITrZitnI+eXnk8rFS5zdqW+aGWk4jjuhAIIzSVY7A
         2f2ulUtVEIlZvKTSnfc+xrnv2R6PE5A7dftufA1Ruk7CNsS102+3RsTDB67IpQ6kCbGx
         ByX/S3/HIoQM0pBg1wzkVYsaSgeMl7HJYaxOlsmmuDL3sQOaW01Bkh0q12UXD3jiM6J1
         /JJa0c1bvRlf07VLXsFdJeIQ3N04kRQkiUk5UaPlSFAB+EzY+Upiq3koITUWkN0/kQRU
         UHWA==
X-Forwarded-Encrypted: i=1; AJvYcCXKePtlbBu145aI0BBf6uLfuADIywwI5rr4aCySPjNlHSyQua9jMb6t7xX+BmCbZOvY4F+ZnNRV5O97@vger.kernel.org
X-Gm-Message-State: AOJu0YzZYF4fbU6TalosJK5+4Z4QhN9pHleBVcICJxtkMKL5Q3KtXni/
	t8TwhnhaJi0ZdoO3UDIlJNppWx4w/lQLQTAHsYXhsB5QQzZdu5pYEZkR4Ld39Qjy4zoeSckLeTm
	MOwQ=
X-Google-Smtp-Source: AGHT+IH6bCoEMQoChtaCyFYQylFJNLu2M2f6XFz5Fuwdk8LQw+EOz+A9GFqvb1SnY/XWcQktSzz4Qg==
X-Received: by 2002:a05:6512:10c9:b0:533:88d:48ca with SMTP id 2adb3069b0e04-534387c47f5mr883420e87.55.1724401508256;
        Fri, 23 Aug 2024 01:25:08 -0700 (PDT)
Received: from [192.168.200.25] (83.25.211.12.ipv4.supernova.orange.pl. [83.25.211.12])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4365b4sm224742166b.113.2024.08.23.01.25.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 01:25:07 -0700 (PDT)
Message-ID: <21067aa4-47ae-4208-82ac-b0232d20d5ca@linaro.org>
Date: Fri, 23 Aug 2024 10:25:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/8] arm64: dts: rockchip: enable USB-C on NanoPC-T6
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
 <20240822-friendlyelec-nanopc-t6-lts-v4-7-892aebcec0c6@linaro.org>
 <13942328-84bf-4b9f-a88f-287b233c1654@kwiboo.se>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Content-Language: pl-PL, en-GB
Organization: Linaro
In-Reply-To: <13942328-84bf-4b9f-a88f-287b233c1654@kwiboo.se>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22.08.2024 23:07, Jonas Karlman wrote:
>> @@ -135,6 +135,8 @@ vbus5v0_typec: vbus5v0-typec-regulator {
>>   		gpio = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
>>   		pinctrl-names = "default";
>>   		pinctrl-0 = <&typec5v_pwren>;
>> +		regulator-always-on;
>> +		regulator-boot-on;

> This should probably not be always-on/boot-on, the connector is
> described as power-role = "dual" and try-power-role = "sink", so should
> probably be possible to disable the vbus supply.

At same time it is not used for powering the board so probably need to 
change 'power-role' to something else.

