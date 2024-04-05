Return-Path: <devicetree+bounces-56459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6922C8995CF
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 08:48:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B9AB1C2141E
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 06:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4964E23759;
	Fri,  5 Apr 2024 06:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DNsalWdr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777A723748
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712299698; cv=none; b=PGpco4NbBReQ/zqntz32DooSVNSF5BMYK00SY6q0n0TZhQKG8R9wpWI900j6AkVWXsNJni0t0BX/j3+V2BAXsx+H3CHMqjOdAN66FDb61jQAG/fieZGVmPu3aW3+KJtPyspwHryA8UUQc5Atu6F9OBb/4Pua46z1wvvBACBZIbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712299698; c=relaxed/simple;
	bh=mvUDIPVQiYmNl9e07oUeV3Zkf38WVnnIHOouN7dV1eY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=BFMl2Xmp4sZJmJ4yKJfh9MqMG2JSIvV8K/cTiVPg7XJRqIsbON7ImAmCCisQvAFnJ5usNFXTvABH7XUd6rUMI0ybjXRyrpO+kLaIYRN2g0mW/LJxJxq/yNuGBSif5FrZ6aFNvFB/0XdO4y7x6yx6vuLjPJ/P7Nuv+DIVqXuGvys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DNsalWdr; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a519e04b142so78616466b.3
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 23:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712299695; x=1712904495; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=gVKYAnnmAlON4rWKKLEP3SoYcUsb6KEipfoxr6rlUsQ=;
        b=DNsalWdrnFCaBS1KeVHKdLAW+jWuSD4of9P23PFJ442mcq+rjyrkyl6qoGzzKwsEjS
         bebPV70ze/PbKeeVPI4bjG6X7ekgg0Pq8Gk9boqBt2mp6kkseUxV/yHpFW8vg2P/wdYr
         z8u+xaNphkgK74K10YVgQij7Dx0iGeYKCldb+yHDjUgOSajnsZ4hBWpfzLBUBY043bYL
         vcE5xvnwMriyBGreBnRUHVxzvrobTtk7Qq1eq4jELTqQ9Tg68bx2d69IYWZigcI4LP8t
         DwBwY0skUD4iN9BX3mv+IUdtdOfAB+ymzkCPQ0XE1E1SGQUgPxx4KNRafn3H/lYHHwkf
         8A9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712299695; x=1712904495;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gVKYAnnmAlON4rWKKLEP3SoYcUsb6KEipfoxr6rlUsQ=;
        b=DbFAxo3DzlLZtg0EOeqB9R8VnYFSxhAz8UYEqSfM7aDjQSSm0vsQ6380pGcmYSDHGi
         WCOUUyVg7TBs7jCghVMr8opBEDWI4a/SNnwuYWzmDWjxR9iFI64HJmOuea8oEIFzvUjk
         RBQLJ1e3QxI1rj1TUyPf0iASp1YASf//Qef+1YndGSVtg89D/2JuKmves0QAS29spwCJ
         Y7j0Ws1qwHkkqD3ZQvxXl6smRWXykBDCJhNUtjvXp45mckP/hJ4p3Jsb0956Fyz2c/yx
         d8IdjfkpU5cyzlIDd0Q3KuPJBI7wMQwsUaEI5WqMbrOiJbEBkxRLwUcNITmkbwQXYLPh
         Iqeg==
X-Forwarded-Encrypted: i=1; AJvYcCVQ2jS2ayD35b6G+9ZmdkXjcltRPgov0EMjlrcADjgSAPGOk8z61I+vfIkX6qfnIoiVriL2uK6Lvnpo27KJzkmZX8o3I6xJvM5ehQ==
X-Gm-Message-State: AOJu0Yz2HjkzRZOd1MltSaKUG+CQKZsKQCRPWrv+HCASdC8KD9joV0Ub
	xzNq1sB9IjD4M6mLqNbXYbdlwNpUOkI+Tmma/shpcvHYmoYT/h0vhrvSAWSNH60=
X-Google-Smtp-Source: AGHT+IH24JYQRJC5CkBUIUx2M/FA1p7K+9+aslAftnXvnZAE+7EBYSCh4Mp8z25S5NG0dEpzwtKxlw==
X-Received: by 2002:a17:906:81cd:b0:a4d:f56a:19fc with SMTP id e13-20020a17090681cd00b00a4df56a19fcmr448700ejx.13.1712299694767;
        Thu, 04 Apr 2024 23:48:14 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id ji7-20020a170907980700b00a4e86dd231dsm489108ejc.42.2024.04.04.23.48.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Apr 2024 23:48:14 -0700 (PDT)
Message-ID: <a4276893-ba74-4baf-bcb9-9aee9f90d8c0@linaro.org>
Date: Fri, 5 Apr 2024 08:48:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] ARM: dts: aspeed: greatlakes: correct Mellanox
 multi-host property
To: Andrew Jeffery <andrew@codeconstruct.com.au>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20231209104412.12916-1-krzysztof.kozlowski@linaro.org>
 <171213860535.16780.4635499105199545058.b4-ty@linaro.org>
 <8610e0a8aa5c2916fa04292a10e8a843862ff0ee.camel@codeconstruct.com.au>
 <c3902c6e-c38e-4604-b79e-2b5406274d8f@linaro.org>
 <65060691d4649c4a8da46e5ba762a3c905ade690.camel@codeconstruct.com.au>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <65060691d4649c4a8da46e5ba762a3c905ade690.camel@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/04/2024 01:21, Andrew Jeffery wrote:
>>>
>>> Acked-by: Andrew Jeffery <andrew@codeconstruct.com.au>
>>>
>>> I'm working to stay on top of things a bit more now than I have in the
>>> recent past, so hopefully I won't miss patches again in the future.
>>
>> Stephen reported conflict, although trivial, but maybe better if you
>> take them?
>>
> 
> Yeah, happy to.
> 
>> I can rebase and resend.

I dropped these patches (and one more) from my tree, rebased and resent
everything as v2.

Thanks!

Best regards,
Krzysztof


