Return-Path: <devicetree+bounces-217757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D20B592B7
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:52:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44276522DE9
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:52:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA7D52BD590;
	Tue, 16 Sep 2025 09:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="jYyW69hS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41FE29BD8E
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 09:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758016356; cv=none; b=hyLEFggMGNW2iKdRq4bXWitrl1aINBICNF+FZmBEUWgORthvuwpvxqNj31KjBueIN/Rwh+p/BUIzB++ajdJul6/ui1PllhQ0qZ5aWIOngZXv7BN1tcWpu5zMgD4uU127gktEBSHmtijY4RR+i2jyzw4H1gNXsD69QKVApFsOhbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758016356; c=relaxed/simple;
	bh=aMG5F7xpbshGg26N6ZjbwilfqXgobZd+0i4J8EC0NG0=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XfopCyzWpLYMYKrfPL77HiCvEgX1YZFk1dSAygATzQrK/ZFM5uwBKzumKgR7Ya8sXnvVlNnt2X83MJqC8OMc6/EFiNCywqDjpDMdPn26F5ReDmZY/yz8NWsjj/IKkpYTLcWkHTV/L+RA27yhwiXNHctE9qnG5FhiB9CoBVPBe3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=jYyW69hS; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-55f74c6d316so5225065e87.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1758016353; x=1758621153; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=OiOC/M78bEv61Cna7PZSesU2fWMjqsEn6aaaGX6/V3E=;
        b=jYyW69hSu6lcclYx4f+E5zsc/hvOWWAVgFXl5kyEiJAfEsIcqXKMCFfhR0LeaBFurk
         4ZD0w29C8cAtgRDqApcVMCPcPUerjSD/uK0fF8/LHj5aao71Jcm4iXwqaW7cTiEfg613
         9wnFM9fqUp8uAWDDBB+sMBRxvQB51Cxp2j7UUBnsyA3wAhGupvz7AjSIMCojApgrfblq
         +gjgDZ0dS0IjjkHHSRuT7PK/7d16jZ8kfmkaOhVDsl+2mAU9NODyk0iqPAtns7Wk/QcA
         Huj6waHkIVx++B4yJAtTzFOKSXwFQfeHJuSQAHapg/ocQYva7vePgiIETLBYMeq6mSCk
         yVDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758016353; x=1758621153;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OiOC/M78bEv61Cna7PZSesU2fWMjqsEn6aaaGX6/V3E=;
        b=tXcN7OKEGN9saHB50zuq7c/h61FeQIYXfike/Lq5P0vUtqUvLapXiu0ijkKXmnYD7Q
         d2bY19N7A2EPYb4ZbSPuQQj6+aWPruO/8LXMKmte5nEl4J3L1juPIeRbyI08TKcTnvZU
         diFqRCGWiipzw+EPC9bSAks2uatjzLvirLkv7qOIFO9VvJYYBM3kzn7TzTF4+mqzB98D
         oiWdtT1Wf3iZfli+gu9581ERPNSBHnmOH2adVKK9Xxilghs7qVpWMfJX3si1xieyIgIA
         VTuuhY67KeZ41IlEFSqDupaIn/XpLJ7qXkshExPeO9OaX/Tk2Pd36+OuIxy6fXCC0o5t
         q7Ew==
X-Forwarded-Encrypted: i=1; AJvYcCUMrXIrJ8ks5aAZthpI9qOfGdtmBhsnQIvJR0Z/iCNMCQGtzQHj/o75mjxuvNw/QuEwYa1B9uPuuhr6@vger.kernel.org
X-Gm-Message-State: AOJu0YzeQNwpM3n289FDnEhGMJ0U4IXVzpaNNVlUw6P3l8kcSHt1V+DE
	TMF6QV2fqHVymndU2XTsqGEMvCStjYpDO0dMWps2Jom7ntT3+PEf8JQ0QIok5GQJkC/L0nwUdxe
	ZCuXEaJIZDbHMb3ishh4bR7rAJ45/BG/wYy5xP1BOLo2omE5UGTS1CtI=
