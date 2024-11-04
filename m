Return-Path: <devicetree+bounces-118768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 758239BB807
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 15:39:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 06BCE1F249EC
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 14:39:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9B561B3929;
	Mon,  4 Nov 2024 14:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="K+f7yHOq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA828139CFA
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 14:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730731150; cv=none; b=rSrwop6Q79xO/INbVXtI+4Wfr5nx9plzEvM3iNvBLjWeIz0bRqHpATGiC0BKNy6X6GvVSYfGqVYrrZ4+SyrlKQLHCpFBUqkGeuPcK2OCTMQ+pK0qoIiZq07p7MJIcicEqKzLzpxf8/zgVdETxT7MHjoqk6ObiDyt19f3ME1xGE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730731150; c=relaxed/simple;
	bh=N9mNTgS7KydKjujfpo8o+RMYb3M2ubWeqVEZYIZNbvY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=PqfnzBApcSwLOf9AxvFyG8gKW/eTAwXi7OuGKAu8FxVv+M+d9e339duFljOOnSM7ajf7M5Hmay/Eq2OYzAk++hhwQDvFQ3G8dOxhC93A2aV6FH9cap8UanrBoJLZlOG9TiBFzsU7GPaERM84pIdvHDhdVf7pCPbVAXYdrPBbai4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=K+f7yHOq; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43158625112so37123105e9.3
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 06:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730731147; x=1731335947; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=V1xpNFk8hvdBrc0E2hQPlR3zKBSGiQuhict/6bGeGu0=;
        b=K+f7yHOq5S1lh7AD2ez4PM4me8oYXnj5UNBnNruXUhJAPHo4e73cIN0RGxX1f03Xqb
         ElACQYVew7z5byW2nH1Gd4c206wTqPvjvXXy5HHQ4BbmddfBYiWltjkvRfMzIwQNcJ3F
         2189AQfn84FG2NvnBmWXPILW1rGvtL67Er/Ub/oawIXnBH7Ng/gys7iAtplvqHeDQWOF
         2GwOClTK+pr97pzJcze3dXTYg8mxi/xj8A/rJ/5FQLF70y5CmzLx+6H+Ic/pNlndrDLG
         c+Ys2MqHOW+ADAK0rexJK7BydnB3OdVCEQoO7vmEK4h9bAZO1X5rM9wXAFIYOWOLkKAc
         zjvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730731147; x=1731335947;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V1xpNFk8hvdBrc0E2hQPlR3zKBSGiQuhict/6bGeGu0=;
        b=l3dyxHKr17Cy0lPD1Zgz4TQFV5OrFxbVsRq/kKNUw4qeqb9RAZO8ecdHl70uCsAeId
         zubsboJt67s77wUh7/e7pPuilZxkLQAuCf12g85oToBlAHUI5WGBoJ+vAmLFA+v1rV7N
         /BFkbEj7QJk6BoW6WJU7uMdRElI/zl0lsxioiFLYfXI3J5zazWecWP0T9OuUkC3K722j
         +8D4KZ4XIhd6N8LnDoBuCdYatbN4lFgBLfXJdEbWPHHwjoymRsMWpuENfOitFXrOEI5S
         gU5OZ4Di7VRcj4zVv5SVCFbgJQakdjp8GSKv0RWDvxTHr1fs5E6WOrifvD3DN9gTqmc+
         405w==
X-Forwarded-Encrypted: i=1; AJvYcCV/WyCX+NmpkPYLcZdaT+bnAWeUE28dn8LvBjIpZd1Gq3G/0bieM8CUaFpYRucP96Kc3912vdhAwXTp@vger.kernel.org
X-Gm-Message-State: AOJu0YzBSmD1fF2oD/4SXAOefP2u18de8IuQCobikMFDIIbe/uH+KGDe
	oIPFPHKPsn/91DN/zetTIZ/40dR75U83ZK5NaHkn0MDZRiShPh6geWm+/wXE9B0=
