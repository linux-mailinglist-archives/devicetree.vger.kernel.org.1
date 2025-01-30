Return-Path: <devicetree+bounces-141953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 869A3A23563
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 21:53:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BAC31188842D
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 20:53:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 682D41EF091;
	Thu, 30 Jan 2025 20:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ORNmLtNM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8017A1AF0C3
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 20:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738270408; cv=none; b=eKRBTBZwlUCLcWMJ43p0Ll/iwFYrmzEmVkBShpypNa/yJxeU9tgrBADwHP1lwZV1oRtxmFUjc6gecO7FFgyoWqxuhzvPlp8TMWHwnGDqj+rXPpHq6ctEUKDSCrO8Taxvm4shGCfIXx8p635/nEORqkMyh+iylIx3jf5rulmjtkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738270408; c=relaxed/simple;
	bh=1/BZyrdG523grZ6QfzH2boEwpXy3Xh7fkoqMrd98Pgc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r898DM88Rtdj5+GRMd8DlI3dVJTnjyAiJQf3FTe7SxZnooxLu9nWky5qHuNrZ+JwLRJbD7TZAbZx4uRjsvTpeg1UXTqq9msiPlSgHKU5/XtnMDYj6Ifh6ohK0eZ7IZlSFXH/81vjSWTI4TGCahUUb1EA1IfIw+gMxc6h0iFmm/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ORNmLtNM; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-385ddcfc97bso1020812f8f.1
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 12:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1738270405; x=1738875205; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ec98s6sSsx0UR0Kfm0pnIvUMmPvbuc2qUG4lSwDUwKQ=;
        b=ORNmLtNMubPeryAGPKzDzPhz+ZsQAVl3M3GUfYKTXqF2dKuz9PZeEF2bT+BuZVGxck
         1cfH0ObdYqiSHCtURfH7r4NtxC9pgLv+hbemKfd40cqAPTMpVq84MSyjWf9j0Bj8ioED
         n1metq6uMgSSh4xZPAlhSrk7XfKqsvTMy1yiM2FdC+EYcpKjg+Epn/569qKpHxXy45bx
         Ty6hjAY/hwleUY2elwQl3Sj+BPJRosfe954auPG9CIzPmlBthbNgEida+LLif4upFWhC
         ddUShFSfBH43rxDFxkzIgsgu/egrzZAmqf8jC4Xiy87EfDfa+xyxmF1oMYWGU+gkCDCM
         fq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738270405; x=1738875205;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ec98s6sSsx0UR0Kfm0pnIvUMmPvbuc2qUG4lSwDUwKQ=;
        b=XQeilWWttG78Ytn45V9ivea1Vq3zuFR7rJAc7wcKrscojzAR61W8VqRwdLpWfe329N
         tF43Tw+ySfJpQNR7Yzwhj75XixZOWwxCTlsTCe6YXFy6Kr4cBJ6/3Fldi1DT+bnuys9G
         TeZc2lF2IDgwL/wKDQN3v2vtF7iglrTyBR9HpMsajAGGuipVXB7utWGnN7/EW+UfHSlr
         1ggmWHkEJ/7iugKez29yQI0dX4SzbUVcG7e1iM+K0xNPZ0YwYeFbzwffa9LjLmZ5oMdX
         uCMSrY6O61deCIzqIfdgu8dHyo7g7W+OIJprMqLKrKtk43FNZNH1KxwOxt0uTUj7SBCj
         iBCA==
X-Forwarded-Encrypted: i=1; AJvYcCV8ST7YMZQcqku8JIk7T3+MpSechLwuCwNnWKJa/pdQNI6jPkPFtNBP3O21X6mjW10rqhnCRFDjSS90@vger.kernel.org
X-Gm-Message-State: AOJu0YynsfHqNilxYo79KRnIIh4E+uIza1RDwvMRmjNX5Zugyzh47ttw
	cPzAi5fntl8YvH94fmKxpKXqwDotzi12KZlu8GhsRegDGiSB5XkZa78bijEbce0=
