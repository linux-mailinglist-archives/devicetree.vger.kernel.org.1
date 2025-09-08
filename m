Return-Path: <devicetree+bounces-214575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 882BCB49ACA
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 22:15:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4882F3B1D7E
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 20:15:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E41BE2D9EF4;
	Mon,  8 Sep 2025 20:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tjo6IIur"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1CA2D979D
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 20:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757362513; cv=none; b=pjUNIEBWVBZHrRoXpvxVAng1sbhxH91HYMSEk62onPgVIIXIQxBYjZKmz+nxNXfllIAM3fK5LMyfhWIBNwfH2vqWymZ83JMeWMIx5z/YUo0s9VQyxZVhaMdePAp7Fdd240tn2F7lNN7+14cVZ8bkQ6oBgAlyodMMnZIM21BS5xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757362513; c=relaxed/simple;
	bh=wh/dd7Jdte+PbRR35ECUmzuAI6uCWTfbMFdZ01umIwc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bhu4hPJKPZIuJGEf0DDLqKsTafwyAJPfTVGPK2Je0/0f0xSkc8TkNxpvMYgx/yR9P6Hqa6mqSJCR0JoZ8T4cRgHouVg6SveG6N6vSewjfq/Tn8yoXry1oncZGb2ahsS1nUwMyUbEvepy2fC9CVsrz3B2izWnn3DzCyDy73yVNhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=tjo6IIur; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45de6490e74so13303955e9.2
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 13:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757362510; x=1757967310; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jjQ5+oMfNA1z8X7OxHRV6oMq0vnVY8/Ms0Vhwhb2pfo=;
        b=tjo6IIurFIbys5VsS5hON1eX7rorrj7wDmCV2UaXXk6vc8T/sv7L+ma8KBW5vLj3gH
         llFKg7kXpF85QMtMObnRqoL44kIgck6ZLihe8nHd5rnByuoZ2yCpZxFaRbGgwl4UTG7t
         jzRw08YdAOoIsXbFxtFnh7F6/oPM3mN6TbFrO1gNES29UOb03xrkNQz3csIf843WO3yR
         Bg+TxUpaS1wQqc5XHsvvSnCARcre0M3UYqZ1YLaFfak4HVkIHRIdzq12NCK4IQn5RiuD
         Fh/7EE3s9guLh4mOja12ptg9fISyzAeN/nGYRqXbOolq80OHeib/X4OFvwcXPN9R+2mR
         Wztw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757362510; x=1757967310;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jjQ5+oMfNA1z8X7OxHRV6oMq0vnVY8/Ms0Vhwhb2pfo=;
        b=PXPxwRN+D6w96ncvZ2Fl3TmVs4kguv1Zyx/B0vah9AF3MQtA4cDzora6qyIRS4fHGx
         zxECn4O4kDpo21IY4l13EXwj+aTkpHndk8S5Hr8W3r4zKD7RkZA5glA9QoJbHxOIHjIb
         r7geJ5jR4TuXrUm552+qN0bjbHI/SeYG6T/td51vGb5smv7sD91rv8588jCGUy9kMVSp
         s17dIB8ingjy+DUdeOh0JXX1tO/yiPMf4CtGZwDjktWjn0KZKPBjbOMuFvBQuBUHvAiJ
         /bGxNtqyl/MevBNY4xp4DBNJe9ZT4LzNFOooCqPFDXjQgNRpn0wx8vuz7DEhaXNl5aBS
         8c6g==
X-Forwarded-Encrypted: i=1; AJvYcCUxCvNEAifWH4lGSjnHT2xqn5OXPeKw/Sfts4gsrnwE36SiXck7wuAq3Sfug88yOMS/iwhEBszy/IDV@vger.kernel.org
X-Gm-Message-State: AOJu0YwqzHxwUSKu4pY49eD+vyFCScBMfA7HTbD4UKhIuyLfldv79jfQ
	qmbFimTVVr3JkzbrZCT4sfUbu01CXhKHA5icIzJ9paUdXF63pde5K0BCF+23DiVRspU=
X-Gm-Gg: ASbGncvWXKDMNL9J4M6JFfHEPgjZ/HIb8Ddp7ze5ydTM6+eR9rhkWmi5vG6az7SjMC/
	Dj8hpdfNhqj91VYrMDtGaTSs9A/sHB5bDkHh7tQODBLNsLNB85nkG39qmkJJshG617F6TJJhB7J
	4aqJS0JdP5+oe1SkX6XhfWGZxRBflk6Hwqk3/fq/3E4s6m0PMV5q7CO4eP05shOdMCvU+Ufu513
	SaD9UzBkNZzcl2KmVMisU6jaXn3o/S0i4syuceubbkAz+dy5L/0G0i1LD7UdKWfjBc4chJV2aZl
	kDjPvkj1GWKGqU33l4wCDydede6vTkCgndfYzTUu+gLM6pCRL1fDJTOmzUWvF8FN4d2EBT+EobF
	uPfjAltkH680h6FmHQVIHAZ81fw==
X-Google-Smtp-Source: AGHT+IEUXK+5uzEYEeWM2C4ugYvoTxY9jWpw3+DQwWpEwD7U8BI+a4nggbRKv+GtES+a6PSycdGhyA==
X-Received: by 2002:a5d:5f87:0:b0:3e2:804b:bfed with SMTP id ffacd0b85a97d-3e64c1c2183mr8374205f8f.42.1757362509754;
        Mon, 08 Sep 2025 13:15:09 -0700 (PDT)
Received: from [192.168.3.100] ([151.42.66.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e411219ddfsm13631814f8f.57.2025.09.08.13.15.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 13:15:09 -0700 (PDT)
Message-ID: <29a776da-cd28-46e4-8b64-400f462d8670@baylibre.com>
Date: Mon, 8 Sep 2025 22:15:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: amlogic: gxbb-odroidc2: remove UHS capability
 for SD card
Content-Language: en-US
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250907-fix-reboot-v1-1-7606fc91254e@baylibre.com>
 <1jecsi3ywb.fsf@starbuckisacylon.baylibre.com>
From: Valerio Setti <vsetti@baylibre.com>
In-Reply-To: <1jecsi3ywb.fsf@starbuckisacylon.baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks a lot for the review!

> The above should be enough.
> 
>>   	max-frequency = <100000000>;
>>   	disable-wp;
>>   
>>   	cd-gpios = <&gpio CARD_6 GPIO_ACTIVE_LOW>;
>>   
>>   	vmmc-supply = <&tflash_vdd>;
>> -	vqmmc-supply = <&tf_io>;
> 
> ... but do not remove that.
> 
> That way the description is complete and the kernel is able to verify
> the regulator is properly configured.

Thanks for the hint! I didn't thought about this while working on it, 
but I tried it today and it worked perfectly.

> It is also easier for a bootloader to alter DT to add the UHS modes back
> (it is safe to do so if booting from another device that SD, such as
> eMMC)

This sounds like a nice improvement as well.

-- 
Valerio


