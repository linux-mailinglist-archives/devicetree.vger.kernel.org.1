Return-Path: <devicetree+bounces-172074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03461AA17BE
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 19:50:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4AE1017655A
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 17:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69E68243964;
	Tue, 29 Apr 2025 17:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="C7tBWW2W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC4F221DA7
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 17:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745949054; cv=none; b=SbEAiBeOiRg0vLRYN1jbsR8kREZaddC1t7gK3Hmx3RcHOdbDyMPm9PD9oss9OMo8XtbmX7SqWKMjSso6WEe0QldRwpqye2siedu+yVBRCGpC4ky96FOAvuYzLw3dpRJvi997MePJbMwDXPR+/YqBckQ9F0w9yn1au48F0ScDRZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745949054; c=relaxed/simple;
	bh=RV95OZ6QuotW+SyToIsFGrOd4oJnyVS6645KwSoOxqw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bNmBvXm7sDASCjIPE1jbUWvyANBdzNBVhmvxuLPK7aSYqL5CBvSiVfX6mUGsXueb7cKtNIhsRe9muRnu9+nechYAjXTk5Uxbx3YxSdLleDbK7vh5kxeJlRTPfRdFcidQko6+VV2bmNZip0bTPwGTUhrohibEZ7+KXrWT3YnGGRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=C7tBWW2W; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7301c227512so3862585a34.2
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745949051; x=1746553851; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=04d/2AWDhOwk2FHBr4f0N3xfbkpUd71ShNH0wmj1gUk=;
        b=C7tBWW2W9QuKYpg/5A0xBdDVMT/8Bo9+C4zNs09yD2Jj16q9870ua9tHQ2HZkiTEM3
         NFrAWc/c5gJ/41fWLQ03NL8PzxZdM/77YRTxjA+TNGfagbGHlIuUWnQiNuXcd0gvfZaC
         NCGoZyQsyV79D5IKPmtU1dDX77E/BKHpG0vlbCP5il5AqgnhUlFW1gPGGgNZ0elKuSQ3
         pym/a0/J4JeHs211QSNII9kKhnTq8pcJMG6Yt6J0UTFBn4CMO31Sx02/6/CaDmqoURpL
         3qn7OeBaUzSPcQPyOUEZgB7kthvRjKTGymtCLeipiZRx/S+FDumN7WxdR492B4xXIHB3
         noOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745949051; x=1746553851;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=04d/2AWDhOwk2FHBr4f0N3xfbkpUd71ShNH0wmj1gUk=;
        b=NOPdAH0W7bYoHT1MI1B+HtetAl+zbDRyMHHEmTQH2cSjjdvgLFp7Ow6HgdbkHoO3iG
         XpkD1ky+BnQjcfXsPKV839jhIJ7P/t+f+7L0UjckLlUBwleRw1F1NI9ur7YcPU86n9xb
         HRZR5/0pt2tt2M2zmLDwKgLUI/9Iou1mn7tuJvIiejFyKvt0FD9xx/PavWo4TSs+7Deh
         KB1qgIh7vXTLbt8OfxkeF5g3Si3+sCjeAcEddJgjMdfB0pogJZsrtcXJ/Ot4noawG1ez
         s/Bvs4mGh/NO0Trn8XxYfXxJgpL4GLJckSGi+tskj3o9L6PvnVpNtVPsonh9rjttelLP
         Hi5g==
X-Forwarded-Encrypted: i=1; AJvYcCXc7RPEFh2eRcNcJ+hNZtE6smwtQU8kS+nl70hgG5THAzulfcNDWFUbaLCVI7wWtmgjzN1pZelfiiAy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx00KIS+3Sk+o3YMRxElkhi4dMKhROuSyrv9rJTRP097dxba0Al
	aIA31SzL6CqeMDafwC58eZf12eX0R/CC4oJaDrihve93V2L/baweoCYugUvAA3I=
