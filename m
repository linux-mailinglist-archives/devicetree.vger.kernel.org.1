Return-Path: <devicetree+bounces-228932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A243BF242C
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 17:58:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3809E4E22B0
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 15:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE22C27B4F9;
	Mon, 20 Oct 2025 15:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AfDsSeZD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A6922652D
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 15:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760975925; cv=none; b=IDObhNngACoSGfoqht57loWFwYW1eTsIDCoF8/mRUeZKzD9HYkeLH20b1DMO6UZPryhMcPbx1fdDgtuVQb0iwS/yUZH9x4PS9ge0ZDuWJKA+IEM5msmFkCsGXCMKhMw73zICULdjuUwcdSmnIaqZAZVK0mbpHJek0ioaR1kAAcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760975925; c=relaxed/simple;
	bh=HjE3Uag7ituX2LoRVpL54REXxXAKjUdpADCpF2+7a6w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eIm+Jld4nlP9sQoxmZLX1xhTAGyAEtMhM1O3ORMI7HUiOmOelsg2m/r/OsbeJwQambaOBWZQscuefEfutqgb9mYjuubok6l5eIXxfJCNCrN2SL2FCYlKM3fSSvsNaw/xEnJ/Jt1EdnwiUhJygBnLC7DbKo11f6/nX1nYvNcWH6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AfDsSeZD; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-471810a77c1so3497385e9.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 08:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760975922; x=1761580722; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=tTGFAZH8XquY9zEDXTfWOYqlwrCa8DJIkycxE5fWnSQ=;
        b=AfDsSeZDWUfDo91qKupk06V5vJqaCwijpHN+A3ixbvKUdehgg0fg3/Qh2JxpZM2+5E
         5KAVPBVuYJjNRUcZzLXtqeKUUxT1gunWQhxAofNCOCzR2J66h+Qgk/LOoUTJoEoadWvf
         SF0rOh/PviWtqWvJPf5XshZXyIaxNIMiaJ2g3GodTfoZaaD4ZM2kG6XuWgRwAb+ZBx5h
         Hd1s2LIz2S/o9rcnxF5QBZzFNYUEvq3mbU7z0O22TvX3Yb/qOMhg6SQgw+8scvNDMHM5
         5E+CIt6yHEqgaLObWXiq1x4oyOR7EXuumdJVBNSuoWFWaI/zWmboi33Ww+HWAQGpw26N
         TbFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760975922; x=1761580722;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tTGFAZH8XquY9zEDXTfWOYqlwrCa8DJIkycxE5fWnSQ=;
        b=FkXejuH0EoC61bylTgry0gTdda/Tpikb3PN9dC5MOTvOl55YOmZibz878n+V2V9ifL
         E92WBB0hoP1iCeXtGbj15H7a+UZ0EG/fG5zHJbOtVPF1nm1GaNcJCgEsmCSAPqnHnO92
         INEZlIyvX2HIj7wHlX08ySkYy8n9oa98cAUL3iWOThORTaaP6ipjG6XLHI8y+JBViOyU
         nMxACGGO79Ax0YARN7QV+Jq+a+PmXrZVLATL2lQMass5KszARk/w6SJH991fXlgorvu6
         7x1zMPmdJOwHP77PQALmgIYl090VrzM2bx8ibViAeFXvwAybFsmwy9/QdSkYSBePvwGu
         KjXQ==
X-Gm-Message-State: AOJu0YxU6zOixM28/m+l66k9CQSWCV17efZ3+2SaU9Is57NyRE38ZFte
	N+BnTrUz4LAzee+/VGGE89gaU2cV2kVALhwFfXQ46ewkDLJO7hFv6Z/lzypKwCOeHzo=
X-Gm-Gg: ASbGncv//FKi1RmlqG2vF9fbydTvO5Ftr/sCoKxleoZmvRsojeWyQfIp4eRqwO2iB2l
	tuVIEVS3IsoG2V1RXuJAiBW2IiJkbafyvYH6TwWeikUPGlTzkM4ASYlu1aj+HZcYVfOSbtPrttm
	yXClyl0CKufemYMgZtY0Q5iREeRjAh06XxlHPxYOLGqzMhHGIEUaaF3LrlqL2hfU7DJ82d4UWFN
	ANLztF6ImscC9hb0PiBN9rI/91pmwWkBISXAJAl33MOorUNKIbgbuHMgqEyRR7tkCAo1r8/F+Ee
	Y06h7AIoigxFrK12cxHJKDLD/pw07QHCw3LKQJZ40G2cE+RF0UZmNmG8W2EOeRnTsywzdoPlClK
	0kxchUAVpHwUYp7taNpoVv4VLMB5Hr6JTJ9M/fiE1O2H6P2crHtLGFn9L03ijPt53vvv4/I2m7R
	rAdBJhXCxslaJoU9uOpcn5
X-Google-Smtp-Source: AGHT+IFK+XitIiXvIboH9Ibu6zp4fTMAb7QJTYo4tLh02canAVIWfx3tEsrAIZNVZFVVWmqNPnu0vw==
X-Received: by 2002:a05:6000:2586:b0:3ee:11d1:29e6 with SMTP id ffacd0b85a97d-42704dafdaamr5152179f8f.6.1760975922380;
        Mon, 20 Oct 2025 08:58:42 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f00ba01bsm15697081f8f.41.2025.10.20.08.58.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 08:58:41 -0700 (PDT)
Message-ID: <f6f9cfc9-b26e-4358-8781-6ce75075d13f@linaro.org>
Date: Mon, 20 Oct 2025 17:58:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: mfd: Add sony,cronos-cpld
To: Timothy Pearson <tpearson@raptorengineering.com>, robh <robh@kernel.org>
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Georgy Yakovlev <Georgy.Yakovlev@sony.com>,
 Shawn Anastasio <sanastasio@raptorengineering.com>
References: <948400747.1748562.1758824253627.JavaMail.zimbra@raptorengineeringinc.com>
 <20250929141113.GA3987541-robh@kernel.org>
 <924260297.1801829.1760974499327.JavaMail.zimbra@raptorengineeringinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <924260297.1801829.1760974499327.JavaMail.zimbra@raptorengineeringinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/10/2025 17:34, Timothy Pearson wrote:
>>> +  watchdog:
>>> +    type: object
>>> +    description: Cronos Platform Watchdog Timer
>>> +
>>> +    allOf:
>>> +      - $ref: watchdog.yaml#
>>> +
>>> +    properties:
>>> +      compatible:
>>> +        const: sony,cronos-watchdog
>>
>> There's no need for a child node here. 'timeout-sec' can just go in the
>> parent node.
> 
> Could you elaborate on this please?  As far as I can tell we ref watchdog.yaml and need some kind of compatible string, so why would I break out timeout-sec directly here?


Please look where the comment was placed. Under $ref? No. Under this
compatible. $ref goes to the parent, obviously.

You do not need kind of compatible string. Parent already has one. You
do not need compatible strings at all to instantiate Linux drivers.
That's pretty common pattern for most of MFD-like devices, plenty of
examples in the kernel.


Best regards,
Krzysztof

