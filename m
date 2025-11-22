Return-Path: <devicetree+bounces-241390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BDDC7D491
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 18:06:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 89EED4E1BE0
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 17:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF4C122A7F1;
	Sat, 22 Nov 2025 17:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UbByZQUj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BBBB663
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 17:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763831174; cv=none; b=Lts5eBW6gRnKe9FsM6B6X3sLFASe3zGJo7druZDi60/Q/c1hLfmGq8SgtIOSForESk68lAK/bYnbZ19KgKxA5emSJughaTii35C8Pd9G4kpJ9ofACG266vblRYmSYcq4VIYI03Qzgo21CrHzDnmmJcP4wojQzbTTP/MfIDNFfxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763831174; c=relaxed/simple;
	bh=BjYN9KVpj6k/cdbwYIU96egJdlwqxlFXknvKkAJzUUs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kM5x4mkU3DXbuOe+NcxLzddz34XJHKATx02zLJjR9uliCLsI5e0SKp+ypRpEEA9AM9iazXAuE8jKSwyYI0hRu2quqYQNbqsNx3xFoEW8mv+Nffz4KIw1F3vYfFqacBifZ4v10eEjsVlovOzpsGbfRjmLzynQLe9EO9DmVYA9IxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UbByZQUj; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-3d47192e99bso4804584fac.0
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 09:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763831172; x=1764435972; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qiTj6DmfHFLNbN7gghkMYecVa4SkrJ/b1ayhBYh4ZlQ=;
        b=UbByZQUjuHpcVJ02u/3K0yvdJ8cJX95ZTzeMMzT+zhk86E5SnMg7kJM4qHjMIw3qTF
         eB+1X58L9eanYqj4OPLq3jiZAAx0ZMi64zothVDsgjlibh8QTNea9sAmTfXccFNRqH57
         dqzoUamKb1mIX5W9ek272LyU04QpfJZtgLhtQVxUS1l7Gx0Bnt886jZSbTjDT7NQ3s0n
         k0/9WSIo/48Oo7ErXZP+HPNuam/35ButjHQIqHvnTXcPhVKeksd7Kj23YkpSaOsr38lY
         zjv3ocC3+GKZ2f4v27HpRdHHuoyvbvyZVgIi1FzqYKR+xsITxGGvR2be+sTcqnpfI8qh
         rQpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763831172; x=1764435972;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qiTj6DmfHFLNbN7gghkMYecVa4SkrJ/b1ayhBYh4ZlQ=;
        b=Jpsatn9PM8PK1x0Awaccad6IvnZOXPaNuAhhJL3QJtzgWfSYQdIjNuoaSbvvxRwYhf
         QjUJA+mn3onFEquq7/PwwfFm7IMGu+NGCr7RMrQRTdRlbKgXCIxhT1jckcUqQieojiA2
         MxEsm4b/6JJ58SeBCeWfuuCm5gD+PdY1XcsSydmo1UdwS+htLfMO/n0A/AcTxFSZW1IS
         n6E04uH2RFJEbvmP5GKCsPR8m4fAe98hL6fnG0ayBaHN4ZDp3DhSV9UVMBKlqjJbwLe1
         3edlUWD91+XY/+eSc3DGkhl/sWzm32OEayUznocV8pX4icLBA1cleUAE/0V+oXDJY3Gu
         gpbw==
X-Forwarded-Encrypted: i=1; AJvYcCVkHvHQLYF+jpxoE3W5+c9J/LPje9aXMLEkU4XbuSJVbWYyyBiG9sziO/rd5SuSgO1FYxnE4pvfUgPz@vger.kernel.org
X-Gm-Message-State: AOJu0YwTp0Y+6fuakIF4ga3JmVmh+VkZeLIpQw18oPAPHY/2PRwtv3Gr
	YjrX9dIY8Rl9UQ9ZSlFrMNtzpVR9+fEJlNyH8AL5vnni4HuhcluBZBsyP6YH27x8xgY=
X-Gm-Gg: ASbGncuvagYrAEQRmh7jdLXKB0j3XIWwNMLJ8XdPVUuaP4gCbKCZsMYtXYRIfUqyDZE
	I2E9QO+KLxvhwTLr9AGNXVoduPLv7XtP9gaWNtQPJecmkydO52Z4jEY5uGXcfbamzrZCFq+7IDY
	l/LwxcEVO5jdcuyd334h0jyDfEnUZb7Ifjs10nv02QEDZLf2DcQUXIUybpP7xBN/uPft0GKhQUz
	HONscVYMgHW9r1L5W1fphmvl/Pwj+nJKJ+jXOVfUiupPrFmnFJ1lJRPPhfBG9XWsKC+olgL5RJh
	2Jns172eeZ6pr8xI2ve/A0pj2THjbtvMs5LbW6+AcjQgR0wXgdt2G26ZJX/gl4gFGutQ3CuFccS
	OiAnXI9odCqsIAZ6/PCmmZRnQlT5Jfnh4LF9SaPuZDMwpRT2UdG367RAqCdCmlAjqQeL+STNj65
	rmeetE7HD59yQ3Y66/KfA3V+Lv2NQ2WCKby//cQHziX2HKTX6X6P2ociYzmmdE8aZQZ8+Wzqs=
X-Google-Smtp-Source: AGHT+IGlXuU7CV0HYerfRvfrCi3bMB4lFNt4UrO+yWjId/5UQGy4cSrVoKBT59z594zR51ZFdEKN+Q==
X-Received: by 2002:a05:6871:693:b0:3ec:7947:33ac with SMTP id 586e51a60fabf-3ecbbdc15c1mr2818580fac.16.1763831172068;
        Sat, 22 Nov 2025 09:06:12 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:e782:93d8:7c2f:f9df? ([2600:8803:e7e4:500:e782:93d8:7c2f:f9df])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ec9c3449d0sm4179813fac.8.2025.11.22.09.06.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Nov 2025 09:06:10 -0800 (PST)
Message-ID: <4453f8a7-801b-4230-ab69-be06396f9075@baylibre.com>
Date: Sat, 22 Nov 2025 11:06:08 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/2] NXP SAR ADC IIO driver for s32g2/3 platforms
To: Daniel Lezcano <daniel.lezcano@linaro.org>, jic23@kernel.org,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, conor+dt@kernel.org,
 krzk+dt@kernel.org
Cc: linux-iio@vger.kernel.org, s32@nxp.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, chester62515@gmail.com, mbrugger@suse.com,
 ghennadi.procopciuc@oss.nxp.com, vkoul@kernel.org
References: <20251119223905.107065-1-daniel.lezcano@linaro.org>
 <1dcf3278-7552-4b52-91d2-e8e711f8b230@linaro.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <1dcf3278-7552-4b52-91d2-e8e711f8b230@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 11/22/25 10:16 AM, Daniel Lezcano wrote:
> 
> Hi Johnathan,
> 
> I believe I took all comments into account.
> 
> Can this series be considered to be merged ?
> 
> Thanks
> 
>   -- Daniel
> 
FYI, things usually slow down a bit in the IIO subsystem between -rc6 and
the next -rc1. So it might take a bit longer than usual to have a look again.


