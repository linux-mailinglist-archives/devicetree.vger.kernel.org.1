Return-Path: <devicetree+bounces-78201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3985591169B
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 01:15:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBB7F28367C
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 23:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00E48155C84;
	Thu, 20 Jun 2024 23:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Ktu5iUuB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4DE614B978
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 23:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718925239; cv=none; b=kK4O/D11O4nZvu7soDhcBIWL3eUOJGcK9Ikuxlq/JfOYc6Q00z0jlUuVfwL+0uyhOxayXQUknxl4WJ7Y7DZh+NxFyB3q1L4aUWdgvhfDkrvHHk3Xyl3ewl0goJcyk625rZy4e1E8rxuUUOykV/3eQF7qv+YeuTFbfdc1AEiIhzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718925239; c=relaxed/simple;
	bh=moyy8bUxRmyLvQ1UUSv+zZxJA/z5qbOMYR9+oGPfK3A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KrAKrhFEIW5yyUy8c+efobqy5cwMHgkExtf4cI0T2jSlHXnux/FvibXIBeiTs4QGt7G6bnFqwVAWL40J/uT+s3SmEPvFpF2anB3/r1+AkLlgdWtANZj4dxHiWIL/2sU41tParFvSYTii79CaM+AFFtyKqnPtMy7fkWGQvER5V9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=Ktu5iUuB; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 76D653FE20
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 23:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1718925229;
	bh=t0kBjJJclVeFv5sCLu7ZlbOalZQki6cx+luI1vzwY9Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=Ktu5iUuBKr0TvUOSXtqAvCaBi9Nu/kau9hRK8gu5ictjQ61kiWzy7/ZIFwRs4AJRJ
	 ARjXaEQUfwF9mQ9+ilu/TwD8jajOwJW5r5kM/SYh5+AW7veeXMWr++XtkkUsWIgmvd
	 ePXu97sCY94AAbRCPI+KCK/tcuNWv6qg+kSF8OsdNSOUdIfeLC77vOVB7q85Oz8At6
	 sCbfW9YwBMIwFTGhqz4JE07IwG/oNSS17dktVg2rAZ7Td4xSwwVbHaYbSpzOHgOgG7
	 5rwQgU4rtqRaCoUIOTStpcmbprg09ZuJ+1VhmkNcPdaX8lR5yzOxfk3hx5dKlcFR4Q
	 pHXYjN9Md1dzg==
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-423034c6119so10082815e9.2
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 16:13:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718925229; x=1719530029;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t0kBjJJclVeFv5sCLu7ZlbOalZQki6cx+luI1vzwY9Y=;
        b=n0hYPC37dfBCkn8pWzCkxe2icnxpN+5roHwLt9/dW9rUYjsKDZ2dmjHnC8QMntzrlL
         UTjwgF553rqOQahgZewdlRCOC+3jdTrNSe4wfJIzTX8DR6xtcbylfTG8OUmgYmzEPf8r
         Fm05jszjzTjn8mk+x7Wzt4J63TR0ussavF2uoqI7P7iiLNX8XGFKsn4TtEG0WUbdxnKx
         arKkuf5Yll/dt531voUKaOacJGg4A7XCGDeb31LXlYOiraLTeDJF9pVsogY4aA5o33KV
         sYZSbic87Y+y23tnUC0hgpdJd5KilAj6OhSEqRZS/GlOB2JgzKcV9uQVwaRxKl/bbOkN
         0dTg==
X-Forwarded-Encrypted: i=1; AJvYcCXTg3MM4QhpQfUo/f4noqPgLh/jqy7mHRO5j4TeHqEZQoA2EIeSm0/ATgOcKHYyaRTLXkb+S9p9rUxr+NwQvDXN879SbSQgN/6UnA==
X-Gm-Message-State: AOJu0YxbwW4VZuLuT9ND6SIZ0Cl/EmWDN7qzH+PITOTfz2YIHQavb6yd
	oiHbJ2SwCYKagVLdKrVXHc9jsFV4vRUyCJ6q6CBfdcs3rrmYjQpu7kYLkXVFQmQ6bfeWG+NKIFp
	MakCevBA9rhEdQvbntc5MEs0ehNsOu74sPJ+PzRGBu3ejbQUHdlXk13AcAb1PEqAzsjlFuxFk/p
	U=
X-Received: by 2002:a05:600c:5583:b0:422:720a:1bef with SMTP id 5b1f17b1804b1-42475184751mr47390975e9.24.1718925229086;
        Thu, 20 Jun 2024 16:13:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/szjKS05yNUuwLBXEoegmRaYcN/BTF+XSyE2bm4gfonOSPp8TsNZ8tNgl/4SdQCUw8GatIA==
X-Received: by 2002:a05:600c:5583:b0:422:720a:1bef with SMTP id 5b1f17b1804b1-42475184751mr47390865e9.24.1718925228659;
        Thu, 20 Jun 2024 16:13:48 -0700 (PDT)
Received: from [192.168.123.161] (ip-178-202-041-025.um47.pools.vodafone-ip.de. [178.202.41.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4248179d3afsm7127015e9.5.2024.06.20.16.13.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jun 2024 16:13:48 -0700 (PDT)
Message-ID: <8ceef5c1-03b3-4468-96e3-d86db5434e82@canonical.com>
Date: Fri, 21 Jun 2024 01:13:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] riscv: dts: starfive: enable heartbeat LED for Milk-V
 Mars
To: FUKAUMI Naoki <naoki@milkv.io>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, kernel@esmil.dk
References: <20240613024827.36512-1-naoki@milkv.io>
 <20240613024827.36512-2-naoki@milkv.io>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <20240613024827.36512-2-naoki@milkv.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/13/24 04:48, FUKAUMI Naoki wrote:
> Milk-V Mars has a green LED to show system load. This patch enables
> a green LED as a heartbeat LED.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@milkv.io>
> ---
>   arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> index fa0eac78e0ba..4f4bbf64dbe4 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> +++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> @@ -4,11 +4,24 @@
>    */
>   
>   /dts-v1/;
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
>   #include "jh7110-common.dtsi"
>   
>   / {
>   	model = "Milk-V Mars";
>   	compatible = "milkv,mars", "starfive,jh7110";
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-0 {
> +			gpios = <&aongpio 3 GPIO_ACTIVE_HIGH>;
> +			color = <LED_COLOR_ID_GREEN>;
> +			linux,default-trigger = "heartbeat";
> +			function = LED_FUNCTION_HEARTBEAT;

According to the schematics the StarFive VisionFive 2 board like the 
Mars board has RGPIO3 connected to a green LED to display the power 
status. Shouldn't we consider both boards?

Best regards

Heinrich

> +		};
> +	};
>   };
>   
>   &gmac0 {


