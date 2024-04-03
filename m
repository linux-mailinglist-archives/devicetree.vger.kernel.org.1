Return-Path: <devicetree+bounces-55781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE81489653B
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 09:01:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A48B32843B4
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 07:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551615380C;
	Wed,  3 Apr 2024 07:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IC1x669g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B67A17C64
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 07:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712127623; cv=none; b=elRUSKWBPu01pS3JMYHcHSeuviYGc6/U92VRAFGKi3BKS23kMxMOsg8ugEO6w2vsvg7mXfbtQYC1joSgATRC0Hr1jfwyLNmkufmNL1sHdhhAomtMVY2vOo0vA/c8G1N7MTeYKgoJH09NanDKGOkS0G5PiPf9jIut4jeO5cx913w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712127623; c=relaxed/simple;
	bh=8Umyj7Zu6QVO6Rv3Gx0Q+Z9lAaxN7gnQQWMfRL912CE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VJjQGRx2zbSmlv/61VSxwgGdGz8iDJ3q0hcaEZ7ul3XSUX0hoVciehTpngDlzKeFYAJX28dFJazNDUtsZq7IoyyOzbb05FXXP+s+j1tSOLwSiCGvpfedulo7WF1W24YVA2ANp7FBFSnfmDEn3nujim5hVAMLaJiSE1+se1QjWhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IC1x669g; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5684db9147dso6748524a12.2
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 00:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712127619; x=1712732419; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=XOyTIAcv3DSfoR4/wUjQ8NrAHjvlEtu1ujIm+W39vX4=;
        b=IC1x669gb97Hb9nnxkwybiqj0ehP4ritfemPjPbpr1YGfhxDzfupIN0YYDlpZrZoZn
         wnxRqvql1PbRiOwciLaLFILwtcfjSOYf83qejfEl90vnWmhk4Ek1fL9sziPbW5ndVTMY
         ewOsW1/kJNRiL+Yy98PywuVgJr9u0DAnFNFbaUmNNsMLkyFcNSx6inI4NcasDwXXSRdD
         vVpCXmfZP7pM2+wyeLaMpLEK5EAHRKk3+XE+hFZHj+R67zxINfrekOHnm056USGNkktR
         kKJMt1CJhjwvzpWm0XWKE/6y0gg8zRlqOLHaPb5zSmy05EH5xk7b1Q6JPSb80UOYqTBv
         8ejQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712127619; x=1712732419;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XOyTIAcv3DSfoR4/wUjQ8NrAHjvlEtu1ujIm+W39vX4=;
        b=SWSvO3223c8G0vEGaXW/9Gj9NM+YhG293myKFgV7VkdLnAbtUhGtk5hsPSe5cr7JyI
         /WOmoEAwC5imZINLgqY+X2VkoycdTBMQGlK7gz7KSinTRm5yVYGiQHMqk9Mj4ZWJlQox
         1TC47qOMzuwpKF7tu4bYYtu95IAl7SUeafU8UkKwJj+ByKj4pnagO3gT+LAOPd/aA/BW
         5uQNL+2rUL/nUSaiZ1nnyTZG5sUZrztfbcc3kTH18OTjBLdK2SOt/cQKjh+2c+OXGLdc
         nrOAGhDSIuPumqsxoK+WeSxIMXYh+++UpP7Bp/vKl8H0NJlXQOvtM8xP+Y17+rUxm82Q
         ycmg==
X-Forwarded-Encrypted: i=1; AJvYcCV1kxE7JzYcm15A3ClWRz9P8Cjv78J0SADZJKh4PpOI0aUUycio34Y2bkVCZd2kW1re1ahmQJYH7aqHzsotF2vA3BuT88EF5aVnuQ==
X-Gm-Message-State: AOJu0YwkvjJnSfG07B5wEICd8lp9VYVdUBO+5bgGkUcHezzTYW7EF7fE
	bAdd/RHDkdNaVBBEOXj3jXFh4LRlXbjmbi11UTK2Of6OD/WpGo3N0beryhlq7dU=
X-Google-Smtp-Source: AGHT+IEjZmEIm8e+Tm5pvPv+GaXHDjF2pye0BRyq9Je2gL3MsbNPssQA+BdtXMmy16ASRaRTZ9dKjA==
X-Received: by 2002:a50:d6c1:0:b0:565:7ce5:abdc with SMTP id l1-20020a50d6c1000000b005657ce5abdcmr1233424edj.10.1712127618866;
        Wed, 03 Apr 2024 00:00:18 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id n24-20020a05640204d800b0056c5d0c932bsm6515031edw.53.2024.04.03.00.00.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Apr 2024 00:00:18 -0700 (PDT)
Message-ID: <d0769eb1-984b-4e2c-8d9f-818113d8afb2@linaro.org>
Date: Wed, 3 Apr 2024 09:00:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/5] dt-bindings: pwm: Add Loongson PWM controller
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Rob Herring <robh@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen
 <chenhuacai@loongson.cn>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>,
 loongson-kernel@lists.loongnix.cn, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, Xuerui Wang <kernel@xen0n.name>,
 loongarch@lists.linux.dev
References: <cover.1711953223.git.zhoubinbin@loongson.cn>
 <edad2bb5b0045c633734c1499fb163c3c6776121.1711953223.git.zhoubinbin@loongson.cn>
 <20240402174051.GA324804-robh@kernel.org>
 <CAMpQs4K_VSqdm7x=cSyMTBYQyOm=th0YrYKdZ74dp35hyRBXgQ@mail.gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAMpQs4K_VSqdm7x=cSyMTBYQyOm=th0YrYKdZ74dp35hyRBXgQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 03/04/2024 04:37, Binbin Zhou wrote:
> Hi Rob:
> 
> Thanks for your reply.
> 
> On Tue, Apr 2, 2024 at 11:40 PM Rob Herring <robh@kernel.org> wrote:
>>
>> On Tue, Apr 02, 2024 at 03:58:38PM +0800, Binbin Zhou wrote:
>>> Add Loongson PWM controller binding with DT schema format using
>>> json-schema.
>>>
>>> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
>>> ---
>>>  .../devicetree/bindings/pwm/pwm-loongson.yaml | 64 +++++++++++++++++++
>>
>> Filename should match compatible.
> 
> Emm... How about renaming it as loongson, pwm.yaml?

Use the fallback, so loongson,ls7a-pwm.yaml

Best regards,
Krzysztof