X-Gm-Gg: ASbGncsnB5xBrvDRsISBeb2rWO2hIt8cemUPpFWcfjUiRGBjnzjNAfrX2Xp3BNO29je
	I+UFo9oh/2fnT0q6TB933gFveu5TYpQYqEm+mkmnPVGOhVxmHLAr0dNUL++CGCeSaBPoIj/0E2l
	tAbXgKaYuIrLbfXGRvEy2pW5jmA0m+wVp4UQFqb7zC1YTeLaPK1m1T2090lSxFagtjjfyXGvOnw
	D1VdHz7hVxoVvezBXzQCjwJ9VclIwLzVS6+s+XWoXHpynbKrqiMMgOYu/FytHxSVbRbrItmYENd
	fSIYCA+L92zear42W2/VhLBv
X-Google-Smtp-Source: AGHT+IF/6O8ZXA61LdSg0FqUiKKK/7fHOXHRr8I9s7+f0jQYC6+kW2kgrBrfA1n9/pzq79turnK8vQ==
X-Received: by 2002:adf:e591:0:b0:385:fb56:5596 with SMTP id ffacd0b85a97d-38c51944328mr4917084f8f.19.1738270404698;
        Thu, 30 Jan 2025 12:53:24 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.173])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c1b51e1sm2946779f8f.77.2025.01.30.12.53.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2025 12:53:24 -0800 (PST)
Message-ID: <98ddf1b6-1804-4116-b4e2-f54a62c27966@tuxon.dev>
Date: Thu, 30 Jan 2025 22:53:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] thermal: of: Export non-devres helper to
 register/unregister thermal zone
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: rafael@kernel.org, rui.zhang@intel.com, lukasz.luba@arm.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, p.zabel@pengutronix.de, ulf.hansson@linaro.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
 <20250103163805.1775705-3-claudiu.beznea.uj@bp.renesas.com>
 <Z5pkUNNvsWPjRQvy@mai.linaro.org>
 <65a16c3f-456e-40ec-91b0-afb57269ed46@tuxon.dev>
 <Z5tPR_tv7vWDkUI7@mai.linaro.org>
 <6ed7d545-82d7-4bca-95ec-95447586bb58@tuxon.dev>
 <b496d933-3c57-4b02-ab65-0582a30939af@linaro.org>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <b496d933-3c57-4b02-ab65-0582a30939af@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Daniel,

On 30.01.2025 19:24, Daniel Lezcano wrote:
> On 30/01/2025 11:30, Claudiu Beznea wrote:
>>
>>
>> On 30.01.2025 12:07, Daniel Lezcano wrote:
>>> On Thu, Jan 30, 2025 at 11:08:03AM +0200, Claudiu Beznea wrote:
>>>> Hi, Daniel,
> 
> [ ... ]
> 
>>>>> Would the IP need some cycles to capture the temperature accurately
>>>>> after the
>>>>> clock is enabled ?
>>>>
>>>> There is nothing about this mentioned about this in the HW manual of the
>>>> RZ/G3S SoC. The only points mentioned are as described in the driver code:
>>>> - wait at least 3us after each IIO channel read
>>>> - wait at least 30us after enabling the sensor
>>>> - wait at least 50us after setting OE bit in TSU_SM
>>>>
>>>> For this I chose to have it implemented as proposed.
>>>
>>> IMO, disabling/enabling the clock between two reads through the pm
>>> runtime may
>>> not be a good thing, especially if the system enters a thermal situation
>>> where
>>> it has to mitigate.
>>>
>>> Without any testing capturing the temperatures and compare between the
>>> always-on
>>> and on/off, it is hard to say if it is true or not. Up to you to test
>>> that or
>>> not. If you think it is fine, then let's go with it.
>>
>> I tested it with and w/o the runtime PM and on/off support (so, everything
>> ON from the probe) and the reported temperature values were similar.
> 
> 
> Did you remove the roundup to 0.5°C ?

I did the testing as suggested and, this time, collected results and
compared side by side. I read the temperature for 10 minutes, 60 seconds
after the Linux prompt showed up. There is, indeed, a slight difference b/w
the 2 cases.

When the runtime PM doesn't touch the clocks on read the reported
temperature varies b/w 53-54 degrees while when the runtime PM
enables/disables the clocks a single read reported 55 degrees, the rest
reported 54 degrees.

I plotted the results side by side here:
https://i2.paste.pics/f07eaeddc2ccc3c6695fe5056b52f4a2.png?trs=0a0eaab99bb59ebcb10051eb298f437c7cd50c16437a87392aebc16cd9013e18&rand=vWXm2VTrbt

Please let me know how do you consider it.

Thank you,
Claudiu

> 
> 


