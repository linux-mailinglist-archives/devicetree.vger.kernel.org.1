Return-Path: <devicetree+bounces-59386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B58E8A51C2
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 15:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8E544B2414A
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 13:40:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5581C80046;
	Mon, 15 Apr 2024 13:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="jLD8owIX"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4217604D
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 13:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713188141; cv=none; b=TN+nQ0i4/EytICphgGY1DpzFs6Fwztb1IehQS73TMX48Mnqgtn1BpsTXuH58nOG0hKnd3e1j8dfcjUTmQ5NiXn1IeNN8ru7MUyrX5POZi9BA/H3IDt0lyGkjJJkbmETqv86cYZKMrA4c0jHEw9oqNSOjLKOdH74wiN7AnVqH3Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713188141; c=relaxed/simple;
	bh=hQiFVvAS1mYRf5SJ+jRHKKdDZv4gfSbaYAAYGc2KT5Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PYAgh5adxR15TeQXTIk6jCfXkUiAWzRfFHUekijOPt1CjphdApeKcG/hEIkWeg4s9f4CqiAkOnb4UpdTF4qon2O4CI4nNjZJ2IhsG+1SlyTFMScmIBMi3s5vuOdOwxi8jc7AAyfQEaRJERCFESYGE7jjmWUbNe2CM5pdzi+P2sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=jLD8owIX; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1713188138;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6socNntJ3nm9pcmvosaMuRgC2mHfgKc51tUJMcOdLxo=;
	b=jLD8owIXyazLcLWZU7Ih9F0QR6g6O56O+a0ei7rfiqtlc3mXgF7YqgLdm5L5JmVzwndf7/
	aXdN4wUleJQBNb1+7pqRvGC3SlLqQTkNOl0xMP+dGZSR6VyicuZhn5DsSt8KozYfJLfAo2
	MltOn53Z3VFHd79Ypxt3l5vG/w9h2EA=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-615-lK8F3TH0MSC5QhioLsRR9A-1; Mon, 15 Apr 2024 09:35:36 -0400
X-MC-Unique: lK8F3TH0MSC5QhioLsRR9A-1
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-a51beadf204so185772666b.1
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 06:35:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713188135; x=1713792935;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6socNntJ3nm9pcmvosaMuRgC2mHfgKc51tUJMcOdLxo=;
        b=t6Y7NsGhR6J9Lr2oApkoMhg3EyOL1rQb2zCwAplwNS+wVBRK3CRyhZzDKAhntu8Xk2
         zkcQrVakzonofmOh0Heq80TzfqAUNiaXOYdj352PYp3UCNpEnWaPGCCIIzrEr+IOVtMP
         eormNQ11pNu3jGL5lrRVulVDH23fx7B2GY5AAmTFVQ/BC417+RWxBNIZGKyh3cAr0JwJ
         iN+XA7TaQo45o52PV5g5JhtRMIngpk21tM1JcyF4HmOONjAtnX08Nu4pD0JJkfgnkUSi
         FEM5/bSaatPJowq2x1mcLYVkZGVpGMhPHS7amhjv8kUXZY2Fh/9dPFiN4Gnfs0KBbEAU
         Y9ag==
X-Forwarded-Encrypted: i=1; AJvYcCUFIsNJ0mbLIe5w6zlulTPUs01PikrjSYqQLjhfHrXToXf4C3N9OOv4DXbYGdExZlUFgG4oTuonumGdJj0ojTvuVqBl6JmnNwWCiA==
X-Gm-Message-State: AOJu0YwyrM0z+YrEA30/0T0NXO2yLvEuTCXwLeRHGMg8TNtRwkWVAdGA
	x3Jf9ncQ1xmClE8T2EgZjZLGgZUkB5UgFY8OvEFFOarAW6ERaK2GlHlbzYok9u+apD+CKy/Xh8Y
	UD0U56TC1VT0RbUe8K+oSi260LIrd+gBacaZ5FIKQkSK+1sQjqlWqoWgzVH0=
X-Received: by 2002:a17:906:c10d:b0:a52:3e63:bf9e with SMTP id do13-20020a170906c10d00b00a523e63bf9emr6339716ejc.49.1713188135422;
        Mon, 15 Apr 2024 06:35:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMogIGpTHXJhvOEm+F2SlJApYBGd7bIz8KwBUMd2MDogeFiyFV+1AMp2c3KRl+1QSxUQ6fVg==
X-Received: by 2002:a17:906:c10d:b0:a52:3e63:bf9e with SMTP id do13-20020a170906c10d00b00a523e63bf9emr6339692ejc.49.1713188135069;
        Mon, 15 Apr 2024 06:35:35 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id di18-20020a170906731200b00a4e9359fbe8sm5469744ejc.44.2024.04.15.06.35.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Apr 2024 06:35:34 -0700 (PDT)
Message-ID: <b8236348-476d-4c50-88ab-0409e4bf6bf0@redhat.com>
Date: Mon, 15 Apr 2024 15:35:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] add FnLock LED class device to ideapad laptops
To: Gergo Koteles <soyer@irl.hu>, Ike Panhc <ike.pan@canonical.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org
References: <cover.1712063200.git.soyer@irl.hu>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <cover.1712063200.git.soyer@irl.hu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 4/2/24 3:20 PM, Gergo Koteles wrote:
> Hi All,
> 
> This patch series adds a new LED_FUNCTION_FNLOCK define as "fnlock" and 
> adds a new FnLock LED class device into the ideapad-laptop driver.
> 
> This helps to display FnLock LED status in OSD or other places.

Thank you for your patch-series, I've applied the series to my
review-hans branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

Note it will show up in my review-hans branch once I've pushed my
local branch there, which might take a while.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans





> 
> Best regards,
> Gergo
> 
> Gergo Koteles (3):
>   dt-bindings: leds: add LED_FUNCTION_FNLOCK
>   platform/x86: ideapad-laptop: add fn_lock_get/set functions
>   platform/x86: ideapad-laptop: add FnLock LED class device
> 
>  drivers/platform/x86/ideapad-laptop.c | 133 +++++++++++++++++++++++---
>  include/dt-bindings/leds/common.h     |   1 +
>  2 files changed, 123 insertions(+), 11 deletions(-)
> 
> 
> base-commit: 39cd87c4eb2b893354f3b850f916353f2658ae6f


