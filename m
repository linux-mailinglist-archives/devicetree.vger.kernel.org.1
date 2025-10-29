Return-Path: <devicetree+bounces-232487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1428AC1875E
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 07:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A24321C271F8
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 06:25:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 128433090DD;
	Wed, 29 Oct 2025 06:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PxiiTm6r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C8D302158
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 06:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761719060; cv=none; b=jJsBsinoK45g3yTpn0n47OLT6dWHGpnRGt6cC4voJsTHCW3+7efbLxyw+29gnCce9nSt2/Fe/59qsDrfpeNd4IB+tVm4AiWVzvnt52+o1NjzoXTD37K5mJs6wdoRANujX4mANt2NFyU4kD2niZ3s0ZnpIsxfyyRpxupE8/JcUB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761719060; c=relaxed/simple;
	bh=BS78qzLC6Pbc2ow6QJKzzu9seEeWMo56OC/LqYiyfNM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KHxUgwrPYwaqPgbSLtxrOfOdxaQ7MpcJg/nLlEIbGnrHym/uwpN9jC9pY78sG2H4MYWrR0wvVv39fJbrm0ttIzOI+DuHB3nlVJYqBGMfqYw3PzXMKZgx7LllN8Y/s8ERdxgQI8XmYyViGVkJdAHaeyliqunU60mopxERaZRP0rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PxiiTm6r; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5930f751531so1921692e87.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 23:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761719056; x=1762323856; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/E+ZryNph3yMx+vi8h4RvFoOJ/BdFIb+DDgg5r/sdBI=;
        b=PxiiTm6r6JbM70EsM8ypn0+FtMMn5Z79R/9YpBWR+cdjhNJ9+3rUweHD1mlFX5Sd9s
         lp+Daj9mwvauPzQ92WpQJqbILWq/c+BvFYAs64TWW+AXi19j+0BD3a2e/mjsBSqk12lI
         9z+VJ5E3I82crdKpzvoFaIdWitAPPjI/8E26+n7Xrhec5iuDVQHLXfksfj/QxcsSRWOa
         02lwWT4NhaYkn4Rw7W4bPWePQasO5Hyjrdj1qx5kcyzRxa+KfJSCl51SBRs9JWz6Ri46
         QW6toLKlmGwf90kfcOOPV7fzP+CEuSH/HS6O0Sue8LWRsLkBOph7SDtpGXLec3+GjPQM
         u+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761719056; x=1762323856;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/E+ZryNph3yMx+vi8h4RvFoOJ/BdFIb+DDgg5r/sdBI=;
        b=wYwL9PXlF2EFqZm0GfUJoIyF0hRvxdDcTSrHnuSExXDlyW6GnkroMX1C+Ng26xODvi
         QkFpgyIf94/bmeZ51ST9jrqp6FTQxjV2lOH4UYs7rgQNxh+5pOV3nrJlFbGbZcqiONBO
         Eo+E+61+4aKylX6FTh1tEp3NJJPKW7b4BDdce++HROE1suQafNha4xSpVqafRjeKePBx
         +pMF4qbv6OH6vKlj/GrX70sgiJNN+nI018CTc+iSn+QGxd+TmpPK0DAv/NrnWiWmhU/D
         WEjuhI5b9hd4nJmJ4DozTlKp73V12+4hyqCNXFZSYHHCZweg4ynjdN8cGm050TjXBR2S
         FZlg==
X-Forwarded-Encrypted: i=1; AJvYcCVzWy8oXBX1iheEwoXdoRi3Vd2epfq7M1Eg/QvFBedvvoL6C8YKxGYRqQLEp8Yy1OpFycwEuri+RR4j@vger.kernel.org
X-Gm-Message-State: AOJu0YxUal15UK/2mWzjPdAbcdJgAGrH4n0DQEj5G6OCWeIuRPdxvHN4
	/A7bEUeIbck0mIMrKJor4CKxo8TmaO6ZYpki5ANG4SFpmPta9zBZSwC/
