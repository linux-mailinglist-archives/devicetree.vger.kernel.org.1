Return-Path: <devicetree+bounces-52401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F61E8867EA
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 09:06:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B0C21F2273F
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 08:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A59516430;
	Fri, 22 Mar 2024 08:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CBrUF++O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79BF3171CD
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 08:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711094781; cv=none; b=q63srHAcHDFgkwEUlGkfdhVrUsIUSEY62NTdQ8McMGWeQd5X2yYgXLSNNuhy9/gd6eHt312itRaBJHg3PfM1V9B/el/N9DIMNd/ioy7G7KchB6l3BH2418JsCYSpbH23F/QJ+5JnIBip/ZjaFeCcQG3ZChW5+lpTGrDftirbnZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711094781; c=relaxed/simple;
	bh=yuz1DDYwwZ+Wu+hp6fEC6IuIktiCN/2dn12Wf0kXYLk=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=dET14cVXls/Uy+ejHmDEPtQF3YZd9Rg19cdzrTCZADR6H8tmGLVXwFiBqfKMvdq606Upt69USMivSpMWlEXjRZgMwzLi2q4VEidYFv3SEIrQQsCiehQgHXs/4voWbrzJ1SyzLgWmgHPjOy7SDiLhgjmvjOxiFFWinaTx/mTW3Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CBrUF++O; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-56ba6c83805so2192767a12.0
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 01:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1711094776; x=1711699576; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XsZLSAJEXmeZxbFin0CImKOsNm3aXacrTABAdgCK260=;
        b=CBrUF++OF+YmwdF6X7cykeYwFFB9S4gKX91/zNupGnSducv/hPcy1m4P6tCruNlZ7S
         xas4y+D/4SCEZFHVgSY2G4pNqZUN6GPz9NfUhkb85MzcScr4YLE4FsN0PuDuwF4Iynj8
         ObSYvEe8YoMS0IjJRdo2KIYRIhK8XroE5ez5ergYLk6pqiU1G4pPriGhEHmwp7f5eF8E
         v1QKwafh/VkVEL23GO8IljWpuG2qr3GAe17GOSYuEiqDIgdO8u4TNdpS+AbLUO3uRdu/
         bOk7whClpIa/DtkJ2Vfp8s2pSM93Tk9DL/6OH+FM4VmrHSu+IyuCL5xtxkJU+tff5e8f
         LAxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711094776; x=1711699576;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XsZLSAJEXmeZxbFin0CImKOsNm3aXacrTABAdgCK260=;
        b=FlP3JYcH3HEHxpJhvdykpc7ngPfJWKDlWLgtuo8uiaxU+W9/cCKh4G1fXgQ5bP/szv
         7UBicy23WMh8ZSCY56G4EO9fe6rx8YS9nKD3GBCC4rbI/6ORld9QwM250Z1WRrmKHT8t
         KsYafCo0ch6i7RBluwk5tLH/ERzfHgBLD6fz8MDGulBt5jGbkMvNQFTW762DhyJFzm2M
         TGZRCpnlUxcY4UnWxzBmLhRChLh4aNkZBQ57N74au2UV2MZLvxZj8KohpR7cISuI0V28
         uo3eSqL8jCLi4rwip8ffe4E2/wMmI4RmU69AbpqqsNpXlf6q6I0Cm9hjzxFO8Av3kjea
         6W2w==
X-Forwarded-Encrypted: i=1; AJvYcCXq0Hlkz+xZXeiXrmFmm8bo8pn2QKKJdq28Sxw8Dn4kqgrquGbL9U0QRxGxAJIdTtxc+LQ5Rw1tvmHnvtv5P9+Tlao5A+dCxcVuqQ==
X-Gm-Message-State: AOJu0YxUC4MZkP/Qc1njKpnSB462AYBnJ5Ny0SQuKn3i1uHKLU+Tk5cw
	VSRjoNzMRYl8r3TLHBDgONA8JoaRm2TE0o7gSS+KZucOM9xwxTaqB3KanTMt5sI=
X-Google-Smtp-Source: AGHT+IF6hLTM5QsWFB8daZv5l4Na45H7PPkkgF62jW5LxW0NpIpFh38gMORfD2MF7w/c7B8DVIGztA==
X-Received: by 2002:a50:9b44:0:b0:56b:b7f1:8094 with SMTP id a4-20020a509b44000000b0056bb7f18094mr977606edj.35.1711094775863;
        Fri, 22 Mar 2024 01:06:15 -0700 (PDT)
Received: from [192.168.1.70] ([84.102.31.156])
        by smtp.gmail.com with ESMTPSA id fe8-20020a056402390800b0056bd1e71310sm743729edb.85.2024.03.22.01.06.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Mar 2024 01:06:15 -0700 (PDT)
Message-ID: <b473d940-0301-472d-90f0-297da6815377@baylibre.com>
Date: Fri, 22 Mar 2024 09:06:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 10/11] pinctrl: pinctrl-tps6594: Add TPS65224 PMIC
 pinctrl and GPIO
From: Julien Panis <jpanis@baylibre.com>
To: Bhargav Raviprakash <bhargav.r@ltts.com>, linux-kernel@vger.kernel.org
Cc: m.nirmaladevi@ltts.com, lee@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 lgirdwood@gmail.com, broonie@kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, nm@ti.com,
 vigneshr@ti.com, kristo@kernel.org, eblanc@baylibre.com
References: <20240320102559.464981-1-bhargav.r@ltts.com>
 <20240320102559.464981-11-bhargav.r@ltts.com>
 <775348fb-3227-4609-b4aa-c8a6eddb8953@baylibre.com>
Content-Language: en-US
In-Reply-To: <775348fb-3227-4609-b4aa-c8a6eddb8953@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/21/24 12:10, Julien Panis wrote:
> On 3/20/24 11:25, Bhargav Raviprakash wrote:
>> From: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
>>
>> Add support for TPS65224 pinctrl and GPIOs to TPS6594 driver as they have
>> significant functional overlap.
>> TPS65224 PMIC has 6 GPIOS which can be configured as GPIO or other
>> dedicated device functions.
>>
>> Signed-off-by: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
>> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
>> Acked-by: Linus Walleij <linus.walleij@linaro.org>
>
> With this patch, an issue is observed on am62a:
>
> root@am62axx-evm:~# dmesg | grep tps
> ...
> [   12.122631] tps6594-pinctrl tps6594-pinctrl.2.auto: error -EINVAL: Couldn't register 
> gpio_regmap driver
> [   12.133216] tps6594-pinctrl: probe of tps6594-pinctrl.2.auto failed with error -22
>
> Without this patch, the issue disappears. Do you observe
> the same result with your am62p ?
>
> Julien Panis
>

Hi Barghav.

I found the issue in your patch.

In probe function you handle TPS652254 and TPS6594 'switch' cases,
but you do not handle TPS6593 and LP8764 cases.
Since AM62A uses a TPS6593, it currently falls in the default case,
and as a result probe fails.

Please fix it for v5.

Julien Panis

