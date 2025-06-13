Return-Path: <devicetree+bounces-185813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 673A0AD933C
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 18:54:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 525787A51DB
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 16:52:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B82EA221F20;
	Fri, 13 Jun 2025 16:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="S/JfUFvS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3BF4219A72
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 16:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749833629; cv=none; b=reD8AnRSTwnRkddMJMS66rjjfcsmMCD8lS6cf6ax/zbXgSgnEDQSoAzrPV+nFhUDb9uaUWWooIHE83Q40jSK7uDLKVAlut8RO0corfqqYENiVPoKdLa8V9fQrduE5+ONgqib02kh8xoAfq7xhDWUV5GA+yQUveGpQozNaghzBug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749833629; c=relaxed/simple;
	bh=1owdQvqX/nM+Hc1z5I/jHc4qO/c4moH58u1NtGIWGiQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RhmadJWo3p4BuIgCz3B9xnqevkDGM8s/b4m3ng6cKGFuPpOjxr/LMIW0Zn+4EWC0/0cSXntLuZu+1C33UhPMe2r1s4tHcoI1FUra52VC0S/X9QYnZTrj+5tJ8GpBgks1uMwn+nmC/N+mlvqmBWPL56QZldQZCEbzvd/aT456V7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=S/JfUFvS; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-735ac221670so1243096a34.0
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 09:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749833627; x=1750438427; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LsMpqaCRhjE+dhyYns+fNIO//Rr1iAnsBUp1qLn9v74=;
        b=S/JfUFvS0aInyK4GCvOsgfGoTd5Bznt2rOBG6xZvmltEq4xVtjHH9YM0zJuAxt5FQI
         L3nXssJIDFh50YHECqbezEOGDNF6WFG+8k8QD7iQ8MnCpnG9vqeqso+0ij4th0GHasIw
         0N2fnBVCVTMIobQHMjonMJUzmBTrhTatHnKNEL4Dw+7u5t+2sdJsuLnr3pkRgLzleBQ5
         VlCDTJFjSB/OAN7qYaAvYBmxj/ekWsqXeWPzzXOqD+9EA1H8c4Cbsa42s9DIfHYBKIpQ
         o0dt4gStTWqKVTMUgd1FITKfoN4rhGBTOAdMPOLTbvVg6zf4Cz8KvonVnfBORYj0xRRJ
         fVng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749833627; x=1750438427;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LsMpqaCRhjE+dhyYns+fNIO//Rr1iAnsBUp1qLn9v74=;
        b=sFD+ZPIGYGnW4408alD1mZKKn+CjHgRJSUIPK9N/mRwPZw4vJQhijbDkbrrIyBGu+f
         ThNpd61zcU3qRk0M8Tn3psmfQSQCxZsXZ8hM5VzQX9CV+jatvBEsFVrDzvofhhFaK0y/
         1iDHEfO39g5VxrfXssMZqpkHJy0vLBv7dUSxweCtM0qY7iWhRY5pdwagC2GeV2TtP3vs
         oX1LmThHDVXpBIfkJ5tCDqg7nADLIY4kSRoWKfzzXAGc8Ql4+q2wFSg5GhkQTtI4e0Jb
         t3DLUVV9M7OG5DqVZ1ccgF9y/DD1xk5N9H8VrAhMDJlUdjHSMP7Tz0F/ZPt3IWsQqLnC
         u7Mw==
X-Forwarded-Encrypted: i=1; AJvYcCVklr7/lTkbtE0QqeC3hfjp0uwNPSyIfE+4+q3e5SZhx5xbnv9sXSjZ7ddMA21EbqRHc7mkcEeU2dkX@vger.kernel.org
X-Gm-Message-State: AOJu0Yyd1Ksz8fPLykG0QlnpYhXD3KB72Og5NeRSu0gxvqcqG3H4UZWC
	ZlJEV0ft7sLYtluXMggi5C1Rmcx4d/G2vxVHpH2VOKrvw1FVKsWtj3WfUMwok1EVTwU=
X-Gm-Gg: ASbGncsn8TNko0aV2eurO3X2FHEswotUFLOAeTmztXua3ShtQqZQG1xsD9PlXFKiPkZ
	7ikKPAym2L/mbFqNoVcVVf/zSCY8pJvGq7xn7n+6aeEYOUhhhZ6wdJUNsXhzhlfU3LaWFJ97+sz
	PFOgDOyuK8+33MgTY+0t9f/QwreEdWLFxNrerQpV6+0Q126SIV+yN9EDVmzyYUpSxH5KpwsXMLu
	EdS5JP8O/hepo3Kpz5NYiFM0raK2GjNRBvi8J5lZDbo8/R2Yw++AWT30CAwx0CwQx5wc5zfvOVW
	9BarAK+Z4I/up2QsA2Wmz73h8fhh3i9Ui2HobpkOz15M36vtKqA+EVtncE0KJjpdSi1GX54EYHL
	9swbPm1xpVMG3J9/5Fmm/2y+59lHARJULfReG
X-Google-Smtp-Source: AGHT+IGm+JBqqiEmyl18/kEEXB/ADyzMADcbl2xBx0ulsbC0s8fZGx5yePDIuJfHwHi4w+HBVRh2OQ==
X-Received: by 2002:a05:6830:3c04:b0:72a:1222:9e8a with SMTP id 46e09a7af769-73a3634980emr354864a34.14.1749833626674;
        Fri, 13 Jun 2025 09:53:46 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:4647:c57:a73c:39d8? ([2600:8803:e7e4:1d00:4647:c57:a73c:39d8])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73a283dbf9asm266939a34.12.2025.06.13.09.53.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 09:53:46 -0700 (PDT)
