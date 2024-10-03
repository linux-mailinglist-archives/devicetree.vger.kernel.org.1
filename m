Return-Path: <devicetree+bounces-107559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FE998EFA4
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 14:48:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EEA11B20D99
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 12:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22DE618893D;
	Thu,  3 Oct 2024 12:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CvnLWx7P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB73186E42
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 12:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727959695; cv=none; b=NpAwd2ilf8ehvQBnb1dMfyzY4O6XRLbfbQXj1f6FHtWjFlFEqOZszqBs/DwBhgum0MJ7wGrSCuhZXMR1uS0hIlTm9msX9GHsuYbgKq3IFVtbexorJD/zCQ1ClvfkFRIp1rDsrEmIVjjufmjwiChlzZCUq07hXDswrfaGSHQWuW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727959695; c=relaxed/simple;
	bh=zOIWMjRS2p3bZpg1ag7KPlvfqjIoMyNpGRHkiyIoNuo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ubzx4yCMaXeRrZLDY30FXYeBp3mNBAckEYwmprIJ/MFQLYRCyyJ7cO05sbdtzq5ixdoZjyI/wmft5AyWr38Ue3dUnwwf2QetVK/jAc7Kpqy16pPIFmXnLDCctLBbV6Vex0CRhC4kJpdwcQBr1Rw7R+K70MxjIaEH9IMQG4xael4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CvnLWx7P; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a8d24f98215so142927366b.1
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 05:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727959692; x=1728564492; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WO8brJ3+4NQ013np9LAh2IKCfbEHhtdsfDG8W0amriA=;
        b=CvnLWx7P6PIWWMjpCDA8dy8ZhU/0W/8ewYYv/urE+2N+F7QqoKy2M4uRWh/JkjcbI7
         opmgBjU9jN4MoQlE96tC1hBA+l0MB9ozZte89A8Ju4mv8qn4FJdEkFupo7JSR0BmkhiB
         qQPG0gIFsN7Z91v6rEEjs1i5xCR3LmRulOpMJmO6el/fpTmAAdG2d5cv5PJiB+V90/Xw
         h9bmgdV2+2pnz6Nb1DtNQL6x3v2QzSuZvdplRTbmmTw+1OUcD/F7uYS4Spl0oEjOe+Q7
         RS/Swe9x0Zw6hPXa8ua6NQhEwZS7qS2H4B2x19hd8tEQpwjNGTr/AUoJ9B77Ahm2rSMm
         Abjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727959692; x=1728564492;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WO8brJ3+4NQ013np9LAh2IKCfbEHhtdsfDG8W0amriA=;
        b=MvXYSNuB+JJYO+loRC2RFnbmI2Xwq6I6eBpYFnx27uwLbMpEWqGxg7h8mE2uUOZtaf
         ZK1jgAQCbcSv97UV2VEuvawt7wwF8Eby6hd1hHDDtmUQX2KsNVCHBO0qTzo4XM/A8ukf
         Z3V5vjip4oge755WJmbz8p2B78fkhjCrSxuIy1SNvajsMfp108iJbVyBA5TTn3MpqANj
         vgxOsVwcBrV90i6a/9NrhDO/QUN1Q0fFqD1QEvSw2QZ1MQ/d9od9IuvSuCkDBSypridZ
         ShhrM/YrBaCfzG7E9Ha4OX1I6fX21d+IHJb9oZ9OEEo2Qu79bCTWkAnzvbEn4WuW1QT9
         A7fw==
X-Forwarded-Encrypted: i=1; AJvYcCXyMpG5wDO7cp5YBQ5v44UabhUyrKvCrJWoKsONPuVVYMwhA4dJQUC7L0X4md3QgTDEq1SZUt/urAYX@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj1FO/3t4yeZ+lMBthuc7W81wTBjHX6WVpjhVpeokDXD8W8YXc
	c5oxG/DAo+XQh7Cc95Tl4cyoYHma6Vcgz1AeG6KPp6HNeTP5kkwllIHW8fkI5ZU=
X-Google-Smtp-Source: AGHT+IFYwc59ksLJIM/WoPM7UWPp8dMMI4b3h6Fwg2/xn+5Aj8fqBxV11AEsnRoCTFG04xuYrSB0pg==
X-Received: by 2002:a17:907:6ea4:b0:a7a:9144:e23b with SMTP id a640c23a62f3a-a98f8234322mr677304766b.19.1727959691684;
        Thu, 03 Oct 2024 05:48:11 -0700 (PDT)
Received: from [192.168.0.15] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99104723afsm82313766b.176.2024.10.03.05.48.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2024 05:48:11 -0700 (PDT)
Message-ID: <046eb564-98b7-417b-8f04-173adff354a9@linaro.org>
Date: Thu, 3 Oct 2024 13:48:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] media: dt-bindings: Add OmniVision OV08X40
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Jason Chen
 <jason.z.chen@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20241002-b4-master-24-11-25-ov08x40-v3-0-483bcdcf8886@linaro.org>
 <20241002-b4-master-24-11-25-ov08x40-v3-2-483bcdcf8886@linaro.org>
 <t4fajppdqagkl7wr2krcucsga4zocz6liar64odk2mnasdyfms@5fp7bfwalson>
 <a86d05c3-5151-4161-8612-58894b1d0203@linaro.org>
 <8554d372-18cb-4351-a5ab-894be09c613b@linaro.org>
 <e8142566-aef5-498e-9d2d-8ac187ce8524@kernel.org>
 <c86f695f-28e2-406d-9f46-c291fca282e4@linaro.org>
 <Zv6LQ0q2XVHgUohh@kekkonen.localdomain>
 <1a4e5aa6-2308-41de-94e7-0077cb265b6d@kernel.org>
 <7ab7a7f0-c035-4210-b4d0-9e08291be475@linaro.org>
 <Zv6STSKeNNlT83ux@kekkonen.localdomain>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <Zv6STSKeNNlT83ux@kekkonen.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/10/2024 13:47, Sakari Ailus wrote:
> Hi Bryan,
> 
> On Thu, Oct 03, 2024 at 01:40:34PM +0100, Bryan O'Donoghue wrote:
>> On 03/10/2024 13:31, Krzysztof Kozlowski wrote:
>>>>> Ah I understand you.
>>>>>
>>>>> You're saying the link-frequencies we have in
>>>>> Documentation/devicetree/bindings/media/i2c/* are redundant absent hardware
>>>>> specific link frequencies being enumerated.
>>>>>
>>>>> I'll either enumerate the acceptable set or drop this.
>>>> link-frequencies should remain mandatory in bindings, whether there are
>>>> hardware specific limits in bindings or not.
>>>> <URL:https://hverkuil.home.xs4all.nl/spec/driver-api/camera-
>>>> sensor.html#handling-clocks>
>>> Yep and my comment was not under required field. Why all this discussion
>>> is taken out of context? No wonder everyone interprets it differently.
>>>
>>> Best regards,
>>
>> Just so I'm 100% clear.
>>
>> required:
>>      link-frequencies
>>
>> is required but
>>
>> properties:
>>      link-frequencies: true
>>
>> is not, and presumably should be dropped from other yaml descriptions
>> upstream.
> 
> Seems good to me.
> 

heh so I'll v4 this and since I'm a masochist, I'll send out a fixup 
series for the rest ...

---
bod

