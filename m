Return-Path: <devicetree+bounces-135861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE6CA02882
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 15:50:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4EA42188145D
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 14:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 771678633E;
	Mon,  6 Jan 2025 14:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QOSwJMAg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A320878F23
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 14:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736175024; cv=none; b=uO37SBBhX70oYStXbStU1TrMKArDc2vKXc6kjrJdYmggG6P1HVDU4+1ej/9u9fiWFcxIDL2f6bG0KuEBdOrtWFxg7chwlCtQuRVj8jD7jYz4QvrhfOpTPA7tc5uxRrDmGna1jgWDW1LYFf4wnBfIK5pSMKsA41oT9qLBZrSxMNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736175024; c=relaxed/simple;
	bh=OnDA9nPAXk+aBKB47SzeiLNAkUZBkNN2tl77klvvI0g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sOd4FGABvvkedJXBwc71oFBc37OioVxy4SYCawtYvVnJ7KO50CnpwjR9N86856rdo5SGlXNFmO9KLV8WmXhlhSWxP5uatklU3fEb5HAg859sqM9oTUNGL+PTwTcVWzUgagx40lRuVl1lhEcJ27HVb8HvH7ejUWv/63k3hvr8AuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QOSwJMAg; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5f63c89e72bso2006144eaf.1
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 06:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736175022; x=1736779822; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Vxw3Mx8N/hDAKeHqp+8V3fNQAbCKUACtVfPIZJk7BE=;
        b=QOSwJMAgmSEi9JwytViLU+0I5jsHRdZFnckDZqoRsQpzkzJIu2MZwLOYe3J944OiKK
         BRWaG3TWos/7Yqkx0GI+E3BV8DTeU95d5KTmmuWqgUeX184g9KD+Odh8mBK4+puXsdV5
         EAlrRtj+HC328o2uR5Hi4Sc8BkCnbrZ4QVZJc2BW5OFDf1rtW+LyaVyNlZQKqavPterC
         PiA/GmVPKPLStKBqSPL2gK9KryQPrN+utdhS/yGwyuQGqzGaZecl7283yWkGQzmGEgB2
         bGd57v2004SAJdQ9FxRAEbjvxrJ6ttYVnNyzFFJaLkFU7XPxf7r8cZgH0UT1R6ZsyMtt
         ioYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736175022; x=1736779822;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Vxw3Mx8N/hDAKeHqp+8V3fNQAbCKUACtVfPIZJk7BE=;
        b=TJVfZeM4g8KmmvfkG16GQy+iPX8v6LSfocEElgK39WBu4+GG/etYg5X6Xz0D1lNYU/
         U88g/83up+ofymI0ULfkYXTsBVJAY0rfqagqeMUg2YxTVkmQ5Vev8/AFpptMdJRrhL25
         m7lp2ei1YlH8lTbtu7WufBtCjWbo1KUMfh9jf5+ChM1CrewJYzyGxGaHESXd7ioP48vJ
         PrgeU/shCLY6f8Ep7AXFh3b/JK0vX/RhTSVRZuUERikeYJjD1YHZBBvACaEM3YGGLHEW
         VlN7xkgTYXqjO1Zy4TNxKzEjl+GwN2z85a3Y1N20pkTDAAuFHN/JD8uX3CKRDXT47WT/
         /92w==
X-Forwarded-Encrypted: i=1; AJvYcCVIqGVglLcXXYinbidE1CBmbIOFYAym1urhDq6f+nm5gyzcP0s/ynpar3UecOg3l72etjKk1l1dLXjR@vger.kernel.org
X-Gm-Message-State: AOJu0YyyaZ83o3bH7evxHa2g4ZiXdHzBWUKcLUWskvmRakSC5Lolz2Jf
	98GoXc+DltF2wpfa3ixm4HUQzdE51uUi0S5BKa9300DOCJEumtkCleay68o8pV8=
X-Gm-Gg: ASbGncspo0cuQu52CzEPaAV9Pa4KxJ9YR2sXeKpwHEaGwSlQ+tI4ZDBKFQZ4y5EpGmD
	fp668EYuinbUySoAnQsAYRXMJta0Nmx10FBnoSYe/y7fci2ovQi9IS8IbBKNFK4/EQojFowMPiX
	OyU+Ke2eSMHEJcOYUQAi5ZvszTbK4dgB6UwRri6TySLwRRpb6oaH2vmMWT4Dy07FQ7EKdF8U9q2
	FiBYaUw0QCtwGX6KGU3Tl9OwXKZnuBECmEDSUnaaEM/QLlA9Xpg/HJndvOblgJIu69NmDQEsNRv
	WcOm0+p/PWVrNw028A==
