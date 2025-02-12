Return-Path: <devicetree+bounces-145675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF58A320B7
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 09:15:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF54E3A5D89
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 08:15:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1D5204F62;
	Wed, 12 Feb 2025 08:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="i4xVd5f1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85EFC1E9B3B
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 08:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739348137; cv=none; b=WM86MavMfB6rroJW6KZ7jV2fQUIOO5N/8iaIEW/vjRexLOOW5OxkNYQQzltg3epOGly9MxtZnxm3VK8DRw5SVWh/Rbj/D1xG2t0NPqEHzCVlLhi8aG4L3W8sfcUSovWriFh3RD1pl9rlzSef8c6PdJy0AG2ySt3LFX71GxZyxI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739348137; c=relaxed/simple;
	bh=pqSWrSKDZu2W3AsjSYgllmcKNDjNEXWE7Ff4oLEDdIg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H0zxy1SM82iY0EnknFkuLDicT+n9pIFrdNUqnADf9saj/UtoYCd+6efwho8HAmZeqsIiWitatGQggl6dUjF/hmHhDKX15ME+o4SJY6IBPtjlaoRoFi6v1zixgeK9mddyuvnGfNZ9FoEGiKi5/1gFz+enfQQGtwhgnJ1tUlCV1ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=i4xVd5f1; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5deae16ab51so942189a12.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 00:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739348133; x=1739952933; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OqxADw0mM/35GjV5ECvP4wRGY3fCb1JBuXcZqTu8EFw=;
        b=i4xVd5f14CB9wxl+nAc9EGUXVxVSLuYwoNivnE6JYceGuyzJJhV6W80E4pp1eVyWWG
         bnt//ZhMCzLSUWHE8URMFc29y/CGuSgi21m4hIkrrFp4httbU82kcs9alwJfutWGqv7m
         HbWrb8rMhF9r6+Ngu6WtSPhQr7xLMsBEe5OaKAFMv2CLkhKzZV56GWb8tRYYptMqBniF
         B/sPPRJTPBR7aceeiqsscu810IebLyQGyjtrlwDZF1TC/sqyfklom+sd0XVotsthwAzf
         5P0Ez7IzQycjzZbtJldoAyQ6xzW2fg7W7NjE3/xkoEkJt2W5M/GMUHBgY3xn7IIgL0k2
         x4kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739348133; x=1739952933;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OqxADw0mM/35GjV5ECvP4wRGY3fCb1JBuXcZqTu8EFw=;
        b=jrqxipzxxbeGqN3gAxdIQGV0oVmCxOVshYNl0zqcF9YfVrSBDosBuBETgzm1hJ2E5l
         od2ba7oF+9Sux7X5t3q7H5Q8LNBZkvQg9HxPLmu6vppa2F2SzbHW8pV8RjPUckNSIZk6
         wuhogzY75bTvePKUVvPDlWHdy9m5Xy9tR8DpPFMsraZG2D7pPGCg8sGVJyFNie6A5c7N
         kqSwacYnVFnOQ+4JjjR1+Sb9586Isj7USDBbpOwuHGyIE6c6gq4xfVYgM4OlB6XZYup5
         Cijj/V/AGa0TLPDvdeqJHDpQdosEMJ8l9RUilvf4S7CsUPdv4wawwJaNRa9ZsFJhEFs/
         pmvA==
X-Forwarded-Encrypted: i=1; AJvYcCVmFuiNMhWldZCI60xD/5D4LcVgtlZKCWkWFlRwUFC/p59xdXiyKKHHV+M457pKrcFUnaidb5vby8s6@vger.kernel.org
X-Gm-Message-State: AOJu0YzXf+vlDQAu8uFx8imtK405qV1J+fQzh3ciw3eGbPQSRGoWaul6
	SWtJAlxt+7gl0ZwP4ZLOuJAJS3g0tl3bW+bavrL60rjNHgoBi232OykmaJwva8w=
