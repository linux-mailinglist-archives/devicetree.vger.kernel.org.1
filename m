Return-Path: <devicetree+bounces-95157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E059583F1
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 12:16:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCA201C247AF
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:16:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F32518C351;
	Tue, 20 Aug 2024 10:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NiyHc3gs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF7918D644
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 10:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724149008; cv=none; b=JxM1cp3PBybfy4cuxggTXfOy6IY7EuF9aYwdX6ipA5MHGRvMQd4u2wEr94BK9n72CnwRIOMnUZoyVxw5kt0VU4wcngqY1F0iabr8RIEQCClMDzwSeJwX3UTvGif6UHU+HahxWnEueP2PpzZKQyjxB3u09WiGGi1yRIqMOjljA/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724149008; c=relaxed/simple;
	bh=TqRjFWkKbWeEkGzEJaqHB/W+KKXTwGUJgPmIKjqEgeI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ajG832IHfCCofUKhE4FQqSwz4XSG7G0tFH0J+2k12rNPyQ4JOAlS1IT0uKJDTSZTS7jstWQIfX9ne3TuzYkVuIWatktwrvszsGbOfakjs5dNutCHYibU0SRCiWxBQOzD8EoW9tfzIe/8b1d3MpILy5xaPchqeijn6VAkVAQo1eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NiyHc3gs; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a8643235f99so116220066b.3
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 03:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724149005; x=1724753805; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fUgvdkKemsynJw871Va8xFCJPoIgK/+NkAwAS5w3iD4=;
        b=NiyHc3gsseKQH7eI2t8a/4IaoStNIzdMgpTm/uKYaxaibPwT2VYgxdsnMjXY3HgT0a
         P9VuLOnxwmCqGEqCnL052SYDm1kXoFsQ0FASq9jHRIPl3Yeq6YFfvno8kD7QQPiZt6dz
         KGq0GmMs9hwI9IRO5A6m77+4SBO8ymGs4P3PyZI6u3UD28wfPIAlLCZNGvmiU1r7ABbZ
         S8u8B1ryQ6HjR7k04PGAz3lsBVpHUd25r0815xa48Q9X5mjU8VACwdi08L9rZ/KzoX/l
         z+o9jQp2cMAS9T6MocOYfVtohTGEQc4Xoob9DjIdsipgUu4nN7M5G2kkbhLd3teQMcdj
         rWVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724149005; x=1724753805;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fUgvdkKemsynJw871Va8xFCJPoIgK/+NkAwAS5w3iD4=;
        b=EYIrjSTUJi6ovbveDYThxga5zKMQdNLcpKmwTIx9vXmkRfxD2IYx1Maj6yxOpkHge4
         jkHoGDvcKrDR2Dx3fs5DkG6k2B4/Fn75s3SsXIjNiZ5j2NmuOMEC7Vl9uPSImC6s7q7q
         MsmPCHpV6fUgkF5bD+rr8fvNJ01AAh0aTVCTBeuYTo9sgrMZrH5pTfOpfPERakobjZrA
         pEomhqokWLTZJAWeZ7vNdqF7AmFJEXMFEsTaphRINnBNwmDnal97fv6mIykciXiOK6Y6
         ScstcnS9QMNdSQeasq0vey89GCPMZ624LXsBNx4h6s5b9gPq+GF3jIV71b01BrHU9GBC
         Y0Dw==
X-Forwarded-Encrypted: i=1; AJvYcCX+GMMYbl+DNm3T1ymfbkyaej4GqCrFhxJocV+EFnCKGgwB9P/O/8t8uRxRZd8uTc4nkmNxWdn3V17Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyaotgJSBV/i7ALLRE9oID1iVwlJqWUZ5sg70m0YrzaMFdGLYZK
	K1VvVF8LwHvSFxs+CFl02hnp4xFmeQ9oYnqa5mjsBfOJ5i+Fkv8TjgRZTyYtE4w=
X-Google-Smtp-Source: AGHT+IEHAOpi6gAtu1Bdiww8ysONKnU4SlvU51Tmtq6mrQBDcD9AG75eGftS0eZMJPQuXiI1ekXrsw==
X-Received: by 2002:a17:907:97d2:b0:a77:cdaa:88a3 with SMTP id a640c23a62f3a-a86479e45efmr127114366b.27.1724149004495;
        Tue, 20 Aug 2024 03:16:44 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83838d023dsm736934766b.64.2024.08.20.03.16.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2024 03:16:44 -0700 (PDT)
Message-ID: <2fc8ea3c-9074-4291-8355-4b646f51d0e9@tuxon.dev>
Date: Tue, 20 Aug 2024 13:16:42 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/11] i2c: riic: Add support for Renesas RZ/G3S
Content-Language: en-US
To: Andi Shyti <andi.shyti@kernel.org>
Cc: chris.brandt@renesas.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 p.zabel@pengutronix.de, wsa+renesas@sang-engineering.com,
 linux-renesas-soc@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240819102348.1592171-1-claudiu.beznea.uj@bp.renesas.com>
 <gc3fqib4iflzmwu2wv33436anbrfywxoj5p7ah3m67sqp3u4h4@2ttbj7kgmjyx>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <gc3fqib4iflzmwu2wv33436anbrfywxoj5p7ah3m67sqp3u4h4@2ttbj7kgmjyx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Andi,

On 19.08.2024 23:23, Andi Shyti wrote:
> Hi Claudiu,
> 
>> Claudiu Beznea (11):
>>   i2c: riic: Use temporary variable for struct device
>>   i2c: riic: Call pm_runtime_get_sync() when need to access registers
>>   i2c: riic: Use pm_runtime_resume_and_get()
>>   i2c: riic: Enable runtime PM autosuspend support
>>   i2c: riic: Add suspend/resume support
>>   i2c: riic: Define individual arrays to describe the register offsets
>>   dt-bindings: i2c: renesas,riic: Document the R9A08G045 support
> 
> Looks good until here, do you want me to apply these first 7
> patches to unburden you a bit?

I already prepared the new set. I will send a new version containing
everything.

> 
> Unless Geert has some notes on patch 6.
> 
>>   i2c: riic: Add support for fast mode plus
> 
> Small things here
> 
>>   arm64: dts: renesas: r9a08g045: Add I2C nodes
>>   arm64: dts: renesas: rzg3s-smarc: Enable i2c0 node
>>   arm64: dts: renesas: rzg3s-smarc-som: Enable i2c1 node
> 
> I'd like someone to ack here.

Usually, these are picked by Geert.

Thank you,
Claudiu Beznea

> 
> Thanks,
> Andi

