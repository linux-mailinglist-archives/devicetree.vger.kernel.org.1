Return-Path: <devicetree+bounces-80309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A2954918591
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:19:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D27E01C21615
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:19:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46E3918C331;
	Wed, 26 Jun 2024 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hrj+d86Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A9718C32A
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719415133; cv=none; b=dYP3Gr9jSAdG9FC0VC6HEbYZRfAtxdU7Fe1gpk1Izj6z6jQ1mA7f4zqbguUtcq8cPu8/qUbPxpjps5VXg7ApxXfqeCLSKv22R7Reb2apWoGCljlW6crCZGplQdWHkLUpFrYfg0QqNtEWjKxCihbkPVQ0q1jGkAxb7z7UgcI5vWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719415133; c=relaxed/simple;
	bh=b9k+mXfxl27EqM5YIofKt39pjaxTbsvGlDH1nq7O41o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dcxi6SM7Vz1bqPacGfRwu9fMLo08RTwOAyvzqkBSST/tCPWh/1HteWLtS/Se73sEAHEJA71xdV7MHTdJojBvjaFWU5fa5zX7jp3PQBXVeJOLVd06WWr0/FwXtiIx0L0RJ9qd/0X+RuKlSpIE5SAifRX3NBWD5HbjbGi3fCofFT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hrj+d86Z; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a6fe617966fso452237566b.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719415130; x=1720019930; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nWX6epKdcnes1BVALWYCRrndFt6MKcz2e4J8ahDY7Do=;
        b=hrj+d86Z+JHbH45J7HrkVIwFGsjTN/gjYLJ5WV+EzFzLFZNXgpVgY/slElE45QIFKs
         Ip8hL0IVnZ1xTeSAHVvQo5gJX/KJIuBwwUWszq8fDa5ey8Vxyl6Y19pIrCp9kOHDaaKh
         qRCQ9dNMgt5Vo9QF7648zQHjM3ZJHmkl+HRxyQFDxtrEOX6G32xjLDJi0Ah8fehBdZ6n
         4ryAAz4GxNPGpRME+nar1pFPq3qwBFaxIy2ujoJRFrDxsys6Z660aT3lQac5GH8ZUmPc
         kaVehfAdT457W4a4fRU7XP4vYTu0FgKiGNLUx7WSwRHx6DCNUenx10N2UHhZlTBTn+0S
         vaXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719415130; x=1720019930;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nWX6epKdcnes1BVALWYCRrndFt6MKcz2e4J8ahDY7Do=;
        b=jD8elI6riTs/pf4McWYG7erQ6KFS+iRGZ0Tn8ZwXWWTerdzAyFvmO3AaGcMcIarBkx
         nK6DLDhetijDLfOyp4sdpKfDf2Ueirs65BNRSnAQsMEnQBfl+7zauf/CKahCOTMIafaG
         yRQKg82MkFMENmMIQj3dgjMLr8jVhT9axec25n9yIw2GBEqjT9S4b8ez5zUSKTIaRZ2t
         fIuYq2c7BJ+QCxc8I7/1tyvF90G5BRfsFbWwJbCkDA8zJr4SB0iphcic8h4RP7R5/+oJ
         iaxF2B8CkMJFE+Y8M0/3ozvBAVIs6dTBwiHd4z7s5vBTtkZLj7n+LPICRoJf8XjRDuBO
         xIfg==
X-Forwarded-Encrypted: i=1; AJvYcCVMxP7aMvezow3sHRX2Scet2lBQuTG+Cs/ZiZwgN+tKYa+H2/ACv71oBkFhuYdrnhQ902KEUKNV3Sz4p3fS0y/ZdhKOdxxKNNHcOw==
X-Gm-Message-State: AOJu0YxwQQ04u1yScDT8TVsTatUiOXSU0oxTrocTGIQDHCqooiFftNQ/
	CwLMs4RlCPXea//BECXRkvEyVX0/9lWOFHPXlZ/RgNSan7HgZ0ZZT0QWhBW6jMA=
X-Google-Smtp-Source: AGHT+IHVbJuwqet6BuccvsIB1H/YgQ7iwTU17brRzB9RNDp0i2d1W1e4iHsbU3BJglibyDfoq3N0tw==
X-Received: by 2002:a17:907:a80e:b0:a72:7e1e:62e6 with SMTP id a640c23a62f3a-a727e1e65cemr361086066b.63.1719415129850;
        Wed, 26 Jun 2024 08:18:49 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a727900d2f1sm161075866b.180.2024.06.26.08.18.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 08:18:48 -0700 (PDT)
Message-ID: <28ad9f30-7465-47cc-b514-41750a4c41ca@linaro.org>
Date: Wed, 26 Jun 2024 16:18:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] pinctrl: qcom: add sm4250 lpi pinctrl
To: Konrad Dybcio <konradybcio@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240612-sm4250-lpi-v4-0-a0342e47e21b@linaro.org>
 <CACRpkdZyupZmV+e=L0KR8ospH9P=wdUrMFvBnGXyfhLhW3-=PQ@mail.gmail.com>
 <65d76651-1956-412f-911a-046f0303a16a@kernel.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <65d76651-1956-412f-911a-046f0303a16a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 26/06/2024 16:07, Konrad Dybcio wrote:
> 
> 
> On 26.06.2024 12:04 PM, Linus Walleij wrote:
>> On Sat, Jun 22, 2024 at 6:49 PM Srinivas Kandagatla
>> <srinivas.kandagatla@linaro.org> wrote:
>>
>>> Add support for sm4250 lpi pinctrl.
>>>
>>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>
>> No major protests against v4 so patches applied!
> 
> This was never sent to me..
> 
seems like b4 auto-to-cc does not pick up your email ids from MAINTAINERS.

> We already have a driver for this SoC. 4250 and 6115 are the same
No, these are not same,  here are some differences.
- muxes for I2S mclk differ.
- soundwire muxes are different
- Slew rate offsets are different.

I have verified this before sending this new driver out.

--srini
> (except the former is frequency-capped): pinctrl-sm6115-lpass-lpi.c
> 
> Konrad

