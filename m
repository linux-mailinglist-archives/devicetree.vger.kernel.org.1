Return-Path: <devicetree+bounces-216787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 59123B561B7
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 17:10:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B89281BC2363
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 15:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5679C2EF677;
	Sat, 13 Sep 2025 15:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GkowNWwM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6130347C7
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 15:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757776210; cv=none; b=W7XcSBMPouTAafEQYoq+Y28t1cSn5RcHaRtW4WJeAcRXRbKdPHiRyL3LDSp4S2k47/cxogGodYw0XR/BMQlBFGycMeFgWPKIZGbHpIJQ7XK+ZQP9jnljOlDVsd7CiKLOiUD5Nu45WfiB2Xll6BxxbYjfnUbyYC38edf1tpspsC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757776210; c=relaxed/simple;
	bh=MJf+OC3maX2ZmdUOw7mY7bTSxAiXKJBHLm8Y1+eYoXY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sZIgAo6w4AamJ0vyIiNh1+UaloHWk9btXJINdP4AGittxPchsHv4CJgnfzY8GBLMin1IXfqmgrlcurIDgOtWdLIr7u8KJYYGKGrI2BfWEOThABCe+jMEtCFGBYIkRF4mLBUagk6KbbCpS1yTM1hCe5m+2YPUmyg2hvIgtItNYMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GkowNWwM; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-32df1321879so981343a91.2
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 08:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757776208; x=1758381008; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XzdPa1s2Ytoialc1u1fhJTSVdVzF4hVkQANScdjlGlw=;
        b=GkowNWwM2UO5IGbP9o7MyYDkosSehC5DC28O7ahrgker2plf4x5tUJ1yzHTBTZDqEF
         Nb15GfEvJGsN+nLWtx6cz/uHFmWLYI+SZt2v62RSK5HSQkTki0CFRQFKEIlnYiG4SRax
         UOUCRYH6x+7tw0pv5xGhFGgS1dBVCKuEelKvclzqbYr6bPz1tKfGw8FljajcLvYqM6Gu
         JcQLtCGpbc758pTtkju8sweD6VQC9vxGvu5lMrR50w4TQpc35YPUKFuq+8MdgpJrAzbu
         pZCYB1I8GJf2/29i1uap9+DUJgLd0OvZ8eA4FarrOu5uCPF0OPTb/+sxrIRYGJfMYc5D
         Sxeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757776208; x=1758381008;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XzdPa1s2Ytoialc1u1fhJTSVdVzF4hVkQANScdjlGlw=;
        b=kaXhw18UVl9tWgM6XlPT6yCPTY/RJmkAGhltpY9Xgkh+frJsnOQHsx71DMtdWwnTNO
         +06Iw25TMfr38XdqbcNfhKo5INVRpBeIWDIUHBtUgP2PSPkhezHtIpaw2VsyqVqOpqEj
         wnbuZ7Aq+fOHiKAB5YTD7TfOkhlGXXbcyOgmmfDZSjzsj34VHdxZRZMNn0CUZa0dpxE4
         RxD8hMlsBFQZewqMP3UFqXd+LA6/MJhEYHBAyyowJzfDvjsH6qgM7HX0CqXdvy9APkDH
         cDqBPzurBa74WtuQDpxeiYGDryB6+uZQaDnMElMWughaoV5G5OXywPvdI7sdY3ayldC9
         ezqg==
X-Forwarded-Encrypted: i=1; AJvYcCW30qsPxfOUXJFcGTdcQi/2PRVxBxpp3VzS5Dhn1p0FdwCNIZrZkq3Q0hjqCVAZVoYjCscVFeH0sXzq@vger.kernel.org
X-Gm-Message-State: AOJu0YyHC+6Ock3oghPOol+4wVNcV8RG3pf8wz+YS3lPmS9jm21OPoV3
	t6+dlMXqXc2ao2OdzvgC7IaMSxL54GRCt2K7/vsMJwwKz9utUx4Z6y2C
X-Gm-Gg: ASbGncu92WiU4vp9WPRcfs6kZ+TkiRFZynKa7UPL8FFvL/7kJAIcVPIBbmTTuMQd1PD
	lWcnFa3Ufkifea6/3ebotElRUN3AtTghJ2UEwWLdRZVQJmI3Dzg94IAhh7NziyD+OMmYFvuqQbU
	dglevvPkM3rHcbW/jtoLnegBl5eIjOVouwEhsHuKEh8PN0K6TTAa/bj9OJfDU6t6WHF+sMi4nXS
	JwVcv6uoLnMNFzWz+sLyalhzgWTI3TOF1ThuUxX+Ds4XPMkEFXJiRY6dUGcNqyPjDfJtqiJ8fTJ
	HP9kBUQhgrIErO8zaSnkExKKt3yRl6cC2ygQtIpBNKdHTvlJTTkrrOPT4EUuHamYXWEVko7eSEg
	WPKr0ltMqg5BwhnKME+6tLPXWwekzAtlSBKX85SuWJphgu8YILsCI4m7npQ==
X-Google-Smtp-Source: AGHT+IFQLwKW78Eyf3cNt54Zk3w44x+XzWX4t92z77pE9LBL04QN3MjfIphxRI6bKsbhdofevXIVfA==
X-Received: by 2002:a17:90b:5750:b0:32b:cba3:6361 with SMTP id 98e67ed59e1d1-32de4f982bdmr7023218a91.26.1757776208005;
        Sat, 13 Sep 2025 08:10:08 -0700 (PDT)
Received: from [192.168.1.6] ([223.181.119.30])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607a4781dsm8798357b3a.33.2025.09.13.08.10.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Sep 2025 08:10:07 -0700 (PDT)
Message-ID: <3081647a-a4dd-486c-8a3f-c196580a9ee5@gmail.com>
Date: Sat, 13 Sep 2025 20:40:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm: dts: ti: omap: Drop unnecessary or unused
 properties
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Barker <paul.barker@sancloud.com>,
 Marc Murphy <marc.murphy@sancloud.com>, Tony Lindgren <tony@atomide.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org
References: <20250908-ti-sdhci-omap-v2-0-72927890482f@gmail.com>
 <20250908-ti-sdhci-omap-v2-1-72927890482f@gmail.com>
 <20250909-uptight-fluorescent-markhor-4639db@kuoka>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20250909-uptight-fluorescent-markhor-4639db@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 09-09-2025 12:50, Krzysztof Kozlowski wrote:
> On Mon, Sep 08, 2025 at 04:17:12PM +0000, Charan Pedumuru wrote:
>> Remove unnecessary properties like ti,needs-special-reset,
>> ti,needs-special-hs-handling and cap-mmc-dual-data-rate from the DTS
>> files as there is no user of them.
> 
> No user? That's not true:
> 
> git grep ti,needs-special-reset

Yes, my bad, I removed them from the whole node. I will revert these changes for the next revision.

> 
> Best regards,
> Krzysztof
> 

-- 
Best Regards,
Charan.


