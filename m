Return-Path: <devicetree+bounces-146358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CC0A349F4
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 17:35:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0EF80174B87
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDCD2266196;
	Thu, 13 Feb 2025 16:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mnJDTdqL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C608E212FB6
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 16:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739463531; cv=none; b=oOOH7T6Rvm6fpISmp1Qg+1WjvLPrcAdwWHzA2F7qyYWxMqz/GVz5MO2C5dBXxNPsre2spNbsaBidodwT/kQepecuaQQz1twyvJRVBKsdVChTcs2GUIluYxptV8ogkhQ+FPCSJgq330jZ5qzOmbLgb64qrSpSIkZO/ozZ6DsYI7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739463531; c=relaxed/simple;
	bh=FPEZM9FyvR3U6n4xCdl/NKl6rhtE2PyRI2Op+6EI5MQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C7U+BDYFsFjAieKHPw31KSki6MDAU4nRifIXaG2Jo0Mb7B+sYhUKZJdsxrQuuaNcbBaUXtn8XWvPUaDfMZ8+v5pZxnnU/yHVqf4f/CJgvnqFGAi4SXZ7RCQO0A38uuHnNiKM7CviMTMe1oAZRGFw4UIf/h+ednqkjGWlAyS/3BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mnJDTdqL; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-726fec215d7so675545a34.2
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 08:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739463529; x=1740068329; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wk0Ke649msGfj609eFpxLZzrb3zbWSGeBEU/UMBg818=;
        b=mnJDTdqLOdB8K44ye0GFUh8u40ijPypdKkXPA8svvypjDgZ3hyYZbRuROW1vdsN5jI
         tFh9PtX5YWp0yAHTkdRDN8BYiuoMG4b7CWQ5cRHZcRSfKERc8AgnrnnPUfzWha6YtHPM
         Y3M4uqd8eVPKcT9iA5z3Qgwzc/N08CuGTRX+9uAWRCC/FKM4XaqUT3vyw7Hi1T4TOpJt
         r+6WPb3y71ygwT1WjJzxb4Y3SMFYfow++Gkq+o9fs284aRFKZT22Zy8rccCZ+OdDHak9
         BAkd9ZyxF61Q5UJOXEobm6lpmFo0QChIowkaIluJD/ewf5/DZEXm/Cqur9PtN/X/ltQ2
         vOWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739463529; x=1740068329;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wk0Ke649msGfj609eFpxLZzrb3zbWSGeBEU/UMBg818=;
        b=kNVa4FvYzJxIPZurTULKHL3yCM6EDgZJ9hyidEOY/l6HVirFgYpYQJe1OMLrYXyAP3
         5YrPOQOmfxTMeSe+QDnlTlDiuxOpowp2slnsKLGpwYWvLV0rS4PDcM8eXKQ7aKYloAJT
         UvgiFDBtaCm+mMtdwqT9LIB9c6Td3PXP1y0sQJ6+UJKznLxRQCor8hxIMjf1rti3xY/k
         oOPqUFCMPOlwvY+CTgseRk1OeCqSZ6ZkrwI6VDJW4YApSH6eGOHJBjsNaLaEja3FoVIq
         h/HmHqEd1GKMdHSQLdTvIC6bvWx1RJET6wNoYeyA8cRN/aFOcTInfEMzmefLhs97ayL7
         V+rQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFJMU5ZFip9WHxzRJpVMvzsmbsrLOzNQhvsbaDah6+dmgy7ve3uv/5NpR/vI7EvnDKZa5VbIDHC84X@vger.kernel.org
X-Gm-Message-State: AOJu0YygRWrxdq6oTXKyaWmA9d3s4h4mmGyoZrqelnvCpAYvYPWHS1Yc
	LlLBDChRnvGpU0wOAa9PkeonhhcCZtKuAHZpW5GWEkQNBVy0GFqq+RkNkRgi+vg=
