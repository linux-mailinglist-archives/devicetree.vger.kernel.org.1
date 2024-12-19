Return-Path: <devicetree+bounces-132578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 539439F77F0
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 10:07:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 448F4189620B
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A12A421D593;
	Thu, 19 Dec 2024 09:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="oNTmPPzm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC327219A76
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 09:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734599216; cv=none; b=CfX7cvN0XeIbkR0C+FLwPTXwLQamOmKy6vLOtcgC33dzJe34hfkFJS2q/q3LUoDbX13/fnLXeCLUDcUsc9gm6zIC/MIo5FawTsn45Z16nrWXW57LHCgTCf1hzslta8NXfKa/z1LAFP7IkYbrtolBjcJQtrk5kHVSqPyAK0YJJ9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734599216; c=relaxed/simple;
	bh=DZG/SfFnASo8JHh/wjaQjKV3ZBdU4aGK03Lg89+a37w=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=QtWJVZuLUIWcJKBTeFnlyi29P1aRPlFxcEb7MF64wUB5A9XDFogdZbkK6iSzqBLauAdYiO6foe2FjibVZx71YdJKKOdfxpZ84xl8YWY4p33MaHibDd57JadVnX8wGW9vsFXZCjv+7svm49e2xmpfDsJylalMS/9UOWMo3Rew2S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=oNTmPPzm; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-436341f575fso5537885e9.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 01:06:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1734599213; x=1735204013; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XWeWvkXzvLu3Igmu9GnqFUCreGXAUYNQ3shShzUdti0=;
        b=oNTmPPzm3tbGwid8kRUOTh9zMuLsM+C+QH7P3FWyK8jHGWTyoVMKES0I5wH1AQMuGb
         WDZTr1kfWl5LjXbkYANm7Sqp9/LC0jQ8tbJwK4hXdimlJrt3Dt+0Z4hGSn04JydrH0BY
         h2jCyEa/d4zlZiBzMLTXhB2jik87vPOp6rqJUIHYyig23whegMcJd5CFpTAdWKjGZBIf
         VQYtsPwggnNr9+AvdXlPvv104Ezi/JrKZvvLljdb3X9Yt++fJiNwuqba6f7/GTFlZOgU
         sYlw4DQwk39McqPQM28O/ACF9PvlNQuLNhdDtWtLfUJg5PA4d6B/YABsu21FUDwIhpj8
         kLRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734599213; x=1735204013;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XWeWvkXzvLu3Igmu9GnqFUCreGXAUYNQ3shShzUdti0=;
        b=B4iTXwxYrPlsFopaWEefS9vrI+We3pFaDjRunr05efT9Z1auk+zB36E6BfaIJ3RDBV
         530OfWveofx7j+2m8L/2DyM78lKXGDJ2CZRH8zIoqBXFf6Alq7zVw2P/2tAf7Hnl24Jc
         hSR+hOSb3J9aOgROeSceqNCLwCMun6Ng2EnV41I76X8NXtqtYBv5YpxGgUXFiONLaZzI
         YtCmRI0X5LD7guynt98cZr4GKYWwlJao6MsvAC+DL/5GJ6WsZLzRVZmiTljwDdWWMNOH
         5C2fD48BCCSso6x75i09JgyTap4+1BJmPKA5GwAYBLuqXuwfuaSD8bUoGQrRcl4mCaOI
         oc2w==
X-Forwarded-Encrypted: i=1; AJvYcCVqfNTb1eyDwqKvJM8/n7HiGjYe9+cLQ9XsDVLCbnU3mQPldHBLIGFSFpwcS5GsubVBXbw/KrSmRaXS@vger.kernel.org
X-Gm-Message-State: AOJu0YxZlU/SJxWctnijeDGDT87GNP5pl9vcFJd/oHYWtXMWIYsoqlwv
	iMgmHoynQbeoQ89sw/iv1mMCopww+n8oniKSedKxgm7zThbLz2SaCwdoSkxuHWQ=
X-Gm-Gg: ASbGncuqzdk7BYfkF0Lk7p1InUSKRfzXE0DbWaD6vmVTmJNSXwJCBV2WS09wp+kzCmB
	FVBmNKnrVUTxNUqqdC38Z2l1jmer61/Yl5TYtyHmL4xHGHeO6e4YmJp+/5hs8NcOmzx9CFYJiKv
	v+jlQl/7Hq3FD8XbzAzmGiwndHiPgut7PuqMKWFy6pjbjH+K6TOKanFZ3ybiMvyktrlyFioWW0E
	HvJpp95JMKYXgNXGUSVQqjfz0y+sI6tp1hHN+wfd/DTx6aT9yj+jab1dNX8GUm1FQ==
X-Google-Smtp-Source: AGHT+IEnaGro126gC0WrQbj/7yxYqfDWITdMViGNaOBvGvwU7MwJfIU4k1E25zyXtYEsrK/u6ddQ/A==
X-Received: by 2002:a05:600c:46c9:b0:432:d735:cc71 with SMTP id 5b1f17b1804b1-4365c7c8eb7mr17227275e9.25.1734599212864;
        Thu, 19 Dec 2024 01:06:52 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.102])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656af6c25sm46008175e9.8.2024.12.19.01.06.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 01:06:52 -0800 (PST)
Message-ID: <347a8bb9-5a0c-405b-aa9b-01994aff8b53@tuxon.dev>
Date: Thu, 19 Dec 2024 11:06:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add address/size properties to spi-controller nodes
To: Mihai Sain <mihai.sain@microchip.com>, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241218080333.2225-1-mihai.sain@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20241218080333.2225-1-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 18.12.2024 10:03, Mihai Sain wrote:
> Mihai Sain (2):
>   ARM: dts: microchip: sam9x60: Add address/size to spi-controller nodes
>   ARM: dts: microchip: sam9x7: Add address/size to spi-controller nodes

Applied to at91-dt, thank you!

