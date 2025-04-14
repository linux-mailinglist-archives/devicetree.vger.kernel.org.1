Return-Path: <devicetree+bounces-166641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E9034A87DE7
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 12:46:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 496491896004
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 10:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EAE826B964;
	Mon, 14 Apr 2025 10:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3KVBQ6oW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ECBF267722
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 10:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744627577; cv=none; b=AM3p95T407MIK2DxnozQjDc2ekP498O2LMtOmwHDh0hMclaxh0gldUwn1fR1mnZIRS3wCFsDUwsOvdlpc6KKd6l9Q/MRIDeg4iPZrO2Ct0bq5ZSeyKNpXN2ErHAu1h6MPTQ6Ty4eKYPkWkZHtblVg8GqCONxBA+TK3RRuoAliFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744627577; c=relaxed/simple;
	bh=B7DTrBTXvAxbCk7xCnLUt+Ohx6sQFJivOn/iFkNcHxk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u5eVXKy0HEWxu212O89285YcXuLoFnAZWhBKOjuDiRHpLjrjZe/f77i/5lkVKx0CcJLQMfH0me84XXoKg8WsXbOc1NlMlw5BEC5KQ6ya+wzgP3ZYeaWF71u1kfeX4G3tXt8LK0oAFOwHgn858iRwLoVuVNKkWwWn8ndQKbbhXq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3KVBQ6oW; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43d0782d787so29466845e9.0
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 03:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744627573; x=1745232373; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eQeOb9Qy+K52HTOoxzaFzGj3ukur32nTu1ttrDF5hoQ=;
        b=3KVBQ6oWRY8woSAFEDskgtvRnzX+qN+VkrWxHN4LybdkhTkA5zlbfxLPtJG3+6+kZM
         7iyd9lHBG1wX0SNKZl08mtqFUPXNIVVW2kRSaSEzv9Pdce7MJ8AFWIEeBDBSNENlijOB
         FFmcmlxVfckG6m5cVRhUP5BRe6870nqoIbUDgtr6Jtd97MX1InuxEVSbdPCwxoRIkwUp
         RPWgHpFfGqUtQvT+hKft/sswCQO9Wrs7bqRUFVP6efKJvFmkl+4/OoBhfdv71VsMD6Kl
         qRCzxej1Ewbn7ZJwnMjAowJqkME2sfyQkQozjts0grgXiSLbGrg/+fPpYk4hAJzydi33
         HNWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744627573; x=1745232373;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eQeOb9Qy+K52HTOoxzaFzGj3ukur32nTu1ttrDF5hoQ=;
        b=Tx2sY0DjrBf+iCt1rzkcVxQQ4nD15loLtER4aF0M9UvDa+Mzu6fJa0qK2kSKCr+k+R
         b/4//M3dJeAjgGRd/pzyTGoSTCgJXKBLBMIcSay6EcM6nMrgfiC9xLnjidpYm/J5O+Fc
         Mwzz2DjB5yUHMuBlPUDCAfYCV+j/OWEl48ld1NP1RhUrEBhub0teOMZFCr0UesbRcJK/
         lq6vzRRlzHUTtlJpF0fb7c4f3mjqPWbiEKjvZsp5vpUrKh8QR4VUXLTLFoR6B0173xJ7
         Bu8ebKlMMbhMwB5bH+ylTD2jP388Mn0jKPQTKXeABUc/+Ab98e7lO4EqfoBGA1iODau0
         hqmw==
X-Forwarded-Encrypted: i=1; AJvYcCUI0jSQAMN5LjnVivs/c5o/Of0nSGOBiQqCxlOBJFC8tg2wgo+kbwa9r3q7qPzLCHzDd2KX4iCftbMU@vger.kernel.org
X-Gm-Message-State: AOJu0YyfSs18QStSuGwX35Oq+zmLteEfBIsYOVDYj4WApNozgUxQ0+tk
	33e29WCMrnBSitvg/AFQtiEPcSpwrEJMd5QfaOjVO2X6Mp1NN/7oTgNDrzwvpvk=
