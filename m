Return-Path: <devicetree+bounces-41882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C79DE855C5E
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 09:23:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC4651C21DF7
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 08:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A535134CE;
	Thu, 15 Feb 2024 08:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fb+ADIvM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429E2134A9
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 08:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707985275; cv=none; b=IzXVrHY0B3ewl5y7isiiJcfv5fp4QtlvAEzx4BtG0/Fm0tr4szoinX0U7g56VON2HsHjfqnIwWN32UKjr4cZXQBlAzZ+vc2EabJmatbq1kRMSfh+3Oo//wnf1N0VoSQFipoNau8GS1iCmcBx7OaO9Cvb6rJ7MwZA5QZfD2PWMvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707985275; c=relaxed/simple;
	bh=p0rW9PHSjls5IMBOSFlbxJHTFDsIja4DXqJ0rRyATWA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jkzPkIDxO/JMosDqGWQLoIz/HfjebfnWyMu+0r8vL2vzr4biZPl/w8CTjr/X67WFQZbY5Cttnx8Ojd08cLVbE6gHiLPY4vMzyDrMvLka6zqmmPxAwJeIYcitkt+fCAKkt6mFWw9Pk472kEM7BBny249RZfP9mhd5CPBY9nldQoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fb+ADIvM; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-563bb51c36eso211188a12.2
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 00:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707985271; x=1708590071; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QvT/wcQc5j++kaaqRgB4CtTRwkDywujES22YaF5pKPM=;
        b=Fb+ADIvMIt6tEOBvhs57VHE9vQuSc7HWS2nBez6XNVSJXqSxFBYIlDwh+qteF5sKlF
         9M8vzZbljQyh+Zpm+zq7QvkcpPA0QykIuukr5Wgtq4FjEB/fhy3jfkdlH3obezHEYQIA
         HKp4zzBYy/dA4v9StHuHKcJY+0NDlX1WeJnyct+Oy8XKljHjAYf8IcBBU4aD1ZS2p2jv
         k0/kBUro9AF/NSp0Yu0CA2dVv23SgJknROMTQEeIw7l1cxY8QVhPbq/GJxYywM7uACUC
         pfYMl52VovYAbfwYzcYP18JkS5A2ad04a5uk6F6aQHrLOiRR1Ttwl0WeBhyQ+YvGMkUv
         nGBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707985271; x=1708590071;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QvT/wcQc5j++kaaqRgB4CtTRwkDywujES22YaF5pKPM=;
        b=Q4VQ4k3rF60j3qEqS6+0cxFxucXnw47ndv51G4igzNHswunZdD85oJEskLFet1ETwN
         ZF2SMD8brqYlBO9Bf6+EXT8Tfp5tEewXi/1TRy6ZN5JbangY/9X/vSJsmVMWF/2kAQRx
         Z8x3lPksahRGSQfhUz/lCHz7ysYaB/IHh4ahStweKUQ4Rurhs0GBEWmoW2pxPuRYWpzP
         F8XzfjdC3nMy5kLgqo/Eiz3p8rfNa/JSDhZOl++Y/dQ+3oyXtnNnIV1RQbjahCpbPK6E
         z+L7ZAwffWrUKshEek0skMZj//AvY99O4zoVfB8PifWn1RFimxbsa3uN0Q4AfzVIqB4P
         6MIQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXzF6wFPi638mXCMEzHLoEU612ES+iAuXYMEBgCJVmvjpaQBBoqSFgIPesUcLGRPjIOh1RnbLeIeg5IGUZTd7oVWWqz574VLhKpg==
X-Gm-Message-State: AOJu0YxIg6P45hRicp627fweJezoxqO8TDdl/YiJbReSmxrJA3un8aSh
	+X/B4PGEvbl/u9BwYRqcEdYBlQoHUQBOO65yKhf/h031w+vmROSsn84CNmL15mmK3WnAFo7kPdn
	A
X-Google-Smtp-Source: AGHT+IFlDzBvcBLha/q5mXvwtJ3F3GH7APScXRBIR+Jqt+zAVCMF0GCuPOg6q9mbFUg69ane1ipUyw==
X-Received: by 2002:aa7:c88e:0:b0:560:3a3:0 with SMTP id p14-20020aa7c88e000000b0056003a30000mr951071eds.30.1707985271538;
        Thu, 15 Feb 2024 00:21:11 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id v12-20020aa7d64c000000b00562156c563esm316898edr.33.2024.02.15.00.21.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Feb 2024 00:21:11 -0800 (PST)
Message-ID: <fc325835-6fcb-4fac-b907-93a95d8d6d7d@linaro.org>
Date: Thu, 15 Feb 2024 09:21:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 14/15] dt-bindings: auxdisplay: Add Maxim MAX6958/6959
Content-Language: en-US
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Robin van der Gracht
 <robin@protonic.nl>, Paul Burton <paulburton@kernel.org>
References: <20240212170423.2860895-1-andriy.shevchenko@linux.intel.com>
 <20240212170423.2860895-15-andriy.shevchenko@linux.intel.com>
 <ZcpSDOk-IQVasHud@smile.fi.intel.com> <ZcpSaHW-RQ3dzywP@smile.fi.intel.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ZcpSaHW-RQ3dzywP@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 18:16, Andy Shevchenko wrote:
> On Mon, Feb 12, 2024 at 07:14:53PM +0200, Andy Shevchenko wrote:
>> On Mon, Feb 12, 2024 at 07:01:47PM +0200, Andy Shevchenko wrote:
>>> Add initial device tree documentation for Maxim MAX6958/6959.
>>
>> Oh, this is an old version :-(
> 
> Here is a new one:
> 
> From d8c826e06cf9237cd5fc6b2bb0b1cac5aff4fd8a Mon Sep 17 00:00:00 2001
> From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Date: Thu, 8 Feb 2024 17:23:38 +0200
> Subject: [PATCH 1/1] dt-bindings: auxdisplay: Add Maxim MAX6958/6959
> 
> Add initial device tree documentation for Maxim MAX6958/6959.
> 

Anyway you need to send the new version to the list, so the bot will
test it.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


