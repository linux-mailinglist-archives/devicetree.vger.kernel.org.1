Return-Path: <devicetree+bounces-171524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7F0A9EE93
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 13:09:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 842203BFB84
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 11:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AA5D2638A6;
	Mon, 28 Apr 2025 11:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dIZem5C3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E245B26136D
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 11:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745838551; cv=none; b=NEnViqPDS0g1YZ1/McM6L5BJ8nRvij2d64X722WMc1kPRXZ+kIfs/AjTePP0Kpso3PZrXZzjbaEUZW6hOONVGVi75YURaaBN3Ibfwzj+/u9DnNpZrYy6XkLdrqptQ8QYV08OGlRtXqAowxh+quPiaOPfIon1HMTrLB7P2eFS1uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745838551; c=relaxed/simple;
	bh=UO7J2oJdaZ6eFcmWZ2Ha3oDv7n8CZchlBO538or7ACA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jzcDEUu3nsaYzSbr3hYYI/kti3zMNray7DaJ2FQh1lgcxF6jIGCmVSwLgXSHPx4unmohfhw8Bij5BIz7eU0Z5OWqzwLnREqnijP8+MerqhkmWRK0knGctLzE/HIwhkMN9NV1vvocxNRYNsu3d+i/tngh4XJUqdfy3WBu2KnoiDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dIZem5C3; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-39ac56756f6so4678884f8f.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 04:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745838547; x=1746443347; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H3Iext1v0JcemyuBv4epctIApvlADaZRKwnLcwjpgzU=;
        b=dIZem5C3NuRdwvxi77CXfxFfNK2NO5C8feHN5ES+m3RhIKmT10MEFokK0O6/AjoMH6
         LWDX0RIAw0We4RDSc90DdgM96lC25ctB2wi91D9ONDMj21Lm7R8+TsFxDctCQNb5dUev
         BV9KJ9HTzmZiQ39Z7uVeiiV5XkH4qk72PVjSeI/QUYtdUyNpd/ptteDerecCWp607nvS
         6pem4ST7Al2lQTJxbeWb1mFyqfQbk9XiK+hWwQKcNf62SGMN/ETbIUwkTtIbLKIL3uxt
         3h88aoDCt0ruVcdisfegsyW+wSIcJJxMb10b6OiwWawQXJK7pJgi9qLPd7qqKiN9V+LG
         5ufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745838547; x=1746443347;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H3Iext1v0JcemyuBv4epctIApvlADaZRKwnLcwjpgzU=;
        b=Rs+UXaDSMfzsP8Oyjr/GTNNZwH+UaQ2BUbRl5KVZgtApPv77CA5JGppUPpav8VDK5x
         pj7ica3nt/zdDiV6tB2ZxnzwjEEPm6oiLRcpAPCt9v8LmhcGeI6aE1vSy3v+yPAzchgY
         VZPm5+Nw7Scs7EzfAtNVPCLCCK4vctX9i/TBC+EJdXxSwD2bNF83g5sS0uxGfwSpNJGl
         HroBzYWOTQHoS5+n37Jj3BYpNOOCf3+Q+6M8qtFssauW6eBwNFp1xNhCWfyHxJy4ao9x
         t8dC1zZK2LJGkhysY3MIyRo2SWXRXgI/gxqtDIypE7Wl7oMfVVLMYZbGV52U+64thpkR
         Pqwg==
X-Forwarded-Encrypted: i=1; AJvYcCVvg0lnJVA07wVkFHqKlaZE9ZLHUiVRyrk0uee/LZLFrdZugIoOpt/OLZe6qM9o7jfXBPRsjpBn5Epw@vger.kernel.org
X-Gm-Message-State: AOJu0YzwgaSKxYGtel7yAkVfwhWMgG4awfGGvrhiqxR3+H8Ru/aNtzmv
	ZjKclKINV85UWYxDoW68mrGJaITmXz8W9gmjoOj0+rFnp2ym+hGhnP4REuWnS3g=
X-Gm-Gg: ASbGnctTbIxcByBNYwU/xVeTWX9KKudrtuIeO32qa8zsMODs3IenMm8Exht0SLuu3AE
	vpWnfZTlVYm0A713fiJCd27b3GjhX3qLDr6PMzdPvk2vrpm8ViulbDEvbkQmzIBshu0edKN7+bd
	53UUtN6EKhSmVtayWuxj1wqo5k/SM9O3nB71oqF55DKT8DkpFLyhM2xEbeYQ6t1w4RXbPISomMe
	X+TiBeynzAVO5VdMkGnO9s/3rCENFFlRuoNs+iVan6Ipu2gyptHpicpv8Wb6A97Euvf2j2NRgYv
	g4vHl06CZWYNTmQVZm9zgRdCISflJV39ENstL8cI5EOjzWoHSVqZrCaOMqT4iwtgeeBrk5igDjy
	iPWmqqc2wyspynNVZ