X-Gm-Gg: ASbGncvbltfHIeA3K+sNCLH4ae9/S4wd94A9Pb3cI4fGMAvpfJxSKMJmCr1LIvr/InX
	tYRJnzkqQlglqoXolhNQtHBY8YyMdxQBteXQ/2nJS7iqB6l5ERfFcuYnxGchEuu3L7zXJ3rzqUK
	pxCd6PG9Wn+J1RShA2vJZBt7fcqHtiQ/ynoq8f5XZ2FroHe++ktcUTm/UVdi8rpEZxm/UusDsjK
	D8uiZ1l8wHRDh7F/XzksYj/NkTzmVau/1sZMeuWfbqjQKDWt3MujyLyQ39PLzJ5GQKw4TSTdSm0
	JueRHSUaAsv0h68fAICIwNz+RXxzfL8Qq6mOek/GYS92y1waT7W1sU2AvoWrGx5XUksuJf1+O2H
	bfuOj68z8HOj9
X-Google-Smtp-Source: AGHT+IEmlVyIZCmc7s6u9Mvm5ekiBlQHJoP4+G1Yv7tVnhDgdM9pPkqdPRM+lbmSVeVP2abLwsQOOg==
X-Received: by 2002:a05:600c:a04:b0:43c:ef55:f1e8 with SMTP id 5b1f17b1804b1-43f3a93f7c6mr99598855e9.13.1744627572680;
        Mon, 14 Apr 2025 03:46:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:5ee:79d0:2dda:96f4:b94d:164c? ([2a01:e0a:5ee:79d0:2dda:96f4:b94d:164c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae964002sm10490898f8f.8.2025.04.14.03.46.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 03:46:12 -0700 (PDT)
Message-ID: <a36aa4a4-9e00-4b98-8b98-db182ee9bd80@baylibre.com>
Date: Mon, 14 Apr 2025 12:46:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] rtc: Fix the RTC time comparison issues adding
 cast
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Eddie Huang <eddie.huang@mediatek.com>, Sean Wang
 <sean.wang@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rtc@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250109-enable-rtc-v3-0-f003e8144419@baylibre.com>
 <20250109-enable-rtc-v3-3-f003e8144419@baylibre.com>
 <202504111338408af44d7b@mail.local>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <202504111338408af44d7b@mail.local>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/04/2025 15:38, Alexandre Belloni wrote:
> On 11/04/2025 14:35:56+0200, Alexandre Mergnat wrote:
>> The RTC subsystem was experiencing comparison issues between signed and
>> unsigned time values. When comparing time64_t variables (signed) with
>> potentially unsigned range values, incorrect results could occur leading
>> to runtime errors.
>>
>> Adds explicit type casts to time64_t for critical RTC time comparisons
>> in both class.c and interface.c files. The changes ensure proper
>> handling of negative time values during range validation and offset
>> calculations, particularly when dealing with timestamps before 1970.
>>
>> The previous implementation might incorrectly interpret negative values
>> as extremely large positive values, causing unexpected behavior in the
>> RTC hardware abstraction logic.
>>
> range_max is explicitly unsigned, casting it to a signed value will
> break drivers.

Ok, It should be fine for all drivers using range_max =
   U32_MAX
   RTC_TIMESTAMP_END_2099
   RTC_TIMESTAMP_END_9999
   (1 << 14) * 86400ULL - 1

Whereas drivers using range_max = U64_MAX going in trouble:
   rtc-goldfish.c
   rtc-ps3.c
   rtc-st-lpc.c
   rtc-sun4v.c

Is it ok for you if I fix the drivers to avoid issue with signed range_max ? Because, at the end, 
you can't keep comparison operations between signed and unsigned variable, it lead to future issues.

Otherwise, I've another working implementation which remove all comparison operation and drivers 
doesn't require to be modify.


-- 
Regards,
Alexandre