Message-ID: <40762c1b-91a9-4aaa-9d98-e4f22cde8f20@baylibre.com>
Date: Fri, 13 Jun 2025 11:53:45 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] dt-bindings: spi: zynqmp-qspi: Split the bus
To: Sean Anderson <sean.anderson@linux.dev>, Mark Brown <broonie@kernel.org>,
 Michal Simek <michal.simek@amd.com>, linux-spi@vger.kernel.org
Cc: Jinjie Ruan <ruanjinjie@huawei.com>,
 linux-arm-kernel@lists.infradead.org,
 Amit Kumar Mahapatra <amit.kumar-mahapatra@amd.com>,
 linux-kernel@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>
References: <20250116232118.2694169-1-sean.anderson@linux.dev>
 <20250116232118.2694169-2-sean.anderson@linux.dev>
 <9f40295b-484a-48e8-b053-ff8550e589d7@baylibre.com>
 <46a7eba6-a705-4543-b967-e83ccc89e7d4@linux.dev>
 <6afc379a-2f9f-4462-ae30-ef6945a83236@baylibre.com>
 <dbe26b36-a10c-4afb-88ad-a6f7f9bff440@linux.dev>
 <4923f49f-273f-4166-94bc-afe39618672c@baylibre.com>
 <f3160819-f6f4-4079-9562-802caa2fef20@linux.dev>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <f3160819-f6f4-4079-9562-802caa2fef20@linux.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/13/25 10:57 AM, Sean Anderson wrote:
> On 6/13/25 10:20, David Lechner wrote:
>> On 6/12/25 6:44 PM, Sean Anderson wrote:
>>> Hi David,
>>>
>>> I am (finally!) getting around to doing v2 of this series, and I ran
>>> into a small problem with your proposed solution.
>>>
>>> On 1/23/25 16:59, David Lechner wrote:
>>>> ---
>>>> From: David Lechner <dlechner@baylibre.com>
>>>> Date: Thu, 23 Jan 2025 15:35:19 -0600
>>>> Subject: [PATCH 2/2] spi: add support for multi-bus controllers
>>>>
>>>> Add support for SPI controllers with multiple physical SPI buses.
>>>>
>>>> This is common in the type of controller that can be used with parallel
>>>> flash memories, but can be used for general purpose SPI as well.
>>>>
>>>> To indicate support, a controller just needs to set ctlr->num_buses to
>>>> something greater than 1. Peripherals indicate which bus they are
>>>> connected to via device tree (ACPI support can be added if needed).
>>>>
>>>> In the future, this can be extended to support peripherals that also
>>>> have multiple SPI buses to use those buses at the same time by adding
>>>> a similar bus flags field to struct spi_transfer.
>>>>
>>>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>>>> ---
>>>>  drivers/spi/spi.c       | 26 +++++++++++++++++++++++++-
>>>>  include/linux/spi/spi.h | 13 +++++++++++++
>>>>  2 files changed, 38 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
>>>> index 10c365e9100a..f7722e5e906d 100644
>>>> --- a/drivers/spi/spi.c
>>>> +++ b/drivers/spi/spi.c
>>>> @@ -2364,7 +2364,7 @@ static void of_spi_parse_dt_cs_delay(struct device_node *nc,
>>>>  static int of_spi_parse_dt(struct spi_controller *ctlr, struct spi_device *spi,
>>>>  			   struct device_node *nc)
>>>>  {
>>>> -	u32 value, cs[SPI_CS_CNT_MAX];
>>>> +	u32 value, buses[8], cs[SPI_CS_CNT_MAX];
>>>>  	int rc, idx;
>>>>  
>>>>  	/* Mode (clock phase/polarity/etc.) */
>>>> @@ -2379,6 +2379,29 @@ static int of_spi_parse_dt(struct spi_controller *ctlr, struct spi_device *spi,
>>>>  	if (of_property_read_bool(nc, "spi-cs-high"))
>>>>  		spi->mode |= SPI_CS_HIGH;
>>>>  
>>>> +	rc = of_property_read_variable_u32_array(nc, "spi-buses", buses, 1,
>>>> +						 ARRAY_SIZE(buses));
>>>> +	if (rc < 0 && rc != -EINVAL) {
>>>> +		dev_err(&ctlr->dev, "%pOF has invalid 'spi-buses' property (%d)\n",
>>>> +			nc, rc);
>>>> +		return rc;
>>>> +	}
>>>> +
>>>> +	if (rc == -EINVAL) {
>>>> +		/* Default when property is omitted. */
>>>> +		spi->buses = BIT(0);
>>>
>>> For backwards compatibility, the default bus for CS 1 on gqspi must be 1
>>> and not 0. Ideally there would be some hook for the master to fix things
>>> up when the slaves are probed, but that doesn't seem to exist. I was
>>> thinking about doing this with OF changesets. Do you have any better
>>> ideas?
>>>
>>
>> Does this work? 
>>
>> 		spi->buses = BIT(cs[0]);
>>
>> (would have to move all the new code after cs[0] is assigned of course)
> 
> Yeah, but do we really want to make this the default for all drivers?
> This is really a quirk of the existing gqspi binding and I don't think
> it makes sense in general.
> 

Can we just leave spi->buses unset then and leave it up to the controller
driver to interpret that as "default" and handle it appropriately?

OF changessets seems overkill to me.

