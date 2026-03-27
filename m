Return-Path: <devicetree+bounces-281444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJopMev1xWkjEwUAu9opvQ
	(envelope-from <devicetree+bounces-281444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 04:13:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF2433EB35
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 04:13:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C854303C298
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 03:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FFE735CB75;
	Fri, 27 Mar 2026 03:09:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE674359A63;
	Fri, 27 Mar 2026 03:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774580988; cv=none; b=QPGlCodEkIoQGT8Fw1+34rhDL9G+t8X6Yoc8BrMc86x/ueUkw6HjDiA/HvX5LXgbYbJNNP4uFoOFGQRhCPsOewCd3b+RIAsh9BbeJpYEDAw6mRB46JxPR8OZcZN2o1D9lFcJx40InJ6qK3CfgVj319VVlSN9LaUNsOajEwfVMQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774580988; c=relaxed/simple;
	bh=6CqUy1ahP56uVL6L/51s/75TrI6QOS61b0Vx4kFmThk=;
	h=From:Subject:To:Cc:References:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=hIMJNiQJiaKqpYBUly99LkaSNzaw6I3PHm+PZPqE0BDj7QN/0JF0AAk0hbJD39u/Z931EaehpoyDUhrJhNpSjauzV1J13k5sJLgfzKv5eje14ifJii3e/7rTFSrbyYX9q2V7etCtaL95kVlDb84gaum/L+dud1Sav/uUU1jsqe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [10.20.42.101])
	by gateway (Coremail) with SMTP id _____8CxIMD29MVpbSkfAA--.29474S3;
	Fri, 27 Mar 2026 11:09:42 +0800 (CST)
Received: from [10.20.42.101] (unknown [10.20.42.101])
	by front1 (Coremail) with SMTP id qMiowJDxTMLr9MVp+4BeAA--.47142S3;
	Fri, 27 Mar 2026 11:09:33 +0800 (CST)
From: Hongliang Wang <wanghongliang@loongson.cn>
Subject: Re: [PATCH v1 1/2] dt-bindings: i2c: ls2x-i2c: Add clock- related
 properties
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, loongarch@lists.linux.dev
References: <20260325011852.19079-1-wanghongliang@loongson.cn>
 <20260325011852.19079-2-wanghongliang@loongson.cn>
 <20260325-outstanding-weasel-of-fruition-89db37@quoll>
 <1b5283d8-294c-86de-c3d8-bf205ac24216@loongson.cn>
 <0d7dfe5b-5e2d-4850-8922-16eb6bd9bcae@kernel.org>
 <900dc1a4-66ab-411f-8a32-4c6cf339e8ec@kernel.org>
Message-ID: <bc22bad4-9825-829d-1df0-a801ebd933d6@loongson.cn>
Date: Fri, 27 Mar 2026 11:09:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux loongarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <900dc1a4-66ab-411f-8a32-4c6cf339e8ec@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-CM-TRANSID:qMiowJDxTMLr9MVp+4BeAA--.47142S3
X-CM-SenderInfo: pzdqwxxrqjzxhdqjqz5rrqw2lrqou0/
X-Coremail-Antispam: 1Uk129KBj93XoW7Zr1DXFWrurWxCr1kJr4rCrX_yoW8Cr1xpF
	WfKF9rJFs0kr4S9w12vw4xXrnxZw43Jw13Jr4jgF15Z3yrurySyFZ3GFW5ZrZ5X34fC3yj
	vF45GaykGFZrZagCm3ZEXasCq-sJn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUvYb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r106r15M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8JVWxJwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_
	Gr0_Gr1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6xkI12xvs2x26I8E6xACxx1l5I
	8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AK
	xVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IY64vIr41lc7I2V7IY0VAS07AlzV
	AYIcxG8wCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E
	14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIx
	kGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAF
	wI0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r
	4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07j8yCJU
	UUUU=
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-281444-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[loongson.cn];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wanghongliang@loongson.cn,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[loongson.cn:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ECF2433EB35
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 2026/3/26 下午3:49, Krzysztof Kozlowski wrote:
> On 26/03/2026 08:02, Krzysztof Kozlowski wrote:
>> On 26/03/2026 03:12, Hongliang Wang wrote:
>>> Hi Krzysztof,
>>>
>>> Consider the clock framework relies on the device tree, and can only be
>>> used on
>>> Loongson 2K platform with dts parameter mechanism, It cannot be used on
>>> Loongson
>> Don't top post or request read receipts.
OK
>>> 3A+7A platform with the acpi parameter mechanism.
>> And this patch is for ACPI? Then we finish discussion here, because
>> dt-bindings is not for ACPI.
>>
The initial idea was that this patch could be used for both ACPI and DTS.
>>> The i2c-ls2x driver is compatible with both Loongson 2K and 3A+7A
>>> platform, parse
>>> the same parameters regardless of dts or acpi parameter passing, So
>>> clock-input
>>> and clock-div attributes are defined to describe input clock of i2c
>>> controller and
>>> divisor of input clock. It can be used on both 2K and 3A+7A platform.
>> And you cannot use them in DTS.
OK
> I need to keep guessing what you want to achieve, because neither your
> message nor commit text was explicit
What I want to achieve is to describe the input clock and divisor of I2C 
controller
through parameters passing, and the parameters can be used in both ACPI 
and DTS.
because clock framework cannot be used for ACPI, So I defined two new 
properties.
>   - if you need properties for ACPI
> and you want to be sure that DTS does not have them, then you could
> define them as "foo:false" with a comment why (you always explain WHY
> you are doing things). We don't have such convention so far, but I think
> it will be useful when Rob finishes the ABI checker.
>
> *Otherwise* minimum would be a comment in the driver that these are not
> allowed in DTS.
>
> Best regards,
> Krzysztof

Best regards,
Hongliang Wang


