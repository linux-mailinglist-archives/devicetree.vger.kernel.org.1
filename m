Return-Path: <devicetree+bounces-36758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D1A8428F0
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 17:16:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E6E71C20B4F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 16:16:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13B0286AE0;
	Tue, 30 Jan 2024 16:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VmilS3px"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456658613E
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 16:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706631369; cv=none; b=FL6yOjJV3S9FV6fRWwa86GyqNP1zFNvNtoGvd6tZ1Pd3XQzBDU90F/gsd7tyMkEnk+Xl9gfXyl9/2O2i6nTqPCGTTG+GGhfPiTdXfIIwVyA+JuI0iUIVJ1tp5CrhbsEwYJR9+ioCcDuPaZRuprwGdt6BDtOi/+k/nU9seZOkCNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706631369; c=relaxed/simple;
	bh=Owcve4oSqnBTe3oFKO9ccaOo2tUu2+a/joHw6gSfbmU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KJ0q2jQPq+BTJL5muvwus0ZwuwC8vdUHQGCxy/WqEq2+J0ngqnq2K0Bi3q48A2nTak3tInFcbiFm8IyPdjiXFKBCDl/muD5KnGybnSPIPh/VYfzcMJJsdhwSdN3zxLurww25lWWjilEz2R17opF5TawMAANvX57ZEyHIcHBL3V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VmilS3px; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-55f13b682d4so2949688a12.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 08:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706631365; x=1707236165; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gOH2y81PFkKT3huB6pF4sPK1Osv4cQ+FUeSOzUJjuUQ=;
        b=VmilS3px9hlc9u1fE5Fxk9EcjMGUImNALLGY6ji3LDXgV4PhkU28Fv+qcqCNn4Y3lK
         52Fvhc4tluOq9NgqGN3yrCFlf1jM0yqQ2JHNhLcVXsL9lvXscb2U7nBICucaHB4BYYbF
         sBloGfqJqefbyRoWDf4u+J2dVZNVb9Kz6fekeN4ZOloKMMQEGyiFJRjGz/ieMjFbYayP
         43qlLPPG7mIOHvLJ+h/DJnSvVEvlRgjmv+/tG928s8LSXhnOoIXIkEVRHVfO0THt8yHt
         uT6aYg02yXfQfkst/L6AqlFpRJxB6K9dH/5uaGGj+Mt/+DLMxlAWzcP77GAoA5zJdCT/
         CcXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706631365; x=1707236165;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gOH2y81PFkKT3huB6pF4sPK1Osv4cQ+FUeSOzUJjuUQ=;
        b=vPLr9ZEm2FZYulUto0xQ++jbvDgJ6lUOnZbuKrOWO1vTdHMKcFTWyAx6VK/Rvbu8su
         Jv7laHAiwgRqw0L6m5FcWyVqYapFrN9Arbt7RQfFDwbdHbsHZMNy+LPKTpw5C1Sij6/e
         dbKAt1RznJbfkd5X/BYIQJx3DL7msZBMht5g0bzAziyeTnlTKAAGYMci5Iy3NPd68Ncf
         /O6iKvc4C0HlWOd14siTjnHCnoMImNFHVA5gF+7aadh0CnbJi5/jpQMWKNrTeIds3G+1
         ImcS7VkIWJ/szxZoBHbC2xPcpI2jvezOYB01gKjbf1pnvfaqJ2ZMm0ghorj/dXy5ud7v
         L6bA==
X-Gm-Message-State: AOJu0YymbVVz2XZGXRMY0H8ZN/ZvWxVBB3qQJuodYf0k4mDibxYRiYMv
	lgYdFzb5MdvDPaLPYLldQpCZbb2ZwhsU/L7Cxig2foGwpH6PsaVq5t+/pucPoso=
X-Google-Smtp-Source: AGHT+IGaq8gkeyG3O3IgR+MUIdSbofPZDykFg5p50gEwPKoJewM8O1dTZErJvmwsQe/SWOJfY/8Tcg==
X-Received: by 2002:a05:6402:518b:b0:55e:fe9d:5cac with SMTP id q11-20020a056402518b00b0055efe9d5cacmr4977769edd.28.1706631365538;
        Tue, 30 Jan 2024 08:16:05 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWzkliSW7hoTsaZ2Rc7AaxsQuTCB0WmEQIGQYF5RahuQpEiJKvjqLNPiA9jZXSU8OFC+0Bd38/JGQujJlCJbpeeac7cp9N8232y+jXuLVR7R/E3Bc41GFG1IyKFF+aLSL835BKAhdXY6OWPwvGopUiR++CS5WDC6bnWpEgKrUUqasXkCh7SmMMHqP0s/NHRXlh9lB0zLME7MpeKIcknfj0Ck8krvFfXyFuqlfBW9KSJJTD1TxifXCy1seusJ8eRQk2eLDwhfq3eMeACgC5En8NKfWYdWJUZc20N
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id n16-20020aa7d050000000b0055f0f643ebcsm1874790edo.96.2024.01.30.08.16.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jan 2024 08:16:05 -0800 (PST)
Message-ID: <2ecde144-e9c2-45f2-bda0-ddd0a37d2495@linaro.org>
Date: Tue, 30 Jan 2024 17:16:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] regulator: dt-bindings: microchip,mcp16502: convert to
 YAML
Content-Language: en-US
To: Andrei.Simion@microchip.com, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, conor+dt@kernel.org, claudiu.beznea@tuxon.dev,
 lgirdwood@gmail.com, broonie@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20240129135336.98197-1-andrei.simion@microchip.com>
 <b749512c-b9c3-4b0e-85e2-cf5114534102@linaro.org>
 <7fc29a9d-a3ae-44ea-a490-88ecad18983a@microchip.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <7fc29a9d-a3ae-44ea-a490-88ecad18983a@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/01/2024 16:22, Andrei.Simion@microchip.com wrote:
> On 30.01.2024 10:21, Krzysztof Kozlowski wrote:
>>
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  regulators:
>>> +    type: object
> 
> 	additionalProperties: false  -> forgot this line. That is my missing to hit all the points in the previous review. Let me know If that is all.

I think this should be it, thanks.

Best regards,
Krzysztof


