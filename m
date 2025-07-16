Return-Path: <devicetree+bounces-196802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9C1B071FB
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 11:39:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 306705819F6
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 09:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E623A2F003D;
	Wed, 16 Jul 2025 09:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="1luv8TCi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D472F2371
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 09:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752658655; cv=none; b=nXGm6GCsLpLn0iglk4zGX/A+p/o+ann5SwmCT7RV2DFXvjtuFGKjD9cnLniEnhTjIop0lhKZYJpEc+rw1BAQW/N1kkjkf1VcfetxKbPxGuzi8da736V7iykgvHblj6VgOYe9IiXhlBlMtnyWQsyHsDxTvy2hKwBMgANztCulZJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752658655; c=relaxed/simple;
	bh=Rv1WGu71RvsH+PoMrbT5bMaAhPBIVdTsoAe+rkNha0A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CLWccNk1mkhbuv2MK1kbjy2HmJw6cIUlwtKLlVjpsTzFBvLdrdpNuH1nUNMaCo650tjTQq2OeQLw7Fg0z5ki+i2WYvQHWWW15qxDc4wgfVoUBiFAwLGyi22nef9uSyod+mpuoSVPyMrBhuEwWCYSl7NDCN+tP6vd0LSoa2fFMyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=1luv8TCi; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3a4fb9c2436so3916257f8f.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 02:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1752658651; x=1753263451; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mRIwbcS0H9zdmv+BDkzGsQ7wEXHGjYbRxt2gj93AB+0=;
        b=1luv8TCinIPAqm6y0GvFkkN/Uq4zkmU7iVaZIQ1CrQMScBpSXdox/ZZ+eJS6NYIl7x
         GLdGOH3nx3rk/Z9nAWgRXbokcTJ4lqW6viKHwj376UI/fRdgKYInYZy2YVDhUg64Tr57
         KY5U3Ik0kFXcSHjHLmVj77frsjd42geFdGMOFnOFNryuzPbAQJ+f1VETun1fttVsGtQ0
         z4nnEG/L2wKHpze9JlSKJp6eKlNdQThinFuYW+CxFI0qCIfV88qugGw52koZtUWa05mI
         PSQ9lc1i91yUU6Z/Ir8/OVyIh5y6PkJUHbB42zb/kR+2fgi6IXvA8wgl4kEJU2i83Wci
         DTdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752658651; x=1753263451;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mRIwbcS0H9zdmv+BDkzGsQ7wEXHGjYbRxt2gj93AB+0=;
        b=cxgG65L0pMKMmnGgnHn6EQFEc6C888DHWe9CWKSHgSWOYMpe2x7FcOUB2DCg+Pwd5J
         D0n9JvDPwAFnNYBeDJTEia6IhRpCaevOH96C6Jc7oZbTIKK+DdojKONp0LYztFN9DWSf
         0ZJ5+za0cagTR1o0o4dgLJVBFyAkUVvRuCRy0gqkpUHvDqCGMWi+dWjYXP3+wms2QPUt
         yYh3yZVSIc5Wj5iUGMiDdTJW15AKxWE0R8I7N/PH+6M4pdQwEM4K1MtcIE2bl08JucNC
         njFBDE0J9rjlOt3QuakIQ9TvtujmxJqbbgWzYwxcm0ZMPrbmfSrrsjlvkcMlJ8VArryG
         ZJNg==
X-Forwarded-Encrypted: i=1; AJvYcCXYkg6+OZscSoFAL9Au1t7seEZhAAWreiiF6pEdGyRx3pcnPwHC9E/fQhmFNSou+dg+k2nixpt7GCK3@vger.kernel.org
X-Gm-Message-State: AOJu0YwCX6WwCYKl9uLaeBqgC344mW5JL5AJN3IwOz0CP2Fd9dVdSCv1
	7vzgkIooi42C35UcY9DiSrVY3D8flvfKEHATaB4UkEfHH0Jn+Y+tgJ+8G+EWgcn9GBs=
