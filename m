Return-Path: <devicetree+bounces-269572-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLCiLkT1ommG8QQAu9opvQ
	(envelope-from <devicetree+bounces-269572-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:01:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D9B1C369C
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:01:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E78D3090EFF
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:01:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EF1E2D46C0;
	Sat, 28 Feb 2026 14:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Xx76I/lB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C9026A088
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772287279; cv=none; b=MiXlAopNLQvEF51MS1i6VM460yLjlYUCxySDTc9/xivKcACV1TjNu3DcrQXDqyWgbRGtaXifvp3Q2O+VtItbLtX9jNr+3LX3NCvfAXOTGK+5soRFASUp4fYKh4JEIEOM+l+TnO259k+YEXzQwL2q0HM+TMzZFb3v6FjbVAu4lfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772287279; c=relaxed/simple;
	bh=F1FnbYwNKYi65y7x5YAQnaS6Pvxa5tXsNvGxRcfdN70=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rJ8M5OsTQWlgFAcV4UwakD2D6t4WHYmNumSRltC5bq9BX6Uev4rhT00a/BRveElDkBwpEAr8ILoUmJF+f/lbhRx5HM7x98jllYWYqc1E0QkAzgXvjLtlOnAHYgZRMsBdUCJK6+p2XCZb9oV+XqFDlUvoRVf+eaS2yr5t1UsLEZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Xx76I/lB; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so34466795e9.1
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772287276; x=1772892076; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RS6B8HKz3lfStaChpHPRyrCXmTOfflogCUXEfzC9Seg=;
        b=Xx76I/lBI/eGl7F+ijLsAT3agLJAbc+WjS41K5Ln9VKajLa5/hraGdw20krnbyjEcC
         5KsmaMg3+O/uxxVlP3FPxVHlJpIkOV2q0W3xzatDFdDG+MqvjgPwgnIT2j5uVH3NruU9
         QSyxXTdXmeg/IWmzjv8VhwIq4rjITiRITf8e/W0BN74DM1bzuVxQEFXd0lKb7GIcKtTT
         Flpi4cnVLNmdXydJX3nXe8RfFHbJpxBmtpe/ZB1URvmLJkPkGhipp2+n7UpAwgzBVj6/
         9lGrCkpNI0Z//y7/eYpYe59lt6025akk1UcavOcNzH4gy7YbZsqy2kzNpv0eppz/BOtn
         dNhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772287276; x=1772892076;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RS6B8HKz3lfStaChpHPRyrCXmTOfflogCUXEfzC9Seg=;
        b=voA5BQf1dPS/UkhxD1yGMGe25L4I3dmSJBaMTO9o8+KwfQDIrWgpLoyAWKE741eGl+
         BPSM1aVLAqCpoRzkdRpGKlDAmEVps4+OCRJWBNX8eWnnLftkxyiuua3SMC6d/7gV8W4M
         yt4H8JFoa/FIsmBPwj+ycMCHS311EalJiQ0in96KKkhozbNAgmKlHVvJ1zHxvhwqcQJW
         illdXQfghh/4NHsJvZfrVuMdQtmYd7as3RAXpxAUefOxJwqhLeZaE4leD244DkXtrP4s
         dY99j4jDoVGzdEo4L+e5dGsH7ByPRRCzNMwKfmUZhLkRyfTIuSMPqd4U6MDhimdniLfT
         ng9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWJtKcSnugag1JIHjwAEYVU7UeVTJ7JDhkh5vatzsJQ746+qQ7fb7dGDwJ+aSHvgH5pWI5Z3fg9vKJa@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9I9BJDm0wABqfEFmsoJ997GbRDceJ4EcCN92F8woTDkAe6va7
	sOYjeupe1LLvqnVSsAhsiFGos+dkYd83I/Jz+ONEZUPajaQRZMDdCFezOS11hGWXhkg=
X-Gm-Gg: ATEYQzxyzp4FpELp83fiT3g1DLYmjRjf0aERmxIA/2YsTuyVXAG78/x5STtkeDge5Oy
	RlJT53mBAld9Rt3YbhtmQA4ps7+bxvkEA04yt3f7+PUSByi1cVJuHUGrQJyLjsVFofqJqUmiFI8
	OIxCc1dDOWgpgG5ZjdaAp0RYP1s4oHEhqLjEZTABi6+D3OkWp8ipeiyd0di5C7LjHO/fpPEjVh3
	Pc1TKZr0Xv33MSzm+R2f0eMMES0cYzAZA2bx9VjahEPOO35Npnq8R7vR5tOCuaa6+DM0mi2oDNm
	PR7weiB5Oxauq+hgwAWaH6n6Sm+NRbg3OqmXx/av5n2CXwl93oSvDkjE0N/R+2pBKTW8JBwq001
	aEecDClpqiNbVDvIMoKM3uOjdtbMQY1YEYtbsLKctZQs8sqsOMXqbBf0L8ncHVMn8I6+8c6TdT4
	DSmUr4HS5mk0WBItidNt3GPsXKiBUtjXEaq2hu1G1C
X-Received: by 2002:a05:600c:3108:b0:483:709e:f238 with SMTP id 5b1f17b1804b1-483c9c1d177mr99483705e9.29.1772287275961;
        Sat, 28 Feb 2026 06:01:15 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd765604sm246812765e9.15.2026.02.28.06.01.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Feb 2026 06:01:15 -0800 (PST)
Message-ID: <0e2b745b-c76d-4b53-b5fc-9991c943e603@tuxon.dev>
Date: Sat, 28 Feb 2026 16:01:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] ARM: dts: microchip: sama7d65: add LCD controller
To: Manikandan Muralidharan <manikandan.m@microchip.com>,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 linux@armlinux.org.uk, ebiggers@google.com, martin.petersen@oracle.com,
 ardb@kernel.org, tytso@mit.edu, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: Ryan Wanner <Ryan.Wanner@microchip.com>
