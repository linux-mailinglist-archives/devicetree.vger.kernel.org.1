Return-Path: <devicetree+bounces-76499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C168F90AB14
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 12:30:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 779521F209A5
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 10:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8F491922CA;
	Mon, 17 Jun 2024 10:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="XIFVl6Lb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5793817F4E4
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 10:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718620222; cv=none; b=jELLRlaK5GyVCp2fx+oY8g31LILLAKMiMdPZRpA34o4jE17qxQ/M+pmzCygJ9GhUe7WOoYs5Dlc4IdeZUrR7Fo8TOh7dLbT7kg1ZN2cS5+VNglShdKFLmPRfX24Rr5fXI8JmoF6+8+w16mF9UvsOCFWZX3G3b4CT9bhJ2emqfCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718620222; c=relaxed/simple;
	bh=4dr/5RGvdC0Nfp5firD/kLIKNMYxrIUHZGW7UJo/T0o=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=coXQHeAyVwmcOlf3xNW/zsc7/fUl4cryn3gY6eGxbYQkt0kRL9FbJPeZH8PhI6uoak5ZyTEXwzX+JNW3ywVeYIXN0INWOc/XHe+aIuTnbf8ajT+dDDATVG3rBVHjpeeH55fuUEdXA5FePJ++P7Z839nFoahhGBC2/ldyqpc/poc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=XIFVl6Lb; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id CFA633F1AF
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 10:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1718620217;
	bh=MXAKt8EKETZvadP49CyuSOUePneOkznNxCX+hfllm1k=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=XIFVl6Lbsbpi3RjF8o6AaipErUuyNbZic+D3RJ733ZOHRMfoSyimVPg+V9x6YBosS
	 RvXhGSaIWkT2oryPbyMFl2+5sqboQKWiWrkU7U5H8tghc7OMmpIKWGeJi8z6iiXwXE
	 12iSfIOmyAbaGipS985FiCBJG4FSNrpk6vrtqf5LeQiKUBUNKUJC1tfVc0MNL5yef3
	 1DLesWS/67Xfh+fqZ75O2f8cBaa8BGmLmC+A1bOfGC4jrfWsB+MZ46DAsKzowWrV7H
	 StvCK3bHmNeFq6v9YjIg5TJ8GlHQ01Po16rXUGwMkgBTGVsj9Lpx7PNvh7pO0miaUh
	 Om5K3VRSHHGtg==
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3d2277c5982so4371407b6e.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 03:30:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718620216; x=1719225016;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MXAKt8EKETZvadP49CyuSOUePneOkznNxCX+hfllm1k=;
        b=iC6bZzEBU/hH/qVKXmZQM4XS/Mbsnsoh4oMlsCtrhJonHJVDFo38wt0GxoTeh1TfXr
         Hvvo4aBfWLeF5xkwPDaC2Ldblp+kxvvWkt1c0UrMIXmivuwJi1ImSHpm0LHfPYKnUCfk
         vmK6hcKQm0kjsxa2QtUzW4O63YQIuk92wn3BnjVhV+VrLNtQmkmIcQW5su2Pc+8bjnJF
         6OaVIpsvA5FsXZRwfUQZXtaqdWXcHq2zRJua0aRcot+Ymw7MOpDr9CJwfMU0zjpmSSkv
         b5TSgMMbnzeYDtg5tzLMK0jqDAoOaVMMHLr1lZQ1xJWxnAr7GUiojcCiCagovNGFrDka
         o68w==
X-Forwarded-Encrypted: i=1; AJvYcCWSFkkVK/tPYdWElk1oCiv8Nq5jSeG/GL0tz/wptldAYBfcrWGRjZjcE6P93X6DpgHRwPe7esEQcbay+fiUR9fTKZu1ygMaaPFR3A==
X-Gm-Message-State: AOJu0Yy5bJxiechQ5cGM7koYoREIvWx67+iiOMDTFpr/dvctmicUqPlH
	M2d2Bjh6zeV/cReVP8C4X7M5Xk3KaeZCPDka2TPqK9l4ZBAMGss2PA+f99ID5l0hPJnK7imS/7p
	h0KeDRCzhMWqxFcJp+JjtW4W6DCUWxxKgka4j2QA0+v7hgvcHRPOR0IWeSaJe9AE2xghW6SXmcE
	irwvt/r5G/vZRUKdQpS0BPjwdKdUKUqScmhwVZBtN3MCCMf4/+zw==
X-Received: by 2002:a05:6808:178e:b0:3d2:277e:45e3 with SMTP id 5614622812f47-3d24e8ce5a3mr10656438b6e.13.1718620216473;
        Mon, 17 Jun 2024 03:30:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+9wQA5vwfPc+PCiFhPHOS+btBOsojBilQG1Cz2k1uXktyifoa7BZcR5yZNh9VDUC79iFyorh+9SwK/IhPV5I=
X-Received: by 2002:a05:6808:178e:b0:3d2:277e:45e3 with SMTP id
 5614622812f47-3d24e8ce5a3mr10656422b6e.13.1718620216111; Mon, 17 Jun 2024
 03:30:16 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 17 Jun 2024 06:30:15 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240613005817.1485-2-naoki@milkv.com>
References: <20240613005817.1485-1-naoki@milkv.com> <20240613005817.1485-2-naoki@milkv.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 17 Jun 2024 06:30:15 -0400
Message-ID: <CAJM55Z_j8gWFyKvsiu-oGDV7Hacr4Amt5FdkHdjKnhZwZgxncA@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: dts: starfive: enable heartbeat LED for Milk-V Mars
To: FUKAUMI Naoki <naoki@hdr-nlb4-0bbd2e21834cb637.elb.us-east-2.amazonaws.com>, 
	kernel@esmil.dk
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

FUKAUMI Naoki wrote:
> Milk-V Mars has a green LED to show system load. This patch enables
> a green LED as a heartbeat LED.
>
> Signed-off-by: FUKAUMI Naoki <naoki@milkv.com>
> ---
>  arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> index fa0eac78e0ba..4f4bbf64dbe4 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> +++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> @@ -4,11 +4,24 @@
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
> +			linux,default-trigger = "heartbeat";
> +			function = LED_FUNCTION_HEARTBEAT;

Hi Naoki,

Thank you for the patch! I know the JH7100 boards are a bad example but
normally we don't assign triggers/functions to LEDs unless they have a clearly
marked purpose on the board. Otherwise we'll let userspace assign their
function (usually with udev rules).
As far as I can tell this line is marked "STS_PWR" in the schematic, the LED
itself is just marked "Green", and the silkscreen doesn't seem to indicate that
this LED should be a heartbeat. So I'd prefer just describing the LED and let
it be up to users or pre-cooked images to assign the function.

/Emil

> +		};
> +	};
>  };
>
>  &gmac0 {
> --
> 2.43.0
>

