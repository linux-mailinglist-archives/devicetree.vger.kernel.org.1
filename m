Return-Path: <devicetree+bounces-249584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1281CCDD06D
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 20:11:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 790FF301C3C2
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 19:11:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 817B233E363;
	Wed, 24 Dec 2025 19:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="GzfI67hK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E5E2C030E
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 19:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766603509; cv=none; b=qa0X27zcipS+XRUFUK8PAK9kK22bqfTN+rwfjVYJdurZ5YSX8E75lO88e1Y5j6jiGiTOgeTQl0tKRQ6JeNhScBLdkkpuagGxj3YuEKCRmFepxwXF+DVOIRTTjd3zD3NwCbLkRcXjf66YSy0vEuecqCncOzKM0Z3sGwENJhVRVj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766603509; c=relaxed/simple;
	bh=k8Byl028CgHsF3DBvdHOc7E8XGBxj49LJk7WEGiE6aI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LK8hUnebswyefLf331hr3xk4b7x7M9QMgCq01jTnax8z+187W0PSnP4FpZLIqBUHqBMd3JEVJ2uE1I39iPLgimOaIMeW/UQ+1lZg7dvrZyjbwcI8BiicSN1zuA/fWA2AsAEUXIA9uWlqEuDfqDknTpT+SRx55yQCeqh3V9SbB6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=GzfI67hK; arc=none smtp.client-ip=74.125.224.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-6446c924f9eso5642444d50.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 11:11:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1766603505; x=1767208305; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oXhnYTRKWSBrdTvGbB7qy2q3xu05EvIJIuYEgLdKQ5w=;
        b=GzfI67hKYeYlQLM5vk0CbRE07x/BJr8BLGWiDztt24R5JmN8Sy8ahJ2Fsmp0oS3QvX
         bTvvmZtvmquMg7J9GH1SsZoI9gaff2UIWohHpfzfnTcBCXlRQL3A/eOLV3UZDY5ciGCo
         I5KMc0ZuR9/W13MeLwgCYErKb95DsS/IMCG7fCHyTXfLyIJ5/1MhkaYB6Pb1vJBh2PIK
         1fQHKGquv6CVuE0tzGYn7nXdGzECGonkbuc9Rsy/9epAgCtswCfD1CprXbGMWRCzKVpy
         xm+22BTH3PFgF70Sgwaf78lpb83svr/AJpMWtytRcBWNoSmxwSnc4mL2Be0Hn9Ou6stF
         AZtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766603505; x=1767208305;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oXhnYTRKWSBrdTvGbB7qy2q3xu05EvIJIuYEgLdKQ5w=;
        b=tx8b4963VzcYAZ3vtNrC2q9lf4crWLYu6Q4zGsXmt7dHb8EcbToJPzt9uH254nKYU+
         sXJMSqMea14p+uJUE8PegdvkPe3iRPKhK5GS6D7elt32K36Ffu5rnVmoP4NM4pdiZA3O
         o4iXPKlIsH4B6GYHe8HZdxckPrboZdI83Vvu9SBbe/Ecdd9cTKfqYC6Zhbj0mYGHdE/P
         w3jwM2SAIwehFDl4fPy1nGRAztegIU/tvOmBBHJ1MsmLG/Bvq4B01UcbZ0CCz0zTdhFZ
         ztCGxXc1ZC2/rddWfaEg19SiB3bpfH8hiUFPKlPOr4YsNGlLrdoMRJNRiCO7aou5U9H5
         IBzg==
X-Forwarded-Encrypted: i=1; AJvYcCV0sZR4qHwzwFJW3leunyKxZmrkfSD15EBFGxLQxo8qJux2ouKna3tj5UP0nfwrOkXPu3hTHPlk5kF+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5qvM6J6vQztd7t/uyVqntFT5udVvxXOVNBVBSwijuK0JMNMVQ
	AkBJ9kHpVilslPMPVp4WGzSN89ZbWUTOtuXjFjqEl99S1WrtybqTO76AKujL1JpOZg==
