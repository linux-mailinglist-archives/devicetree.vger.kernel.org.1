Return-Path: <devicetree+bounces-176717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCADAB54A3
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:24:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6FD863AD1DC
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 12:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 730D828DB68;
	Tue, 13 May 2025 12:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="LEV3MaS4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766E528DB55
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 12:24:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747139088; cv=none; b=rlvCf28KnzAdBp0Bu/b1eumgKu52rb5eWu7mc3vOFBFAYxzTXcA2FYp4dsDn8gyptHoqC9ZcdiB3B4P8fZ72EvG+knKqfi9xukwl2q8UxW4tVVR57Yb9IfwPjUX4Dc86iHlTRY/6wTgand3cRoQ2NpPVwkyrC37lUx9iN7QQSao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747139088; c=relaxed/simple;
	bh=nCH0DieIdmLcW3j4bl0vM0PoHomAZV2rslViEgt6WTw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KETqWXUZ8fqRPa16DWCcfXrBhbRMxIG5/aZ+GPK02Txm33+y2PGZyc3GtCyLd8zv416D37v88X6J4W2vuvcH7fVMa3x44i2XHr8bEi5yJ4zuqUV/NyGOMjRFqh88HYGskqj0CSC1wUFQlLa8HKuQy2qO6uOW+DeF0Z1+V5x8swI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=LEV3MaS4; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-864a071b44bso95781439f.3
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 05:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1747139085; x=1747743885; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oUukzgPxDimVlAEltPxV3Oz6fjf8xuwBqI/ZvbSdWbk=;
        b=LEV3MaS4S1gduBJmnnC8Wzj2vCAnz4136bjJdvM3Jx9rMBwFuX7oIIQdsIutSQRooh
         e/KXRRtLhhcjizvQoAA/jVOg2DHk/mOzJyCjoypGL+domoffEORglwXDaPjzHjNz8f4x
         AWGEibG4x3xaoFRo1Gm/WoqbtcY4b7RX4usAbctMxYC5f3IVLGxf4YrV2I+Aeg9r3Iae
         KaL4uzMV9Hn2GkvPSRVou4bbfatpvqwboZs5teujQdNErZc6iuhXGgwBw6jZTd6zcpxx
         Rozu8AXRip7v7tkLOzHvnjveO6qyahXT0EUwye5ADdbo/8mmRh96Gc2599tBF/ksRR81
         Fn5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747139085; x=1747743885;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oUukzgPxDimVlAEltPxV3Oz6fjf8xuwBqI/ZvbSdWbk=;
        b=KLPSsLyPorBe4llsLyXSWPStVrQJ3Tzqg5no0QFI1W32rGwolN8th+Cs4bk48pKjfZ
         ynx6QGePdRxjDSxeZJbUSxyoDPGocvGcj0axIPFbJ5EObVw8oTcRa1NRzsqeyMCvW/8T
         dK/QbQADwap9lzqLbdZehQb8GYm1TPJiN9Aqy4Je2LFZppaemtMiIolAej+Qb50oUhTx
         Nz4Z2PL9x+pWS93RdGbxV22M0M6PGpzQ+wwHV/zg3xZo6seNEADuZogbeYcGeXkK0fF1
         JlYpNtcgLe3azfVcDdpnQST+xBJzY9Qov/B3JmccFFGcbtq13Vbh9lwOtfHR4KiBTd4A
         P+Lw==
X-Forwarded-Encrypted: i=1; AJvYcCU+1tSPZ3A8cE7EFt7KVPaeDQ/A5KE0YaXDTD/altvK3MfvO39wIhsCsDvQpeW8R6fS3X+11fz8gRPG@vger.kernel.org
X-Gm-Message-State: AOJu0Yyeyz+dXy+fFHuhUMRQ9CfCghpcdZZRX2M+DqyZ+yRcgRJqnQ9q
	fd39hzdjlA+TlLE+RbaPyTUy2+B0jHIQ6j8IFMAfWDTkx8nBDRSL/EfQRVsjR0E=
