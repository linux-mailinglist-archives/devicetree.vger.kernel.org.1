Return-Path: <devicetree+bounces-113346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 807A09A54C7
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 17:37:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21B051F20F75
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 15:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DA4C193409;
	Sun, 20 Oct 2024 15:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="BUWddTA5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5095C3232
	for <devicetree@vger.kernel.org>; Sun, 20 Oct 2024 15:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729438674; cv=none; b=Bm5pNyoe7kugfa0HlWVH95hkE2mS1U3rW7Pu/LQUk2dYQrQDrDci5cHw4ShI39R9VGZtJzrgXz7ZypTaQKkCeLo4hroybUjcvqGqUb6k+aiuwYeJiTBadgfNS4FOp4pZwZfyCpTwGkFSOi9MTaG5+xKuCDNE7zTEyZCxEpcAnK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729438674; c=relaxed/simple;
	bh=uoNg85Ag+KFLmBK+RgXXImw7w/3jg2Lk36qObx2+MUE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YNVmAud+vtX90T1bPKrxylxN0YhTpGOu8W24WRjDtoKeVCbB2TLB7EDK3QDk8BK2c7nA+GYRvJmN3r1iWD9CmZWiXjXIQcJ590D2TEkQA2K59CHXiHwQz0CkrSeJxxh0UNZeSqi22SzlLC/r+hX9LsQVi9Qqm4RxtVsoavfOymk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=BUWddTA5; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43163667f0eso20494785e9.0
        for <devicetree@vger.kernel.org>; Sun, 20 Oct 2024 08:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1729438670; x=1730043470; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2WavwzK0bqufM69Hwd+k+b7uRcfbB2YR9N9t7/L+UBs=;
        b=BUWddTA50trXvsUSYqv5NLLYLvGGIgy5PoZUbkM6+dmKW+P3kKSnCstJm6A09X+4q1
         eqij7i2dKxymMwpoSdMNtxxf9S7EXKm3TVyqMhL8a4f1LPs0PX8tyf9+AG8gosNeR/q9
         CwKVG6vBhXUb+qxXEeDa7JWaWPeSSkEWqv/RGPrrZCXHc2vxMAd1Wv1UYe2tz5DiIRAk
         oKedoXDO77u8yrGNtRsskBIpd92PakmLFnyeJVLKxU2w9mQWlbclM4ujQusa90gJvBfJ
         d1C9MCbGPOT407T8OaCEZEo7OV/KWW/imX6CHMMj9/5hI/G21J4Wm5gUfDMsWyGQ/cnX
         iqRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729438670; x=1730043470;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2WavwzK0bqufM69Hwd+k+b7uRcfbB2YR9N9t7/L+UBs=;
        b=TT7qx3gaW+b6zsVF+fWD9DC03Is6bt6UCkIe7X4gbOXt4HVbwrehJ98fVJFs360zj4
         b0PeDx5w7U7yc179OOh+hy+gF1bofrE7GsidU5AHQbnbngsacpI0wv+Xv7MHqYAsEdth
         NzS5BMz603aNxQOI3QtD4zZ1gmOYJ6ywBpVVNSGFokCQEiySnTbvS2eE8Z0dLhO+4BOn
         k6sJoA32+41p4wiY4EjH0Rgk6faqTGqDYLcwSZEemd7hHlQsHFOGcJkkNmCXcjLjPZDO
         KqiR+jE35fLAYN17+F3CsqMxA/8bY7N+zkLMbcS7LvwSeIKOc9wCqbQ3MuhpsoUhnnQZ
         bFrw==
X-Forwarded-Encrypted: i=1; AJvYcCXTx01Wvp7XhL4Ho8I+PikT8lDKAEQMbFqIAX2ppoOz0w/XYVLQYOUbXAox1OUhyyiwS8exNbftqekY@vger.kernel.org
X-Gm-Message-State: AOJu0YwEm4lGGBRF+Z+ES81xdle1Hlq6AZDpIo0sBcVcjUl2dt2Abm+/
	z95SnTaF2wKKsQPsuZLMy1Nk+oto4uxZexf/LCVH6fk9TjBgcBIwa1whVVBf7Xs=
X-Google-Smtp-Source: AGHT+IGlYM3NUdp7BHRsCl/ZOY8kj5PcjPN0aTcfuH+5+lsIO1NiX1Iq2JpbXP2Z9XirQkS8H7BsUA==
X-Received: by 2002:a05:600c:1c0d:b0:42f:7ed4:4c25 with SMTP id 5b1f17b1804b1-4316164d809mr71233185e9.14.1729438670590;
        Sun, 20 Oct 2024 08:37:50 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.23])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f5c2fa7sm26897165e9.34.2024.10.20.08.37.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2024 08:37:50 -0700 (PDT)
Message-ID: <473c35d0-974c-464d-b690-b0ca49eb530c@tuxon.dev>
Date: Sun, 20 Oct 2024 18:37:44 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] Cosmetic Work for ARM/Microchip (AT91)
Content-Language: en-US
To: Andrei Simion <andrei.simion@microchip.com>, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20241002123010.111028-1-andrei.simion@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20241002123010.111028-1-andrei.simion@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 02.10.2024 15:30, Andrei Simion wrote:
> Andrei Simion (4):
>   ARM: dts: microchip: Rename the eeprom nodename
>   ARM: dts: microchip: Rename the pmic node
>   ARM: dts: microchip: Rename LED sub nodes name

Applied to at91-dt, thanks!