X-Google-Smtp-Source: AGHT+IEkd7fCxmipKdK/jhPqqpXWWRduRKJdf1Fys48euGtYO2BQbNuoCcaPoeGNZkFLXLCk4YE8xA==
X-Received: by 2002:a5d:5847:0:b0:37d:4d3f:51e9 with SMTP id ffacd0b85a97d-381c7aa451dmr10370065f8f.40.1730731147068;
        Mon, 04 Nov 2024 06:39:07 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:4393:a9f:472d:9404])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c116abf3sm13387483f8f.101.2024.11.04.06.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 06:39:06 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Jean Delvare <jdelvare@suse.com>,  Jonathan Corbet <corbet@lwn.net>,
  Patrick Rudolph <patrick.rudolph@9elements.com>,  Naresh Solanki
 <naresh.solanki@9elements.com>,  Rob Herring <robh@kernel.org>,  Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,
  Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>,
  linux-hwmon@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-doc@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-i2c@vger.kernel.org
Subject: Re: [PATCH v3 3/6] hwmon: (pmbus/core) add wp module param
In-Reply-To: <fa79de78-aed9-4cd3-bff9-310f2b4a32c9@roeck-us.net> (Guenter
	Roeck's message of "Mon, 4 Nov 2024 06:18:27 -0800")
References: <20241024-tps25990-v3-0-b6a6e9d4b506@baylibre.com>
	<20241024-tps25990-v3-3-b6a6e9d4b506@baylibre.com>
	<47164712-876e-4bb8-a4fa-4b3d91f2554b@roeck-us.net>
	<1jjzdj5qyy.fsf@starbuckisacylon.baylibre.com>
	<fa79de78-aed9-4cd3-bff9-310f2b4a32c9@roeck-us.net>
Date: Mon, 04 Nov 2024 15:39:05 +0100
Message-ID: <1jfro783na.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Mon 04 Nov 2024 at 06:18, Guenter Roeck <linux@roeck-us.net> wrote:

> On 11/4/24 00:43, Jerome Brunet wrote:
>
>>>> +/*
>>>> + * PMBus write protect forced mode:
>>>> + * PMBus may come up with a variety of write protection configuration.
>>>> + * 'pmbus_wp' may be used if a particular write protection is necessary.
>>>> + * The ability to actually alter the protection may also depend on the chip
>>>> + * so the actual runtime write protection configuration may differ from
>>>> + * the requested one. pmbus_core currently support the following value:
>>>> + * - 0: write protection removed
>>>> + * - 1: write protection fully enabled, including OPERATION and VOUT_COMMAND
>>>> + *      registers. Chips essentially become read-only with this.
>>>
>>> Would it be desirable to also suppport the ability to set the output voltage
>>> but not limits (PB_WP_VOUT) ?
>> I was starting simple, it is doable sure.
>> It is not something I will be able to test on actual since does not
>> support that.
>> Do you want me to add "2: write protection enable execpt for
>> VOUT_COMMAND." ?
>> 
>
> Please add it. I have a number of PMBus test boards and will be able to test it.
>
> Thee are three options, though. Per specification:

Any preference for the value mapped to each mode ? Using the one from
the spec does not seem practical (32768, 16384, 8192).

The bit number, maybe (7, 6, 5) ?

or just by order strongest locking ?

>
> 1000 0000 Disable all writes except to the WRITE_PROTECT command

3

> 0100 0000 Disable all writes except to the WRITE_PROTECT, OPERATION and
>           PAGE commands

2

> 0010 0000 Disable all writes except to the WRITE_PROTECT, OPERATION,
>           PAGE, ON_OFF_CONFIG and VOUT_COMMAND commands

1 ?

>
> The driver uses OPERATION and VOUT_COMMAND, so we should have options
> to disable them separately. It may be desirable, for example, to be able
> to turn on a regulator but not to change the voltages. Also, since
> full write protection also disables writes to the page register,
> the impact of full write protection on multi-page chips needs to be
> documented.

Noted. I'll update the documentation.

>
> Thanks,
> Guenter

-- 
Jerome

