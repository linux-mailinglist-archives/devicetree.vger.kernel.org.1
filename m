Return-Path: <devicetree+bounces-144811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5035AA2F4C4
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:11:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17B243A3786
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 17:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F995243945;
	Mon, 10 Feb 2025 17:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LrQG0WeQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E87256C7A
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 17:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739207489; cv=none; b=Vn3/J2ajqI3kw/0vcRodFEJv8H2Nqpl8ew6yMZHxNpvzylfnHaW6a4cRYuP2KUcz1RLU+U0EqeXkKRoujUShS/X1acIyHAodyV+P/bH8pqWNUwlPJTcHpKOn8aDIbhLzh96wUCMGl/ey6TkP26Td5YXwULD0Vn+TLfgJHguyLTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739207489; c=relaxed/simple;
	bh=l6ixI9ocsg5QZ16cvn2QkpaT8QZyQoyW5ibERsaeAMM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZkobXV0PbkigM6QW5jhqPDi4nwPcyk7ovd3/0w4FDAiJXerxSy2rh6nN5VGQiLb/0lu9V5ACt4OxqgLN5Swe5T8LO5h86mzyN/9j3kg+NJ7kMaQ0jh96nr/V0wq1bsYx9a8xIGD70q+ImFQog4HJjmkWRZicTHkw0SBAX2wf9fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LrQG0WeQ; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5fc01d3faefso1467550eaf.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:11:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739207486; x=1739812286; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y62wEuUB23NjmeSDjcZkJZH4kkElpdd1L2B2fifJwGY=;
        b=LrQG0WeQbLzRgqLVKAkVeAz4SHc4lcfp6bMBkIsb+jVM0E4FE7akiPx+EYM8VSC8/6
         /hi/wJ0PgriVCqlPCNjJZFUrtwqqUVGgIi4GXI9a0102U1BIFzBKwpwIMXHry92rPydn
         pfc4rAP11sr8VP2+t/+0EJT+rXtM7n+9pBGCaLcjEgrxGm9IVe6VfBH6F5R6FqPZvQg8
         d2h2SpkL5260d3eMxyVDkYTHuzSzdeAej6e3e2WHBwcCMoqqyGrMJVqPvmb8I8rqv6ED
         Y/buAZrg21luPF79Wne8GJY1Z8XSN0U0K7RFEsAUrOSca+YXCJeLsE+J5DggIitggNcS
         v7WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739207486; x=1739812286;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y62wEuUB23NjmeSDjcZkJZH4kkElpdd1L2B2fifJwGY=;
        b=NeUWNWOvIyKEGluzahPm91Z2DrRA7lGezEB4OeqJ6y9+oSNWy803VKz/9a1fbOZFvG
         AS25cEHUTKdV3XlXcAVcicI7a8XfacBU4DHdpZccjkf2g2vUgpf2yIHiLdydIggY1y73
         sWvBPbMYciOVmmnPnaf5SVZamVbaeKofGGnUZHgaSpFg343rpd0YeUaJgRUd78byIeDf
         Nq2WIzz9aH7R8jkSDcFww/nFpFEvIKlLGUjyO6FJPflYHq9XbM9XObQWC63Cqvzf4siN
         sZTHID51T9RQlkc7aBsKu8S/9+71mpZ2B5bj3VPLvD1wsOTGQ18iwu4zxtk9FeUVeKgF
         BErg==
X-Forwarded-Encrypted: i=1; AJvYcCVvFuESL7h6mZNseujmrbbb4hq7RbU+t5JLw3bjQ8MimURhUTTrh+aoRwhVlaWd7RuDDKMTkiU3WI9l@vger.kernel.org
X-Gm-Message-State: AOJu0YxK5rRfzm/05xCNoXQ6jRBwJCuvf9ST6jCMLI+rUHqh/dgXlqqm
	ir2gXROHz4ZyUBbDnTAFnDPy+g1facbKlNfMw0XEJrrAnZYS8FtmhCSmQdUFI7A=