X-Gm-Gg: ASbGncsTCUVTKqC63M7kRfipyxtz682lAwaW15pgv0WIeE6GiqSxTKgesaDPAvS18Nw
	bPK3tn0auuPieTJKOU/sUemrjPhTJ11eOgpNrOlLc8wxcWvnqInmyGWOgTb513/HC6oQJbEO3nS
	Z5toqucl/nzEJ03HVDFgX0tf190DWl0COkSnUB6MbXYA3mG5oAdWq9NeF3hi05B5eLIOU3PI3rx
	17vMKnfdvkMdV9K5HrGQwVuhev3YfhDv8Evlkio0wmUPRE/jv+26V47+3n25lOAGkbJJ3BDS/tp
	iYl78oP1rgNDKTdEEyC3nWrP
X-Google-Smtp-Source: AGHT+IEbwR6Lyd/Au1yiix8z7N9e//5C4qN6OPaROOH+JFMvGJ7S7t8yx7MVhrpHdvoBh0/u2cudOA==
X-Received: by 2002:a05:6402:13cc:b0:5dc:caab:9447 with SMTP id 4fb4d7f45d1cf-5deadd9d336mr5364745a12.18.1739348132467;
        Wed, 12 Feb 2025 00:15:32 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.173])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5de44e4bc17sm9802856a12.70.2025.02.12.00.15.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 00:15:31 -0800 (PST)
Message-ID: <833f642e-a4f5-46ad-8854-0e85598d1be7@tuxon.dev>
Date: Wed, 12 Feb 2025 10:15:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/15] ARM: at91: PM: Add Backup mode for SAMA7D65
To: Ryan.Wanner@microchip.com, lee@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 p.zabel@pengutronix.de
Cc: linux@armlinux.org.uk, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
References: <cover.1739221064.git.Ryan.Wanner@microchip.com>
 <76a89f1ae5e9c4d337c2a28e4b1d0e5cef63e5fe.1739221064.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <76a89f1ae5e9c4d337c2a28e4b1d0e5cef63e5fe.1739221064.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 10.02.2025 23:13, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add config check that enables Backup mode for SAMA7D65 SoC.
> 
> Add SHDWC_SR read to clear the status bits once finished exiting low
> power modes.

Can you please also explain why? From [1]:

"The text should be written in such detail so that when read weeks, months
or even years later, it can give the reader the needed details to grasp the
reasoning for **why** the patch was created."


[1] https://www.kernel.org/doc/html/v6.13/process/submitting-patches.html


> This is only for SAMA7D65 SoCs.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  arch/arm/mach-at91/pm.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
> index 1eec68e92f8d8..55cab31ce1ecb 100644
> --- a/arch/arm/mach-at91/pm.c
> +++ b/arch/arm/mach-at91/pm.c
> @@ -707,6 +707,9 @@ static int at91_pm_enter(suspend_state_t state)
>  static void at91_pm_end(void)
>  {
>  	at91_pm_config_ws(soc_pm.data.mode, false);
> +
> +	if (IS_ENABLED(CONFIG_SOC_SAMA7D65))
> +		readl(soc_pm.data.shdwc + 0x08);

Can you please add a comment near explaining what 0x08 offset means (search
for "SHDWC.MR" in this file for an example)?

Is this cleanup needed only for backup mode or for all of them. If only for
backup you can move it in at91_pm_suspend() after fncpy().

Thank you,
Claudiu

>  }
>  
>  
> @@ -1065,7 +1068,8 @@ static int __init at91_pm_backup_init(void)
>  	int ret = -ENODEV, located = 0;
>  
>  	if (!IS_ENABLED(CONFIG_SOC_SAMA5D2) &&
> -	    !IS_ENABLED(CONFIG_SOC_SAMA7G5))
> +	    !IS_ENABLED(CONFIG_SOC_SAMA7G5) &&
> +	    !IS_ENABLED(CONFIG_SOC_SAMA7D65))
>  		return -EPERM;
>  
>  	if (!at91_is_pm_mode_active(AT91_PM_BACKUP))


