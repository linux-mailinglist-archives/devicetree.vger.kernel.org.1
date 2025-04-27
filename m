Return-Path: <devicetree+bounces-171297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B6397A9E35A
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 15:43:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FC3B189AF84
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 13:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0718D14EC5B;
	Sun, 27 Apr 2025 13:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NoabVIaX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539277A13A
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 13:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745761400; cv=none; b=b06UEqcLNjmg6YJAXy0LaLSou42nhJIdjOfg/nCh4YJ21/UIjG/CAlhqJUx4BZhOUKQ2BnD+agJgojz78c8YL1x0E7UvXcKeBEJkEWn5c9XrYdW8LJfCffiPoiqNHhu3F++wL42LhhsFDzulsrZX4CP/HRGIMjHgxDKI3jiO/I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745761400; c=relaxed/simple;
	bh=REZ0z+XUzHW/ptwizPeESYAMDlgEamrUX13FRsJPeO0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u53ey1eCYF5IJViGB6853GWqa96pug0aZQZmtBQ4lcyzlyCu1Ixn7zbaEVmhZpVKM2VqqzXbVexpNX5qHV+XSoVETjjBgCAr/3lDB6u6CKJ7hzB/wdhUffP8bK09pbkF+qTu5MN2qUu/xTC4DElcp//rBHPC7Jp0HlMaqtnem2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NoabVIaX; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5f4d0da2d2cso7349774a12.3
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 06:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1745761398; x=1746366198; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z4+/5/aJ00yUVo743NQIajtPIPLeDpfyWDZMv+sSR0I=;
        b=NoabVIaX/mUUlaXpXXTOxHW6OsMQf+NouNsY2/GwxWZZc7hbDnucB1DuatPnBJOd0d
         9OoFs3OsZ91n2tha3E2YCuPptq8Jyk2UEw1WMbKqC83T2Qu892v4cM0fp6qAYmg5M6Jx
         DwsvuZHqU7g5YgDsahiu2W6zWrSNnqyQJld2YX6ZvxtqfbHA+yia2MO64fvTskKmewR2
         /AFZ3kOUW1MqFQnXh6AsceEU9zw1xCgif0yiZm358IFJI/pr973HF8tpPh5RipoeUUbq
         nbLVhTDdlar8DW5KnzhYjVLJX9bw5ZDLCP/tJAJ/3ooonWLot2QSazFRKGAduaI364J3
         1QHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745761398; x=1746366198;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z4+/5/aJ00yUVo743NQIajtPIPLeDpfyWDZMv+sSR0I=;
        b=gRC+MefIwQb6dZZNKOdagxjyoTZnQZ5Jb4r0WKBuEidEBjp4nd4vJmVG6kLNI1G1q2
         vtak1fJRt9iZd8i58dEUMjO2DuOHcoxg9uBcuUTi4kiaCQO1Bwbm+HM82pFtvt8VhqUE
         u7n/l6IE9PiB+ttfuGbmCsC2tPKwyxDSlMIlYMVXAWVmGzR8Tvy/vGyRPXha4+DiFxD3
         BbxMiU218SLoi2F1OdeSz+dGConFEEWri+18B9l2j+bedI2SEeqLPll82+Pvj9/tuoUO
         uiLAe7UyP7ak33WywwQ5QKYTTdLO4GlA+us8xek8dT/xJEQWjkdUvKk1nLQ2fdDkg5hb
         QAUw==
X-Forwarded-Encrypted: i=1; AJvYcCUSBjGGTTKvGvCJ9dheiJcTbv67bN7OtfzZXm23PKygBiNwxduExRCqhBaGD5I/jBIJkatyM9SfSM9G@vger.kernel.org
X-Gm-Message-State: AOJu0YyPBKje6xl7NCkFcewHiylhLDMnfqtj1fw0sDar4SXxoNwWgkXp
	E4Rmh92H3hVekN65L/KHdvA6U4cEfAQ+dg3qqnSYLjjvdBCueJn5SvYlV79FcSI=
X-Gm-Gg: ASbGncvCEfOGkyMbMutUmUA/Ycro0+pJPO8TcrdcCJYonN+n/EmjyU/0l5vNev/5uQr
	HGILwLuH7OC0xm6K1LXJJmO+lekZl1Wt4J9sJea4eHsHRDqsOydy/EKrpOHTXp7Lrjol3A9HHkj
	39KA4JzrkEmDJ6mvKscpqZXpLmdbIv6w6KQz1PemzcvFdxORNj9M3/SFwTeeeoJB+ldSqud1/Lp
	DRoJ/zdUqQateWgI/3jNjxayrhB4svbwb74lyypL/My08jNOanb4B65oa6mVJLWGzeOO2MO/fWX
	9Km7uy7Q9CX7Mx7DSo3s/JXoi8h+8VSKo1TQXdhxoNvved7+6rHkVs7SOR+u
X-Google-Smtp-Source: AGHT+IGRwUVwOyuzymMCwS+0qn15iMV9FUUdCVvXLMQI1GdB2QpaBU0EsMQ7nsFAnRwnHK8jvuB1mg==
X-Received: by 2002:a17:906:1548:b0:ace:3f00:25f5 with SMTP id a640c23a62f3a-ace848c23f1mr395019466b.2.1745761397537;
        Sun, 27 Apr 2025 06:43:17 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.145])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ecf82f9sm442101266b.88.2025.04.27.06.43.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Apr 2025 06:43:16 -0700 (PDT)
Message-ID: <33e56253-32ee-4eff-a7cd-fcf91ca4f37a@tuxon.dev>
Date: Sun, 27 Apr 2025 16:43:15 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] ARM: dts: microchip: sama7d65: Add MCP16502 to
 sama7d65 curiosity
To: Ryan.Wanner@microchip.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
 krzk+dt@kernel.org, onor+dt@kernel.org, alexandre.belloni@bootlin.com
Cc: Nicolas.Ferre@microchip.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1743523114.git.Ryan.Wanner@microchip.com>
 <60f6b7764227bb42c74404e8ca1388477183b7b5.1743523114.git.Ryan.Wanner@microchip.com>
 <6e52883b-2811-4ac2-9763-5974ca463274@tuxon.dev>
 <af92ffff-f900-4f29-8d26-2516a3c91805@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <af92ffff-f900-4f29-8d26-2516a3c91805@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 14.04.2025 18:38, Ryan.Wanner@microchip.com wrote:
>>> +                     vldo2: LDO2 {
>>> +                             regulator-name = "LDO2";
>>> +                             regulator-min-microvolt = <1200000>;
>>> +                             regulator-max-microvolt = <3700000>;
>>> +
>>> +                             regulator-state-standby {
>>> +                                     regulator-suspend-microvolt = <1800000>;
>> I can't find the schematics for this board. Is there a reason for keeping
>> this @1.8V in suspend?
> Sorry this was an error on my part, there is no reason to have this
> @1.8V in suspend mode.

OK, I'll drop it while applying, thank you!

