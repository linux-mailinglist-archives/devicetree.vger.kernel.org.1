Return-Path: <devicetree+bounces-81928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF5E91DF3F
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 14:28:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2136281F2F
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 12:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8165714C5B3;
	Mon,  1 Jul 2024 12:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="kytsu62T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD4014BF8F
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719836899; cv=none; b=pf3Ipzc0aIkJUag29jjYPh/+5RrKaKAaq5j+HdtjNeunnnyiynqPqn/xG0IHKz3Z3ub2uAAEnyDy86TyEbXz12xAg5+jDgERpmC7JLtq5ho7bjegwi6okVuow6Ux6fk9rmEmEf7PY6AljG6qO6TAvKke6CZ4G4jRS0rRjml8k4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719836899; c=relaxed/simple;
	bh=khELQqYNjfLX09C6ptMJNjI8G/XKnRYRUg+BudcwLPM=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=blDD+Ok6vAhpw1FqVzYyjDS/QoB/RT1BEKNtc6PjixPPyGOn530RkPFJLLgR1d9uqtL6HvY3UTbQOL711kDoADXyAyhg7ORmGeLOREN6nkNLiZLzN1sOLiVuUxVd8nhkXaGCzsrqMye9Ol0/R7+F9O/3KvunpgWmnDIqmxgnzPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=kytsu62T; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5F5493F5B0
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 12:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1719836888;
	bh=XIOnEi79dUQpzl7QQQTZmx9xHf9Cr/nC34IURbqE7D8=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=kytsu62T+EjQnXrMafO11Udeqd8Kllk5De6YEZugvHdTxhO4jTRpLiY+aLMryIb6y
	 fXPfE7LF6AL157HWQVnD1GgN4aQXuakndmhpy8LbAmxGfbPBQfZNwlBiJSMX0NxFiK
	 ybNYVEsS6rDj3xfGxxGjB1B+nZycmCDnaOatXC+k33/bhHAkt++6QUWKIeODLPRrVY
	 /nPbvLyrvg5EHdogCdnRTdBzD083RvbwSKuwWBEBPpfmXxpC2ZW6283apsS5zqF39f
	 SCMg158MRTXTs4xwT1qFR7Xo2iHQUIdr88pCqPYPUlDXMee3ywZKgJCrq1qxAoy0ld
	 5wDbXpRaBH2Yg==
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4467f700bb4so384291cf.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 05:28:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719836887; x=1720441687;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XIOnEi79dUQpzl7QQQTZmx9xHf9Cr/nC34IURbqE7D8=;
        b=kO550wN3yPA3i3wOq0sYAFgGtTsMEJtVBdeF1ewxw/yaJi/ypu3zjiqekP6y0zYfi4
         FnRo0gPWfYIsyc7IF3DMDLi/QQ7rDLl4qCHVQIfuyF/znDWPL282+6WsE6xDvfZ3N1uj
         sLYO8KpYkEjOg36EQ9u1sy/De92AtjX3YocWkKxC6DyQxNfVOyne9wBDe1+NglTwp/rh
         AHHfLPlvWK5F/TU58GhLM7oAZz5dj5Wp1vTSd7BBFHM9PYcfoZ3qAKbWr9BhnCEIAoJ1
         Mf8oxLoZr50WKO3tx19RcWE5M5OCE+HqVh/yiTY5klzk0bTfc6eIbKw1wDjzyiqv3q8+
         8hgw==
X-Forwarded-Encrypted: i=1; AJvYcCUuJWlPTI7Z4Wj+e8pe6nR+mpmycvkeND5F1BFSWo48EEf3iKYWWu4B9whd7w1qLd8P7puCYGA8KY/+ph3uRZtBDx0qq/h+3d3GVg==
X-Gm-Message-State: AOJu0YzbbgFKfcSvK+TmpW2mkeqQDnRHHF2+1mTYP5GxC1OMhdNBhfhR
	YXlcEfqLYwDaz3C6whRfrSVCkdaCFTzMpLKnZ8j3QgUbstBYbiJ3Il7h9ZjPVx2caP4fDUDYZFI
	/li4RzInTPCfoR9i9VKHuBc7EI61ObXQGXfnbJPPJZYhDzNmJ8PzRejyvwhPFGnSdo1UteoVbmS
	MJFbwBIG+R4d4yBKIJmjKeSLmSjhEcp7t0VNsytvqMo8DCd3hzpw==
X-Received: by 2002:a05:622a:1315:b0:440:4d76:a601 with SMTP id d75a77b69052e-44662e01f5emr71560111cf.38.1719836886761;
        Mon, 01 Jul 2024 05:28:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpnjnCYapSxCfnHKI4LW4UY47IpWjXvS1GBTcCwjrqBR3Xsc8QzASxrYVXTeUN3nnAN7DiP+Wp7P0LX5N6eF8=
X-Received: by 2002:a05:622a:1315:b0:440:4d76:a601 with SMTP id
 d75a77b69052e-44662e01f5emr71559781cf.38.1719836886269; Mon, 01 Jul 2024
 05:28:06 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 1 Jul 2024 12:28:05 +0000
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240627115236.618-2-naoki@milkv.io>
References: <20240627115236.618-1-naoki@milkv.io> <20240627115236.618-2-naoki@milkv.io>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 1 Jul 2024 12:28:05 +0000
Message-ID: <CAJM55Z_NaimQJkoykU1+THY_WqNMVsvENpJHJYFPTD3YuXOMnw@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] riscv: dts: starfive: enable heartbeat LED for
 Milk-V Mars
To: FUKAUMI Naoki <naoki@milkv.io>, kernel@esmil.dk
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

FUKAUMI Naoki wrote:
> Milk-V Mars has a green LED to show system load[1]. This patch enables
> a green LED as a heartbeat LED.
>
> Signed-off-by: FUKAUMI Naoki <naoki@milkv.io>
>
> [1] https://github.com/milkv-mars/mars-buildroot-sdk/blob/dev/linux/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dtsi#L79
>
> Changes in v3:
> - add default-state = "on" to turn LED on at U-Boot (not enabled yet)
> Changes in v2:
> - reorder properties in led-0
> ---
>  arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> index 5cb9e99e1dac..5cae7a5d2f86 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> +++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> @@ -4,11 +4,25 @@
>   */
>
>  /dts-v1/;
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
>  #include "jh7110-common.dtsi"
>
>  / {
>  	model = "Milk-V Mars";
>  	compatible = "milkv,mars", "starfive,jh7110";
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-0 {
> +			gpios = <&aongpio 3 GPIO_ACTIVE_HIGH>;
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
> +			function = LED_FUNCTION_HEARTBEAT;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};

Hi Naoki

Thanks for adding the other boards too. As mentioned previously [1] boards
should not add functions to LEDs unless the hardware clearly defines a function
for them, and nothing on these boards mention that it should be a heartbeeat.
As you said on IRC userland can easily add whatever function they want.

Also please add a cover letter when you're sending multiple patches.
Eg. use git format-patch --cover-letter

/Emil

[1]: https://lore.kernel.org/linux-riscv/CAJM55Z_j8gWFyKvsiu-oGDV7Hacr4Amt5FdkHdjKnhZwZgxncA@mail.gmail.com/

>  };
>
>  &gmac0 {
> --
> 2.43.0
>

