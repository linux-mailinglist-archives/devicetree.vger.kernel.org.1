Return-Path: <devicetree+bounces-194828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD06BAFFAF8
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 09:34:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 292FD166816
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 07:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3822B288C30;
	Thu, 10 Jul 2025 07:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="IQynHqge"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CED928751F
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 07:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752132848; cv=none; b=mMVmEwScQK4b5CurKmkWhVB/KLzXOkambiKtbZP0P8NBI0XNv3bOI0Zko2Q8HDdM1eeqaPa5bFIGKI8YApZxzSsKz0nM4RElJiY6mS3SFUjUnWxkucvIqAbSWCOQQt82Mc24SFUc6bAlHH8YGVqkWHCVoclyz/Eo5J5hG1+Z7dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752132848; c=relaxed/simple;
	bh=vHRxZ7iR9VbaXp7pjVioRMGXRK5cXAtuCkY7JdlvtY4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ibVQWFProbEViXhbKiivqrmnW3oWysblczikHSDJFogP0/bDVPlWyA0+bDbR7PSiq7nKNR7/Sjtmdacdq8z8l2tHBZgcvGDl8q4/tTtrQEXStfc/a4vEMJOYJSnuFTVOhHAJ48hBTu7rKtwTqDtLfh8tvcqo3v8d5lTkxnRh4EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=IQynHqge; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ae223591067so104628466b.3
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 00:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1752132845; x=1752737645; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JawF4TGF1j57LNBqwF7f46NzGiGmOvF3HoWhyY7xlVw=;
        b=IQynHqgemBYN/P4qlpKmd79Bj5ITfLKyGAdNOAcJJLmTwhEoXTLrCQVCgE+Esgfap+
         RSiEs6SbTe6C8xNt+WgX9PpydLmnbh5LFNAKhzpLceeKYlRYv2r/iYGsqXBDtEVBfIwV
         GJRFWWakY2JqvE7o0fVGec0Sy1xpC2fNUwrElCtYPbj/ID+5ZsD2C5pfhjobBRBPC4e4
         JSnMk1WDRCpE9rxbjj2QS49FFccEkY7q5ElyVPb1ltRx3DUvDvap/hCURdAzpWMelyf3
         qWQDxpRFpWjxcl6z5QG0Dz0KnN/B7ruz1/zk/mA0bmk7guqNvypwk5008FjzuzRSZiZq
         YDwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752132845; x=1752737645;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JawF4TGF1j57LNBqwF7f46NzGiGmOvF3HoWhyY7xlVw=;
        b=kdUWj188xSZ6qto7HwNpFF00UVpFmcE/Wh/rdxRsOMTv/NRFfqQ3DFyZnFJl7fC9OV
         A15cDHS7LybrUtks4jwffygEWtkvxs5bNgVeAYY3MeSYi51iW4aUHAdMy2IwlV5A4HUo
         C3gHFDdJPfgRfv8bfW7bR/75eR1aYNWU17EfHOVtkbLaAHPd9ACIDDaLVcJzB5nAqZfR
         61gG+sZ/DlYf1iV6LS+0yl7R9EBdTGV+89Q/D/V1k+bEddUo+tuXXtuSOF95LOPVXWca
         ejafPicBeV1bBa+XYK/EHBL84JNuWBphpLaeeQ3cUBp9HjmDgvszZMhz6rhgIR39xLNJ
         Iirw==
X-Forwarded-Encrypted: i=1; AJvYcCVtKRe2cbFqbStgIHKLCix0Ovmpmpy/bOPV8iyiS7n/+Jj9xHs0+AwSS5Xetvp8TkvzUE/pg/xlh69X@vger.kernel.org
X-Gm-Message-State: AOJu0YzBoLTLCgAOhGaxd2inf8dHS/IilDrMjTepZXvOUCuEP6F2tsjz
	UcAxMrGpE0s3WZdMyMoG4/HWjjl6PMfvqOb4YkfgVaAHod/uddg3Ei2/G0Z5oXbiGGk=
X-Gm-Gg: ASbGncs4mHfJUskm4mRb5sRxfOsHW52trOqrfieIGCh2VA9rRZr62mfxyX74GHlzZ3K
	uF8rzNj0xsjA5k6EG+Cj7Tip9u60nMC6hfOSo38JyDzEfo2rQVKf1nOwnOZw+yZXxwxiNr1YZvt
	aPebtyvoYMLsGeiAp3z+2F4DIQK4VFkvvTfkCAnBUCBp9L6B10Is0VbV1xmwbgpS3eYv0NAKz4z
	3xcMNjSFJpGbkesMD4861duX/hNpYi1OzpgXiMzM0cWAOOLFI8k6THX2M0YmUF4IuQUIUsJecGS
	Q4boIJqu9ruSixlmy8/Y1y+flCDYf+45LcBSpCvQYH3lNfikmPKMeVlZ1SUQtw4g08DvJQuQTPy
	lfiQj
X-Google-Smtp-Source: AGHT+IGPe11W59uO1omcl8GyG58pyhcK7ZXWq168g/SLScHSinvdniJYkRnoIhmYDGQWOP0mBpiX6A==
X-Received: by 2002:a17:907:3e24:b0:ade:35fc:1a73 with SMTP id a640c23a62f3a-ae6e70f48ffmr163003566b.55.1752132844772;
        Thu, 10 Jul 2025 00:34:04 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82dedd3sm81643566b.150.2025.07.10.00.34.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 00:34:04 -0700 (PDT)
Message-ID: <31ee6752-a898-4cef-b339-9991d9df1580@tuxon.dev>
Date: Thu, 10 Jul 2025 10:34:03 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] Add cache configuration for Microchip SAMA7D and
 SAMA7G MPUs
To: Mihai Sain <mihai.sain@microchip.com>, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250619070636.8844-1-mihai.sain@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250619070636.8844-1-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 19.06.2025 10:06, Mihai Sain wrote:
> Mihai Sain (2):
>   ARM: dts: microchip: sama7d65: Add cache configuration for cpu node
>   ARM: dts: microchip: sama7g5: Add cache configuration for cpu node

Applied to at91-dt, thanks!