X-Gm-Gg: ASbGncv4WYni2NK9toeEFgystwiGLA3SK1nBKrTN+wz+6ole/y9CSi+1Z14g3fLnGNa
	/EBzbdWrXqAD0KsT5psTPdhharXUuy6T5ohPa9+HXZiyDHw0KMUO75Yegx7q+6eNXCfhZ/uv7MM
	9a9vP22eRBHB+cRozhbDr6hIGO3YVEl9B4/dFaKo0J4uiua08YvcaOjMwQEUB52s74ouGcdG/kO
	ZkeL4+xLMUct2i7bmTPPTj//DtB0mxXHotzHiemmxrzzyWbjC1fcyINHqp5C++VxihtZSxbald+
	l7RN01F4gnieOCZfCHK2+610Own/HL8nJdP/TpqL7g6hToWLQiCZ
X-Google-Smtp-Source: AGHT+IEo4eH2CuOA2OmnMHMRwgQDew3LfoTfoARBZw+mgbte0DXZ4AUD2tzn6839+X+KetyoPMS0Gw==
X-Received: by 2002:a05:6871:6aa:b0:29d:ca24:c044 with SMTP id 586e51a60fabf-2b83eb4d220mr8661498fac.8.1739207486107;
        Mon, 10 Feb 2025 09:11:26 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b8a8c46e7dsm251881fac.35.2025.02.10.09.11.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 09:11:25 -0800 (PST)
Message-ID: <27d2a88c-b44a-4712-b066-b999e41774f0@baylibre.com>
Date: Mon, 10 Feb 2025 11:11:23 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 01/17] spi: add basic support for SPI offloading
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>,
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20250207-dlech-mainline-spi-engine-offload-2-v8-0-e48a489be48c@baylibre.com>
 <20250207-dlech-mainline-spi-engine-offload-2-v8-1-e48a489be48c@baylibre.com>
 <Z6otFlsmEikIbI__@black.fi.intel.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <Z6otFlsmEikIbI__@black.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/10/25 10:45 AM, Andy Shevchenko wrote:
> On Fri, Feb 07, 2025 at 02:08:58PM -0600, David Lechner wrote:
>> Add the basic infrastructure to support SPI offload providers and
>> consumers.
>>
>> SPI offloading is a feature that allows the SPI controller to perform
>> transfers without any CPU intervention. This is useful, e.g. for
>> high-speed data acquisition.
>>
>> SPI controllers with offload support need to implement the get_offload
>> and put_offload callbacks and can use the devm_spi_offload_alloc() to
>> allocate offload instances.
>>
>> SPI peripheral drivers will call devm_spi_offload_get() to get a
>> reference to the matching offload instance. This offload instance can
>> then be attached to a SPI message to request offloading that message.
>>
>> It is expected that SPI controllers with offload support will check for
>> the offload instance in the SPI message in the ctlr->optimize_message()
>> callback and handle it accordingly.
>>
>> CONFIG_SPI_OFFLOAD is intended to be a select-only option. Both
>> consumer and provider drivers should `select SPI_OFFLOAD` in their
>> Kconfig to ensure that the SPI core is built with offload support.
> 
> (I know that this is now in SPI tree, but still we have time to address something)
> 
>> +++ b/include/linux/spi/offload/consumer.h
> 
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * Copyright (C) 2024 Analog Devices Inc.
>> + * Copyright (C) 2024 BayLibre, SAS
>> + */
>> +
>> +#ifndef __LINUX_SPI_OFFLOAD_CONSUMER_H
>> +#define __LINUX_SPI_OFFLOAD_CONSUMER_H
>> +
>> +#include <linux/module.h>
>> +#include <linux/spi/offload/types.h>
>> +#include <linux/types.h>
> 
>> +MODULE_IMPORT_NS("SPI_OFFLOAD");
> 
> This diminishes the point of the namespaces. Anybody who includes a (dangling)
> header gets namespace imported, which is not good. Same for other globally
> visible headers.
> 
> (This is the main concern of this patch).

In this case, we specifically split up the headers so that the only time you
would ever include this header is if you need to call functions in this
namespace (i.e. struct definitions are in linux/spi/offload/types.h which
doesn't import the namespace). So this doesn't actually seem like a problem
to me.