X-Google-Smtp-Source: AGHT+IGHWEdxTp5zhyCbR+/gT72Zro13mUmLbxDzfT8L1TIAIkymARuWNbGkjWke8WKfrMR5lpr8Fg==
X-Received: by 2002:a05:6870:430d:b0:29e:8485:197b with SMTP id 586e51a60fabf-2a7fb00afd6mr31908359fac.2.1736175021803;
        Mon, 06 Jan 2025 06:50:21 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2a7d751e457sm11753372fac.25.2025.01.06.06.50.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2025 06:50:20 -0800 (PST)
Message-ID: <2a4f0a3d-3288-4f59-8c18-c53ab4b596e5@baylibre.com>
Date: Mon, 6 Jan 2025 08:50:18 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] iio: adc: add Nuvoton NCT7201 ADC driver
To: Yu-Hsian Yang <j2anfernee@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: avifishman70@gmail.com, tmaimon77@gmail.com, tali.perry1@gmail.com,
 venture@google.com, yuenn@google.com, benjaminfair@google.com,
 jic23@kernel.org, lars@metafoo.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nuno.sa@analog.com, javier.carrasco.cruz@gmail.com,
 marcelo.schmitt@analog.com, olivier.moysan@foss.st.com,
 mitrutzceclan@gmail.com, tgamblin@baylibre.com, matteomartelli3@gmail.com,
 alisadariana@gmail.com, gstols@baylibre.com, thomas.bonnefille@bootlin.com,
 herve.codina@bootlin.com, chanh@os.amperecomputing.com, KWLIU@nuvoton.com,
 yhyang2@nuvoton.com, openbmc@lists.ozlabs.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241226055313.2841977-1-j2anfernee@gmail.com>
 <20241226055313.2841977-3-j2anfernee@gmail.com>
 <Z26aMVayh-EdYA8n@smile.fi.intel.com>
 <CA+4VgcK4apNKWXhWvViPU6JfyXu9ZTQ7-TBauTaYUHnp0j1s-w@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CA+4VgcK4apNKWXhWvViPU6JfyXu9ZTQ7-TBauTaYUHnp0j1s-w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 1/6/25 2:33 AM, Yu-Hsian Yang wrote:
> Dear Andy,
> 
> Thanks for your comments.
> 
> Andy Shevchenko <andriy.shevchenko@linux.intel.com> 於 2024年12月27日 週五 下午8:14寫道：
>>
>> On Thu, Dec 26, 2024 at 01:53:13PM +0800, Eason Yang wrote:
>>> Add Nuvoton NCT7201/NCT7202 system voltage monitor 12-bit ADC driver
>>>
>>> NCT7201/NCT7202 supports up to 12 analog voltage monitor inputs and up to
>>> 4 SMBus addresses by ADDR pin. Meanwhile, ALERT# hardware event pins for
>>> independent alarm signals, and the all threshold values could be set for
>>> system protection without any timing delay. It also supports reset input
>>> RSTIN# to recover system from a fault condition.
>>>
>>> Currently, only single-edge mode conversion and threshold events support.
>>

...

>>
>>> +static const struct regmap_config nct7201_regmap8_config = {
>>> +     .name = "vin-data-read-byte",
>>> +     .reg_bits = 8,
>>> +     .val_bits = 8,
>>> +     .max_register = 0xff,
>>> +};
>>> +
>>> +static const struct regmap_config nct7201_regmap16_config = {
>>> +     .name = "vin-data-read-word",
>>> +     .reg_bits = 8,
>>> +     .val_bits = 16,
>>> +     .max_register = 0xff,
>>> +};
>>
>> I don't see how these configurations will prevent, e.g., debugfs to access
>> 16-bit registers via 8-bit IO and vice versa.
>>
> 
> Read VIN info can use word read or byte read, and other registers
> should use byte read.
> 
> The design is that VIN info registers are used 16-bit debugfs to access and
> other registers are used 8-bit debugfs to access.
> 
> We need to probe 8-bit regmap and 16-bit regmap,
> but I have no idea how to prevent 8-bit IO to access 16-bit registers
> and vice versa.

You can do this with struct regmap_access_table via wr_table and rd_table
in the struct regmap_config.



