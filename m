Return-Path: <devicetree+bounces-30672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7C38289C3
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 17:13:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1B81285C33
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 16:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C43CB3A1DC;
	Tue,  9 Jan 2024 16:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="moYAk1aW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 983143A1A9
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 16:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40e461c1f5bso24967045e9.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 08:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704816765; x=1705421565; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QLuwkV3YqBM7cDd6d4I1FcvjfJRMJpmS9TLQKnHh3LA=;
        b=moYAk1aWEGU0e8vAsJW8p6tr3Pu3tFN1GgQ3d9dEVFjVhBeCHaDokjiYn2BhKUlyPf
         3iRyD1fs3Q4O2xnXTEMy3bXHFRpZC6IUmZlTrej3NVPTsapUOhCNtUzy63gFTPFmOW3Q
         Eh3BGgpXQJ5wcOkG64Fh+cPM5CZQkK0eOuJmK+ErNwFobl3XY/iSnRRtY7JSjrt+ujxS
         dsfAISc+YydQIUhYZHiF62tXmlygb6OhUUCMJ6ht5igjYz6RUtWUHeVrZVjAYRZvByOy
         x0ukRHA5AoY0VIVFtXObDSkhZZqXn5QVJGkR63whs9JoPZASAIJHCXLoRIN8DX4HHPF1
         IxKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704816765; x=1705421565;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QLuwkV3YqBM7cDd6d4I1FcvjfJRMJpmS9TLQKnHh3LA=;
        b=YwFxG6l4zj06cUWcYuoRPnGlp93HW2147kj1E6iJ8mu5L4cI6GHcnwl8DX/dZrzsvT
         xWZkvwik83Do2TN/0coCQCbmpl3oe6IxZShOMGsH9yWcVXB42qVi2y/3vlsXL32xx97V
         C0qepubuaKDrNHv65qQSRp0qYAQGUB80zBXuHj/oJBVFK/+CPsuVeRDZ5yTTO4JdykFG
         VrQ+eFrFBqEE/Y0IhPhif34s4FAvbXHk3fsJxBfKghPqZu4qy8PStcr/Ll5jiP2bT163
         I1/3r2lhVDqC23qsJwWZD0cWw3ATPnXcMmYF3hHzSEyMBlx+4STECGCXMz6Z8R7W2zGS
         6vKQ==
X-Gm-Message-State: AOJu0Yw0Ww3IDZ17vthT7Vdo84K6FBtFpSuyKnBvxlLQ5tC+91BklaQ1
	hHTJhjBVG0K7aQGuVfNtOQ8WWEaHZ8qw/Q==
X-Google-Smtp-Source: AGHT+IE+jtYqbzFOWQJKYy4Sd1zW2XS5XwcHZK4TTZRMLsCeki8cy1luWp6DEum2EBB3JZlw2mRT8A==
X-Received: by 2002:a05:600c:ccd:b0:40e:52cf:3c2c with SMTP id fk13-20020a05600c0ccd00b0040e52cf3c2cmr313625wmb.73.1704816764893;
        Tue, 09 Jan 2024 08:12:44 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id p6-20020a05600c1d8600b0040e4c1dade4sm4205471wms.36.2024.01.09.08.12.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jan 2024 08:12:44 -0800 (PST)
Message-ID: <38523622-4963-44a5-a5d6-64896ae47e09@linaro.org>
Date: Tue, 9 Jan 2024 16:12:42 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/12] dt-bindings: clock: google,gs101-clock: add
 PERIC0 clock management unit
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>
Cc: peter.griffin@linaro.org, krzysztof.kozlowski+dt@linaro.org,
 mturquette@baylibre.com, sboyd@kernel.org, conor+dt@kernel.org,
 andi.shyti@kernel.org, alim.akhtar@samsung.com, gregkh@linuxfoundation.org,
 jirislaby@kernel.org, s.nawrocki@samsung.com, tomasz.figa@gmail.com,
 cw00.choi@samsung.com, arnd@arndb.de, semen.protsenko@linaro.org,
 andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-serial@vger.kernel.org, kernel-team@android.com
References: <20231228125805.661725-1-tudor.ambarus@linaro.org>
 <20231228125805.661725-2-tudor.ambarus@linaro.org>
 <20240109040315.GA2619804-robh@kernel.org>
 <f695f2c0-2d4e-484c-9faa-7d8b28362541@linaro.org>
 <8a55e1d9-c102-4cdf-8f23-edc40889cf6d@linaro.org>
 <ea02d7ca-62e2-4d46-8495-ed6e515625a1@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <ea02d7ca-62e2-4d46-8495-ed6e515625a1@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/9/24 15:01, Krzysztof Kozlowski wrote:
> On 09/01/2024 12:58, Tudor Ambarus wrote:
>>
>>
>> On 1/9/24 11:09, Krzysztof Kozlowski wrote:
>>> On 09/01/2024 05:03, Rob Herring wrote:
>>>> On Thu, Dec 28, 2023 at 12:57:54PM +0000, Tudor Ambarus wrote:
>>>>> Add dt-schema documentation for the Connectivity Peripheral 0 (PERIC0)
>>>>> clock management unit.
>>>>>
>>>>> Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
>>>>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>>>>> ---
>>>>> v2:
>>>>> - fix comments as per Sam's suggestion and collect his R-b tag
>>>>> - Rob's suggestion of renaming the clock-names to just "bus" and "ip"
>>>>>   was not implemented as I felt it affects readability in the driver
>>>>>   and consistency with other exynos clock drivers. I will happily update
>>>>>   the names in the -rc phase if someone else has a stronger opinion than
>>>>>   mine. 
>>>>
>>>> I'll defer to Krzysztof.
>>>
>>> I miss the point why clock-names cannot be fixed now. This is the name
>>> of property, not the input clock name.
>>
>> They can be fixed now. I've just aired the fixes at:
>> https://lore.kernel.org/linux-arm-kernel/20240109114908.3623645-1-tudor.ambarus@linaro.org/
>>
>> Preparing v3 for this patch set to include the updated names here too.
> 
> I think I was not that clear enough. I did not get your current patchset
> - so PERIC0 clock controller - cannot use new naming.
> 

Ok, I understand that the fixes from
https://lore.kernel.org/linux-arm-kernel/20240109114908.3623645-1-tudor.ambarus@linaro.org/

are NACK-ed and I shall use the full clock-names in this patch set as
well, thus "dout_cmu_peric0_bus", and "dout_cmu_peric0_ip". I don't mind
changing them back, will send a v4 using the full clock names.

Out of curiosity, why can't we change the names? All gs101 patches are
for v6.8, thus they haven't made a release yet. We still have the -rc
phase where we can fix things.

Thanks for the guidance.
ta

