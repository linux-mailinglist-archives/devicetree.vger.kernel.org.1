Return-Path: <devicetree+bounces-192018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A0BAF12BE
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:57:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B877F4E1726
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 10:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1634264A84;
	Wed,  2 Jul 2025 10:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="avtyLTtJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE32264A97
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 10:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751453775; cv=none; b=qirJ5eN2wBKc2agYpwvXDouFQIFaeQZF5KIscnrrlhS+FM5lplUu6vGEQEIWohIHz+bsc5jm1TMTlkq45AjSkVaKpWCFMN0VKSf9iKfeQOTwKW4qfUtiI+xPwpP1MrUq7KUIPDATMrIzcgHLBDPeAu3Np+ebx+Dl1XGUZIJ2T1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751453775; c=relaxed/simple;
	bh=yz5YFA4oK6aUwp5EM6RoGwk2x3CcGuJZ9jnhzV4Yj8U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UFWfhbTWw+mJbDch+9hnNvs4DEn9rrbJuH8eaWPHZFUSNpIGVD7fCG54HYRsSxtwUVyWIXpXRc3VIb0TdbpZKBfytk/oS+lKbxppeb3dObNzYCKWFx1RhoW9ndFn0voka4bAIOKAUzc7ss3Q448E4IvN8x2+f6gLp8NKGlq1BRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=avtyLTtJ; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-875ce3c8e24so214678039f.1
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 03:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751453773; x=1752058573; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eVakVqHDVi/nEEBTUBbK2KldnbMSaWZ1ZSLAJh1Ij5o=;
        b=avtyLTtJ7LMiuKKzhuylDVlyQY6V2TLEv1el011c0IpUdSs8kvL6eoi2xpYuCdDOXE
         x2qAnkPzctJiiv8Ip0DBvlIl5GZFKNsOmWWZ2ZgUId0pmpqq4KkTNYQU+tgKXkCc3cKr
         7Jk3l4twwf26lcEcvyNzJVL3ups9SlrMI1NvnkJWL7g0qTrnmX159DZbzPSrxQFhgWx/
         ++O4WTsxtfGikX9ImQILCodeFMvFBwsbAfsJEoQX8ZJ1iioIg+dQmjidUojGWFRye7QZ
         9MdLKCRzmKJ2/WASq5/p1QuE/FA/D5lyCmG07Euuh4JSeA/gQWrbwq+8mP11uYaNzvG4
         DpzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751453773; x=1752058573;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eVakVqHDVi/nEEBTUBbK2KldnbMSaWZ1ZSLAJh1Ij5o=;
        b=N+Pi0CmCN9ujzga8nli9EiFDhKuHyWuyqJ4KfDXd118HxJs6tWvONIR7yd5x9sK26l
         JlYkq8nNkN+uFMy7v5cX3MxpvVO+XbIKEF6eQvbTbchzatYVFQzC2iLgtrEn9zQkmVzd
         ux4WK6FvOuDrdQi1UuqxtJj8vIp5ik/eEWXea2Em7nB4H/vbcAnE1qBvPTQ+vUUtJSAH
         19a8pqSsRlrUVngpaEaY4P6YQZhrpMdneqfb7bIuxs539RHTOzKqa9BViZzFNavtYniK
         eS+B0GAZE+punfn2z2oPhKY2REXLr40Laz74AwACwOezke7M6nt2fz/e+eDRzeV58DM2
         q1NQ==
X-Forwarded-Encrypted: i=1; AJvYcCV09sql3BaswLFcTT2ZPP66gOhnU+/bWAfkHoIZHyGZ0lWbCEOmcfYxPV+Z4ztT+jKhEcMvWi3ihxGB@vger.kernel.org
X-Gm-Message-State: AOJu0YyorE9FksoxKs4MvVKYRArIuPPmtRbQKPtUDEYggK09M9DmhWKs
	JUDWTFmY2d2Xrzrbz57tiNnGRByAzC/ogbUUT/TXyLsbbo2VOMIBnueogHXc9yR8VTk=
