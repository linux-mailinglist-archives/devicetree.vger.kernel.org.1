Return-Path: <devicetree+bounces-48127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DC48704CC
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 16:05:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93E2AB25F8F
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 15:05:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B221C4653A;
	Mon,  4 Mar 2024 15:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jw1wR1fI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51BC4642A
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 15:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709564713; cv=none; b=oNpMZYtXx47FPmlf3SXV1p9qvY4g4jGehL4iEXhSGWjOHlb65JHibjCYynzb7ix9GEBeHMrIAUdXOZ0S1aOatODOH8S5IeXlppaaJUPmlBci8X/o++QU/WqVVVxuM8KCEre9pOWrurzkQda9eD1vViJPnxJQUdM/VXkKXLhMefs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709564713; c=relaxed/simple;
	bh=aFzIYWpLx7ze1PbKKisSlGy++E+y8yDWrJ85BjnO9Ns=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O5HTPvZoxNklKKVEWYZYYqP6wK5t/8xK+VyUH8IMuYK0tLmQSteLaPyUyD+qk6fxgqdENaXcQpS5ETYkS65Pwk+1WrcXSwL+w5LRuTZfkd5i2bVqNDgpxSdRNZ10+1MKF5whQJTvquprH/JbleYP/DHCtIN4uEheO/sYESIn+o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jw1wR1fI; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a4417fa396fso575056766b.1
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 07:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709564710; x=1710169510; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vZJI3H0dwvZmmdTH+7pLS2Jlnz/cwhWbuBa7wLEeu3Y=;
        b=jw1wR1fIGDvefbYt3i7w6BAjM/37zJYx4/u2Otrj1cRBHoyS8fgxHYCPYfK+EHTc/y
         6M2Zk6sM3EL6p5npvlSPqUcdFVfpoF3HoFAN7YSrcOVetRevAdWxif6dyK77+tmzNOeF
         8GYIrTyRkVtfsrmbJye0qYeAi4EyN2G0ejWyWIHZB+A3F7L0/v1IawTI2UNfADrUBjW2
         9KY5DGoXfvEzCk2kCcL4fRyDW3lq+QIBAXFwgzpQn+F+EEPCSWSJhzWXhWGUftknEP+e
         +AdSDwQtLgxZXAsedaTCwmKpHxs5igLsy0US1+xd0KsDguwwUIJcm1gwK0CykF9iwPTi
         +0Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709564710; x=1710169510;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vZJI3H0dwvZmmdTH+7pLS2Jlnz/cwhWbuBa7wLEeu3Y=;
        b=NGlcmVlSMOEmfRR2OC6U51iU9tagooCUxFKXUxcj2EU7wRzJ/6FQtk6IU1nL344UDt
         8LqoqevyggIKC4P5Ik6ydPnGsb7z68x3MVpq6nsUE7mtLsT8NdFzEn2qTjbkKZ5fpJ9t
         3CCKN9PNK9kRDSKKGQ2i7tbCH0WzBkOmbrOcoOC/PxWYJvvM36aOvs4B2vEtfGzxlSzp
         5ERH3qQ0Fq77eSsMk7ujQGyr3cvdC/p4jdcejs7brhs1TQxnV8xO1JPkLcsVfggA5Guc
         vbb8HRuIM2daExPoYJ1rMqVobP0xMt+t60RPMfB75eneoFtQZSoPrHWOAo9d5SXg3P1s
         CoOg==
X-Forwarded-Encrypted: i=1; AJvYcCVf96e4qWFkJ9YbazVlCMbf4lSUazNQIzgSehhsy9LfAbqPGG2ZoRMguFXhviJXjBcB7npWuXBKsob3GwgtsvWKpaGtfgfSO008TQ==
X-Gm-Message-State: AOJu0Yw8wsFORFntqDwfCHyBgrWCJ82kfarPd9GgF5A+L8tf3J2iLfwm
	pFMfuImW5IO1/cohZfQDmUjspeKOSHD9WjQa2oE95VrtU3dWsZZNYiWls8aP8Yo=
X-Google-Smtp-Source: AGHT+IEnz6QZ+BBBdhwZU2aVBi7I3HTmP7+LI3oH8eZ8kUL+tXj1J3CQ8RXj0bs+vE+d6HYS34PFPA==
X-Received: by 2002:a17:906:2346:b0:a44:f91c:a85 with SMTP id m6-20020a170906234600b00a44f91c0a85mr3249491eja.60.1709564710341;
        Mon, 04 Mar 2024 07:05:10 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id wr8-20020a170907700800b00a4553c6d52csm1105065ejb.35.2024.03.04.07.05.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 07:05:09 -0800 (PST)
Message-ID: <7925ce69-0cc6-45cb-851e-75a9f19f883b@linaro.org>
Date: Mon, 4 Mar 2024 16:05:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] ASoC: dt-bindings: fsl,imx-asrc/spdif: Add
 power-domains requirement
Content-Language: en-US
To: Frank Li <Frank.li@nxp.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Shengjiu Wang <shengjiu.wang@nxp.com>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240228-asrc_8qxp-v3-0-d4d5935fd3aa@nxp.com>
 <20240228-asrc_8qxp-v3-1-d4d5935fd3aa@nxp.com>
 <f8ce39e9-7f06-49e7-92fa-785bd1cd2d1e@linaro.org>
 <ZeFTDSuLEeYrsbKi@lizhi-Precision-Tower-5810>
 <0cc8a370-4497-40f5-9040-1584c0c777f9@linaro.org>
 <ZeH3UhbStCTh04Ku@lizhi-Precision-Tower-5810>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ZeH3UhbStCTh04Ku@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01/03/2024 16:42, Frank Li wrote:
> On Fri, Mar 01, 2024 at 07:30:10AM +0100, Krzysztof Kozlowski wrote:
>> On 01/03/2024 05:01, Frank Li wrote:
>>> On Thu, Feb 29, 2024 at 10:44:20AM +0100, Krzysztof Kozlowski wrote:
>>>> On 28/02/2024 20:14, Frank Li wrote:
>>>>> Add power-domains property for asrc and spdif.
>>>>
>>>> Why?
>>>
>>> i.MX8QXP i.MX8DXL and i.MX8QM need it.
>>
>> Where is it explained in the commit msg? What about other devices/variants?
> 
> I will add it. These patches are for imx8qxp\imx8dxl\imx8qm only. If other
> platform have problem, it should be fixed by new patch. 

I would assume more responsible approach from NXP, not just "their
problem", but anyway that's not what the comment is. Why do you say all
the variants have power domains in one commit, but now in email says
that they might not have? All your patches are vague in this aspect.

Best regards,
Krzysztof


