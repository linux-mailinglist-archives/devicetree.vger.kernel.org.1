Return-Path: <devicetree+bounces-47070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E1386C2B4
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 08:45:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FB2028A0ED
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 07:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49A854779E;
	Thu, 29 Feb 2024 07:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wYd/8Lvf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850C947794
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 07:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709192731; cv=none; b=jsYCucCarGSg2oYdUl/1GuULmkebyvhpzsaRMIyQ5XFDhWmQjYbw+4MYdM4TcewQ9FOMmdZ2593DIMuXYpUqIwLPD2aYW3nLxauPyU0knwHUVSxQx5DfYkLOTNYIrRmTGUmQcj/ImYYvL40GvU51rqF65RWcEE9JHsaO5c7AclI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709192731; c=relaxed/simple;
	bh=nprCiNIb1lN5/qtpPbPjzPejLTVyLTXlXUF6ldlGyIg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qOADZ+una7YlWTuXKU+UTrMtyoRgK6p5AA+lx3QQyOZPO2WOBKjXL8GWdw+LuYb8peRbZUZm8+XIW0C9jTUrLngFjB7titQUxylal6U62StjvVtM/k6azpd2kjnNZJmMIxK/lZt/fG65t1sDvEf2X3WpqCq87bTibphBjWeaLpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wYd/8Lvf; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a3e552eff09so75311566b.3
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 23:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709192728; x=1709797528; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=aiDM2lk2ZusTKKAWchaELkIj8SFXFJyRyBEHuc5rkt8=;
        b=wYd/8LvfsUA+DJWdu1YvvoTlFWZvnsoWn5jIiU2zGUYoPENig9tTDv+j3P2qcOGPy8
         JiQ2XJrcOsZK5m3X72HdUPougX2vRrmnj3V1jnjBd2sBsMHh+/X0d8KqMfw615FXrnQd
         W9ziD9aoYXESGdsHlHmSDJSaQqWEw29UImRSnZD4ybOx7mRYK7tKfaJ1Ycw9z+ORJ6OC
         TiRsahXjvaZI7R36yQEMFgS+CcN8Np+flWBv7mOH1AFydMP5FLMgz9PYS+fAAEXR5zlH
         U29X7FLIUMKshTCmUEgjrSz1OEVCU7n6JT89PyF9MReLHLoV4O2wS+adw41uEfmgWLMh
         IGYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709192728; x=1709797528;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aiDM2lk2ZusTKKAWchaELkIj8SFXFJyRyBEHuc5rkt8=;
        b=lTAay3+27MLdjqkvWp39yxOQHW1mRXyl0CzVGdlT6wyoPfC1Bt+cmLQpgl2z/A2TkW
         A88uN2HakpxU8zkxWU+DxkjJEQVM6dJdvAxJEZi+SQXdIccOO3C3lbEHzNsqfWAOw1GZ
         c5r8MwyslbLF7bG7HxyOyCCYQTDuvPvZKkkEvx6c555HeG4XnLu6VxAaBoOVs4KuQOq2
         0aT62pIzM8jHx7D1jfv11SHsE7IM85GQGlDcxWgkaCzf3vuAo8nUG2nTA1+tGHbca6fY
         pWX0kMTxaNQoxC6F4SeANRPD4T0/dl6gMA12FhiW0cDx+6fOmeuem5w8xqQsw/PmdTB3
         KFHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVH/VGQx4M4tUv0nPmax0cdtzd4uglWf9PDZWNhv1tHa6uQh+dR2J5iGF1JDlIX63dDr+Zsp9EFXlHM0X7Ol8B5Ku/dUpaAdxG8A==
X-Gm-Message-State: AOJu0YwHU4qJwykCyPkjm7qmIHkMP7yWVWW7ys8yCJWPQUZamvlc+s08
	zW1yp2ZR03c3EgJGr0sIsLEE/fyExqA5yL43O3gjjN0KRd1GQD15yWaSBgPNCgQ=
X-Google-Smtp-Source: AGHT+IFP6qMAvSFJZFJJC6eIDbHPkr6AJyEjLw7OetdzaRfyq5ERUUiZnqTTbAF14kuhwEzsX0Xy7g==
X-Received: by 2002:a17:906:7150:b0:a44:17da:41d with SMTP id z16-20020a170906715000b00a4417da041dmr853496ejj.46.1709192727958;
        Wed, 28 Feb 2024 23:45:27 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id mc18-20020a170906eb5200b00a3f28bf94f8sm394701ejb.199.2024.02.28.23.45.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 23:45:27 -0800 (PST)
Message-ID: <2ad77fdf-ab8d-43b1-be19-304c9f983f3a@linaro.org>
Date: Thu, 29 Feb 2024 08:45:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: pwm: add support for MC33XS2410
To: Dimitri Fedrau <dima.fedrau@gmail.com>
Cc: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240228133236.748225-1-dima.fedrau@gmail.com>
 <20240228133236.748225-2-dima.fedrau@gmail.com>
 <6dd18b29-6e45-4c35-8f7e-5248b057449d@linaro.org>
 <20240228154129.GA749753@debian>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240228154129.GA749753@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/02/2024 16:41, Dimitri Fedrau wrote:
>>> +    maxItems: 5
>>> +
>>> +  pwm-names:
>>> +    items:
>>> +      - const: di0
>>> +      - const: di1
>>> +      - const: di2
>>> +      - const: di3
>>> +      - const: ext_clk
>>
>> Aren't these clocks?
>>
> di0-3 are PWM input signals which are translated to output voltage "vpwr".
> ext_clk is described as PWM clock in the datasheet. Didn't used it, just
> mentioned it here for completeness.

Then it looks more like a clock, so clocks: property.

>>> +
>>> +  vdd-supply:
>>> +    description:
>>> +      Logic supply voltage
>>> +


Best regards,
Krzysztof