References: <20260225085430.480052-1-manikandan.m@microchip.com>
 <20260225085430.480052-2-manikandan.m@microchip.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260225085430.480052-2-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269572-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[microchip.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,bootlin.com,armlinux.org.uk,google.com,oracle.com,mit.edu,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:mid,tuxon.dev:dkim,tuxon.dev:email,microchip.com:email,e1400000:email,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,e1208000:email,e1600000:email]
X-Rspamd-Queue-Id: 25D9B1C369C
X-Rspamd-Action: no action



On 2/25/26 10:54, Manikandan Muralidharan wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add support for LCD controller node
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> ---
>   arch/arm/boot/dts/microchip/sama7d65.dtsi | 26 +++++++++++++++++++++++
>   1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> index e21556f46384..b2fe76115aec 100644
> --- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> @@ -278,6 +278,32 @@ sdmmc1: mmc@e1208000 {
>   			status = "disabled";
>   		};
>   
> +		xlcdc: lcd-controller@e1400000{

Missing a space here -------------------------^

I can adjust it while applying.

Other than that:

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> +			compatible = "microchip,sama7d65-xlcdc";
> +			reg = <0xe1400000 0x2000>;
> +			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 56>, <&pmc PMC_TYPE_GCK 56>, <&clk32k 1>;
> +			clock-names = "periph_clk", "sys_clk", "slow_clk";
> +			status = "disabled";
> +
> +			display-controller {
> +				compatible = "atmel,hlcdc-display-controller";
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +				};
> +			};
> +
> +			pwm {
> +				compatible = "atmel,hlcdc-pwm";
> +				#pwm-cells = <3>;
> +			};
> +		};
> +
>   		aes: crypto@e1600000 {
>   			compatible = "microchip,sama7d65-aes", "atmel,at91sam9g46-aes";
>   			reg = <0xe1600000 0x100>;


