Return-Path: <devicetree+bounces-160490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 01853A6F322
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 12:28:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0A093ADB63
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 11:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A35525487D;
	Tue, 25 Mar 2025 11:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WCsG5u1j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69ACD19ABA3
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 11:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742902118; cv=none; b=R5vcNeNaZij6qwaqUPkAVgTOC5XIr1u3SGxZj2ykge5ebTQUGW2fskHHImTeo//BoLh02idrq2eq9BkcwFyEFPWVK0yAJPnGJf3oACWZQd7ld4uaX5Ab/WW3p55v+jnapsUjvqhXYdjH8CTshupjm8amMBa5n1XA0SMAvt9P/Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742902118; c=relaxed/simple;
	bh=UO8dfzamLTX2JBW7RLYiyPDW7DzGn85Kh3aNNI3GHiY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X8/qAEVHXxgTDd5aB4t5QhmAM0cpdXwPx2h7qEvdSTN/v1ajzcb7Pu8O3kG4alRWsu0b2PgFF50pD9bhS0zB0vgCuEfhu698SaC6gR6cBBqECRSHPnZQLNCndmuWJr2kIDZuiiZYc1uK0ygnoLrZVCAI+kwGEP5Shmd2VG/CRuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WCsG5u1j; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43938828d02so8228855e9.1
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 04:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742902115; x=1743506915; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cWNNlWrDDTHRDetmUwitBfFYLgudVtk8IZ3jqGfYZ54=;
        b=WCsG5u1jdNfCcxz+I8haCKDnu0JUffPbWy7gZ1hVWnNNU75ofgfT35f5TfSrSdrwCx
         PGAcxzjQYnMbdo0QTcd4fygLjpadFH9qFFG/yoaL5VBjaL5Kh8FukrwQVHNVdvxYMYsB
         hlE2zPtpprVekIpEZKgbIrmQt4AHvXV09si97/sOai3s9Piy1/EM7m42WO1RYg8lPk0Z
         idXY9Gl/+PQgzMx6aHX6i+Qthw+qGBmionG7om/6LsRBuO6h+gsfUDxY42lHovP2NdT3
         4ozN09jEJe1X8O2ZZTUYawMpfHjIHPTWd80fwSO+IlLpAn8MFj8mbuHIQsbcuNX4HUjy
         Z9Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742902115; x=1743506915;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cWNNlWrDDTHRDetmUwitBfFYLgudVtk8IZ3jqGfYZ54=;
        b=S7lkMR0BkUHQHk5ye/ODHE0q4cBcXsGCRnBKZb6Uh0ed2s8jP2VF3TlsCFRnm+KmWs
         1KTUisjVsCTxcA8MryTwyI4kAGN43nNKNSTehOUcbB+YCfijAM1F6kexHHHHQ2bxJwue
         N5NcrK2NmccgpW8nXWcWOrgtjteWoeMt3ZtzOUh1P4vNbl/sDdgU5/ecmV+ZFuDdxFK8
         6AggBY51iE3ypaHupW66evntlM74J079vRFwMAFVyHkmMyBmU/XB4HOF+i7h9WmZG9oj
         wDMMCXweKsJjHsrkkJdinszqKQ/UG8fNb6+jZ00lBv9lrHEvWcmmXPjP/4UbdwASYT3o
         hbTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiVO9hFoLrY3Wg8NPatQZn1MmRZuhd4ji2mmXgQksxY8y12YwVK3ph0S7UWfZRiwi7bfmnMBSePv2l@vger.kernel.org
X-Gm-Message-State: AOJu0YzfixiTVOfa5LZtvJh7XgGSITzj/4Zw5f2VPOdZuWcd0MHMZSp9
	NVofCiRBtfOxZ6zev5vt6P6EcyFlUBOm8C1wEKlXPoPF07YjtoiNInJ4cdULvvo=
X-Gm-Gg: ASbGncsEMdFNORUfDMz2ZbgZuC8n5l6uLSs7kCPQXIuI0f1az8IXO0tGkUGi9MRGa7K
	V4kVSygK3Rd0Nr6wUanFg4OOMu7J8Frr/kVu8ynI1OnBMaLT6AZm07PepXMTMN8qywGooAJ03KB
	L/n2ysW/mT/heyPLJhIcpCeUG6zEQ6hp0MWchYSzpM5Qeajf5fb8g1uCGgpFCWyfjI+wAI9vv70
	FI6VSqqNRNi3XFo+LctxhC462lMWECj/8OcLh5i4ef/a0JJoKDPdiHNhY1BG8WQFM4IUFQvuiiw
	RS1oJ2a1yGJYhRwGytHY4/f0auKZb63dpDPqqJl+c2jBlLGtIM0PYL43B/yUXGT+TxoaShZEaw=
	=
X-Google-Smtp-Source: AGHT+IFHzP4Sr7LQGlH83Rzwb5FEq9rXadH6+A7sEk6BhIwA8PuYSxvqLr8adBKSw70sesFvFbJhyQ==
X-Received: by 2002:a05:600c:46c3:b0:439:8294:2115 with SMTP id 5b1f17b1804b1-43d50a53d12mr59059975e9.8.1742902114704;
        Tue, 25 Mar 2025 04:28:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fd181b6sm146773755e9.9.2025.03.25.04.28.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Mar 2025 04:28:34 -0700 (PDT)
Message-ID: <5946b0aa-ffdd-4269-b8f4-d1db1aa88493@linaro.org>
Date: Tue, 25 Mar 2025 12:28:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: mfd: Correct indentation and style in
 DTS example
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Colin Foster <colin.foster@in-advantage.com>,
 =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 Marek Vasut <marek.vasut+renesas@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Jeff LaBundy <jeff@labundy.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20250324125239.82098-1-krzysztof.kozlowski@linaro.org>
 <20250324125239.82098-2-krzysztof.kozlowski@linaro.org>
 <CAMuHMdXkePsSX62+OyT8aTdqFfaNy9dGRM73Q5AuQ_pHTBi8Kg@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAMuHMdXkePsSX62+OyT8aTdqFfaNy9dGRM73Q5AuQ_pHTBi8Kg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/03/2025 14:31, Geert Uytterhoeven wrote:
>> -    pwmleds {
>> -            compatible = "pwm-leds";
>> -
>> -            led-1 {
>> -                    pwms = <&iqs620a_pwm 0 1000000>;
>> -                    max-brightness = <255>;
>> +            iqs620a_pwm: pwm {
>> +                compatible = "azoteq,iqs620a-pwm";
>> +                #pwm-cells = <2>;
>>              };
>> +        };
>>      };
>>
>>    - |
> 
> The removal of the pwmleds node belongs in patch [1/2].
> The rest LGTM.

True, I lost it in the context. Thanks.

Best regards,
Krzysztof

