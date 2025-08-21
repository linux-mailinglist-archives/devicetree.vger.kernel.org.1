Return-Path: <devicetree+bounces-207361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEAEB2F4B0
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:58:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 502F87AB311
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5770D2DCF78;
	Thu, 21 Aug 2025 09:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CJnFEL2p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6F721DDA15
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755770286; cv=none; b=rTc6mJhkZ4IGeemGoxYHl4EmS/qM7l2hhzq9HBz2jce9qqNHP4FOihhsuti4ShabiLfvKbATXU8qSH2Cyydvo3oXk9liJruADUsWPqjEs+xLUSOSMh6yaNvIKJ7tEF4ZwVdGP8nGZBdmeKpOwn7l9O+bcjD8S7VpCMRqnM4jkzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755770286; c=relaxed/simple;
	bh=Y0xqoB0kDnAvuY65CHSIR5fT8Bs48jQwKDm5ofrl6jE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ot2oyyJKTojIN78ocyFGJxe0i5sZeQlHRu40NVxVdGdiL+6y5boFuZlU1R79qM45TdKFsMteg58eVUGrAU/Kiz/ZMxDCFuBVFuArJKqY3osKG8e6ovGVluz/1wfPsQkrS4iVfMg+ljJTtjTceZv86yGOuKxFj1G4CRK51U494rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CJnFEL2p; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-6188b5e3de6so142579a12.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 02:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755770282; x=1756375082; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=G7kwoRhv5U13/GFymqVCODeONSBqbAmGbkHT2iXWExw=;
        b=CJnFEL2pXD1cX/kdmNKjBLM9HS7SkdUHrtgfHEWynBs5AQxjo7Nzgha/wSOpBslgmI
         m25tr1qKvfzGrwVG1Lywvye+4Mj0dZQ0pbLNtNwWiOZ5KUMOuyapNuXpSs7Qm282LNzb
         ujfTo62bxj/i0eij1dhWeTXy/K0DM4fLZMx7SWCnDCGMZzUaErq4SPNUFuMoLpMYK4gj
         3Oz8i+e+0ExuY36C46nXo1K0zu3/feXC3GE4vmRzjO7j0KECQJFPPjinT0fJXTeHpLC4
         dYFW1cVMsqgiPLL1f2InBIfo3ErvljzvdaPg7kuZpH4H+r6sjsxQnzK8mXANrFcOJvRd
         6Aww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755770282; x=1756375082;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G7kwoRhv5U13/GFymqVCODeONSBqbAmGbkHT2iXWExw=;
        b=ZFEFpN2Skz77zcib4p8hrg2v0TYA3vn2Y8sSAz+E7zCVByDd5hOAwOHJ/DR3ozcVjK
         mJceaUhnWsCUDVlyatb64BENBGGcRuOJFMjXY+2N6qFZkzzOJu/M00NnQFyK3V58eP8+
         lad9mByTnvG92TiMpJWn5+wUWONl0/Rad9J9bXxuonQn2pXJ/weHMT+X8KQVD2m2vzfp
         tmeIZ4lR66TrZsVBGEP2yQrtybb1csdQAnF9zOmmLK1eSIu1BmzWen30hruttPwTjhx3
         7zl/V9XFTEP1IvB5190iTGT5aBkC4qFHHUWLAkO00gwSA/NYGGllAkdfPCJtBJuzlU0Z
         uiTw==
X-Forwarded-Encrypted: i=1; AJvYcCViso6OXNMhhlHHuCiJDHzmyzaXRU7EKuipXrdksDSiL477yZOU+X0yYBC0CT/FaLLlOtkxueCiKkmq@vger.kernel.org
X-Gm-Message-State: AOJu0YyNgRUoEKl7/dnKYFXNFFuAMG+5Tne9XzMosWCvGI7TdoRtGRpI
	hXbDRWIFag9KftcZmYtaDSB5vLlnUD0hWL2L5LHlie0TX5wpUybkVNDXtoDqU8hToLk=
X-Gm-Gg: ASbGncsvmiAbhkKXUlyN13BGWuUtJTN2L70i8aSJwXwZ5+VEro7K3Am3x6TslQrNtkL
	kL6c80qjT7CVCsPKb+as0rjnHhjC3JEcZ9D6FLgo5TaL4A+IGSO+gRsL/i8DPGUNa+zKFx4wpm+
	H7zOHlgAjRQUMpljwlY/5SQKpc/7PT+oldP/eda+rkXNfR8e5aW7e8mT8ZTcdGNxoziQvwB5KXj
	3ur457zDykc3IV1x9OvRoGqIRut66oPTPrDdymN+JWEFZKBRUFQjq/6Nb+qjt66ZgJJKV9rSigm
	L+UQj3OckYUM/WH5yjYG4RUqWM5IEWV2Ll2t0Y+vMnyZmzZEgSFDaXwrzdBzKDkaTloFASpkeVH
	gGxz0R6xnmGYzUwftu9PlYruEz2XC2z2TRRONbNOZOu8=
X-Google-Smtp-Source: AGHT+IFLr5HkEv+4HL9B+7RKl4Q1VhprAQyB2qmHlrSgwTVDxI9DXA0oDCg848cy7aztpCLDLQ5Qwg==
X-Received: by 2002:a05:6402:2355:b0:615:c741:ec18 with SMTP id 4fb4d7f45d1cf-61bf86da6cbmr920430a12.2.1755770281965;
        Thu, 21 Aug 2025 02:58:01 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a758bedf1sm4825360a12.52.2025.08.21.02.58.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 02:58:01 -0700 (PDT)
Message-ID: <7d2bea94-b6a0-49c2-bd83-e5421a6ce567@linaro.org>
Date: Thu, 21 Aug 2025 11:57:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mfd: Move embedded controllers to own
 directory
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Benson Leung <bleung@chromium.org>,
 Guenter Roeck <groeck@chromium.org>, Tim Harvey <tharvey@gateworks.com>,
 Michael Walle <mwalle@kernel.org>, Lee Jones <lee@kernel.org>,
 devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-kernel@vger.kernel.org
Cc: Mathew McBride <matt@traverse.com.au>
References: <20250821062840.9383-2-krzysztof.kozlowski@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250821062840.9383-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/08/2025 08:28, Krzysztof Kozlowski wrote:
> Move ChromeOS Embedded Controller, Gateworks System Controller and
> Kontron sl28cpld Board Management Controller to new subdirectory
> "embedded-controller" matching their purpose.  MFD is coming from Linux
> and does not really fit the actual purpose of this hardware.
> 
> Rename Gateworks GSC filename to match compatible, as preferred for
> bindings.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Cc: Mathew McBride <matt@traverse.com.au>
> 
> Lee,
> Can you take it via MFD?
> ---
>  .../bindings/{mfd => embedded-controller}/google,cros-ec.yaml | 2 +-
>  .../gateworks-gsc.yaml => embedded-controller/gw,gsc.yaml}    | 2 +-
>  .../{mfd => embedded-controller}/kontron,sl28cpld.yaml        | 2 +-

I forgot to update references in other files (except maintainers). This
needs v2.

Best regards,
Krzysztof

