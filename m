Return-Path: <devicetree+bounces-161251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 494DEA7330E
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 14:10:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D219C17DF41
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 13:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 562C82153D3;
	Thu, 27 Mar 2025 13:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nG466EPj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1BD1C5F35
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 13:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743080815; cv=none; b=FnU42jI/w5H5YWzEZaj6a1ujasXE/rAc6tJ9RBL7+saq9xUHFMil1yi0k/tlFMaHkC6EuhZXGTWLmUtIlb0NzdyP7GiRQcojgHtrKyeYXO8KDAPvtsEaS9laBogciwABnAZE/Ai2GveTAUQEdmd6zbdxsSaa0wUCYUzr6IyU59s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743080815; c=relaxed/simple;
	bh=wf9E80CH25Apjy6aZmC6g6SKx7qcBssk8jrT3XPV5qA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u6pJu6wlclIRuelnYepuJ7zwLqa1aesBfObZx2Kcz60Pq9J6QjAP8QPs8iuR8yu9dsdjJ+BRNzNp8evlFUKmqXaKnyOJasl0ul6iRHkn6lxx8R1Z3LodcWwUUYxTN0QgvqOyVgAbqNxsiWoV8M8QiW6Yfc6rjZidek6l1xeV4zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nG466EPj; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43d72b749dcso560885e9.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 06:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743080811; x=1743685611; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Df+4L1elpYvZQ2TC5vTqzd+H8qoM4CFkwhii1CqFDDA=;
        b=nG466EPj5arj/8aUn+rXYkSXWPeqEXX6enORRq4XQvXqf/PJMIaAtoSHTbDAvuCcM6
         8IHqu5JMKUqcj8gSynSZzySxfPGd3E2MQZAz4gLfn6OtpVsiIgXT5fwN5jCyvr5T+hHD
         i2bi2bPc7cL+QPwtmBomHE1FmxBisvOcrHEJezeOjUpJOKs+/A1Fx1/ioEjL9IlxPtTy
         NhGcjI0Se/801CW+5AqvttdowZvLJfX2eBpX3/XJtFwC8mjwB8cQXQ09oDiDO29aahOd
         8E2v3gaTKESaEelEO2ZlunZQCVwuVjdKOJbch+9K4dvOOgJh4KcI7EsbkRSmMI3v5T75
         SgkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743080811; x=1743685611;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Df+4L1elpYvZQ2TC5vTqzd+H8qoM4CFkwhii1CqFDDA=;
        b=PD3H181g3CTV3RTThZhZTPbaroTYfDBXtYZQLwxLWP0OdB4Uuk92Oa/JykPbtFUFUP
         iAPNm9Qw80wMvTt/huZ+jy451MPRYlrwFk3+4Qh6Lmo6jLJ2Q8hN8kocV2grbHteBeUV
         XVw0C37F0wTdKOwICMfMwDS75MeTXP8FBrMkALZS+WldExqsqVZTqsaFL0LPgPN8Sypt
         5ikccc7V0UHfV24fXRSup+aLzJiwOpe6niEcAaxV0pGTmJvT3CQXcTlngdRLOLyJXcjc
         jBwioCoAhB74MFItbP8ocQlMtPlsy9PCa/TSrGZbPswpw77rPI/r4oag14P5vZx/5RgW
         PECg==
X-Forwarded-Encrypted: i=1; AJvYcCUv6QHoFtUPz+2JcZ+HniFAK6dOY35wn/xD1/VDU7SNeq61mWKNlQXpJPuDQEyRUtH6sYt+wxbFNg7r@vger.kernel.org
X-Gm-Message-State: AOJu0YzuzzmssjSHPr//VELejusb9zMa2cb7M8yL79NzrWq7BqIDCmFD
	VimK0/ofszW6iQXSSKRfGW3FbbGGVzemIiqewFkxhj5GRnNp7+7R+SagSgvUNgE=
X-Gm-Gg: ASbGncv3gTkBCvAL+UfYIvZcA12w1O+9dFWF+0G4/vguiwH52aBXPL+aw3Z6uJTSRUI
	OArM5KIirFcUs2/fCYvxvokcezDSLKQMgSdQP+zzQuicoQEHuBx+UvSTklAViv2JBvm0KtXy/gg
	qZAPkWeah7HNktmXmaxs2Y6hVmo6i7uHljK425fsldlQ2hgUpaqjVVKmtMNyvhuJODGbLzrzdg/
	pLkNYuZOrIIrmNJqF+rINxuSFernxIcvMqTr4LDzyK/idD82wfFtu8s89lgzSU7X/QavD4706+v
	JVbngo8XWBCwvhRamodqfl/1OxFYA8/1NQ9ahTNaDTLJ9yXO6r44s12032kDOg0=
X-Google-Smtp-Source: AGHT+IFAxDWavcatGQJ+zlLmbtRY3kC4YK9xaSKAOvtQODs+VlNjiHwpMWJxGB/CTTasTcwhn8wPlQ==
X-Received: by 2002:a05:600c:3509:b0:439:9fde:da76 with SMTP id 5b1f17b1804b1-43d84f0e854mr13468175e9.0.1743080811001;
        Thu, 27 Mar 2025 06:06:51 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d82e6ac9bsm36639915e9.12.2025.03.27.06.06.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 06:06:50 -0700 (PDT)
Message-ID: <cba249f6-5552-4538-a2fc-4fcd185fefd0@linaro.org>
Date: Thu, 27 Mar 2025 14:06:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/6] arm64: dts: cix: add initial CIX P1(SKY1) dts
 support
To: Peter Chen <peter.chen@cixtech.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, soc@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, catalin.marinas@arm.com,
 will@kernel.org, arnd@arndb.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 cix-kernel-upstream@cixtech.com, marcin@juszkiewicz.com.pl,
 kajetan.puchalski@arm.com, Fugang Duan <fugang.duan@cixtech.com>
References: <20250324062420.360289-1-peter.chen@cixtech.com>
 <20250324062420.360289-6-peter.chen@cixtech.com>
 <865xjxmlgl.wl-maz@kernel.org> <Z-Nz0DU441Wwj1i4@nchen-desktop>
 <861pukm9yd.wl-maz@kernel.org> <Z-Tz1moMNozx23k6@nchen-desktop>
 <e43b1a00-b221-413b-a36a-3a65e17f800f@kernel.org>
 <Z-UNufwSNmZreKya@nchen-desktop>
 <b2e1da92-0dfe-42c6-9f36-32486b768220@kernel.org>
 <Z-UeoIe4CPD3LwJv@nchen-desktop>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <Z-UeoIe4CPD3LwJv@nchen-desktop>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27/03/2025 10:47, Peter Chen wrote:
>>
>>>
>>> I thought we need to move one step and step before, and keep clean
>>> and avoid warning and error for every submission, but it seems not
>>> the way you prefer.
>>
>> No, from where did you get such impression? Maintainers-soc-clean-dts
>> explicitly covers this case and I WROTE IT, so how can I prefer
>> something else?
>>
> 
> Krzysztof, I did not mean soc dts, I mean the mailbox binding checking
> warning which depends on this patch set.
> 
> https://lore.kernel.org/lkml/174290730775.1655008.14031380406017771195.robh@kernel.org/
Ah, right, true and usual solution is:

https://www.kernel.org/doc/html/latest/process/maintainer-soc.html#submitting-patches-to-the-main-soc-maintainers

point 3, but heh, I am repeating myself.


Best regards,
Krzysztof

