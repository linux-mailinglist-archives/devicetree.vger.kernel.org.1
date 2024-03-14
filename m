Return-Path: <devicetree+bounces-50483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5BD87BD44
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 14:07:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E50A81F21A81
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 13:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23D6D5A0F2;
	Thu, 14 Mar 2024 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g1gVPGqq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574C259B6E
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 13:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710421653; cv=none; b=ICzJmWGPegkXQxvBFAVYoM8Va6M+pCIJfVz2Z+TM7fiIujcnD6W1TVlzbd2NZtJw3H/R2fBzmrOhALubnsD6OlArMe+EyNBt5cxbTiG6jg14Zyo9YPZywrhoDLBgGE4oYbLHmxKlK2S6IYF5FZWbOW3GHV3J0e/GV7DhYNB0a9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710421653; c=relaxed/simple;
	bh=PTeE6+52fL2tem3T4Ng3Xd/6gjU7fVgp8Z5Fjo1Dx3E=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ZrXz2b32jaurNVBcmIf5uMNbvetnCYXUnYNn4l6p8hTLLNazkJsMKBXLVGCAOIZSp2VLRrQM0S3pRB2BQeDvON8swo8GORsaK7c9Db01fJ3rOfYnWoSHsdgqnRCZXhbwIpFjhEgFybKKuMB6Xs50clBBOxlxetlYV4WCVaH5da0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g1gVPGqq; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33ec7e38b84so379747f8f.1
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 06:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710421649; x=1711026449; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gqukKuQ6NAMzoi8+shEz2UhwUDd0tDAkyYth3T10WcI=;
        b=g1gVPGqqMH3poAV9eF+vPkB2/uBnqCkM37J80lKf2VhgbjgXv3O/ZAz8iNJgHpKLKT
         VicNhv6DTO/Y7clpj2u+wyeHQSe3iC8rb08T9a/QvEDF3sXcvr1iK2Dcp4s2xo00NhGg
         /IBWHGB4YrMIdo44YQaWlRiTIhWkroQxvw4ZDCvSFyS1xCz5HSiT6ny8hA1JD0rsT1WG
         HgINuKFVTczNE6Fn52FRdfcbC0+Pg1xB1ViYee1bcYVd8uvE6J/DVl6sWi2CCzopOFMU
         FJ1OT0nNGXWeMcFLDnybr5F74p2mBTlD5/Mf1EVfgxOzH4W/8t7MP3ME1KeIjIEf3Dag
         O0Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710421649; x=1711026449;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gqukKuQ6NAMzoi8+shEz2UhwUDd0tDAkyYth3T10WcI=;
        b=IhCMKHj3DF055aos73Kugg/VjWhrXZXJyQgSu+zxzZa4knjDrOBGUPG1CI0f7F+c+C
         1MUPgMctGUNiYDamr3eASGwNaWropoVQtCL16X28GqAhLPrTURrbjOxumu8owZ+eynah
         Z6BaC741CfFByvVoqtZUfZwCoALV+5BlhxD4yfrlq5XzL3xqg5sqM71EfhDAUpyaWZ7f
         OyUdNlxgN4aO6amRH4zCnLmvj9vHEdva9xFFmDGTS/PDihEVbR9k9QuPAInuvCBfr8Rv
         jucPIB/FAlGsnUy3WuLxRpezOmOyw23tKtnBx3NDw+NhikjTFEiEvZjWtAUlFXTcfwtu
         gJhg==
X-Forwarded-Encrypted: i=1; AJvYcCUSzYiKRp/7iEiQi4SOCXd+Oz7KBP352+08qEImVBekVpUpMyE5Bpr3jnZqscKORYYk9+S6F6eIBceiiu8NvE5iTYtmuvaDiiChAA==
X-Gm-Message-State: AOJu0YzRKF5hp4cEjpBlTB2kdM0RmEuQs5dANYR7aIPzZen+kMXJ7JjR
	MCp281H9EKxHkM4QDSaHO4gFMl3qU6OxQzD3zAXdOfZr1wXMuZEYnLLxU2kObcfterFM5gwcgKJ
	6
X-Google-Smtp-Source: AGHT+IEh08BPIkO5i8MZI/XIrn4b44D6Mi1UxDOz589tb60I+o7DsjnE8/ap5GYLCSYvnHF8eCZRDQ==
X-Received: by 2002:adf:a4c3:0:b0:33e:b7d7:76f6 with SMTP id h3-20020adfa4c3000000b0033eb7d776f6mr1192201wrb.55.1710421648875;
        Thu, 14 Mar 2024 06:07:28 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id y13-20020a056000108d00b0033d202abf01sm725439wrw.28.2024.03.14.06.07.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Mar 2024 06:07:28 -0700 (PDT)
Message-ID: <a7b6732f-f103-43e8-a5fc-aef5cdc490fd@linaro.org>
Date: Thu, 14 Mar 2024 14:07:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: build error for sg2024 device-tree
Content-Language: en-US
To: Chen Wang <unicorn_wang@outlook.com>,
 Ben Dooks <ben.dooks@codethink.co.uk>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor@kernel.org>,
 Device Tree list <devicetree@vger.kernel.org>
References: <dc78535c-eab3-4501-9ecc-0464e90c9b54@codethink.co.uk>
 <MA0P287MB28229709A260ECC6348CADF6FE292@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <MA0P287MB28229709A260ECC6348CADF6FE292@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 14/03/2024 13:43, Chen Wang wrote:
> FYI: 
> https://lore.kernel.org/linux-riscv/MA0P287MB282228A94119642979A035C7FE292@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM/
> 
> On 2024/3/14 17:47, Ben Dooks wrote:
>> Building the current linux kernel I'm getting:
>>
>>>   DTC arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dtb
>>> In file included from 
>>> arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts:6:
>>> arch/riscv/boot/dts/sophgo/sg2042.dtsi:9:10: fatal error: 
>>> dt-bindings/reset/sophgo,sg2042-reset.h: No such file or directory
>>>     9 | #include <dt-bindings/reset/sophgo,sg2042-reset.h>
>>>       |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>> compilation terminated.
>>> make[5]: *** [scripts/Makefile.lib:421: 
>>> arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dtb] Error 1
>>> make[4]: *** [scripts/Makefile.build:481: arch/riscv/boot/dts/sophgo] 
>>> Error 2
>>> make[3]: *** [scripts/Makefile.build:481: arch/riscv/boot/dts] Error 2
>>> make[2]: *** [scripts/Makefile.build:481: arch/riscv] Error 2
>>
>> Config is attached, but looks like something is either missing or not 
>> merged from another tree.

I recommend to all folks to add their trees to LKP (<ad>or read my last
LPC talk</ad>).

Best regards,
Krzysztof


