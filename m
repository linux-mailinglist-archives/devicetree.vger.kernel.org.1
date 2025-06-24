Return-Path: <devicetree+bounces-188866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB4EAE5D81
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:17:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87B537AFE02
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 07:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE15822A7EF;
	Tue, 24 Jun 2025 07:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="d3euSBxt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149D31C07F6
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750749414; cv=none; b=Thr1O9qTfsFr5knyN9Xz0a9Zhy2uZbHRj/LjVV8dDFawvTQ+gY1t/PS/SHl25+dcaX29nU6LOEAgtUS86Jc+t9mUHOCbJ3nWk2FyT8rbwPrkLfU5WbartZVxPU4apTEY8/jFsK0hqqy9qTtQiKn1QYjYbmgNfgUflBWYsYdo4g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750749414; c=relaxed/simple;
	bh=Kf5sT9FyzP9nRCpvzip3a8I7EkXjtvrAfY7mzbPGml0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EKt7zDeJQszcjMD11UIIfEcfV2QmxTqHsJjcpQBO3OqA6JvvWXWccp7PuGvbuyPo7vCIlBoH6Ix2vHZgonDtPbIgqmQz7s0GMFeClgppMmPkaECRSBw5Jdt5rCb+qk2bMM6qNWG7ulu2EY+w/vCyYXjgj9U0+zFStvlTzU5FwDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=d3euSBxt; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ad574992fcaso874206366b.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 00:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1750749411; x=1751354211; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=joF+0WiRGSv8mD3xiwNWcKl93ysFdtXjIPy5dUf3uGo=;
        b=d3euSBxtyDZyFij4KRA36AcNcbjiUWXJG/hd5Ce0VHIlxn0OURT5Gw8jLekKMyTHYv
         1zJJI9vBGAChurijGc2fAvO86fCYFGysrigYwIBKtEkI4ZFzDeRITGjtkiDyleCkB4Pr
         kc/TvTZ0trAacNh7XOCWXRfQoT7a3eb9XDfEa9MZuf0ryKSf8wjU6/Q0j4iGIJeEALG0
         Zkp16ZyQPgAYxXDtuIPA/AETuCkQoyUYBz21A0LPbYZ6to/vxDVc+lY7qt8E869TJniE
         ywOlTPq7olRwowu3HXV8lj2cp80ie3v0xRsXgUrQsEsEwW7dkLRkJOIGbYvaxrNyyrMc
         Lphw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750749411; x=1751354211;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=joF+0WiRGSv8mD3xiwNWcKl93ysFdtXjIPy5dUf3uGo=;
        b=HZdDUyy/8B5PyBYMcwPlrdGk0s8UCDfRtDj2n+YOWilunwX4kvK/W71SWvga8wEIE6
         usIEO6Ws0iGwmRKaqcm1ln/UfMb8Bv70TnlkCvfB6pfubdIE/TQzcbu2eJcXKUP3nB4K
         5jGUnznDElZj7vFGpbAAu4cRUDt2Kqo2DENAcV/m7xK3zuKcvw54C2Ki4QIPbjU6C6eV
         gMqFtUTQEriIQg+tiwpwkwrtR3g34nKXY+bTpxBiZiD7Xvq7MMadzKD1EdWxKW3FqyId
         Ek7ia+P0ag+EpfAZe06r0QaonYXhO/D6HNP7GHfiLFcmVZtrZ6qvlBGkf8tvnZiKdfyb
         uaNA==
X-Forwarded-Encrypted: i=1; AJvYcCW9LC2B+dBZffNSciugqitFeFwUdCRoXK5VYyUGtVXQO/ru53OwiADWw+GF7VyivNp502gW8bSnTQif@vger.kernel.org
X-Gm-Message-State: AOJu0YwtN9xiwxqXZWnPZDuJzaVyu/LxF6tktjmu4ltv6X/quC+KUWJ4
	ojJDq6Jzci0nax8UJzOvUQkgkezX6gcCh+mk/woLqZ3Fd4EbUJEHnvj2yQSB3twcsns=
X-Gm-Gg: ASbGnctxCm5SM6nqLZ4maX9R8HTWHLQfAu9RUw1E2Dpmkxa0hP3GfZyO482qHI4dTFM
	6KVIVsC26ZuvEfn5mrer30daWJKKd/mlFznY+5mEsBRkljMUD7vaDQbbRzP7bBuWNnDz19fx+jC
	UOcPi5YGh8x0CD7qWEPDm8YswVqM2nugon4WvPk7k+AMFwdtGQY9nBh0Cq+QkeQb7VQXF9/Dgkh
	5KKmyCFbShWOXb86yqwZXJrqgKTrSFXiFt8qmNKTrwBFiu1u+L+hH03J+1aAQgQUVjY4BAjII0d
	8aLivHkF0und6X43hlnEnKa6jxmQRxbcePJZ8G4y2Ttfp65uEYw6/nOj5hk7B2wuKcWampo=
X-Google-Smtp-Source: AGHT+IFYy07DY4uYK3QcH3rBfvmrjpR9k+VjFUPDKirwuNclyiAeOOuHFAt+a/TuiN+ccTbZcewo+g==
X-Received: by 2002:a17:907:72c1:b0:ade:2e4b:50d1 with SMTP id a640c23a62f3a-ae057f01cc3mr1588454366b.29.1750749411421;
        Tue, 24 Jun 2025 00:16:51 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.110])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4e32sm838522166b.57.2025.06.24.00.16.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 00:16:50 -0700 (PDT)
Message-ID: <0175195b-ee78-427a-afae-0636a24fe9ef@tuxon.dev>
Date: Tue, 24 Jun 2025 10:16:49 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] ARM: configs: sama5_defconfig: Select
 CONFIG_WILC1000_SDIO
To: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, nicolas.ferre@microchip.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20250617140502.1042812-1-festevam@gmail.com>
 <20250617140502.1042812-2-festevam@gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250617140502.1042812-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 17.06.2025 17:05, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The at91-sama5d27_wlsom1 SoM has a WILC3000 Wifi chip populated, so select
> the CONFIG_WILC1000_SDIO by default.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
Applied to at91-defconfig, thanks!

