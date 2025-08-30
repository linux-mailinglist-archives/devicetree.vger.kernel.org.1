Return-Path: <devicetree+bounces-210791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E5EB3CD1A
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 18:30:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD965207B45
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 16:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC872D3750;
	Sat, 30 Aug 2025 16:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PevNt1hv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128B32D323E
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 16:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756571400; cv=none; b=sICZZXPZmW1WqjX33c8POO6/8R7NJAjT9xi4B8HT12p8KQk/h8Xqu0MJivsDdghdbWf7RKCB8tjmSVEZw47c0wMYpfEVspw1NFeYZ/NgwZWpuaBCf+JhNV0KYMqyapOYJJ1uHgcRvFTd3uk06LScJsjZXdHtJVWErN+pfMxd2Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756571400; c=relaxed/simple;
	bh=zpj0k7sYQI2nycOBsAPtFBnwj7bXoYfvpQ17GfPguas=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pIgis7mHMDuhK0xNA2+xcA5SsPmrJsH41AHW4i26CXldbujD0e1V0KD1An4nRonOwSy7CS+cAI5t8wJHEluo9wiG9HGh453YWhBGPdG2P6C22jCSEC+07hkG8XXMqLTHkNPW0x+qRNTQyMeMnxMsIdeS9Nc0GwPR7+nbp7CICFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PevNt1hv; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-afe7f50b605so65300066b.0
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 09:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756571395; x=1757176195; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=aDZ1phRAEk3zIW1PFqiad/v15RHmZHAjGk3sbt/9HL4=;
        b=PevNt1hv8zZj/mBBOOhbKgROYMzhWWK9vCPFKATXm2CJxPse2Xc7C2B5TvGSiL3qUm
         gOViJd2BFvSQ9aZJvUw1b+CTchHZUYCmHxIgbwl2QkmrVoxtVxgUYBclmOqF2US44q2s
         2errzsjgif75Iuiy71EPAfHqiMggXiF8d0RbAPifzdjSXSlsNldG/j7YhVeu0JNna9nQ
         PfLY+vTOSGBiBwTQT1ba7sBISQNUFgYeMJJbgDyitqHakFvT9WwwLA8tve5vIFmpHnYp
         Yy2VnKxi1KAplkW7vyrmlGTAE5VQM6umoOSUD6JQHpRg6/x1JRmhK4eKduhiEkTXzS6y
         +UTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756571395; x=1757176195;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aDZ1phRAEk3zIW1PFqiad/v15RHmZHAjGk3sbt/9HL4=;
        b=serwrOKxrdImDtKJsyDGivg0JLiSOOIyuZk8VD4cVHfIcQBMZTOflNbZMZKYTndVS7
         riuPnfTjt4+/22tQa+KExxukLy68gnGYTALzApLFu5kb0l8p9myZ6Lx4WHDt+Pt46Uvd
         Uzcpf/hvjc0C3lg773B2a0GyP32mG14SbVgGl6f32uKNaWuEodGK4Q6k8DUKjaN5Rfup
         Lwqr1pz2s42OjkdB7FUlfDnZ4jmM7BTK3VQuRpnwS17F7IVNpg/9zDjZJn4A2Bnjon09
         AktfKywHYStfRYnAdPsYR+tju4poxvR3QRI/e5dJ1QayGit1mhJZ2dVpemWYjtehLZb3
         BxaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPSbdYQ0UHeYwXvidrNVYml1DKL06FcMhBHQcmSYZfmNvHk7t+8WCspg1ChaWkRY5ttMX3moK6m4SO@vger.kernel.org
X-Gm-Message-State: AOJu0YyB6R3/mj0z2jVSlNoefJcdbYahxFuQUsSU02ZyO71kj6afUcQ9
	Wwr6JQU2XUA4jTID8GuJWfsMJZeueYNpI7G2aqYxSe3HKl1Y+95OJIjrIkD7coujK/g=
X-Gm-Gg: ASbGnctke0gdAD4AwyousVq1EkP54kx659HoTG2nX785D5cFfHzVN1SyBLMUigq7qey
	NB2PLCeCBXYWAZKWP4eqkN+zQfDJKSiTk1GiDpOrwxTaI2qVeumVpygvrT1vxmZiO/DE8eK21lX
	2ZZQdz3KncIjDGbDKauhyVQJ4nGRx8rmbMjRaOnnmRfmMJ7e5MAtJkImny/m+6SDcxHDggYrIfO
	ePr0Yps/TCaeeHK21ptrmYutOJgnY/CMMu6/S71huhT8774rV0HX0G67yocn9HHn2M72T+CO/ah
	NswFzRw9oth3CwfDcmFrp5qS/ljF0zMCYimI7gr6AGRIQx69Uq9K1dTlgseT0wMQutahZojzzZK
	oAoYAaDqs+jl7MXSbAi5ukkIT5Z32nYcjA8Fv6ToUJtM=
X-Google-Smtp-Source: AGHT+IHl8ruWEBHE6w89eG7vWUcWSOoBbbR5fr+SYB9KV3qmIErp5onySpmrDg8O9rfNho2DchGeeg==
X-Received: by 2002:a17:907:808:b0:af9:3397:ee9d with SMTP id a640c23a62f3a-aff0ee1731bmr196795366b.3.1756571395394;
        Sat, 30 Aug 2025 09:29:55 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afefc7ee972sm460428366b.1.2025.08.30.09.29.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Aug 2025 09:29:54 -0700 (PDT)
Message-ID: <95f73965-5ba4-4c02-8dc2-09771952ab1b@linaro.org>
Date: Sat, 30 Aug 2025 18:29:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] usb: ohci: s3c2410: Drop support for S3C2410
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
References: <20250830130101.142934-3-krzysztof.kozlowski@linaro.org>
 <fc4ec548-9a1a-44c3-9958-b6778e37d910@rowland.harvard.edu>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <fc4ec548-9a1a-44c3-9958-b6778e37d910@rowland.harvard.edu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/08/2025 17:25, Alan Stern wrote:
> On Sat, Aug 30, 2025 at 03:01:02PM +0200, Krzysztof Kozlowski wrote:
>> Samsung S3C24xx family of SoCs was removed the Linux kernel in the
>> commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
>> 2023.  There are no in-kernel users of remaining S3C24xx compatibles.
>>
>> The driver is still being used via platform code for S3C64xx platforms.
> 
> This title and description are a bit confusing.  I gather that while the 
> S3C24xx chipsets are not longer supported, the S3C24xx OHCI controller 
> is still being used in S3C64xx systems.
> 
> So what the patch does is drop support for S3C2410 _systems_ while 
> retaining support for S3C2410 _controllers_.  Is that right?  If so, can 
> we change $SUBJECT to say "usb: ohci: Drop DT support for S3C2410 
> systems"?
Yes, true. I'll adjust the subject.

Best regards,
Krzysztof

