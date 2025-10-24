Return-Path: <devicetree+bounces-230658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E852C04DB1
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 09:52:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5BE184E3F29
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 07:52:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98F442EF66A;
	Fri, 24 Oct 2025 07:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="r2dtT+ba"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A4072ECD34
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 07:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761292365; cv=none; b=rB+KhCIXdTz21XU3keBSeehH4lGFMwU77wlG0UUWRbaNOYKdiwCsUEP6IfbTTEACtinVTkPjVwyf2uRrqIhPEsKgBkCp0M6kocSfxpiq7+S5Yg0EQHSL9Jh/0I5NjLSumZOfHkEiqexr4ZbarFrlyA81ZBNDHJRX3d1QpOqOJVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761292365; c=relaxed/simple;
	bh=wN/ZHj0gPap24mXI/QvGzzaeAUFcv8BSPPEXC6QecJU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CmNsws8IwUWcFezO7fDwBU2rF4pJaD/P52MfnbPYEqewYmHRAzUODRU+uPZ+RmsrE7pDDT9AKof2dGEpye3fUca8eRI/vt2xK381P/3UsgnwTBun7CnnSVFGJ77F4GJ2w0lOcGLOIZDxD+hefVu7jtPypwd59Hj1pdIUWS2/vY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=r2dtT+ba; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id C378AC0C41B;
	Fri, 24 Oct 2025 07:52:21 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7B92960703;
	Fri, 24 Oct 2025 07:52:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 73F97102F23EC;
	Fri, 24 Oct 2025 09:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761292360; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=5ORYaQDkijF7os/6QWengA8q7tbB0Mw5sGUM65DCgW0=;
	b=r2dtT+baNbNBquHdAut5IY/5GURVJRkMnkhCpDIazOsLkNOBMSg9a8XjqlTTdgK7Rao36n
	QaiSjjcspFfgNJ3lWHkqT0lB6CPk/z4eErWvmXrcgc4PoQNWlb8klJf19n9bMVLLEpz35m
	tvzSZMtU4MnmhRi/3KdQUuAwki+jH10HEA7wLi/+zYTZ9ENq3vj0XiN9CH8zDtJVXy40sO
	VYZdadazMXQP96iNzcQJcjalhcNTATvJNR92ni8Hp1LMi+PrPNeZfIQguK1X78P7mLfFu5
	LZKY22AT2zCcLdLyTJKs3XrYIcQky6Dow93q3vw3X8RN8f/4NfLEQGTudUQJ6w==
Message-ID: <afd40022-012a-4fa5-90f1-a27f11aa9549@bootlin.com>
Date: Fri, 24 Oct 2025 09:52:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/15] mtd: rawnand: sunxi: introduce ecc_mode_mask in
 sunxi_nfc_caps
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra
 <vigneshr@ti.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Wentao Liang <vulab@iscas.ac.cn>, Johan Hovold <johan@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20251020101311.256819-1-richard.genoud@bootlin.com>
 <20251020101311.256819-8-richard.genoud@bootlin.com>
 <87jz0ntigx.fsf@bootlin.com>
From: Richard GENOUD <richard.genoud@bootlin.com>
Content-Language: en-US, fr
Organization: Bootlin
In-Reply-To: <87jz0ntigx.fsf@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Hi,
Le 22/10/2025 à 11:05, Miquel Raynal a écrit :
> Hi Richard,
> 
> On 20/10/2025 at 12:13:03 +02, Richard Genoud <richard.genoud@bootlin.com> wrote:
> 
>> The H6/H616 ECC_MODE field is not at the same offset, and has not the
>> same size.
>> So move the mask into sunxi_nfc_caps.
>>
>> No functional change.
>>
>> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
>> ---
>>   drivers/mtd/nand/raw/sunxi_nand.c | 13 +++++++++----
>>   1 file changed, 9 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
>> index 70c940840dda..4118307cac15 100644
>> --- a/drivers/mtd/nand/raw/sunxi_nand.c
>> +++ b/drivers/mtd/nand/raw/sunxi_nand.c
>> @@ -29,8 +29,9 @@
>>   #include <linux/iopoll.h>
>>   #include <linux/reset.h>
>>   
>> -/* non compile-time field get */
>> +/* non compile-time field get/prep */
>>   #define field_get(_mask, _reg) (((_reg) & (_mask)) >> (ffs(_mask) - 1))
>> +#define field_prep(_mask, _val) (((_val) << (ffs(_mask) - 1)) &
>> (_mask))
> 
> This could probably require a mention in the commit message, as for the
> introduction of the field_get() helper.
> 
> No need to resend just for this either.
Ok, will do.

> 
> Thanks,
> Miquèl
> 
Thanks!

-- 
Richard Genoud, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