X-Google-Smtp-Source: AGHT+IEQIpsf8GZoWzshfufjQ9ey+bXCZghfq/VC5/gL8/e0yZpaGRqIW9/smwUfizsp0r9wBNaNuw==
X-Received: by 2002:a05:6000:401e:b0:39c:e0e:bb46 with SMTP id ffacd0b85a97d-3a07aa5fd30mr5223293f8f.4.1745838547199;
        Mon, 28 Apr 2025 04:09:07 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e5d4b0sm10741276f8f.89.2025.04.28.04.09.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 04:09:06 -0700 (PDT)
Message-ID: <67b385cf-a953-4e40-a164-45535d6da212@linaro.org>
Date: Mon, 28 Apr 2025 12:09:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: dt-bindings: Add OminiVision 0V02C10
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Hans de Goede <hansg@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250426-b4-sailusfor-6-16-1-5-signed-ov02c10-yaml-v1-1-9a46124fae7b@linaro.org>
 <aA8uN5Y4MuqR-p7H@kekkonen.localdomain>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <aA8uN5Y4MuqR-p7H@kekkonen.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28/04/2025 08:28, Sakari Ailus wrote:
> Hi Bryan,
> 
> Thanks for the patch.
> 
> On Sat, Apr 26, 2025 at 11:35:21PM +0100, Bryan O'Donoghue wrote:
>> Extend the ov02e10 bindings yaml to describe the ov02c10 sensor which has
>> the same bindings with a different compat string and different i2c
>> address only.
>>
>> Other differences in sensor capabilities exist but are not expressed in
>> devicetree.
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
>> I previously submitted a standalone ov02c10 yaml file but, it was pointed
>> out to me by Krzysztof that the ov02e10 yaml has exactly the same bindings
>> and we should therefore extend the ov02e10 yaml.
>>
>> Link: https://lore.kernel.org/linux-media/da93bf6c-b4bc-4c4f-9373-583fbd0c031c@kernel.org/
>>
>> The accompanying patch:
>>
>> - Updates the overall description to differentiate between the two sensors
>> - Adds ovti,ov02c10 compat string
>> - Adds an example for the ov02c10
>>
>> Once merged we can also merge the ov02c10 driver, which contains a compat
>> string requiring yaml description as precursor to merge.
>> ---
>>   .../bindings/media/i2c/ovti,ov02e10.yaml           | 47 ++++++++++++++++++++--
>>   1 file changed, 43 insertions(+), 4 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02e10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02e10.yaml
>> index 4ac4e11a16c8bb7a53db0c44289b1004dbdc282a..1561a3e96caa8b09a4c105b87536bb0d00b2adf8 100644
>> --- a/Documentation/devicetree/bindings/media/i2c/ovti,ov02e10.yaml
>> +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02e10.yaml
>> @@ -11,12 +11,22 @@ maintainers:
>>     - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>   
>>   description: |
>> -  The Omnivision OV02E10 is a 2 megapixel, CMOS image sensor which supports:
>> +  The Omnivision OV02E10 and 0V02C10 sensors are 2 megapixel, CMOS image sensors which support:
>>     - Automatic black level calibration (ABLC)
>>     - Programmable controls for frame rate, mirror and flip, binning, cropping
>>       and windowing
>> -  - Output formats 10-bit 4C RGB RAW, 10-bit Bayer RAW
>> -  - 2-lane MIPI D-PHY TX @ 720 Mbps per lane
>> +  - OVO2C10
>> +    - 10 bit 1920x1080 60 fps 2-lane @ 800 Mbps/lane
>> +    - 10 bit 1920x1080 60 fps 1-lane @ 1500 Mbps/lane
>> +    - 10 bit 1280x720 60 fps cropped 1-lane @ 960 Mbps/lane
>> +    - 10 bit RGB/BW 640x480 60 fps bin2 or skip2 1-lane @ 800 Mbps/lane
>> +    - 10 bit RGB/BW 480x270 60 fps bin4 or skip4 1-lane @ 800 Mbps/lane
>> +  - OV02E10
>> +    - 10 bit 1920x1088 60 fps 2-lane @ 720 Mbps/lane
>> +    - 10 bit 1280x1080 60 fps 2-lane @ 720 Mbps/lane
>> +    - 10 bit 960x540 60 fps 2-lane 4c1 360 Mbps/lane
>> +    - 8 bit 480x270 1/3/5/10 fps 4c1 sub2 288 Mbps/lane
>> +    - 8 bit 232x132 1/3/5/10 fps 4c1 sub4 144 Mbps/lane
> 
> These look like driver features rather than hardware properties. What are
> the hardware differences of the two sensors that could be listed here?

The only real DT difference and its not something I think we usually 
describe in a binding is the i2c address.

0x36 for the ov02c10
0x10 for the ov02e10

It seems like "no harm" to list some of the non-DT hardware differences 
for informational purposes anyway.

You're right, these differences aren't manifest in the yaml/dt though.

> The earlier description also said this is 4C which I understand is
> Omnivision term for quad Bayer pattern. It'd be nice to refer to that, too.
> (I'd use quad Bayer instead in fact.)np

---
bod