X-Gm-Gg: AY/fxX6cC5jkqxEZcoe28wprgxl3gbv8LTJYPyJroyGbtuBlvC14AfhvQ6A2gLIDkya
	bUDhcKCCo3Hnwc12iPV1NjMIqMFFlZEBO/vinqiGU4tN/TOEhcXL7tFLRhVuB112R/tecYnAyTD
	Yq+GUCFJQI+7LUkpXScdXHATa44AYkUc9j53Amyjmu+mX8FOfWoS7vFcKA0DpkcvoufLDEsfbjn
	yecwyCc0apqkLYe/nCc85Or6colaHQi97Ud7MGbzod5d2JaswuREjoL5Yu+A5xI5/cDjAKm63n0
	WVdsYelUwZobKDJk1MEpXCEGi5tQTFi6Mf5Qs4CRQi5rvG9eG1poe74Li8nU/mDQ0jrAC3/hJB+
	dlvhlWtNCqRUPzDbmL7jrL1xbxFYYYf540RBcWVpIIE1LDPU2sE5SWQ7+PUJ3dIArS7YqjP71ub
	DzA09Pd3A4rybaX4/mpGuDVKXrJznqx8bn3IXk96j1aoVp7h7kBhA1R3ExvWU=
X-Google-Smtp-Source: AGHT+IF4+78/ybW8h2aFs9XZbSKza4sj6Czw5R4tW02KVHwiK1CyevWiPabB7l4R0Pz1pzDMvfJfng==
X-Received: by 2002:a05:690e:1486:b0:63f:31f7:b956 with SMTP id 956f58d0204a3-6466a898fbbmr15286144d50.27.1766603505319;
        Wed, 24 Dec 2025 11:11:45 -0800 (PST)
Received: from ?IPV6:2600:1700:4570:89a0:6872:f79a:c2ff:4f4f? ([2600:1700:4570:89a0:6872:f79a:c2ff:4f4f])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6466a81d4e4sm8640178d50.0.2025.12.24.11.11.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Dec 2025 11:11:44 -0800 (PST)
Message-ID: <27d2a9de-487a-409b-8807-d1d3bf9e8ee7@google.com>
Date: Wed, 24 Dec 2025 11:11:42 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: mfd: maxim,max77759: add charger
 child node
To: Krzysztof Kozlowski <krzk@kernel.org>, Sebastian Reichel
 <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, Lee Jones <lee@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 RD Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>
References: <20251218-max77759-charger-v2-0-2b259980a686@google.com>
 <20251218-max77759-charger-v2-1-2b259980a686@google.com>
 <411802b6-517d-497e-bf7b-183e6e6d7a64@kernel.org>
 <3d156c45-b55d-4ca4-95d6-0d06e067bbdb@kernel.org>
From: Amit Sunil Dhamne <amitsd@google.com>
Content-Language: en-US
In-Reply-To: <3d156c45-b55d-4ca4-95d6-0d06e067bbdb@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 12/23/25 5:32 AM, Krzysztof Kozlowski wrote:
> On 19/12/2025 09:17, Krzysztof Kozlowski wrote:
>> On 18/12/2025 23:49, Amit Sunil Dhamne via B4 Relay wrote:
>>> From: Amit Sunil Dhamne <amitsd@google.com>
>>>
>>> The Maxim MAX77759 MFD includes a charger function. Extend the max77759
>>> binding to include the charger. Also, update the example to include
>>> charger.
>>>
>>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>>> ---
>>>  .../devicetree/bindings/mfd/maxim,max77759.yaml    | 33 ++++++++++++++++++++++
>>>  1 file changed, 33 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
>>> index 525de9ab3c2b..1cffdf2e5776 100644
>>> --- a/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
>>> +++ b/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
>>> @@ -37,6 +37,30 @@ properties:
>>>    nvmem-0:
>>>      $ref: /schemas/nvmem/maxim,max77759-nvmem.yaml
>>>  
>>> +  charger:
>>> +    type: object
>>> +    description: This is a dual input switch mode battery charger for portable
>>> +      applications. It supports wired and wireless charging and can operate in
>>> +      buck and boost mode.
>>> +
>>
>> I do not see any improvements, so same comment: this should be folded
>> into the parent.
>>
>> Please read DTS 101 slides or writing bindings or any other talks...
>>
> No responses to my emails for a few days,so I assume discussion is done
> and I mark it as changes requested in patchwork.

Yes please. Sorry about the delay.

>
> Best regards,
> Krzysztof

