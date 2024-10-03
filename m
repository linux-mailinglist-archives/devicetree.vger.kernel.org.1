Return-Path: <devicetree+bounces-107537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 525D098EE8C
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 13:54:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C0717B21B65
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 11:54:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE78E155330;
	Thu,  3 Oct 2024 11:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mfNVqqxo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBBA7154C17
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 11:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727956486; cv=none; b=jqXVjRtSqJktukH8coLwX+bqjZJi9jJ8agQ2J/ZGTNYQEFt2cq5szlkpHc82sRo+2NDUCrcumlpKXJr0NwCnuL32hMyDYMJKDZhcuG4oeS6tr8WhmrRgv3hIV5TCyR1zFzsYCab3jYpUirZgVX6DIl1K/wzUgSHApqRli62iDCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727956486; c=relaxed/simple;
	bh=f/05BBH/eq7K2tyheyBY4GE/gcawtUMwmppbh+Qh1zg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sblckedmFFC5d0oxNith/jTDdVnLQ7A0QiKBltihsRCtmXQxu28Vts1egpsxsTA85jlHIYJbMjFtu7+JoJg+4bab39H05xNE/j3ISIKHfwBoG3r9HI+BbwUeO0J7OppHYa2kWtX1UYmN8rGyzzFEfQe5UhpoqBAlsOuDlmyOEiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mfNVqqxo; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a8a6d1766a7so134288866b.3
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 04:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727956483; x=1728561283; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uV4EBqFF6t4IrEQzVLz2juLY0QACwQNhZubENKYeW5E=;
        b=mfNVqqxoi33Fa7whZP4dtqea0E7WjtN3vYoegwwwhk9w9Yrr6OSchfEFzuZ6jl9HMR
         jPpTiRdFcf3QDKaUYJrXStSdYThtzh2hoHtkj3Yt8S5Zz2sIYj3/hZAuysr+DLRIQ86h
         tMr21cgNOyXPW6z7gfQG2Miqpc2Ewg7Hk8EPLGcwMXCq6AJcpCJf+6vXPXS9/r+M+CBq
         2m/ITNUWxOW0DSOhPSc2eR5wb3F/nAeo+nwLySV68aakVgLIJ0Z8fUK2PntFtjBvZlzY
         qnbLnK0eU0l9Kbx1F3iWNH8YdmQVd0vVhlte2NpaPUBxMkyDgLfb9ZdDqXcg27Dx3wN6
         PJFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727956483; x=1728561283;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uV4EBqFF6t4IrEQzVLz2juLY0QACwQNhZubENKYeW5E=;
        b=TmTJeI4faOn6MSly0tHgkXUXX3R6XXzTv1gO/OQ/IeIR/JSOvZb0m+b9E63hAo6Djt
         UmkqqWCGKXFLO43Nn6sNBFWeucthzFRuZtR7kGRqPm3TVAd1UEJqqS939Nht+ArjlupD
         BsZJD1dQJ3jabS2JRLA9E5+jq+tPH3ZDl3yzzu7CVUtTOEpHlE8Pdq/vikdhHW1axWvm
         79hGH+nR2cT20oMBWOrZzA1eXgAF6rvYmfy3fWqWD0xy+BjB8ZZ8ixTvHfFpv/C4GAp8
         rEeVsczV7kZnr4ia6G945Dy2qE2QZ3IC6vQeWkcKtebndhksXsq71lQ26vfUZ1cZED0q
         bnZA==
X-Forwarded-Encrypted: i=1; AJvYcCWu+JbkvmKTxn0emwXTlkNvMOIcR/fGV8alw080Gb89/tM0wKXBy0QEHVHR+eIyRAcVfzsZTmicVmr5@vger.kernel.org
X-Gm-Message-State: AOJu0YzWoQzvJDr0/TJENVnhh60iJ2czRtYPhzjighnsGAV023ViUOBg
	9LqgAUHiAXS8KQhaCKzRDve0iG/vjmYHBi2xcSPJY8V/C9XlCbI3vjEj4RK2gNQ=
X-Google-Smtp-Source: AGHT+IGNvEXLDy3+c7JoQtrUl/REfu3GgusWXRqO6Qr7rOxgPVJ7UVvkXIucc0P+f1n7YyddpKen/A==
X-Received: by 2002:a17:907:1c04:b0:a8a:83e9:43e2 with SMTP id a640c23a62f3a-a98f8207ac4mr617082766b.12.1727956483122;
        Thu, 03 Oct 2024 04:54:43 -0700 (PDT)
Received: from [192.168.0.15] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9910472ba1sm75272866b.161.2024.10.03.04.54.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2024 04:54:42 -0700 (PDT)
Message-ID: <c86f695f-28e2-406d-9f46-c291fca282e4@linaro.org>
Date: Thu, 3 Oct 2024 12:54:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] media: dt-bindings: Add OmniVision OV08X40
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Jason Chen <jason.z.chen@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
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
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <e8142566-aef5-498e-9d2d-8ac187ce8524@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 03/10/2024 11:17, Krzysztof Kozlowski wrote:
> On 03/10/2024 10:38, Bryan O'Donoghue wrote:
>> On 03/10/2024 09:33, Bryan O'Donoghue wrote:
>>> On 03/10/2024 09:29, Krzysztof Kozlowski wrote:
>>>> On Wed, Oct 02, 2024 at 02:58:44PM +0100, Bryan O'Donoghue wrote:
>>>>> +        properties:
>>>>> +          data-lanes:
>>>>> +            oneOf:
>>>>> +              - items:
>>>>> +                  - const: 1
>>>>> +                  - const: 2
>>>>> +              - items:
>>>>> +                  - const: 1
>>>>> +                  - const: 2
>>>>> +                  - const: 3
>>>>> +                  - const: 4
>>>>> +
>>>>> +          link-frequencies: true
>>>>
>>>> Not much changed here and you did not continued discussion about it.
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>>
>>>
>>> Ah my mistake, I didn't read the bit at the bottom of your email
>>
>> I'll do this
>>
>> Documentation/devicetree/bindings/media/i2c/thine,thp7312.yaml
>>
>>             data-lanes:
>>               description:
>>                 This property is for lane reordering between the THP7312
>>                 and the SoC. The sensor supports either two-lane, or
>>                 four-lane operation.
>>                 If this property is omitted four-lane operation is
>>                 assumed. For two-lane operation the property must be
>>                 set to <1 2>.
>>               minItems: 2
>>               maxItems: 4
>>               items:
>>                 maximum: 4
>>
>> This captures what I'm after.
> 
> I commented on link-frequencies.
> 
> Best regards,
> Krzysztof
> 

Ah I understand you.

You're saying the link-frequencies we have in 
Documentation/devicetree/bindings/media/i2c/* are redundant absent 
hardware specific link frequencies being enumerated.

I'll either enumerate the acceptable set or drop this.

---
bod

