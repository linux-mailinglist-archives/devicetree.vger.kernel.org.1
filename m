Return-Path: <devicetree+bounces-98297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4479D965A16
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 10:21:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C49121F2499B
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5732216E875;
	Fri, 30 Aug 2024 08:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sh0TCq3e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA11716E895
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 08:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725006068; cv=none; b=DyuIjTjfRrFGv0UeJR/3U9PMd3B7lQUo48vE496XP4bJw6SN2/0R40LLCw/+I0uOtwCSn/PyJ+FtFP97fSCwObYz+7Ecze1pqO+MvpfvRUXV+vj5C5RtAwMr0aK5Lm85Q9IdCwEJ4U7cNMTBTi3OmTmGUHaYzNXAa6xBaPAO1V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725006068; c=relaxed/simple;
	bh=ZRrIO8FFongovy/jVvUNN9ikqIV8FmbidWhz7Y8mv9A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aDISBlV2OVMHea5lB86IiyBXhrYRmufRboqQkHKOVUidU2NM7zbDBgneGuhEcGdu3i5sIBslt0zfy53wdM/VrdpzAs5reJgqRgpKuEH2gf26WWprC6GAlsBr993j+LJce3KOlQc7af0DVytekmQQ5GfhROfK7VkABMMYD60NzHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sh0TCq3e; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3719f0758c6so1056198f8f.1
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 01:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725006063; x=1725610863; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q4XicNaRrVJUPv9EcovABTtv3epFEIbLpeWnGc571V4=;
        b=sh0TCq3e59wD4YdbW3ikGNeCdGGBk5EvQRsb/utF50ROgFPA02aB45LGPY8E69o+SA
         tnOS/qgHnxX9qXlSDCKo35yfhScT9ATYXeCkPuFUML5a/7qZXeOxJV72BtSgQc9POvaP
         c8/5Piy/4ZwFWgFn3IbuSzv+GNtBj8dfhZkaWKuh8XI3Wf3As1NMWjP/sEVQiPoKuO5H
         RFZC0LJL5bgzvo1KKyc8Mb67ftCa/TFOPVNMQbJRvIbJK6Vq79iFk2PYgI1R9pBHfQni
         LhsyKZdClBD3MXdHbuQ5Rmz/ZF+STNfaevSIYPAMn1VVGBp5dF0M0lmC5gC3+xSiAcvg
         YK+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725006063; x=1725610863;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q4XicNaRrVJUPv9EcovABTtv3epFEIbLpeWnGc571V4=;
        b=w7uwIIg66iQB7xV5RvhgHhUEcHQKjwMla1l9DWe0A+YrfrLBBWH//viJ8Ann+susZX
         bma+E/xB19ebxdp42QCEqK6XZXR2hNpVZxoDwqw7v2Viqo1hLe5N+EebY8rJcnl7D3Ki
         d7w1Dp5IjJvcoJ6XSP+IgtT7+iMGEV0v4K84lBeLCm+AioXF/wBywNJssv5Eup0FVvNS
         WyytpwYcs4BSw29qImMIfW4cq+OIF1HbNL12i7SZhBhoHbdzqm652CjO1d8hoxRA7haH
         6oJD0SLfydocjJtULWF1PhAJ3GML4AZFYSCcBQJ7C02nls3Xti3tLEX1yzOqtM4JuGVN
         IKRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQHwb2vp1L73UJmq2zJzr6UEbROPvMkHqtFQE/+O033X65tt4uiS8PaJvEBnVIlFkSuGzB72BWCG1X@vger.kernel.org
X-Gm-Message-State: AOJu0YyFi3n5rRD5XRjRCoGj80hIwH/zVkC2tBZDGzk+aET1j2ErQv5L
	QKu92268ZhI761T+sriqcZtWq+ohfcnqH4ebLtVOX66PMP1/9R4vgTRnwEhZFpg=
