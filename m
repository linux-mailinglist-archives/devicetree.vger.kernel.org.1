Return-Path: <devicetree+bounces-84572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBB692CCC9
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 10:21:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCD391C2208D
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 08:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D72A8624A;
	Wed, 10 Jul 2024 08:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QTYl3Hc5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C022184E18
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 08:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720599681; cv=none; b=KphKHIRvttXEHC+8LhV4z729lc3QNBRxwvyEmV0VUs1P/gCOFW8o76zeh1LpdNvbKENEVpmoavriYmzWhuYU4Abw8QYNmCkO1x7E0t2x4Dar2oPLHeKpFFCzHnvjhUyyWOHjoFOSIKYkqMjSRB9PWJjvBTlLGNwhba0x36SPgV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720599681; c=relaxed/simple;
	bh=DPUABfizu486Q5eVvbw6KkdOv+B8Z+bW41UY+AodGpg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JEasnmuAkhA09IOtnUE6xuxCoVW5zfQz97450fk6mFjOGnIRLFbk43D8SvjZbWhAkXzG+aL03FKvHA7xFjwmdhm3Vmy/rioh8lC9fKDxZoOfR/n6K2yr+M9pvYaeMABJkGo/A4OxWGMXXMnGvsxLtN7KDSpRoVE7D0MQHns6UNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QTYl3Hc5; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52e9c6b5a62so6576737e87.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 01:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720599678; x=1721204478; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ejCg0yAtNCGL4j9toWYxPv6vOenYQMFwdFWp7I8WoIw=;
        b=QTYl3Hc5Nwhz7ODrp9bBZR+HIiqBI/TyonBIfOc8OIE9tug7EPvLZzbWyhyRR7Qtmq
         sYGAoOAN3ifzprZOinuYmQgkp7+R3sbJ2o+1Yq7m9EcogNrN8/dwsdeDR37mykZWjnNM
         qldoeBrmyruWE0AI9F7KFlk2n9Wv0hZWBQc4cSUzYJie0Lyipa+G6VaElh9HrkuoXCrI
         moViggghdWAUwL0vllZ4FImRcHIOkxT3sHEDHyBV2MuVXfA3+ZB1TDOvX0qEpS259x6W
         hOL8slgQx5tZa76IxTwYcHww11HrpJ/xraIN7Ps8vk4Wxu16I+5zIA75lUyh97u2d9ex
         K0gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720599678; x=1721204478;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ejCg0yAtNCGL4j9toWYxPv6vOenYQMFwdFWp7I8WoIw=;
        b=ajrwCJ2gRKRqR/ED7J6O5nauAzP6UUl17JMI8qw1gSEg/HxoJ8OMGTnQmJU2qksJOJ
         BC697l5njQDRvm+SZBK6dhh/A5tzVcotritA6bhvU9LRzZ8/R9I0f2tLfcudGbcxM3fA
         YpSaX0Hiw0Yg8VrGMZsEf8pmwEpttqwYxnv/RCzuQT3JWnojoSeaL5lXkS/fvM95WPkW
         DwELWDURjKgE6HdK/9eZVa47NysOc8twThI8LAHxCigjbCBpkIOqHpfsb/apQFXZGbOM
         q/sNhkRVt85Rmoc87BmL+Y/J708HVn5lOtUexuSQHnlE6OUxWo4MOOoo4nc9J14GFbnD
         v66g==
X-Forwarded-Encrypted: i=1; AJvYcCVnM/3rMH52VlaBfuBhGfpq8PCXGa6VZ/L14HMp0NV+vlGr//3BSjO8/Ez0l/Eq+wIfcUhh4iUo3vbTEGB1fXskLaNTI0HRaE+1kQ==
X-Gm-Message-State: AOJu0YyNriFBLtwLJHJc1UrjdSkZdvvix8ezbASD1g//dJq6BtrgcI8b
	yjtpAqd9exqyvEpsv2K9l/aHJRznwwLDJp0Mn5MTZbDiJ+qbk8QMtke18GtnAuA=
X-Google-Smtp-Source: AGHT+IFR2VaiF8nRlz26qTf2UpRo4vfxDesGLvpWFLmdyH6ySWNa8QPtFyOYWwmZtI7XuRNLWt5ODw==
X-Received: by 2002:a19:6411:0:b0:52e:7f18:1775 with SMTP id 2adb3069b0e04-52eb99919e9mr2388589e87.6.1720599677934;
        Wed, 10 Jul 2024 01:21:17 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:6932:abde:fac8:217d? ([2a05:6e02:1041:c10:6932:abde:fac8:217d])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-42727805e4csm34747155e9.27.2024.07.10.01.21.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 01:21:17 -0700 (PDT)
Message-ID: <f1bd41eb-eabe-43da-8e6c-c6320f05ea01@linaro.org>
Date: Wed, 10 Jul 2024 10:21:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 07/10] clocksource: realtek: Add timer driver for
 rtl-otto platforms
To: Chris Packham <chris.packham@alliedtelesis.co.nz>, tglx@linutronix.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 tsbogend@alpha.franken.de, paulburton@kernel.org, peterz@infradead.org,
 mail@birger-koblitz.de, bert@biot.com, john@phrozen.org, sander@svanheule.net
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-mips@vger.kernel.org, kabel@kernel.org, ericwouds@gmail.com,
 Markus Stockhausen <markus.stockhausen@gmx.de>
References: <20240710043524.1535151-1-chris.packham@alliedtelesis.co.nz>
 <20240710043524.1535151-8-chris.packham@alliedtelesis.co.nz>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240710043524.1535151-8-chris.packham@alliedtelesis.co.nz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/07/2024 06:35, Chris Packham wrote:
> The timer/counter block on the Realtek SoCs provides up to 5 timers. It
> also includes a watchdog timer which is handled by the
> realtek_otto_wdt.c driver.
> 
> One timer will be used per CPU as a local clock event generator. An
> additional timer will be used as an overal stable clocksource.
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> Signed-off-by: Sander Vanheule <sander@svanheule.net>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


