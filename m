Return-Path: <devicetree+bounces-128138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1279E7947
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 20:50:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C83518881C6
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 19:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B98C81D90B1;
	Fri,  6 Dec 2024 19:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ER/3AA0k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21DE1C5490
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 19:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733514621; cv=none; b=c3XrFozdFFRCqZyTs2TG/8h5ixB3Lqghzac9N3Xv4TU2age4Mb644WrwkAJ5TM9ka4+m41QrVuc8PMauo61POU5avvjFITxudk2zVup13O2WTcsnDj47bJV+hJcCiu4IPYIegGU/Phv3UKJNhNN5/OlfxgH+XcdufgPbeTJmBfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733514621; c=relaxed/simple;
	bh=7Wb7LqwxuNOLv536ZY2v738t45HETn7WLnFlPxrRhVs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TfYa2GAxREsQ1ncxKDvW4+0Paj+Vhhsrl2FMR9jxz1kMcGwCopO6mdWfQM4PjEaOHzZmjmpBVTgelgtIqNMmlOo9lcap7uo4wKa+hehVXx1NHEAriG/PmBumFvyCUuyhC2ubr5oGzcOtzaVDEOXJmVAK+FjapyhYfjpjP48e7Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ER/3AA0k; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-85bad9e0214so892574241.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 11:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733514619; x=1734119419; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kgYtVUqUlEZ8VSuTq+I8ySRpCil6RgGzEne2MvLY5yE=;
        b=ER/3AA0kmA182GVHA9YrD8xXq/+Q3CHqtf7tospYx8hqK+9HTxLuMZZE4jPR+hhszf
         9St8yIJ9zHszsi5oSaylwaQsoCz/VOj+Z/adJVJxeJSY3Ee/JYm/mCBS+/IiTUJWdILG
         GwcnWedN2saeglmDwX20ep3kL3rlnM5zSxuq4+g4B38umnQc3gW6KzAWiRlV+AHoQlgC
         iTNSzb8riiqvZwfCnCKxRV/b6ZFq07/ollk4YWGhcg7F+z7xbzsMtOjmz5yDO8FwwIpU
         YjgJEspXPP+41fxXuXQZwGu9Vo/OSxuXqyk188ZAW/55A2RLkjsr9S99/lWe/iE3w3aL
         2fSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733514619; x=1734119419;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kgYtVUqUlEZ8VSuTq+I8ySRpCil6RgGzEne2MvLY5yE=;
        b=NZKWfhoEuLOuvU1aZdZtZG/91oP5sz7TlRxlpY03FDnZl5vRv4hozE5/6HLW60vxSA
         QNNu/MXshqK28z0dhN7rQ7D/Bm68IuMNrWPv/HPWpOfsZ7zlAmJKTgsTrpti05VG7oyh
         ykFVMxDioRTd21p2KXzxSKJ6Ov5Mo2YhQZnuPvaxLqoPKSXlUh7JDPYU6UgVCO/Aqbni
         as0RuCgoTA4NFDM5XxU4XDWMEAdP065yPsLnSSDfqeljFrVYCOpTexWM5yVgwDQwxoE9
         8OxhwiTUa74dXsc1xGPLYIYjDdvpRqUY0c24HCzn/iCOwGwsYQxYLluvhJrNoi+Bxevt
         Asag==
X-Forwarded-Encrypted: i=1; AJvYcCWm0MygwSpyz3dPlFc2NmXm+9UmDH/3gW65KJTtIjQ84KKcBidcrmPIwx1ttMSPjAk7KED0CE5oZZHO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5sd07LOOpfyq/muqFxAMKRqCwcvpXpttY88Eb4r2H1zQILDAx
	yHruSoa0zUH2urafS4Ik1Li+/9UJE/ZhXSiijxC+5jo6TTRAoCBAnJLoJBjdIH4=
X-Gm-Gg: ASbGncspG2OMqPanw7mBQoubvurX+5zW0JS9TObLZCbnhrnmG+HYfL8/iJzzreM17Yn
	Z53ijftniewi37yUli2tRnvfJaRb8lVaLL43c1GAQA6F+mS8cD2nYa8guZOsmo4x806uyJK5cZb
	GbfLk711pwZngmaPl6RX9vkifvTnUXHU7EmnwMXcCOSB6rKGecHHBEB37ZJsZQ+r4Nd/LudEUx+
	sDphdwW5o2fR7Di7rfwa3N0YVdAovKzGmnmqV6PIwYkmNYo9toloqLBxzSWfwI/hstMYsSEmYCt
	pDmGyjfM
X-Google-Smtp-Source: AGHT+IEeWUUJbrxyEjeWWA+oNy8sSHBMGYhIlHk+x4xxBQvnZSCGxkbHgUu85h0IP51FdasOJcUIAQ==
X-Received: by 2002:a05:6102:5486:b0:4af:4ccf:e99 with SMTP id ada2fe7eead31-4afcaacd044mr5735787137.22.1733514618823;
        Fri, 06 Dec 2024 11:50:18 -0800 (PST)
Received: from [192.168.1.124] (49.93.157.89.rev.sfr.net. [89.157.93.49])
        by smtp.googlemail.com with ESMTPSA id a1e0cc1a2514c-85c2bd4f2fasm552887241.32.2024.12.06.11.50.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 11:50:18 -0800 (PST)
Message-ID: <2eedbbe1-6b4c-427b-a369-5b08dc27deaf@linaro.org>
Date: Fri, 6 Dec 2024 20:50:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] firmware: add exynos ACPM protocol driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com,
 peter.griffin@linaro.org, javierm@redhat.com, tzimmermann@suse.de,
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de
References: <20241205175345.201595-1-tudor.ambarus@linaro.org>
 <20241205175345.201595-3-tudor.ambarus@linaro.org>
 <ce757b8e-4e6c-4ba9-9483-b57e6e230fdf@linaro.org>
 <vxqi23hxw7bmtfs5wk3u7szganpv5aa74b26xrvpmbehkltodw@dpum7zrxdz44>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <vxqi23hxw7bmtfs5wk3u7szganpv5aa74b26xrvpmbehkltodw@dpum7zrxdz44>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/6/24 14:28, Krzysztof Kozlowski wrote:
> On Fri, Dec 06, 2024 at 12:39:56AM +0100, Daniel Lezcano wrote:
>>> +# SPDX-License-Identifier: GPL-2.0-only
>>> +
>>> +config EXYNOS_ACPM_PROTOCOL
>>> +	tristate "Exynos Alive Clock and Power Manager (ACPM) Message Protocol"
>>
>> Given the importance of this driver where a lot of PM services rely on, does
>> it really make sense to allow it as a module ?
>>
>> Some PM services may be needed very early in the boot process
>>
> 
> If it works as module e.g. on Android, it is beneficial. I think the
> platform was booting fine without it, at least to some shell, so I can
> imagine this can be loaded a bit later.

Usually the firmware sets the frequency to the maximum in order to boot 
the kernel as fast as possible. That may lead to thermal issues at boot 
time where the thermal framework won't be able to kick in as some 
components will depends on ACPM while the system stays at its highest 
performance state.


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

