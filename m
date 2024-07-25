Return-Path: <devicetree+bounces-87990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A88493BC88
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 08:29:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 99AFCB2217C
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 06:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C12DD16C6A5;
	Thu, 25 Jul 2024 06:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbDpgVsJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9083519BB7;
	Thu, 25 Jul 2024 06:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721888983; cv=none; b=Ebog1IP12b7PHhBGT4iBiWH1G7AYfNIm0T/QBaq3uXBlnjp8mIbyUXTAqYpvR7sqH4XVKncsciaAYTnTtb7ZJnBm7693lA6g4iHd3giVZDg3vMGOlBAZ4eSMPUFbJTBeNX062T9O64Kt72S/J94VtOPn9AxQlNzNBIHyjy3A5R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721888983; c=relaxed/simple;
	bh=xTsGkWYFxVZROtS7ZsX2meQ/hHFUIWIY3sU4i/EzOMY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=UKda/UE/zEPg8eUI9sFL06vOc2UtpdRI+HdzQQh01IwUumH6lcAbkfUhB8x3B1T6uiMS6nYTmxM4Y/C1oag6bEtuFCdge+vC+7u6/1TX48qXbm/gfPaVHztmU0laMljGnpfElHA4vmmI903cKQGBRL2VmMnqAc0YsXvcDJkzvjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbDpgVsJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD6AEC116B1;
	Thu, 25 Jul 2024 06:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721888983;
	bh=xTsGkWYFxVZROtS7ZsX2meQ/hHFUIWIY3sU4i/EzOMY=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=YbDpgVsJF/M2qz0YWTNPjTwJ6fvrTK+MvWTWNHaSr+2MFWinwzdzmpn7DVpwtXsiP
	 gEtZzZmNio9vSpkfytq7GcoQuwO2skpzp1N7IiaVhUWQ2Wn8lXlvcX8Myis7mVAqbU
	 11WzAF2QvuvYe0u3YYuG7pmt7GTwIRLavyMP8v7axM34oB4oWjKbdlE5hdsOavPpkI
	 cO+w0QrurNQZxxYGInDt5QGTZJGtUxnua5fF/M3H9ZnqBIkVsNe4S1XP4lXbwLp+ka
	 dnNkis4ny3pbadvzaL2Z1XZTwDBaKK8H4o5NrsP5jZWV4+OYXSq+NbNvdUb3fVWtuX
	 TgSDey/IU7Y9A==
Message-ID: <bfd2a8ea-9ddb-458c-bc34-f850092f0bc1@kernel.org>
Date: Thu, 25 Jul 2024 08:29:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] drivers: iio: adc: add support for ad777x family
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ramona Alexandra Nechita <ramona.nechita@analog.com>,
 linux-iio@vger.kernel.org
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Cosmin Tanislav <cosmin.tanislav@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Nuno Sa <nuno.sa@analog.com>, Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Marius Cristea <marius.cristea@microchip.com>,
 Ivan Mikhaylov <fr0st61te@gmail.com>,
 Mike Looijmans <mike.looijmans@topic.nl>,
 Marcus Folkesson <marcus.folkesson@gmail.com>,
 Liam Beguin <liambeguin@gmail.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240724155517.12470-1-ramona.nechita@analog.com>
 <20240724155517.12470-5-ramona.nechita@analog.com>
 <7d474c3d-22ed-45d5-8224-caaf124b72a0@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <7d474c3d-22ed-45d5-8224-caaf124b72a0@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/07/2024 18:14, Krzysztof Kozlowski wrote:
> On 24/07/2024 17:54, Ramona Alexandra Nechita wrote:
>> Add support for AD7770, AD7771, AD7779 ADCs. The device is capable of
>> sending out data both on DOUT lines interface,as on the SDO line.
>> The driver currently implements only theSDO data streaming mode. SPI
>> communication is used alternatively foraccessingregisters and streaming
> 
> Typo, please run spell check.
> 
> Please use subject prefixes matching the subsystem. You can get them for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching. For bindings, the preferred subjects are
> explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters
> 
> There is no "drivers".
> 
>> data. Register access are protected by crc8.
>>
>> Signed-off-by: Ramona Alexandra Nechita <ramona.nechita@analog.com>
>> ---
>>  drivers/iio/adc/Kconfig  |  11 +
>>  drivers/iio/adc/Makefile |   1 +
>>  drivers/iio/adc/ad7779.c | 952 +++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 964 insertions(+)
>>  create mode 100644 drivers/iio/adc/ad7779.c
>>
> 
> The driver has several trivial style issues. Please be sure such
> trivialities are fixed. Get internal review on this. You do need to ask
> community to tell you that you must run checkpatch. Or to tell them that
> indentation/alignment is entirely broken. Grab some colleague of yours
> and perform internal review first. This applies to entire Analog,
> because there is increased amount of contributions from Analog and not
> all of them look like passing basic sanity checks.
> 
> By sending code full of silly trivialities, community reviewers might
> feel overwhelmed and quite grumpy.

The amount of trivial warnings pointed out by compilation in separate
email is as well disappointing. You do not need community to check if
all variables are used - compilers tell it, so use them. Toolchains and
static checkers will point some issues without any need of using
community reviewers. Look, isn't it great? Instead of using human force
you can use tools...

This applies to all Analog contributions - *you must check* your code
with W=1, sparse, smatch and coccinelle.

Best regards,
Krzysztof