X-Gm-Gg: ASbGncvyaFBx0YnCdX6ReXWJAJKbpgdT8d8iLvFGpL8Hu2RyevojvijIGwPwmHks1qJ
	1xAtzxZhH4QcweBr9EYixjz+L6vR+3cAjs8B9sJ0LpvugEFacltw+0XyStMilud0w6B0Q3UyL1a
	ywymuipO6ksk68dgrzCr9p2QWdHsadYCL6nZVji9rXg9H5SKcOhyhqWe3tbAFYOpS/r5ussLUTD
	yimuaTptJy5KqCiZMCVIZiLBiEoB276owO6P/3d5TDHkmEZS5kbQOsSh1TomPH9hgiCIStTMIl9
	1vypi6uYq6+z1NHfcqdl0bGFCXMr1+MOLUyidhM0FqKXPzTcga14gdbjeqp4vY6oU/Y4h6puxwa
	zIFgmJJLEegxZVVU=
X-Google-Smtp-Source: AGHT+IFa99yDPla8yOwa2Lb0IIWEjfvTvZm04RmCYhnJ6t18LZAeThH57cdW66O3OAMcaFau7kC0qQ==
X-Received: by 2002:a05:6e02:1a08:b0:3d9:644c:e3b0 with SMTP id e9e14a558f8ab-3da7e20dd8dmr165655765ab.14.1747139085428;
        Tue, 13 May 2025 05:24:45 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3da7e158bfcsm26965915ab.58.2025.05.13.05.24.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 May 2025 05:24:45 -0700 (PDT)
Message-ID: <560c33a8-4917-4c89-a8f3-ed7810fd675f@riscstar.com>
Date: Tue, 13 May 2025 07:24:43 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 4/6] reset: spacemit: add support for SpacemiT CCU
 resets
To: Philipp Zabel <p.zabel@pengutronix.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, dlan@gentoo.org
Cc: heylenay@4d2.org, inochiama@outlook.com, guodong@riscstar.com,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250512183212.3465963-1-elder@riscstar.com>
 <20250512183212.3465963-5-elder@riscstar.com>
 <d25aa4b10e2ebefb36e0db03123b404044e71ec1.camel@pengutronix.de>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <d25aa4b10e2ebefb36e0db03123b404044e71ec1.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/13/25 4:21 AM, Philipp Zabel wrote:
> On Mo, 2025-05-12 at 13:32 -0500, Alex Elder wrote:
>> Implement reset support for SpacemiT CCUs.  A SpacemiT reset controller
>> device is an auxiliary device associated with a clock controller (CCU).
>>
>> This initial patch defines the reset controllers for the MPMU, APBC, and
>> MPMU CCUs, which already define clock controllers.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   drivers/reset/Kconfig          |   9 ++
>>   drivers/reset/Makefile         |   1 +
>>   drivers/reset/reset-spacemit.c | 246 +++++++++++++++++++++++++++++++++
>>   3 files changed, 256 insertions(+)
>>   create mode 100644 drivers/reset/reset-spacemit.c
>>
> [...]
>> diff --git a/drivers/reset/reset-spacemit.c b/drivers/reset/reset-spacemit.c
>> new file mode 100644
>> index 0000000000000..eff67bdc8adba
>> --- /dev/null
>> +++ b/drivers/reset/reset-spacemit.c
>> @@ -0,0 +1,246 @@
> [...]
>> +static int spacemit_reset_controller_register(struct device *dev,
>> +			       struct ccu_reset_controller *controller)
> 
> Align to open parenthesis, line length is fine.
> 
>> +{
>> +	struct reset_controller_dev *rcdev = &controller->rcdev;
>> +
>> +	rcdev->ops = &spacemit_reset_control_ops;
>> +	rcdev->owner = THIS_MODULE;
>> +	rcdev->of_node = dev->of_node;
>> +	rcdev->nr_resets = controller->data->count;
>> +
>> +	return devm_reset_controller_register(dev, &controller->rcdev);
>> +}
>> +
>> +static int spacemit_reset_probe(struct auxiliary_device *adev,
>> +				const struct auxiliary_device_id *id)
>> +{
>> +	struct spacemit_ccu_adev *rdev = to_spacemit_ccu_adev(adev);
>> +	const void *data = (void *)id->driver_data;
> 
> Unnecessary (void *) detour. Just cast to (const struct
> ccu_reset_controller_data *) directly. Otherwise,
> 
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

Thank you very much for your review.  I'll update to incorporate
your suggestions and will add your Reviewed-by.

					-Alex

> 
> regards
> Philipp


