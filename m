Return-Path: <devicetree+bounces-82425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DC59243A0
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 18:32:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90B402879F9
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 16:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C38551BD039;
	Tue,  2 Jul 2024 16:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VYm2vSAU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E68E14293
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 16:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719937916; cv=none; b=XuilXfMRJ3ac+4lgSnsB2RqOOEwK5DHcom2u9nkarW0AV6YIUfpocBhwRcb/k1c6aBsWalU3GdOAA7cP0/bBHmXdijpBfYZ6r9C2qTE00mB4pfeozJg9PAd8rFMfo2Oer10iw4EmEMUcJ7onFiySAOeZ1b3TEub4w4HBRg+nqXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719937916; c=relaxed/simple;
	bh=NcR4UoV+iV/iG/vFUoCs8a66N+aWGz/3elnHzo7rR5M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tQh6Urrl9tGHUCUFT3f7Ep+cuosfWZsN8uH4w4ixiYtNjaXTcdefTDIqe+J8wzw78G/fi/UvXV2IrI4Et7kMlgbRnTMvJc7SX6TZrttiHGei1a8tTbmBNXna5I6hufPoTtZ8EQjbZJqDTTwrB7f5n26VHH1In8qiAQKrGp4f/7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VYm2vSAU; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-364a3d5d901so2566461f8f.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 09:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719937913; x=1720542713; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SZ3nrMZ8xf5iqvSbwRyggvCmfkI8tHRxLTLxcqXvxrM=;
        b=VYm2vSAUKCBTaFlvvCXxe0UjzsRQPAFVpvzX440AslRnyfKhjXx8fvlamIjxNj8inC
         CLoaniKxd+iSUidxLVBxt3QA/wCnwv0+QcD673XZh7KtqklbE3jbJsBc+gsEZ1olpf5N
         zuRmfIvhvPAVOPrcbqqNJdnt1z8t4ZFsMKPnh0NOo0hdUocd4FZcZTS37cPqrTRPZVoQ
         T1rGKLl0fovU4sDvrmH/901FWukav3PmLbUiCk3umomE9R/tPoQv+4cS1f4Bzm5hM8Kf
         IUyLW1ZJS/muT8C61nwHuSnhjB1dTPKhfFNs2cT6imzgQqJCdTN9H17Z5WJnr92DQbyS
         DXsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719937913; x=1720542713;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SZ3nrMZ8xf5iqvSbwRyggvCmfkI8tHRxLTLxcqXvxrM=;
        b=j1iGqPVwo0z4MIhlrPh+ghD0blq7CYeGy5VNXppbGufDsRTsU9+FQ8C9bh2w2adu6L
         E2NEV4jc6BpOGl2nd2VWhb0qATyAxkwkNrJvvV76JQM9UqBUdSt/PYxVC3eqndmWpnoz
         vpbz0n97oqNytzDf0/qxoNB/ms68RcX4yrxwg9Jsjb8Kccp5qthO4kWkQ8fTYa4/ne4Z
         rRV/bWcCYtRxqmWqfj+8BUzKpyfyh/zGdP2H67kDozCWHNPWVjqMegQFtj8QfGugE/Ok
         a9I2Ude/qvcw95dNM5QBhLg9bZMFSluL6+iCnI3hQF32qmT1X/JgbTJlAgX9J2zel6jR
         c4HQ==
X-Forwarded-Encrypted: i=1; AJvYcCViZY/Z0jzCsZN0duO4Tj4EHHFCx7TgaLpRYrAfS5lt/tMzD38eOOetZMHgAS3ugfcuRyEP+ZqyNCYcVImSIiGHBk0COm7xD0otTw==
X-Gm-Message-State: AOJu0YyVhAd0u6B2iGlSKKLotlnPD4DAYscErdjEApL+xuvyS98AgCkf
	d73q4D7sdw0dtMKcLADMCFhw5JeSp9V79B31ZQikrIOXE53na2nzSVKo2gLAELo=
X-Google-Smtp-Source: AGHT+IGsZ1fgxA8SKHjpaB2XrBQgORgix+uj5qYoOc9dRc/F2eqJM/tlJoSyViIXlJRSGTc+c5ifJw==
X-Received: by 2002:a5d:47c6:0:b0:367:3cdf:c027 with SMTP id ffacd0b85a97d-367757248c5mr6463145f8f.50.1719937913525;
        Tue, 02 Jul 2024 09:31:53 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3675a0fb967sm13637209f8f.82.2024.07.02.09.31.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jul 2024 09:31:53 -0700 (PDT)
Message-ID: <2a8f5b5f-b67a-4bd0-afe9-f09473aea2d5@linaro.org>
Date: Tue, 2 Jul 2024 18:31:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] thermal/core: Introduce user trip points
To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Rob Herring <robh@kernel.org>, linux-pm@vger.kernel.org,
 Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20240627085451.3813989-1-daniel.lezcano@linaro.org>
 <20240701162600.GA4119789-robh@kernel.org>
 <98fe3146-07ae-4095-b372-6aed6e080d94@linaro.org>
 <CAJZ5v0ix+RDtrR+r3jd=A_W7D5U7JodMiirJ519-wwLrHeBbSw@mail.gmail.com>
 <1eb7eb88-4230-4803-83fe-415ce0745951@linaro.org>
 <CAJZ5v0jV+0bWqpCR1Q2rYLJvx0J6hgExzRks6YDPL9gX_HK0rA@mail.gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CAJZ5v0jV+0bWqpCR1Q2rYLJvx0J6hgExzRks6YDPL9gX_HK0rA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/07/2024 13:03, Rafael J. Wysocki wrote:

[ ... ]

>>> Trips cannot be created on the fly ATM.
>>>
>>> What can be done is to create trips that are invalid to start with and
>>> then set their temperature via sysfs.  This has been done already for
>>> quite a while AFAICS.
>>
>> Yes, I remember that.
>>
>> I would like to avoid introducing more weirdness in the thermal
>> framework which deserve a clear ABI.
>>
>> What is missing to create new trip points on the fly ?
> 
> A different data structure to store them (essentially, a list instead
> of an array).
> 
> I doubt it's worth the hassle.
> 
> What's wrong with the current approach mentioned above?  It will need
> to be supported going forward anyway.

So when the "user trip point" option will be set, a thermal zone will 
have ~ten(?) user trip points initialized to an invalid temperature ?


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


