Return-Path: <devicetree+bounces-85428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D6592FFB7
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 19:25:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6D22287CAC
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 17:25:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEF8D171085;
	Fri, 12 Jul 2024 17:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="LzQ4is3I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB601EA90
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 17:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720805100; cv=none; b=WHQOIW4vNJ94EmkH84oj7t+mx4jasb8MsprFjppCNvsNUxrD2/fsJaFrOBF8xnWEEiBypCbFWqxlu0fHdl0L4Y+X8F3g+9Y6DLfTO76ylcSQUrb7X0tiXFE9+WINh0Exe2PybiJ/H7wufr4BOWispEm9bKzavC8SD3/wrGuT1tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720805100; c=relaxed/simple;
	bh=oItytILQOCwm+LxnV+klJYRd5+wEjT3G4pzPFdDn7vM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a4SAhRL9jWENrl5TXz+YKzlyfO/SGE6El9c+JiRrXExa5iYa5NKmtilWIFodNnnMzzg2kqRg92wcSgbRdldaYw/SbqWxc4NhjdQBZ3mwAzJ6pjy9aa59w//Q45m5MFgf0jW+7n548Nye7CZ/9GBIo0Bbr3COMBmnH9Q6C0zmaa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=LzQ4is3I; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4266ea6a412so15592365e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 10:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1720805097; x=1721409897; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/kcUOj+B7ix4wFrjmiIqRB4s9K/GptfFcWjVq2YUd68=;
        b=LzQ4is3IurDoCi3XW0F4F9lk/YERMzt6QzeJ3GPRsPjE2cXMgaFewe2/YPfHkYG7DG
         GZt2zEhcIIVDxsxZEjWctCQ1VWGjOGh3O0XpdAKLeSoYyR/Amfp8fO9qvFPrxIcoOCJv
         imjVXsEz26M2lfPQGK540oY+yg0e8Yg18lJx5uNOb8ZJfMqAkjBfO8nHQJ9292vxqASp
         qIALyw/2DuYB31gv03kx16mq7Alq8iioCJ4Ac3pHChftZdI1w1N9K18HBpYzblwWCT+i
         i5gjrRf+0vHhmx4KBV9ygTA4L0pgA4eJyNSyl0YM4im0G9g5Ufdobp5djhBVSgUjvwYe
         xdGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720805097; x=1721409897;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/kcUOj+B7ix4wFrjmiIqRB4s9K/GptfFcWjVq2YUd68=;
        b=LteOZmuMxt4e7Zun5pPQFqJ3HK6TdPwKMs22730hw+9J72XTFk0zfW3njNACTxbTEv
         3fG1oBsgd0pscqOSk5JJ3I0egDkrQe+xqmJfuhsqOtgJHG1MJB9ioL8TPBHCX70iDWj1
         H68Cu+4wel8r+sCqEFhWRsAOln/jNpnm19cHrQyHHht01U4z3zvYcstQ513yvZQ1rHNq
         kmrNdh4Q4yImGT7QhnF76BHI5JUHfNGXTLVu2A7AhABizi+xMWwxrI2sOMkW6mksm1eD
         A2eMqBYqlSSQnllbDGxokgRptu/NlMv700ObBI5pTCb7lHNJEYQeDxwwmVU+YlXXrHiX
         HBiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvvJGGPzLECHb6bo5P69xAPkY5wcnIP6oO95bhx/tz39E3FW8aHu0hFIrUdXiUmyvjuCJCCGCLtlqE9TalekkeIPjBavfUn5JIVQ==
X-Gm-Message-State: AOJu0Yw5wrNyPDBwFdymxbab3bOt5UaouW1xk4CbUI050xuVoWsskw7Z
	76xsxYug54whF2n1eWpr+RMbGn0WBqy/KLKdPzC0Hc4apLr6Cepl9QX0d0iSjcE=
X-Google-Smtp-Source: AGHT+IEbwv2aqYJrQ4eYr+eTCvp2ZVYaXErHbWTEnoJWSTMpnS3FoLzus6WA+pYLiP74DOnPbffshw==
X-Received: by 2002:a05:600c:1505:b0:427:98b4:624b with SMTP id 5b1f17b1804b1-42798b4628bmr39930825e9.24.1720805097322;
        Fri, 12 Jul 2024 10:24:57 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367fba1b15esm4218403f8f.22.2024.07.12.10.24.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jul 2024 10:24:56 -0700 (PDT)
Message-ID: <3ad435b0-c110-4254-9071-b2397cdc7f9e@tuxon.dev>
Date: Fri, 12 Jul 2024 20:24:55 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/9] watchdog: rzg2l_wdt: Add support for RZ/G3S
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
 geert+renesas@glider.be, magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 claudiu.beznea.uj@bp.renesas.com
References: <20240531065723.1085423-1-claudiu.beznea.uj@bp.renesas.com>
 <7f99cb63-0c6b-460e-934b-4e7e8d84bb3a@tuxon.dev>
 <CAMuHMdXN7xCtjRraTu=3JS6x8GCo7iuS40PVTN_DPvhA-AMqfw@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdXN7xCtjRraTu=3JS6x8GCo7iuS40PVTN_DPvhA-AMqfw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 12.07.2024 20:10, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Fri, Jul 12, 2024 at 5:39 PM claudiu beznea <claudiu.beznea@tuxon.dev> wrote:
>> Can you please let me know if there is anything you would like me to
>> address for this series?
> 
> Your series was merged in watchdog/master two days ago, and is part
> of next-20240711 and later.

Didn't noticed, thanks!

And sorry for the noise.

Claudiu

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