X-Google-Smtp-Source: AGHT+IHsKdHhmas+bCgeJOk3kUQy8TBWC/ztlOmJCXKc1fthdV2EHWysxCPv4TJMDrnZQkt6u+unYQ==
X-Received: by 2002:adf:e54c:0:b0:374:b685:676 with SMTP id ffacd0b85a97d-374b6850784mr213801f8f.27.1725006062804;
        Fri, 30 Aug 2024 01:21:02 -0700 (PDT)
Received: from [192.168.0.2] (host-95-233-232-76.retail.telecomitalia.it. [95.233.232.76])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-374b5e3511dsm342234f8f.34.2024.08.30.01.21.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2024 01:21:02 -0700 (PDT)
Message-ID: <d4eddc24-9192-4a4a-ac67-4cfbd429a6a9@baylibre.com>
Date: Fri, 30 Aug 2024 10:19:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 4/8] dt-bindings: iio: dac: add adi axi-dac bus
 property
To: Conor Dooley <conor@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dlechner@baylibre.com
References: <20240829-wip-bl-ad3552r-axi-v0-v1-0-b6da6015327a@baylibre.com>
 <20240829-wip-bl-ad3552r-axi-v0-v1-4-b6da6015327a@baylibre.com>
 <20240829-stopwatch-morality-a933abb4d688@spud>
Content-Language: en-US
From: Angelo Dureghello <adureghello@baylibre.com>
In-Reply-To: <20240829-stopwatch-morality-a933abb4d688@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Conor,

On 29/08/24 5:46 PM, Conor Dooley wrote:
> On Thu, Aug 29, 2024 at 02:32:02PM +0200, Angelo Dureghello wrote:
>> From: Angelo Dureghello <adureghello@baylibre.com>
>>
>> Add bus property.
> RFC it may be, but you do need to explain what this bus-type actually
> describes for commenting on the suitability of the method to be
> meaningful.

thanks for the feedbacks,

a "bus" is intended as a generic interface connected to the target,
may be used from a custom IP (fpga) to communicate with the target
device (by read/write(reg and value)) using a special custom interface.

The bus could also be physically the same of some well-known existing
interfaces (as parallel, lvds or other uncommon interfaces), but using
an uncommon/custom protocol over it.

In concrete, actually bus-type is added to the backend since the
ad3552r DAC chip can be connected (for maximum speed) by a 5 lanes DDR
parallel bus (interface that i named QSPI, but it's not exactly a QSPI
as a protocol), so it's a device-specific interface.

With additions in this patchset, other frontends, of course not only
DACs, will be able to add specific busses and read/wrtie to the bus
as needed.

>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
>> ---
>>   Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
>> index a55e9bfc66d7..a7ce72e1cd81 100644
>> --- a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
>> +++ b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
>> @@ -38,6 +38,15 @@ properties:
>>     clocks:
>>       maxItems: 1
> You mentioned about new compatible strings, does the one currently
> listed in this binding support both bus types?
>
> Making the bus type decision based on compatible only really makes sense
> if they're different versions of the IP, but not if they're different
> configuration options for a given version.
>
>> +  bus-type:

DAC IP on fpga actually respects same structure and register set, except
for a named "custom" register that may use specific bitfields depending
on the application of the IP.


> If, as you mentioned, there are multiple bus types, a non-flag property
> does make sense. However, I am really not keen on these "forced" numerical
> properties at all, I'd much rather see strings used here.

ack, thanks.


> Thanks,
> Conor.

thanks a lot,
regards,
Angelo


>> +    maxItems: 1
>> +    description: |
>> +      Configure bus type:
>> +        - 0: none
>> +        - 1: qspi
>> +    enum: [0, 1]
>> +    default: 0
>> +
>>     '#io-backend-cells':
>>       const: 0
>>   
>>
>> -- 
>> 2.45.0.rc1
>>
-- 
  ,,,      Angelo Dureghello
:: :.     BayLibre -runtime team- Developer
:`___:
  `____:


