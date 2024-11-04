Return-Path: <devicetree+bounces-118600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1995D9BAE5E
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 09:43:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEA69283407
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 08:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 968951AB50C;
	Mon,  4 Nov 2024 08:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HoKJc+1X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2078017B428
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 08:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730709819; cv=none; b=F/TAjKR6Tq/hJJHmllxKUxapnWCm1zOdkYik9wMKYqmPDP2QtkoV9TGQoxdZfJzcBKNdPqNttQdEJlU46zIk4GFlhg8lw07jlDyzbuPOEgtr27h4hlLmuhCta+FYAENiXdiMsO2kjivXhstoBWXOhWKxdomgqr+RmM6vruNuKi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730709819; c=relaxed/simple;
	bh=kshraC6haEcieG4FtznVZYetL3+AI6HndBAhLITT2J0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=AUwwmz+vZZUY1JFup1I3SoCXTMQ6/+xe/ZthBd2hYLW52BKcsw4o2+/7B4Uwrqzs0VTbKyGGssbPiAGevsFd/V0Q1pwVEXVdVT2H22IAmLUpSH+8+1CHB2C7NEcC2Slfqwb1oN1ZWNYieyASNwlosWnkTUA6zxPfdIcvSvFrPsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HoKJc+1X; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43193678216so34263815e9.0
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 00:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730709814; x=1731314614; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=yu+5qM8n0PPPienB5jDjBwsviOz6sb0jpba7uZ1UbiA=;
        b=HoKJc+1X9mtT6DDtlDRSEeX1OL5mCz2ihWIPQFnAeNUPz72NoZst5Q3Nj2nlAmu3fa
         79i0CThMjzeLBosk7icnKW0wW084ZXHl08tL6ntDKVhXlt8/DNOF+oJSsM5Fp2MHL/7O
         4/vjulJFGQXu9fUC49KhB/BAA4eVA40GeP6zzQzXd2/BUB0eN+zEKhuDT+c3QF4tb+xx
         PaXZcmw07/F/H3uWRcHsKRLbKetG0X0DhOH4XGWS/yJd000VOkqhKqz/dOIXFHs/iQQT
         hVSrMiORY3TqEy2/4Qk+DlX/YolmbXnE2NNNOM7aWdVqj465Bs3hXyr1oto80YaKpdre
         9FRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730709814; x=1731314614;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yu+5qM8n0PPPienB5jDjBwsviOz6sb0jpba7uZ1UbiA=;
        b=NTzPG1dp/x6yXobRQ5WDj9ob2MKzdGRHBKPwNUNCMxJ/kiyirO25blFHn3TuC+JrTW
         Q2I6XBaaeM8H6f3nUle0vLsLrIUymKKZuBv6+ikGbD5/TeOnr5XUucDRO6Rca3FGlrnc
         tNUpf7teNh7lujUka7UH0KdBPAspnUxus7LtKuPFBpmdNhygyXkuQz37FxzJqb+H51qS
         y55q/SczH9dek3Lxb4y/KwwlS5IvxE3aB6j5uDerT5MB5jMWRQrxc1FPhdinUojUbs08
         aSUo1Bw/PnUNoK164Jd+vKF6VGEHO2DdJlsTkTY5QcJ4nv25JsWnRyUtzCLQYTuyAvQU
         KsVA==
X-Forwarded-Encrypted: i=1; AJvYcCWf6kO0oeY6YSM9ylGobHBJs+u58QUkYfupySbaF9XAaL32lu/blPct3z51SDtFRAf5cFjPVdCfNcFy@vger.kernel.org
X-Gm-Message-State: AOJu0YzIpE2FbhLugTNzo9kZTgZPR3MpEgpew/FDLjvT9IQpmALfdPLY
	ecQ08NIjVD2oRtkIL/66OyfNgRsUBSzvoP4Q2dPqHqveImF3tUkKFjO1rowz9rs=
X-Google-Smtp-Source: AGHT+IFK7oph7GwaEWD7zoicMYmJ5UGwD8BU97Va+ifCWsc3lj4TsWyehOg952PcB4gWZzCeA6GyqA==
X-Received: by 2002:a05:600c:198c:b0:431:93d8:e1a1 with SMTP id 5b1f17b1804b1-4319ad08b39mr247904665e9.27.1730709814507;
        Mon, 04 Nov 2024 00:43:34 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:3924:2486:a349:2c6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd910718sm179061875e9.12.2024.11.04.00.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 00:43:34 -0800 (PST)
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
In-Reply-To: <47164712-876e-4bb8-a4fa-4b3d91f2554b@roeck-us.net> (Guenter
	Roeck's message of "Fri, 1 Nov 2024 08:08:31 -0700")
References: <20241024-tps25990-v3-0-b6a6e9d4b506@baylibre.com>
	<20241024-tps25990-v3-3-b6a6e9d4b506@baylibre.com>
	<47164712-876e-4bb8-a4fa-4b3d91f2554b@roeck-us.net>
Date: Mon, 04 Nov 2024 09:43:33 +0100
Message-ID: <1jjzdj5qyy.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Fri 01 Nov 2024 at 08:08, Guenter Roeck <linux@roeck-us.net> wrote:

> On Thu, Oct 24, 2024 at 08:10:37PM +0200, Jerome Brunet wrote:
>> Add a module parameter to force the write protection mode of pmbus chips.
>> 
>> 2 protections modes are provided to start with:
>> * 0: Remove the write protection if possible
>> * 1: Enable full write protection if possible
>> 
>> Of course, if the parameter is not provided, the default write protection
>> status of the pmbus chips is left untouched.
>> 
>> Suggested-by: Guenter Roeck <linux@roeck-us.net>
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>> ---
>>  Documentation/admin-guide/kernel-parameters.txt |  4 ++
>>  drivers/hwmon/pmbus/pmbus_core.c                | 74 ++++++++++++++++++-------
>>  2 files changed, 59 insertions(+), 19 deletions(-)
>> 
>> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
>> index 1518343bbe2237f1d577df5656339d6224b769be..aa79242fe0a9238f618182289f18563ed63cba1c 100644
>> --- a/Documentation/admin-guide/kernel-parameters.txt
>> +++ b/Documentation/admin-guide/kernel-parameters.txt
>> @@ -4733,6 +4733,10 @@
>>  			Format: { parport<nr> | timid | 0 }
>>  			See also Documentation/admin-guide/parport.rst.
>>  
>> +	pmbus.wp=	[HW] PMBus Chips write protection forced mode
>> +			Format: { 0 | 1 }
>> +			See drivers/hwmon/pmbus/pmbus_core.c
>> +
>
> I have always seen that file as applicable for core kernel parameters,
> not for driver kernel parameters. I can not accept a global change like
> this without guidance. Please explain why it is desirable to have this
> parameter documented here and not in driver documentation.

No reason other than trying to document things the best I can.
Other subsystemw are documenting things in here too, I just did the same

See 'regulator_ignore_unused' for example.

I don't mind dropping this hunk if you prefer it that way.

>
>>  	pmtmr=		[X86] Manual setup of pmtmr I/O Port.
>>  			Override pmtimer IOPort with a hex value.
>>  			e.g. pmtmr=0x508
>> diff --git a/drivers/hwmon/pmbus/pmbus_core.c b/drivers/hwmon/pmbus/pmbus_core.c
>> index 7bdd8f2ffcabc51500437182f411e9826cd7a55d..ce697ca03de01c0e5a352f8f6b72671137721868 100644
>> --- a/drivers/hwmon/pmbus/pmbus_core.c
>> +++ b/drivers/hwmon/pmbus/pmbus_core.c
>> @@ -31,6 +31,20 @@
>>  #define PMBUS_ATTR_ALLOC_SIZE	32
>>  #define PMBUS_NAME_SIZE		24
>>  
>> +/*
>> + * PMBus write protect forced mode:
>> + * PMBus may come up with a variety of write protection configuration.
>> + * 'pmbus_wp' may be used if a particular write protection is necessary.
>> + * The ability to actually alter the protection may also depend on the chip
>> + * so the actual runtime write protection configuration may differ from
>> + * the requested one. pmbus_core currently support the following value:
>> + * - 0: write protection removed
>> + * - 1: write protection fully enabled, including OPERATION and VOUT_COMMAND
>> + *      registers. Chips essentially become read-only with this.
>
> Would it be desirable to also suppport the ability to set the output voltage
> but not limits (PB_WP_VOUT) ?

I was starting simple, it is doable sure.
It is not something I will be able to test on actual since does not
support that.

Do you want me to add "2: write protection enable execpt for VOUT_COMMAND." ?

>
> Guenter

-- 
Jerome