X-Gm-Gg: ASbGnctVTyhP40gDLYn69rO2B4O+1JnoNN3ynZDk4NJhtJFW/Cs6wSWHoFNShsBd4WF
	+c1NhEIcPyWrDHDeZv20v+AW32HYSpYK2B1ECyYSMiLdwVkuLWxycykwMvlCihIqAf8lp5Gh/vI
	9CE3V2qxMwrPZugWRuAHN1YQ5l83J+7UUXiwCj+UjyjPLIYdRzwjO2vaBDRDujzeNZn593Ua+4R
	qBbVUPIlREQzPwMoZ8E+42gEr663vrHI3Z46kzmGbMHXB3aMJ5OopKxXT/4qUdhEkGSXzQrw0Vn
	oDA4amLskL1bOxXrC08Fxs9owDMhHjeeOzwA1AibYCfQXzx0wEdM
X-Google-Smtp-Source: AGHT+IEGLLAr3ZCm1qk6HJfeJrpeKZVxdyf5Q+R8bhFa0Q5GeLkClKacnVaUNLgJ0z38uu3iJ2EimA==
X-Received: by 2002:a05:6830:6487:b0:71d:ffa1:6b0a with SMTP id 46e09a7af769-726f1d18a26mr5080482a34.23.1739463528835;
        Thu, 13 Feb 2025 08:18:48 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-727001ff3absm693643a34.39.2025.02.13.08.18.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2025 08:18:48 -0800 (PST)
Message-ID: <dacc7cd7-961d-4c30-8b8c-4622132d2cbc@baylibre.com>
Date: Thu, 13 Feb 2025 10:18:47 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 4/5] pinctrl: Support ROHM BD79124 pinmux / GPO
To: Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Nuno Sa <nuno.sa@analog.com>,
 Dumitru Ceclan <mitrutzceclan@gmail.com>,
 Trevor Gamblin <tgamblin@baylibre.com>,
 Matteo Martelli <matteomartelli3@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-gpio@vger.kernel.org
References: <cover.1738328714.git.mazziesaccount@gmail.com>
 <3d85fe979fca352bed4d9841e3233c055dfaf154.1738328714.git.mazziesaccount@gmail.com>
 <6867812e-7269-4686-9fc2-55afd9fa91bf@gmail.com>
 <CACRpkdaP6biD8ueeezBDw1P3LP6ARoJw0zfkmxC-QKK0fw79YQ@mail.gmail.com>
 <a52933a2-8b87-4e49-a346-91266fe3b675@gmail.com>
 <CACRpkdYMytiXoXrjTX3ts6ce1T6Xf4rSyk=sDP9fYz730Q-3bQ@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CACRpkdYMytiXoXrjTX3ts6ce1T6Xf4rSyk=sDP9fYz730Q-3bQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2/13/25 5:53 AM, Linus Walleij wrote:
> On Thu, Feb 6, 2025 at 11:09 AM Matti Vaittinen
> <mazziesaccount@gmail.com> wrote:
> 
>> I just realized I should've shared the link to the v2 - which may not
>> include all the recipients (because it no longer touches all the
>> subsystems - and the get_maintainer.pl probably reduced the list of
>> recipients). So, for anyone interested, here's the v2:
>>
>> https://lore.kernel.org/all/cover.1738761899.git.mazziesaccount@gmail.com/
> 
> Well it touches (uses) the gpio subsystem so the GPIO maintainers
> should have been on CC...
> 
> This is one of the shortcomings of get_maintainers.pl really (also what
> b4 is using): it does not know that if you use some specific APIs from
> some specific .h files then some specific maintainers need to be on
> CC.

Can't we do that with `K:` in MAINTAINERS? 

I see:

K:	(devm_)?gpio_(request|free|direction|get|set)

to catch use of old gpio apis. Maybe should add 

K:	(devm_)?gpiochip_add_data

to catch anyone registering a gpio controller?