X-Gm-Gg: ASbGncsejIHxMErGA0OVY1M4lYbELXDqy5iIwDgeShSzlcfE3UKrvAqamax4gDLpmOf
	1sQA0iSfIle5Yr0qr5mbiLjEjQdN843PQQN6qtbpNkdpJRToE558ss4Xhr4XtsphG3ShfRvSfZg
	akJoCMVkKnHI9AfMNezaOuvj6RetTwCft0D+cPqTFS0BFiAPu9vLMZN+X+GWlkE0hpZbVVi3Naj
	2W6o7WTqRioGWlHNlzH6jRJA9Jy+xLWshaOyiQOeizMP43668CaNguxKIwbWvNrC6ZG1xFK/RAH
	jV3DczmXlnwHgCrSLl6uAj3CAiufcnj7ZVsncjWzTG8S3sO8zmyhDLj6ratQ7idoGqG4xmjQ1fq
	F2I2z/fK7DGPY6HXJUg==
X-Google-Smtp-Source: AGHT+IEq89dAp0w+bvwAhh1rYlQuYIKa/rR3a/L3Ry8hOxP6kvm27VuAIEvwkrlKWYiFuu6TNS9Owg==
X-Received: by 2002:a05:6830:6688:b0:72b:8a8b:e02c with SMTP id 46e09a7af769-731c09e0225mr84454a34.2.1745949051440;
        Tue, 29 Apr 2025 10:50:51 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:dc17:157d:e8b2:3ad6? ([2600:8803:e7e4:1d00:dc17:157d:e8b2:3ad6])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7308b13087esm394510a34.31.2025.04.29.10.50.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 10:50:51 -0700 (PDT)
Message-ID: <7534e787-5973-4854-acc5-1db847333b96@baylibre.com>
Date: Tue, 29 Apr 2025 12:50:50 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: iio: adc: add NCT7201 ADCs
To: Krzysztof Kozlowski <krzk@kernel.org>, Eason Yang <j2anfernee@gmail.com>
Cc: jic23@kernel.org, lars@metafoo.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nuno.sa@analog.com, javier.carrasco.cruz@gmail.com,
 tgamblin@baylibre.com, olivier.moysan@foss.st.com, alisadariana@gmail.com,
 gstols@baylibre.com, antoniu.miclaus@analog.com, eblanc@baylibre.com,
 andriy.shevchenko@linux.intel.com, matteomartelli3@gmail.com,
 marcelo.schmitt@analog.com, chanh@os.amperecomputing.com, KWLIU@nuvoton.com,
 yhyang2@nuvoton.com, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250429025505.3278016-1-j2anfernee@gmail.com>
 <20250429025505.3278016-2-j2anfernee@gmail.com>
 <20250429-sensible-subtle-cobra-badedb@kuoka>
 <00fdf173-ac7f-48bd-be81-5d41351e99bd@baylibre.com>
 <64e5c5bb-f1f9-4bac-b1a1-f628816ee1b2@kernel.org>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <64e5c5bb-f1f9-4bac-b1a1-f628816ee1b2@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/29/25 12:43 PM, Krzysztof Kozlowski wrote:
> On 29/04/2025 18:09, David Lechner wrote:
>> On 4/29/25 2:36 AM, Krzysztof Kozlowski wrote:
>>> On Tue, Apr 29, 2025 at 10:55:04AM GMT, Eason Yang wrote:
>>>> Add a binding specification for the Nuvoton NCT7201/NCT7202 up to 12-bit
>>>> ADCs with I2C interface.
>>>>
>>>> Signed-off-by: Eason Yang <j2anfernee@gmail.com>
>>>> Reviewed-by: Krzysztof Kozlowski <krzk+dt@kernel.org>
>>>
>>> NAK
>>>
>>> This never happened. Don't add fake tags.
>>>
>>> Best regards,
>>> Krzysztof
>>>
>>
>> Then who send these messages? :-p
>>
>> https://lore.kernel.org/all/7f2d4894-788e-4ba7-bbfc-67ac0903b6fb@kernel.org/
> 
> Do you see entirely different email? I NEVER give tags with email as
> written here. Such tag could not happen.
> 
>> https://lore.kernel.org/all/20250417-acoustic-ambrosial-mosquito-9d75f4@shite/
> 
> Where is such tag here?
> 
> Best regards,
> Krzysztof

Oh, I did not notice that the email address is different. My mistake.


