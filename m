Return-Path: <devicetree+bounces-135908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C267DA02FC7
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 19:32:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 447403A4634
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 18:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C12E19E7ED;
	Mon,  6 Jan 2025 18:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="li+MYRPi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF8113775E;
	Mon,  6 Jan 2025 18:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736188353; cv=none; b=mIhpXTOSF3AumTEVr06GQLiYFpyXsIHbtcls0ZJ/1AMXY/HsNcUE0sM2lHKApupBby/DiRmxTheCCXZlFq7s/8pBzdrQHvwwbNXbscEeIKigF6hyMPr+L12gQ4ur5qpiNgL49lXYx+LRsudPJ6tbk1rqQ+3bXqnhiRg5gnJrzHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736188353; c=relaxed/simple;
	bh=MPaEmQxlMbnsxGkNgsEDlM/VlhFoSQ56sTz3vhDcrIo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CyDH0A44BFPklVJK8jYIa2g2Fmgr2AZsfar+8BHHFzHZD5YWiCEmEsUKhsaj4pTEjx0WsvyaOZo26XTHbyUoNWLtfhdTwwAvNmBbO/gyzU6Vj6p/xUgzw3Yfqb3Gvv+TMtHorWrw+ykYpNjpl0BRWDOGkCVpAz7sOFHU5BdP+/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=li+MYRPi; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2ee8e8e29f6so17205622a91.0;
        Mon, 06 Jan 2025 10:32:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736188351; x=1736793151; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=tzJA7ByF1jLwJx9SkIhHdw4+pCFFSdU0XZrjk+Te0Ps=;
        b=li+MYRPiCnpBYrxDd5+5Qt1rfgDDURsQIOQsYL4VV/KZsZHEvNIGMtcUDlCR6jZfd6
         Cxc3Lj+1UyNqpV729Q5D7auL5OJ5K6uyU8YF1Qt+rNmFENeI4BVbZrNeM+g2dMiO9UOa
         QNCnoRuBXg1AgohXseLr31KceAPuR9DIknyurGT/KszxbpEaZUMQimAqJpAffAUFHfob
         xwj7vF0lNsGmPvKpMFyGlhabsq0rerjOMw3R/yCQNRundka2Cj+ckOOPozsLSDcpDPFw
         r4zdttPRAkykE9x1ry4yZrBpk3Q/gMDaIHJKFDf2EUTe6KC2B/W7WAU2TSQBWtz9D7c1
         kU1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736188351; x=1736793151;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tzJA7ByF1jLwJx9SkIhHdw4+pCFFSdU0XZrjk+Te0Ps=;
        b=NFqlSSGjhp4owSFJ7U67Jwylv6TYufpgx1no3u9zwu3+gZ211R48Fk3rfnUP/dqGvr
         +lpJL3vQ/qsm/FkPmUGk5hthpPc8fv/cMQ6da3j7R6cXSr0TBgymHUhzEWLrqvOpHTjh
         hongSbqlr5wfP10/gjNOZVMS+YZq9fQoZACesjq3sKcuYGcbShBh12JeRjC6w5g7ra71
         ieAA1PH6NrcQrR/NdFXmLqbHEXEccn9SRW5WGyOCxy+eF0ZdhuU8B+Pd/hlqftS1R4bU
         kOBGElPs/S/INBZVWigmqekwtGg2kRfv1ftYDxk+zSzhGJ0XhK8dzXPN0kikhmD77zVw
         dQUg==
X-Forwarded-Encrypted: i=1; AJvYcCVlk6PmfrAxFs1bPOYAaJNuEZ1zpbnrNeZ99ovDBxHUrk1YUzawklBQSFDPo6MxtL6ZxJpgmxEOgslBjw==@vger.kernel.org, AJvYcCWjjlexh/lEczuAN3TZde/cEbG13xXfSbr1XZ+a681WiyvAgDNq6DVMrDIB8gvFx55Zrg0UZMmAlgOPyPFj@vger.kernel.org
X-Gm-Message-State: AOJu0YxzzdH7JMNnGqXMrkelXD0L/LrfV0F/dcNg7xqSAGcWdgjQFDLy
	RhSdTlGVPHwmoI6FthLsiOfCIwpC9ma8ma1DGN8zaPSXFXRRWrrX
X-Gm-Gg: ASbGncuaIVRzWYoe+01KLiY9XusbvL/BgNt4EMVpgg7yPyrcwTrnrHZZ4OiAba15blJ
	KFWulIOiRUqD+je8PpObq/SXhGpVgwGPXnyDqNzJsAh1v2m/bBzP1bMfAL7Wb1x8UpARp9CzGxS
	GIBieL5jdSt8fwmq9siRBpnPPo21Fs0o1qz5uysHSizbmO7xoXVlOLaroRO+M6Zvs+1SCu0IrZA
	AS5HjZPm7gffU9DCYTYWxYXNZbwvsvFWKNLt4vb+oM/9CAkYAPGdxq2BdupsHlf4Rq2vjTB4WvY
	nF0tUSqfXz28lubLYqpdVjhvJviiPw==
X-Google-Smtp-Source: AGHT+IHqS92EBkZGkgGcJ4xEmbbVTikXQKtyVcvYpnLa3By+Oeh7d8Y2ax6LJm8/GTIAwYb7sQWuug==
X-Received: by 2002:a17:90b:5443:b0:2ee:f80c:687c with SMTP id 98e67ed59e1d1-2f4e7cc07e9mr21152260a91.31.1736188350631;
        Mon, 06 Jan 2025 10:32:30 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc962c80sm296414575ad.30.2025.01.06.10.32.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2025 10:32:29 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <6059a0f8-bd53-47da-8fe9-dab115c40b52@roeck-us.net>
Date: Mon, 6 Jan 2025 10:32:28 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: hwmon: pwm-fan: Document default-pwm
 property
To: Rob Herring <robh@kernel.org>, Peter Korsgaard <peter@korsgaard.com>
Cc: devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20250103101448.890946-1-peter@korsgaard.com>
 <20250103195810.GA2624225-robh@kernel.org>
 <dbf7cdd3-c5ab-4801-be85-163124b8a898@korsgaard.com>
 <20250106173805.GA501301-robh@kernel.org>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <20250106173805.GA501301-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/6/25 09:38, Rob Herring wrote:

>> The minimum PWM is presumably 0, E.G. signal always low?
> 
> I'm talking about the duty cycle needed to start the fan spinning and to
> keep it spinning. I'm sure that value is not 1 for any fan except one in
> a physics textbook (the only place friction does not exist).
> 
> Maybe the minimum is index 0 of cooling-levels?
> 

Fan controllers often have a separate value for the lowest cooling level
and for the PWM necessary to start a fan. The pwm associated with the lowest
cooling level may be lower than the pwm necessary to start a fan.

The fan controller would start a fan by applying the "start fan" pwm value
for a period of time, then reduce the pwm to the desired pwm value for
the running fan.

I'll be happy to dig up datasheet references if needed.

Guenter


