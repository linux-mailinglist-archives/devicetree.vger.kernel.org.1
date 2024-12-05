Return-Path: <devicetree+bounces-127416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6B39E55AB
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 13:41:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97FF428431E
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53058218840;
	Thu,  5 Dec 2024 12:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aABsUvef"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7453E218849
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 12:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733402440; cv=none; b=hi56s3lVYNIOffGVXVCiCHYhtSISs49UXP+Ubcun/qsy2xUczM1dD17MDlscwHveP1ohdQChAxB67iawEeH0MA1yEnx5gE9yPg0N4Svuc2oHbJbL2TS7Oe4DIsMI2liNlxZpTnp1RQMxp626DlRUis6MTNaacVl14yVHaQjy8mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733402440; c=relaxed/simple;
	bh=/eOgEfxOouU7/NsexcFArdA9e/HQU31dCSo6rXafGRs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nCz4brKWSIgGdWE0Kt9kWcPfFGT6jW2yiD8zEd7jE9ES/ZNMkhJSkfcJfu7Z5gjXtJAuMQgOhVPghq952hTD/Ytbld/Uz9ijb8JVJmEXkSALLja83V/5Illnq0U+lUlC3xLb4HZztaEX3GeTkXJsBBOqdHemolyq6z298irEHcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aABsUvef; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4349d25eb5bso1129075e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 04:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733402437; x=1734007237; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=AHOhf3fLL/x/+hQTBcTCJ5bZoM08MJO5O0xcjIvEorE=;
        b=aABsUvefCMy/AKasS5GqeSY1YvaR4ydhkVLWxHTmxuHG8uIUWs8Su3wFWv5txHAmTM
         O+r6vAfURwoSb7RHLWaqItOSy48ODcr7DJDQHf6cEWs7MJQeFDxVwcw+AU3GPhATXOF3
         odXQxzvPLsm/1p5iBoyG1DiqXIptk5Dcb9HdOkBQ3G1p1bvzUsPBkZIlbTbXKNsHtJOW
         Eu9beKA8LAieYmdVqb15h5YDYFa1xTKy2K9fZlBRHO46rFe2y3Rht2RjiEm+26CwbtbH
         JvBlvmfSlE7+e80vKolBDwZh4p7q981iQTC1c/roSdgsJJBsD2ZogcYjWAhwm663dX8U
         ySRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733402437; x=1734007237;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AHOhf3fLL/x/+hQTBcTCJ5bZoM08MJO5O0xcjIvEorE=;
        b=HY73lrsrOu/9TnaFZnxhsR060INmennPIMMg2yB/q2IHlK1WV3Dsb3aSHTqe0JD9K2
         DEHG0WXwOIwXw8Sxs8qfej3nGp5ucgoLfl5ZwI9W/1iuW9DCLMp22mbASVBuI8Nqd/kG
         Vdzdj/Yqf/YiL+GzYApgJlpvN7Pr5SRWxOX/SpBvG+cQ8ma/vRtX++xbyN+Cd9aZ4wBv
         hY/gZ+wpms3fY9FJ3DtKndayO8YtAOhKLECy+tWB57T03cNcqdQiJp3lZdMnRwXEsxxk
         zT9B9U7H0cHaYx/rYBjxSpmIzebdb5js8cwO0Xc9teqAblm2/DMpLvdLyuuQTstadGxu
         5G0g==
X-Forwarded-Encrypted: i=1; AJvYcCUFcveCKeJCsCNxCHwoEECHQxnYAW20Udv7QDARGzprB/AkDocGm5BXgx0G8U8nFRQ/Ulb83pNi0Ycs@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2dJdbbsjhN8CMLtZGeeqYCyD54SUSFlPHIk6K9ZFt9q8qsI/s
	2FcFFbakJrckaifvoM04f2ybuWhBU/Ri5X7OO4bhpQcEoDQcsDcN5BC4sIU5SV1kC9JS61Emkz/
	dtbc=
X-Gm-Gg: ASbGncs08TAzN+tBCnwq/srw0faWpwbMUMSX4vrGOZmb90k8vhSnziHFKp0hLqfPXBz
	apHvxbopaHjOtVo4LFMp0jgHPZJn2w+xxaxFP0iG4Wun3oY6tpvIqbLpujPJcR58QWyCw1obm41
	S1Eris3C1U5a8BBFnX8dGUvAc7kdJ36BddOm+uLL3xjOiStK7rJ2gFcmu0Fx7ThGTN4M0lSEiNe
	YGNq97QX+U68C2GVntyppUHt/t+yjJRs5DAHnnsU1QRKLvS1OkrVnyVwP3F1/VL0g6DBg==
X-Google-Smtp-Source: AGHT+IHIwSY6gV3NERJ/H6TR3OuZZd7LtFCV9IfPTUtZJbD8qsdt3fcL8obWJJGvX184KgtY2y+W1w==
X-Received: by 2002:a05:6000:1541:b0:382:4e71:1a0f with SMTP id ffacd0b85a97d-385fde04982mr3122263f8f.7.1733402436777;
        Thu, 05 Dec 2024 04:40:36 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-386219096cdsm1878466f8f.81.2024.12.05.04.40.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 04:40:36 -0800 (PST)
Message-ID: <9d6b4865-1bf5-45d8-876f-5ec336700e10@linaro.org>
Date: Thu, 5 Dec 2024 13:40:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ASoC: codecs: wcd9335: Add define for number of DAIs
To: Mark Brown <broonie@kernel.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, linux-sound@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Dzmitry Sankouski <dsankouski@gmail.com>
References: <20241205084021.35610-1-krzysztof.kozlowski@linaro.org>
 <c3d2477b-f12a-47dd-bf95-927e6c0d8fd5@sirena.org.uk>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <c3d2477b-f12a-47dd-bf95-927e6c0d8fd5@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/12/2024 13:33, Mark Brown wrote:
> On Thu, Dec 05, 2024 at 09:40:20AM +0100, Krzysztof Kozlowski wrote:
>> Number of DAIs in the codec is not really a binding, because it could
>> grow, e.g. when we implement missing features.  Add the define to the
>> driver, which will replace the one in the binding header.
> 
> This breaks an allmodconfig build:
> 
> /build/stage/linux/sound/soc/codecs/wcd9335.c:162: error: "NUM_CODEC_DAIS" redef
> ined [-Werror]
>   162 | #define NUM_CODEC_DAIS          (AIF4_PB + 1)
>       | 
> In file included from /build/stage/linux/sound/soc/codecs/wcd9335.c:28:
> /build/stage/linux/include/dt-bindings/sound/qcom,wcd9335.h:13: note: this is th
> e location of the previous definition
>    13 | #define NUM_CODEC_DAIS          7
>       | 

Apologies, last minute change hoping 6+1 equals 7, but obviously it does
not.

Best regards,
Krzysztof