X-Gm-Gg: ASbGncvIh3vZxcRiHcH6kRmKhAwSih5FWEDKc0YC/jZG97cNEdGOQDGII2Ps2e+Coy0
	4Dj189zraw/G4h5W138nZ8iZowtKbkX3pQS23HwqyBfLUbb35WCVkEMDDHRPAy+WS+veKnOIPZ6
	HNzcUH+uOuz+xDMGmXCX/p5+x0301LGtOOtUWeZFNhY6t1MkyW+x09ipcqoCDlPdn3shz/NhJ+s
	gcXXTN5OE0qqplOHmxmUZjQsdmSeM80l05Pgdtjzth/4ZmxZqO3BKeJ8Q+oog7hVAA9ncSHnBTV
	hPWAVVrgh5ZeoPxeFOp5GDgTy9eE25NYyMHFSTSLZ96p918dn0Lw7j6JgfeVmyjTAL6+BZ2SySM
	v+M8kJQKqrAtHPW282rxKspUX2sAd2wkHskjhrceHnW31t4GnqirQObJNiHs2j+v7e+K6W9FLCg
	KdbEbWHWcSD7353WoOvHmmPPN8ekIUNHTj/l3HUpi0426pxMnaHLHw9oO7yg==
X-Google-Smtp-Source: AGHT+IG8NXe1EdGhVyolwk15yW6Efwh7ekc//1eGyM0sEnTM8+C2jzj6xxj8v4NnHT31PN5hE1LQpQ==
X-Received: by 2002:a05:6512:104c:b0:591:c6c0:9af2 with SMTP id 2adb3069b0e04-59412a0cb9fmr596126e87.54.1761719055744;
        Tue, 28 Oct 2025 23:24:15 -0700 (PDT)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f60ca4sm3577871e87.62.2025.10.28.23.24.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 23:24:15 -0700 (PDT)
Message-ID: <3d58eb1e-7889-48c3-980b-bd2a98368a3e@gmail.com>
Date: Wed, 29 Oct 2025 08:24:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/15] dt-bindings: Add trickle-charge upper limit
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andreas Kemnade <andreas@kemnade.info>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-rtc@vger.kernel.org
References: <cover.1761564043.git.mazziesaccount@gmail.com>
 <b13b733e7e0fba05652f49f727412fed9e0ceb02.1761564043.git.mazziesaccount@gmail.com>
 <20251029-adamant-mamba-of-patience-cddb65@kuoka>
 <b30eed8e-c8f8-4077-9e6a-0217c5827981@kernel.org>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <b30eed8e-c8f8-4077-9e6a-0217c5827981@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/10/2025 08:17, Krzysztof Kozlowski wrote:
> On 29/10/2025 07:03, Krzysztof Kozlowski wrote:
>> On Mon, Oct 27, 2025 at 01:45:05PM +0200, Matti Vaittinen wrote:
>>> Some of the chargers for lithium-ion batteries use a trickle-charging as
>>> a first charging phase for very empty batteries, to "wake-up" the battery.
>>
>> In the few cases I was dealing with charging circuits, trickle charging
>> was used in context of top-off charging, so when battery is 100%. It's
>> also documented at Wiki like that:
>> https://en.wikipedia.org/wiki/Trickle_charging
>>
>>> Trickle-charging is a low current, constant current phase. After the
>>> voltage of the very empty battery has reached an upper limit for
>>> trickle charging, the pre-charge phase is started with a higher current.
>>>
>>> Allow defining the upper limit for trickle charging voltage, after which
>>> the charging should be changed to the pre-charging.
>>
>> pre-charging is the trickle charging, no? Or you want to say that
>> trickle-charging is pre-pre-charging? But then what is pre-charging in
>> this binding?
> 
> 
> Now I see that you added initial trickle-charging in commit
> e3420b49949c79d6182dd8128fa7a3958da01b07. I looked at TI chargers for
> LiIon/LiPo batteries and few popular models use the same meaning/cycles
> as you here. Probably in LiIon/LiPo you cannot or should not use trickle
> for top-off charging (CV phase).
> 
> For NiMh these TI chargers use term "Trickle Maintenance Charge" (e.g.
> bq24400), so in separate or this patch please also clarify the
> description of properties that this is trickle-charging for LiIon/LiPo
> batteries, so the pre-pre charging.

Right. I'll try improving the description. Thanks!

> 
> Best regards,
> Krzysztof


