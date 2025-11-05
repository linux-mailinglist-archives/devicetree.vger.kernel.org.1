Return-Path: <devicetree+bounces-235231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B159FC35D81
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 14:30:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5C2844E9701
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 13:28:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B916831E0F2;
	Wed,  5 Nov 2025 13:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kgc+qPbc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0509A3164A8
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 13:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762349290; cv=none; b=B4REvaVg23cYsITETCeaW28JzQQUVAag9priT5my1xisMuXFfy9NCuBQoQJvRtdPD3KxrO0i5Slm3cz5TW6DMihDE2ElJHQZItmZq4bo3yf+qP01SjF8HcaAXIDWhI1psxqTzhjqbg0xD8BL9feZnJna1Hj8fer97R/bvqAfWCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762349290; c=relaxed/simple;
	bh=4Rvz086RQXFSFc6WQEGb0sqvVLV8SfpNGQ9nWE5laec=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZeDAehJFQlDmslNausL8E93y0lDNucChJiYmZBi+OQ6u7Fxm41jNKq6BRStxyV0lygxqMvuhup2S53kf1h+mrivJX54/p/fGpH+xDGQ/NWWcQLRqH5pwS1Pj1dOSD1ridSdnMtu25ng1DjF5RvdY/ip6Sq2ko3vxQbVX40235vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kgc+qPbc; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-63bdfd73e6eso1569216a12.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 05:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762349287; x=1762954087; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Rvz086RQXFSFc6WQEGb0sqvVLV8SfpNGQ9nWE5laec=;
        b=kgc+qPbckYzyL3k6IH2RAOVIr2rEVjeC5niFND+OR430MaIO3i3O7TbQfPoA+flMOk
         l7xaM8RxxOF3wDjAYRimZTnvvvzilX7LqUkrOl4Kvxi+a/L8GomFZLBe2VJ2uFuemUff
         8gqo1bFU/RxXv/5k0vpjN6UtK/yY7TgoKGnp6J/KGoXIQpjRJpSFxwuRyyVFUh11K3JH
         kqOc06QVRtA1TnVQGS0rj39xHC1rA1/ZPX96hWxAqhxhRWG1AcNGL87f0TM7H8vceUFQ
         ePMRoTvVm0xUl2GXsdEh28hZibF5ZZBNTWARE3ZisPFpVbgIAXRkbY36IBcZs3K1fPDa
         QWzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762349287; x=1762954087;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Rvz086RQXFSFc6WQEGb0sqvVLV8SfpNGQ9nWE5laec=;
        b=VdQezlzfmurSqtKOSRr3B7wogCs+aD6629hhONpjNRgENfYE/cjReVstTfqUceLIE4
         xgW/o8nA2UZH9HFyXMheEaBivIxokvh+wA5mdTEspNih0wr/Ym4VHRCRpxoyrB0wh+JS
         NlT7ka2VBA8gTmxbU6CqR38/3hCm3Gz1R/OiVhwfWSzEQM4MFJWUPYw+t1tpQhGKdOH6
         +HdjgMcIM0Q2CVqyQjBK/URvdrckwhEEgDyUl9zc9KsdKnFKFfL2j9EqJoZ6HnlXCOPy
         ISxo+9tHLaCBrvFMhNHeNtz+oVrvbdKgHh9QBh7NXY7YBUsWKkeQ4CULh0SWItHq7/0I
         YaDA==
X-Forwarded-Encrypted: i=1; AJvYcCVD7M0FM9fpLYbs0O6eBFnbU6OWTuUvJzqtc7asDZt9y/Ie9FnzctRyD1QFepfZOvuW3ftGNAiLv5D3@vger.kernel.org
X-Gm-Message-State: AOJu0YzYRBBtzuDSaKg3BmgnOUeki5or2UVrk88+qK2fx4FNWT3nFKlk
	C2ENqK7h6r1+yIK5zL2xGN0BcWg5ya7O4RfKRlPeKtYRwKtNp23bQJPj
X-Gm-Gg: ASbGncu0+aOf6iXx1rm5dOcQ/7ZNZEXEC7bUW87isaTL6JweJXSvgbfENoCY3OFGTP3
	a/2x85+CV/UJ6TGMEidoQbT+xYgu3iysuB1vFKeHtEYRwkGrFdno94rCujMcTcK3dKuUueL/coI
	s5qUiPagbVNTKgFxnnKH7P5sWHaPFGTZGpbLGSBzyCTZ/3ZFDc2FMx0HrcfvTvRLO+kOA7cxzf0
	IkNzGoWTqsH9ANzxiMcsu1WElBRv1lmaftSw9ujIZRbfBDKaXB8cxaSwulcyXow8m76j0JYzxet
	2b3ASiikr/SVyIO2AMLDE6xF5VG4GzAdizzkKFBkf1RT5q/+r03E55tG70XQ0NhxVw4A0TMwm2J
	ne03hoMjgpY5M9wWA2mIl+l6otCCET958G7XsQfR/w5go46VoPfBa+GCQ4srpUOrTCmuul4QwdQ
	b1Kwz1OdnWbmndQMJri5rixb2zb4au1jdBNrEZLROjW4u9BAxPKVREHdcEH39/EsY9+a6365NX7
	Io=
X-Google-Smtp-Source: AGHT+IFM721P9Xgz9zOF328JaoanXeTi0/muw8L0qkZo/yHkrkZLPf6InYFepquvkNdtMAFB74Ux6w==
X-Received: by 2002:a17:907:3c8d:b0:b70:b9b6:9a94 with SMTP id a640c23a62f3a-b726323d57bmr352421566b.23.1762349287068;
        Wed, 05 Nov 2025 05:28:07 -0800 (PST)
Received: from ?IPV6:2001:9e8:f106:5b01:5cbf:5078:e623:8643? ([2001:9e8:f106:5b01:5cbf:5078:e623:8643])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723f6e26d1sm478254466b.35.2025.11.05.05.28.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 05:28:06 -0800 (PST)
Message-ID: <3897d941-4cc2-4332-90fe-f575eadc6e48@gmail.com>
Date: Wed, 5 Nov 2025 14:28:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] gpio: add gpio-line-mux driver
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thomas Richard <thomas.richard@bootlin.com>
References: <20251105103607.393353-1-jelonek.jonas@gmail.com>
 <20251105103607.393353-3-jelonek.jonas@gmail.com>
 <CAMRc=MdQLN5s+MpkLUF2Ggc4vYo30zOXrA=8qkGmXvu7N3JjeA@mail.gmail.com>
From: Jonas Jelonek <jelonek.jonas@gmail.com>
In-Reply-To: <CAMRc=MdQLN5s+MpkLUF2Ggc4vYo30zOXrA=8qkGmXvu7N3JjeA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Bartosz,

On 05.11.25 14:15, Bartosz Golaszewski wrote:
> Hi Jonas!
>
> This looks good, I'm ready to queue it but I'm afraid the consumer
> label "shared" will logically conflict with the work I'm doing on the
> shared GPIO support[1] as the shared GPIOs will appear as proxy
> devices containing the name "shared". Do you see any problem with
> changing the label to "gpio-mux"? I can even change it myself when
> applying.

Sorry for the noise, I misunderstood your text a bit. It's just about the label.
I'm fine with this and you can adjust it. Thanks!

> Bartosz
>
> [1] https://lore.kernel.org/all/20251029-gpio-shared-v3-0-71c568acf47c@linaro.org/

Best,
Jonas

