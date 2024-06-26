Return-Path: <devicetree+bounces-80288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7C4918517
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:01:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 080C51C229B4
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:01:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68D23188CA6;
	Wed, 26 Jun 2024 15:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Bzp/c9Or"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F10186E3A
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719414109; cv=none; b=Ef/xpmMWbSnXGd4TdpP83Un7c4ZWPZ6KFMCfeBxFitoUPXj1aiNc9kSqcQmnJid5YoIDUUB1yZTVWCCMVzOU6Ag9lRj1Nx7yns7BDVYtUNt5YZguE7w+WIF454QpqCmu5SWpsqJAfqsP6h6sPnBER1tbjs8z00bJWYjKG3UN6WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719414109; c=relaxed/simple;
	bh=PK/s4HBULviBheKUttSYV2eJRz8+Cb+6AYgus4Dxk6I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QuQXwun7JiPpC3XBUIwjn5qEfqrBPEzQrjPgUjCw5AxZAF0EY/1KigP9zQcbU7eqJuRUZXdEAYgjNi1FwIcoBJbOaOF//12be0toKbPpB7clR/UGWBQN8P7iP9ShVhm3tEWwICJkAH2XDacIasZr/O9qO3zUC7CVwE2aGsmyI9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Bzp/c9Or; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3d5288e6513so3567933b6e.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719414107; x=1720018907; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ttyQ/o7Vgxk0yGUj/ek3iXp7cLp/I4AxUIUIqxODvtI=;
        b=Bzp/c9OraxG8HfyqAV8ZhhMo6aSbPanIdzSrE5QOcq/aV5w/+ylooedc94cxJPrjfY
         qs2wIVstd/iC84kTJZUT5yTJmCFBBqmbwJwuQZpzbpD4gAsAfq/VlvVT5UXY5MFF3GdM
         7Wv9FqWSzq8t239Qd3PTmL0PqAHdK7ZoJp+4SsA9x2OJIkmV4f5vPMdaYvwpqnbXaqaz
         2gatSFtSyh8baz4Eb2nxf3fR+pOmmEv5RaFE3SiDEI6oksdT6K10uA3saxkQQP3xNHKD
         OIGttXjVIGFuaUf8qhyhJudtPGV6Tftk9rHgQbn6UCR3/N5UjUVQoXoGmEQ47cU2bcyQ
         YfLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719414107; x=1720018907;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ttyQ/o7Vgxk0yGUj/ek3iXp7cLp/I4AxUIUIqxODvtI=;
        b=LAPdNPfXMreeWaEqt1LLjUU7KLEGaIMxp3BRkjt0UGKD5HD8ZFtg5QaWZ2hsaaBV/l
         0gJusfUi9Um3a6So8wPBpZRYeyACJElTOKdEVzXDlMVFY7gyE5wWWcjFctGVXC+28fnG
         XwVCNOUD6lSZ5UEYwOZRvYZgBfGicyXlZS7BYA5jv8bBD2xBG/Xnj8LJw59YNEI8qnki
         dsOtV0dSWlHbuSLuweqRCa6e06765br+P8S64kDEKqUBcYity6x3eRoRYvtoHJLDh5m9
         3FdVKLKjySr/63ZmR4artl6lGCr/7OHRf3oRWrV7QJhI+DAwc0mDepGwxVTkq7WOpf8C
         ue5w==
X-Forwarded-Encrypted: i=1; AJvYcCUtqJgVLCcxag5qDYWk+NI0EoYvdS9nYlugH5rTXTd1HKIswliKaPFV5pEoyWJDZuKUE3m0TG1o6hLgfXhgH8BsG939UAJBRMjdZQ==
X-Gm-Message-State: AOJu0YxSM72ZOedIDry1IpmSCy1wVQ9+EKUVTbVtqal9Dj9OqjShE/kC
	WRusauZLT4N2b2cnoBs0mSiCdfA0uENEUir9VzlA7VD+L4XNS0iEvWgMviQLDmc=
X-Google-Smtp-Source: AGHT+IGpub5V1HnsVQQgPXpSo9KWHdiL1Hawoz3c1OyBqSL6oM9wSfME+uNBi7tvbERbi6DLKhPbXA==
X-Received: by 2002:a05:6808:1708:b0:3d2:2d1d:3796 with SMTP id 5614622812f47-3d545964be8mr11659338b6e.18.1719414106811;
        Wed, 26 Jun 2024 08:01:46 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d561e56766sm229248b6e.30.2024.06.26.08.01.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 08:01:46 -0700 (PDT)
Message-ID: <f63da6b3-cfc3-4452-a638-126c53955c9c@baylibre.com>
Date: Wed, 26 Jun 2024 10:01:45 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/7] spi: bitbang: Implement support for MOSI idle
 state configuration
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, broonie@kernel.org,
 lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nuno.sa@analog.com, corbet@lwn.net, marcelo.schmitt1@gmail.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1719351923.git.marcelo.schmitt@analog.com>
 <7e2231edf30e1769f12273032c04b8a951e28837.1719351923.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <7e2231edf30e1769f12273032c04b8a951e28837.1719351923.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/25/24 4:53 PM, Marcelo Schmitt wrote:
> Some SPI peripherals may require strict MOSI line state when the controller
> is not clocking out data.
> Implement support for MOSI idle state configuration (low or high) by
> setting the data output line level on controller setup and after transfers.
> Bitbang operations now call controller specific set_mosi_idle() call back
> to set MOSI to its idle state.
> The MOSI line is kept at its idle state if no tx buffer is provided.
> 
> Acked-by: Nuno Sa <nuno.sa@analog.com>
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---

Reviewed-by: David Lechner <dlechner@baylibre.com>


