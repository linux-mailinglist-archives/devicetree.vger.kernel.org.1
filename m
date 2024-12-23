Return-Path: <devicetree+bounces-133649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DA99FB315
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 17:42:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 597D47A0FED
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 16:42:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA68D1B3952;
	Mon, 23 Dec 2024 16:41:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BE821B0F1B;
	Mon, 23 Dec 2024 16:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734972115; cv=none; b=a4jsR5BSrYUSjUe0c/IHThJ5DcmszJbv4A5Ox44S3NE7uIPJeEskj8usC7yqx37zEPdIRiT6cIbp0n9+EPTlYxndQodrJyQKNLBmSER6VH2HDKZi1HBhC+1cr/j/bV6/SEV41Xi+f72ezC3ZRTZKk2j1CAleIlEMSsaXyUvypkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734972115; c=relaxed/simple;
	bh=/wtQQHEXEyTX57ynqUasDg8YZ4HxnRaNERhy12nFALw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K4IN9Wqqr5gxEMwf+1mwbh3VGCRtLUYzm80DR/UWtJ1QA7zo0X1LjWr8IDJ5kM1GrQUXxM8yMiWZ6u0OxHNg9A+BqTc5yvuHT0egxlXSJnP4XMPq82RekoCnUTd+tIMbcwUfzUj185ec047SREwIq9MbwtFkM1w+YMbhiM5QWnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 987BA1424;
	Mon, 23 Dec 2024 08:42:21 -0800 (PST)
Received: from [10.57.74.39] (unknown [10.57.74.39])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A99343F694;
	Mon, 23 Dec 2024 08:41:51 -0800 (PST)
Message-ID: <342b3c31-7e82-41d1-a9f0-9f3973f99486@arm.com>
Date: Mon, 23 Dec 2024 16:41:49 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: Add Morello compatibility
To: Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Russell King <linux@armlinux.org.uk>
References: <20241223162029.326997-1-vincenzo.frascino@arm.com>
 <20241223162029.326997-2-vincenzo.frascino@arm.com>
 <fc83ab3f-99fe-4566-9a33-670956dd76a4@kernel.org>
Content-Language: en-GB
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <fc83ab3f-99fe-4566-9a33-670956dd76a4@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 23/12/2024 16:32, Krzysztof Kozlowski wrote:
> On 23/12/2024 17:20, Vincenzo Frascino wrote:
>> Add compatibility to Arm Morello System Development Platform.
>>
>> Note: Morello is at the same time the name of an Architecture [1], an SoC
>> [2] and a Board [2].
>> To distinguish in between Architecture/SoC and Board we refer to the first
>> as arm,morello and to the second as arm,morello-sdp.
>>
>> [1] https://developer.arm.com/Architectures/Morello
>> [2] https://www.morello-project.org/
>>
>> Cc: Linus Walleij <linus.walleij@linaro.org>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Liviu Dudau <liviu.dudau@arm.com>
>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>> Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>
>> Cc: Russell King <linux@armlinux.org.uk>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>> index 8dd6b6446394..7934d2c4cba0 100644
>> --- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>> +++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>> @@ -118,6 +118,9 @@ properties:
>>          items:
>>            - const: arm,foundation-aarch64
>>            - const: arm,vexpress
>> +      - description: Arm Morello System Development Platform
>> +        items:
>> +          - const: arm,morello-sdp
> Also:
> const: arm,morello
> 
> Unless you claim that this cannot be used in any other product than SDP,
> but this then needs explanation in commit msg.
>

Morello is a Prototype architecture and there are no plans to use it outside of
SDP hence I did not add arm,morello.

I thought it was clear since the note states that Architecture, SoC and Board
have the same name, if not, happy do address it in v3.

> Best regards,
> Krzysztof

-- 
Regards,
Vincenzo


