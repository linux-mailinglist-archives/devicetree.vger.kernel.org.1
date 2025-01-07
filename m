Return-Path: <devicetree+bounces-136344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA42A04DC7
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:46:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B6713A3E68
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 23:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6A341E5711;
	Tue,  7 Jan 2025 23:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kGHMEReK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A16F6137C2A
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 23:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736293573; cv=none; b=DckBFMop1JhpUDj0l3N++JGlDDE2h7qWXtnl1WhAzIEKHgNiH/GuwCAjGTB7g6HuqiaJ4Yk8I1xP0vtLjYo2Y2itWvQ9/nVZZGM+bfJsGXopcQZMMMrKbC2kgwY8axEP1EHBtnc0/0+mLizrMpx5yR4c/BRzk7mBCCm8OZW4wc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736293573; c=relaxed/simple;
	bh=wStO8FGzL0EpD2M6+uVWmbtgcF+XJVc/S/jk12HlTtM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y8A96nAJ5Ii7ZQ9NePycS7DH6BAJEJpCCpkjQW38K6aTG06ra3WOFOw6qfkG9Ma6qYx65hmZrJ2adfmbkLk/NVf4iBHjnCFiFVVVaHjfNvZFUFF+T4JIH0DI1Hmw3Nbm5D8ZT8M6QOu8HXrwQQilJgU20NJPtkfdsBNs7g8KSD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kGHMEReK; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-71e1597e3b4so4682462a34.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 15:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736293571; x=1736898371; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=53ZFQXskajbEr0eZ47ogNibAPXZI6C6/yg1ypNcJ4K0=;
        b=kGHMEReKKLId2vusdfYitBoarepU1cLEw1+ZSqAtvQSedvDLkGElXAYUbKrBaeI5y+
         IzHUC1iiG34vnM6vracXr0vjq0bd2wuke6O/JwTWnaZwFKL/w4sWx8k9hTK81T1I0EmA
         0accKkmBmLfxC7Gn3w9k1AHwD7P/JFdSk+PslU16k/TY8bcdvhheRSCbA4tIWXbSiIo/
         GVr0lXjzlJ7sXfyuOiynVA+Ivx45bmGfaPbutD94JGfdkaOhwFIZNXstu5/sMvMCsIT/
         5oWNlDU+btxtzb+YAidzIXeka8Cxpg/DUjhzd6HEc9NR6Sd59f6IgNWGAcYnNICJf1o5
         xJFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736293571; x=1736898371;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=53ZFQXskajbEr0eZ47ogNibAPXZI6C6/yg1ypNcJ4K0=;
        b=nr4MrEqWr4AmphPYbZDbIVKIZnieC+MvRVzP4k8pNNZSw5MGcKjiQd8Rzsb5gPQisV
         HqNige/NB2pgZakdBsRTt+ldiNWI1SABvGcFw2tOQuoguQNCgtYmOh+Y1/zvzcWaga/F
         Dfx5SwauqXrFj4iUvU9jx4L1a9XQEdwH2Q/KmKgQPxUTqKxiwlBnAiRKRijn1GSemnH1
         BtcyLMr2WKp5we/t8R1+dL4Fpse+1pVwvF3DyMggyu9UsCIFDUbUClp6H0z3iaQQ9z6N
         4w2wgWERrGSt1aqKONq2ZFTrTtPjlazhhLFsgAjIHE7rNCQgQ5O2s0DgPuLDjov0t1Xd
         DIOg==
X-Forwarded-Encrypted: i=1; AJvYcCWhuwO9JtEHtpiaPVo1PhCigK5BwGyvtT+pLEfhcwblaxSV42vHiDbWcN2IPXh2g3HemQd4HZLuPVed@vger.kernel.org
X-Gm-Message-State: AOJu0YwSCM0TAAblcA90B1OboBnHC7VLEfiCoB2WHxiIjAbsMNUjGBYj
	hS2dKFkyV78x+kaw0CZu5FE95Qvzb8r72e95SHrnD8Suw99mGlRVztjjsrw4/5g=
X-Gm-Gg: ASbGncvAgQBj0l/PyTLCNas9pGhYU92vedxWlD3HGHQ39xirYIU8p5XBt1tDZvvBvyL
	UtOTBP3fJBVQfd00v3WpogDWvjAYD0bmfXLfFSMABnuPp+kJFldLU4qwRK9Mzu+Ta0UU6+2T1BM
	X6ch2UnSzaJO+wRh2fYM4AwdHA3OvThRfzO5/duvxhvD9cKsS7++ZxVo6nWRD89sMBYlLhLGr9g
	0NwtkB3B/xiY0Rlh0wpie99fkWXTzdxcM7j3tsNg9YxL9JbARilvCn0iksFOhbBd8GaExv0Y8wK
	8cTPbqUNftELUxOnjg==
X-Google-Smtp-Source: AGHT+IFNW9X89eq4tsKqogGJq9dQ3bD3J2j1yqQm8qCEjR8MWeV60nZGfDKlX3Wg4Dpn7GlZiyJppQ==
X-Received: by 2002:a05:6830:2643:b0:71d:4196:d92e with SMTP id 46e09a7af769-721e2e61f8dmr481824a34.18.1736293570832;
        Tue, 07 Jan 2025 15:46:10 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5f4db61ebc6sm10251648eaf.25.2025.01.07.15.46.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 15:46:09 -0800 (PST)
Message-ID: <61060bc2-6450-4309-8e57-3d1bb32d3ab6@baylibre.com>
Date: Tue, 7 Jan 2025 17:46:07 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 10/15] iio: adc: ad7768-1: Add support for variable VCM
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com
References: <cover.1736201898.git.Jonathan.Santos@analog.com>
 <a6999fc24a4c61498e55f23861997382df2ab4f4.1736201898.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <a6999fc24a4c61498e55f23861997382df2ab4f4.1736201898.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/7/25 9:26 AM, Jonathan Santos wrote:
> From: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> 
> The VCM output voltage can be used as a common-mode voltage within the
> amplifier preconditioning circuits external to the AD7768-1.
> 
> This change exports the VCM as an iio attribute and makes it available
> for configuration.

We model common mode voltage inputs as a regulator consumer (e.g. vcm-supply in
DT), so should we make this a regulator provider instead?

It could be used with "regulator-output" to be able to control it from sysfs
or if the amplifier ends up in the devicetree for other reasons, the amplifier
driver could control the regulator instead of requiring it to by done in sysfs.