X-Gm-Gg: ASbGncu0kyHqmhI96XDHaMY2cZojzQRvwGcRA6xNWlKJAjFgXU8YFmMMN5fjeQ/PpDt
	asCjAYvSIomGY/kndBCwuvspIaauGTAe3tHTAABhMi/IlshQQ9K6W/FkzXFuyp2svvXDGeTYfM7
	EyUry8XdZbmtoRg3qx0HwbQYRbZzBbhPpkANv4ozXwF6/p83xKslkYZbcArB2qhXDeYqccHW67h
	JqTfWU=
X-Google-Smtp-Source: AGHT+IHX/v2Sv4pNLDqBj2a0T8TLe+4AuuhJRQKT8EtfyDIe0B7CYhCKOOu4ksFfaiZpITJ9Ev2G8Po+8ZM3AqaIkKk=
X-Received: by 2002:a05:6512:3f05:b0:55f:3e4d:fb3b with SMTP id
 2adb3069b0e04-5704d0071c6mr5659388e87.30.1758016352992; Tue, 16 Sep 2025
 02:52:32 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 16 Sep 2025 05:52:31 -0400
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 16 Sep 2025 05:52:31 -0400
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <DCTDUJO0PS8B.1LD03WTEMNRVP@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250915122354.217720-1-ioana.ciornei@nxp.com>
 <20250915122354.217720-5-ioana.ciornei@nxp.com> <DCTDUJO0PS8B.1LD03WTEMNRVP@kernel.org>
Date: Tue, 16 Sep 2025 05:52:31 -0400
X-Gm-Features: AS18NWAbYT5SIpslmbsM29_pX3ylDm2HlYwz1lrLiD9dqodJMb4U8hXy3-TvuOU
Message-ID: <CAMRc=Mf7bnAM=-A4jWrqOvS8-ZetTHPfMaEpmQdbKMt6SWKtQQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/9] gpio: regmap: add the .fixed_direction_output
 configuration parameter
To: Michael Walle <mwalle@kernel.org>
Cc: Frank Li <Frank.Li@nxp.com>, Ioana Ciornei <ioana.ciornei@nxp.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Shawn Guo <shawnguo@kernel.org>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Sep 2025 14:45:58 +0200, Michael Walle <mwalle@kernel.org> said:
> Hi Ioana,
>
> On Mon Sep 15, 2025 at 2:23 PM CEST, Ioana Ciornei wrote:
>> There are GPIO controllers such as the one present in the LX2160ARDB
>> QIXIS FPGA which have fixed-direction input and output GPIO lines mixed
>> together in a single register. This cannot be modeled using the
>> gpio-regmap as-is since there is no way to present the true direction of
>> a GPIO line.
>>
>> In order to make this use case possible, add a new configuration
>> parameter - fixed_direction_output - into the gpio_regmap_config
>> structure. This will enable user drivers to provide a bitmap that
>> represents the fixed direction of the GPIO lines.
>
> I wonder about the ownership of that allocated memory in the config
> structure (and btw, I guess you leak the memory in your driver) and
> if it's not better and more error proof to allocate and copy the
> bitmap in gpio-regmap too (and maybe use devm_bitmap_alloc()) and
> leave it to the caller to handle the passed bitmap. I.e. it could
> also be on the stack.
>

I was under the impression that whatever is in the config structure for GPIO
regmap init function is only required to stay alive until that call returns?

If so, then yes, a deep copy of everything from this structure is required.

> Otherwise, this looks good.
>

[snip]

>>
>> +	if (offset >= chip->ngpio)
>> +		return -EINVAL;
>
> Not sure this can happen. I tried to look into gpiolib.c but
> couldn't find anything obvious that it can't happen. Maybe Linus or
> Bartosz can comment on that.
>

Indeed, this is handed by GPIO core, please drop it.

[snip]

Bartosz