X-Gm-Gg: ASbGncuegkFqod84BdAyvO9tc+TJ9+Ti2THX4olOzfEyMZwi4b1k6HLZCDW35YGCFvw
	+cYJ+c5U5qDsj0Z4COeXVqDQ2PLH8kzjs+dbCZkl5NVIP30ucN+6idFqNvWaqWuViyf0kp/aKiw
	Z86Bh65HQCxWO91/4ATJNycpdOuuK8nMDfcK6CINsloT7Kzlpbfd6dCCa2HJ4p8YSXthurLAwFV
	cHeWryZjVB3xboBcNZt0iDTePgWDS8RDEri+CRUdHfWbMZFN+Ss6TdgZTa/DJpiC3ZMmt5FYXSd
	rRA9BMbldT/cNK79I+oC3YUxCblEMBf4MnKlZ1gDSJ965BdnIkZ23VzZ31LD/cGM5fkWsEe5pW1
	fJl2OhTTTwOgi2NajfJq9Xa9oWrpyY4BJoU9MAGRte31V0eOOrWMEU7iT0JCCwhJQydSviUJ5Jx
	R22ndDZS4KEbVQfCgdkViC
X-Google-Smtp-Source: AGHT+IE4uVb9YKbrx3ndRNHKiFm08G4TVQtoQIPhB1Z5lx2K3LriBMWvhlHyxvUwMMKUbX/m2DA1HA==
X-Received: by 2002:a05:6000:43cc:20b0:3a5:39be:c926 with SMTP id ffacd0b85a97d-3b60dd7aab1mr1328671f8f.32.1752658651434;
        Wed, 16 Jul 2025 02:37:31 -0700 (PDT)
Received: from ?IPV6:2a02:1807:2a00:3400:5da9:c53:46d0:bd62? ([2a02:1807:2a00:3400:5da9:c53:46d0:bd62])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4562e7f2f28sm15619335e9.2.2025.07.16.02.37.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 02:37:30 -0700 (PDT)
Message-ID: <95125019-8eaa-4242-8e68-78771ce85947@hammernet.be>
Date: Wed, 16 Jul 2025 11:37:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] riscv: dts: spacemit: Add OrangePi RV2 board device
 tree
To: Yixun Lan <dlan@gentoo.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 paul.walmsley@sifive.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 palmer@dabbelt.com, skhan@linuxfoundation.org,
 linux-kernel-mentees@lists.linux.dev, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250711183245.256683-1-hendrik.hamerlinck@hammernet.be>
 <20250711183245.256683-3-hendrik.hamerlinck@hammernet.be>
 <20250715102534-GYA542593@gentoo>
Content-Language: en-US
From: Hendrik Hammernet <hendrik.hamerlinck@hammernet.be>
In-Reply-To: <20250715102534-GYA542593@gentoo>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello,

Thank you for the review.

On 7/15/25 12:25, Yixun Lan wrote:
> On 20:32 Fri 11 Jul     , Hendrik Hamerlinck wrote:
>
>> +/* Copyright (c) 2023 Ky, Inc */
> Copyright should cover current year, which is 2025..
> what's "Ky" stand for? Can you give a full description here
Regarding the original copyright:
This file was based on a version from the Ky, Inc downstream kernel, which
itself appears to be adapted from earlier SpacemiT sources (dated 2023).
The Orange Pi RV2 board, however, was only released in 2025, suggesting
that the Ky version was likely copied and renamed from earlier generic
SpacemiT files.

In reviewing the Ky downstream tree, I also noticed that several files had
their copyright statements overwritten with "Ky, Inc", while the original
years (e.g., 2023) remained unchanged. This makes the provenance a bit
unclear.

Since I've significantly reworked the file for the actual Orange Pi RV2
hardware, I’d prefer to attribute it under my own name, unless retaining
the original "Ky, Inc" is required.

Please let me know what would be appropriate here.

>> +	memory@0 {
>> +		device_type = "memory";
>> +		reg = <0x0 0x00000000 0x0 0x80000000>;
>> +	};
>> +
>> +	memory@100000000 {
>> +		device_type = "memory";
>> +		reg = <0x1 0x00000000 0x0 0x80000000>;
>> +	};
>> +
> for the memory nodes, there are 2/4/8GB variants from the Link [1], and
> you couldn't cover all of them in one dt
>
> besides, I thought bootloader (u-boot) will populate these info, right?
> so the above nodes isn't really necessary
>
You're absolutely right, U-Boot does populate this information correctly
at runtime. I will remove the memory nodes in the next version.

I also noticed that the aliases section is missing in this version, which
means the chosen.stdout-path = "serial0" reference won’t resolve unless
serial0 = &uart0; is defined. I didn't encounter issues during testing
because I'm overriding the boot command in my Buildroot setup, but I’ll
add the proper aliases node in the next version to ensure upstream
compatibility.

Kind regards,

Hendrik