X-Gm-Gg: ASbGnctlpgZ8DDCCTl3cscCK+ZufVWlt9mlqKxSg3kDakO37Y9hvKZPivgQkqlTOOrE
	jxxNJK29pEYB2qXQ4agl99tDh1TDXgb+EwMiOummkBCCX8fLgox7Izd9dtTtL1azPX8xo0ypTgK
	lPE2vW+lgey5xzDevBh+jz2IwWP/ijgAUxNIsiqRXycMF9ZKqkyQKaSCok3wwDxqPq/Zyl1qfrN
	KhIHNbCmkHv76M2zSci5BW1P0gXCmWSKKIcxdj5asjh7u/nZUy9/2SHEKtZXzvxp1NCFcDWXfM8
	BQecsW44fy7oDPfOTU1w4AGwCnQszf1qrzh4MkJn37v4yBf0AzL8180KWu9D2dpnruZstzQocAK
	Afc7APcjeichieUcE4zszR8kNsw==
X-Google-Smtp-Source: AGHT+IH8nNKJXNfh+T2vOZJlqIemJT4UY7Zp92Fh4jhfNOQw5R6U/NR89uGXnsLbbnrSsXhZHL8VPA==
X-Received: by 2002:a5e:c641:0:b0:86c:f0d9:553 with SMTP id ca18e2360f4ac-876c6a0c90cmr288271039f.5.1751453772830;
        Wed, 02 Jul 2025 03:56:12 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50204aa8a44sm2926145173.108.2025.07.02.03.56.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 03:56:12 -0700 (PDT)
Message-ID: <1a88fde8-7fc6-4f55-b25b-cd67b72b73d5@riscstar.com>
Date: Wed, 2 Jul 2025 05:56:10 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 0/6] reset: spacemit: add K1 reset support
To: Philipp Zabel <p.zabel@pengutronix.de>, Yixun Lan <dlan@gentoo.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, paul.walmsley@sifive.com,
 palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, heylenay@4d2.org,
 inochiama@outlook.com, guodong@riscstar.com, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250613011139.1201702-1-elder@riscstar.com>
 <20250618111737-GYA157089@gentoo> <20250702061717-GYA304216@gentoo>
 <0580d4e254705be3765be168ce17c8a1c2e12f8f.camel@pengutronix.de>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <0580d4e254705be3765be168ce17c8a1c2e12f8f.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7/2/25 5:14 AM, Philipp Zabel wrote:
> On Mi, 2025-07-02 at 06:17 +0000, Yixun Lan wrote:
>> Hi Philipp,
>>
>> On 11:17 Wed 18 Jun     , Yixun Lan wrote:
>>> Hi ALL,
>>>    As the reset driver going through several review cycles,
>>> it becomes quite calm down now, I'd like to request to merge
>>> it into v6.17, because various drivers (pwm, emac..) will depend
>>> on it, even in the worst case if there is problem, I believe Alex
>>> will help to address..
>>>
>>> Hi Philipp,
>>>    I'd like to query if you willing to take the reset driver -
>>> patch [5/6] through the reset tree? It sounds more intuitive,
>>> which also will avoid potential conflicts with Kconfig/Makefile..
>>>    I've created a prerequisite immutable tag which could be
>>> shared between clock and reset subsytem. It's tag -
>>> spacemit-reset-deps-for-6.17 at SpacemiT's SoC tree [1], which
>>> effectively are patches [1-4] of this series.
>>> But, to make your life easy, I've also applied patch [5/6] at tag
>>> spacemit-reset-drv-for-6.17 [2] which has a small macro adjustment
>>> requested by Alex at [3]
>>>    Let me know what you think of this, thanks
>>>
>> Just want to ping this, what do you want from my side to proceed?
>>
>> or do you want me to send a more formal Pull-Request for [1],
>> then you can apply patch [5/6] (still need to fix the macro of [3])
> 
> Please send a v12, so that the latest modifications are on the list.
> 
> I'd prefer to either pick patches 1 and 5 from the list, or, if you
> provide a tag with only patch 1 to be pulled into both clk and reset
> trees, to merge that and then pick patch 5.

I will send v12 this morning.	-Alex


> regards
> Philipp


