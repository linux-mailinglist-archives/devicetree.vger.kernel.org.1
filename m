Return-Path: <devicetree+bounces-49761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3271877AF9
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 07:31:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 415B1281CF6
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 06:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C52D4F512;
	Mon, 11 Mar 2024 06:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cn0UkGuY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC459C132
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 06:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710138702; cv=none; b=oA6lhttOaGcSWl7APknhbQmf3QwHZPiZ7N5rtiNge8lPQK4lBnD0TlG7u6/Z7LLcphJa08Vi25VPor0RAfoudJZY9yS8qdWX7aP2dpn5z2EmoT0FxcES9QWVWya9Wshjp1wuKWztsQ05mSMl+jTKOtVa87qSfD9x6J1vKGf3RPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710138702; c=relaxed/simple;
	bh=vgQ+pstQbDQqnoScDKRmVdDkLQlZS+hJAtapwA/uhws=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XNAf9b7BKqEc0z3t3THMr4PgoY1ew+27HfjRiRKdjujeO7YVoxWfh1rWLqDCs/5DL/OYIJm9jdfLWxLGmy5z39tK91knnH/ATVPpd6QqlMCjduB9iYVrSGA/99uhGp3djB2DMcaTNRyytl1krjwsR+NzL7HsTFmuIEe2BogBtq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cn0UkGuY; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5645960cd56so5329123a12.1
        for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 23:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710138699; x=1710743499; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YKshMjH9VFEW1rVLZAWxPTmSOr9NaVW5YdYSLjsh6nw=;
        b=cn0UkGuYJ0a1WEKNXcfKljwIDlD5NaOs3/DpybUMrClZ+4W8qvfLavKz0B3rSGSBA2
         q9WfI5Ijmh9r2oxESX36isPkjbHPSK1Z78p7W0VKQnhh6IS5tQvtHGbQrfna2j7BKLMo
         nnVj9fy5LYsiZAWQYFc1oaXAUpkZf09Xoq421l9wfAYSZLS1LckLsbjgYAqNWXNRyRf9
         F3RCpA80mzOZp/7NgT5jM5fvqmWEZ75gtPZCVVwooaQKJqmbcGuxbrTpUV96xxsGjoEh
         715oiqcbaYbAF7OH2F1FDHnEXP98+4XTV5OlJXBFlcGGFf2Z5hSIZ7RzVj2NOXAT9QBf
         H2aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710138699; x=1710743499;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YKshMjH9VFEW1rVLZAWxPTmSOr9NaVW5YdYSLjsh6nw=;
        b=UlUEVMYzDIld0jlVq4SH8isCp/uIBlQpI39vWg+xXgrkf70/X/mWmQaQwxxMfCV6fc
         8R32BFc49L6qLPYsmJg2aMsxSiRO+5surP5BMVlxVpR1ulXj+KIIYGIRtSUTS5hHGtFV
         u9XZspzpu64bnSANzux5WoK0cJN/FTF0kd8aij8puJWNjVkBiTKMVmsqwfvN6mPDt/nD
         CftYQWIYuO1dg+4FHXOih3nhis9Miv3H/bYTPigeWiY2cVzn5Sd36U1md0GTV/J3lKMC
         b2H0VLb7Q0mWchNOLj0xL7s6Arc2yiAayvcFpsz1voCkpn6fbryU4eVkiqVcUYC9FouI
         N2Tw==
X-Forwarded-Encrypted: i=1; AJvYcCW/drBEWB1/++sBUQ1GTI2AiQnuTXj9yE6Ypw+JiRJFpzhr8O/kNhLZxiKpu/xPJlRc/Ney378N+P4Nkg1pa21V2432d6Zwp4PQGQ==
X-Gm-Message-State: AOJu0YyyD0dJ3CzXCMz/hpLBpSn5RXk9qC4lCdy619l82AyqrHlyc6gp
	Or9t9cuvGpAMJxiYR/M5uON9xkpQPJVpSbpitHUWQtdBokb+lZlvI/3jI+zC+6Q=
X-Google-Smtp-Source: AGHT+IEQje1kr9GE+QlVoYV8NagghXFhM5Ye2+zNqCpSIidqYQantMlptrrQwir+CuMooq++yFE62A==
X-Received: by 2002:a17:907:1681:b0:a46:1e17:fbe6 with SMTP id cx1-20020a170907168100b00a461e17fbe6mr2341571ejd.9.1710138699349;
        Sun, 10 Mar 2024 23:31:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id dx26-20020a170906a85a00b00a44f0406c8bsm2568132ejb.60.2024.03.10.23.31.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Mar 2024 23:31:38 -0700 (PDT)
Message-ID: <2914e313-1fb1-41f5-9db9-ce44dcd4903c@linaro.org>
Date: Mon, 11 Mar 2024 07:31:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/5] dt-bindings: input: cirrus,cs40l50: Add initial DT
 binding
Content-Language: en-US
To: Jeff LaBundy <jeff@labundy.com>,
 James Ogletree <jogletre@opensource.cirrus.com>
Cc: dmitry.torokhov@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, lee@kernel.org,
 broonie@kernel.org, patches@opensource.cirrus.com,
 linux-sound@vger.kernel.org, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240308222421.188858-1-jogletre@opensource.cirrus.com>
 <20240308222421.188858-3-jogletre@opensource.cirrus.com>
 <Ze4KNBEsK5juzpNR@nixie71>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <Ze4KNBEsK5juzpNR@nixie71>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/03/2024 20:29, Jeff LaBundy wrote:
> 
>> +  - vio-supply
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/gpio/gpio.h>
>> +    #include <dt-bindings/interrupt-controller/irq.h>
>> +
>> +    i2c {
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
> 
> Nit: most device trees tend to use 8-column indentation as with kernel code.

If you meant DTS, then kernel coding style applies, which does not use
spaces. But this is a binding, so please use indentation as defined by
writing-schema: 2 or 4 spaces.


Best regards,
Krzysztof


