Return-Path: <devicetree+bounces-247069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFFBCC39D1
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:34:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5F024300776F
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92ADF3451C7;
	Tue, 16 Dec 2025 14:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="MtXXTKiT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1742288502
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765895619; cv=none; b=tlLQHfPQtXV9VFYmRNJjlKYGYFRgVJlZW0BdxA0ZnHRAnlhbOkNYqR6oPLR0ApTxzUE82qvjpbj3109t7+PWZlLoxODKOTWS4h2WALEqrp/x96SyzTICmvFW6A0uMXEPA8AHGIEdNdxZx4nGzRHtwl2lzRddGR5a2XLLAsPgJX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765895619; c=relaxed/simple;
	bh=QvQ962qcK05T0lZnvQI2FDYuFJBixe8oMpEBfbroE10=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gvjjjMNoC/9Io0eI/NCpkmCwG4Mz1Xz3sCE4izWHWLnfSMjbH7Fu4fO4ZxRyLvulSz0SZXL1rvDvjnlu5MuyYqOrowJFmLbbHQjTjEWBGTTlT3Vug8h5vRnx6xKRHW9iI6arcbee/h1reBx19nSh4ltquhfVz1GQhby+ysXADNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=MtXXTKiT; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1A1F73F7BB
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1765895614;
	bh=9ouNQ2G+BbmqznnUeDUFFC3dk1Z2drfKLGm7ohEM5u0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=MtXXTKiTqtvZULHi/b3/U/EV0wDDL8wxO4aVzzAbufg7BOk7Sr6yZX5LlTHbW6dPm
	 dUC2+e/Bpciii9S3s0o6pGlpxY5eKo0jgYEDBdIZfatwpcxG7OqRnBY17zVNxds0ua
	 yqWxRRAWTH0o9NGbKQLn98v8vbY0AtbPK/GE2YQJqt7VD9DTSTIewHD7Z0C3GZz0ei
	 stf+0G3fTvTNpnjqMaj6okumvU7nTUC0mV2E3g9qcLn3P9rRiZqOU5Eu4AZvMGsR0M
	 zlr9Yc1nFCITHLCUN9LVzJDtJYxrWgiuH6TzJDUdvCFurF7Xk+lgg/meTzd5wTM/xx
	 6HH4mErXoM8tNx+R/HX4Ot1+mhYWDjNSZcztJuLHs0EiZS9/MNKNgLvoqPokD0TquS
	 WGWvulD3PTP66yi1iKFYUd8PhdbStzklnfWGcPALhuIjFvY/6JWxn/IC+6SykJLu5L
	 U9OV2nepo9dPEX6E8kXnlxRqDmNwXipTzy4xDJdbYSM+ZYEaCCesy1bOIRjY9HB6AQ
	 tGxY/e8AkkjdhrfwLUed5XxN3XwsYMOhQ3NrQd3N77+jKiH1+7xy/HXkY24vo728xP
	 uzm5+69CsnhlYMqnyLjg3mDpYf97iZeR8FrOXuxYMFgUL04uO8cp2jTsOH1M1tNVai
	 fhXLArWNCd5okQpSs9rEj77o=
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-b79e98a23c5so511409666b.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 06:33:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765895613; x=1766500413;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ouNQ2G+BbmqznnUeDUFFC3dk1Z2drfKLGm7ohEM5u0=;
        b=wJoqQhaMT8vPC5Ag/gpkV+95p+IqasSjIAGkTbUvflfCqWiYgeYavmD35WGtdD69M0
         fEfO7FZKGP9nCrHdaXjWYuu8UkFxSLK4Aeytxmk8qI7MFgwKsobvIT56SEG3XMiyLF08
         /FikbBwYG5Mytl8iHB3OQuwM/to/AiA2NfCfGW5PiM1V+Ro1Voc5D4GQtENoNsxJqVJy
         pY17biCQ9XBWrTkhaB7wPvPJEpgBsbCFeGMIzETgG8UOFxe/bEe9EhglLmEs846aaDhd
         biF/77V3plGKgH6sskEeLAm8z77Ctv1AfoIP/EixvTylezDtFWZ9+NgAP2x/NKHt/ZlQ
         igxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYf6QFJiDuVtUOsxodU/Uw6Y3SxMlcshC9tFTEdIXytXdmE8Y8qRkQ8AhyBNt2ELYgTXUDpuZn4QTM@vger.kernel.org
X-Gm-Message-State: AOJu0YzI+gin04s0l2Ao2cQuA5RKoGfbyN3NEW6CFzKCCbHTLWatBIzZ
	0lnoZpFCa6YOLOPu1k4FWt8CPj6bOzpwekrm/WodHz0hi4UIwbJzkvqF4nNfTtC4rkeRSeJ+vFz
	9YNjQXsyF8oPiyaK68FyHl2E5KbwSuyfYBLqP/x+yOmL23jSUYKelPSYAXNdPBGnhEozUicnHD5
	qYVIs=
X-Gm-Gg: AY/fxX6iR6oEqCmrFF1OE9GRQk2mcdbPw4YevwFqLN9AjSpoP2vbgDIy2Qvqdpdy8hw
	077Ag/FJDzpQmJUEnrvQJplr9P8T3sluMV8ICOFv74z7XhbL+spJjLKAlJYSwRolIX6XK3r/CP4
	+cwoihreZAJR+/BgAoWMsGtyZRywtOuc0E41INklHlzJxLi6wlPFLpEsbwKnb+tCI1EOMf3p+q0
	PmDPpu6pVgMn3+4BpTxs8Tp9swwYaAHIDItqIHkkDINk3xgR9NNXk6Cy8b053RmEL8ogsJrGuTU
	vN7O6gtgDa+Bb1OWvGGfLkp5SRelfhmkViJo0OtJA0/vzuGn6b6mJ+AS6fLJDyopTY7rMWZjhGI
	iRpmzOx9oFzAw7Q1bWq58A0vu1pd9k4v3gARYskSwJM/VODLCq54PHoH/ZxRQd1klLW8URH+aec
	OTp++TY2E=
X-Received: by 2002:a17:907:96a6:b0:b7c:fe7c:e380 with SMTP id a640c23a62f3a-b7d236f7860mr1528081666b.13.1765895613037;
        Tue, 16 Dec 2025 06:33:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEHFzNsGwKARkXS4ZtDItuBhnrQn1fUzZeAB6AToGes9YgJGJs29bqvEiQXmenKj6k0dHe4vw==
X-Received: by 2002:a17:907:96a6:b0:b7c:fe7c:e380 with SMTP id a640c23a62f3a-b7d236f7860mr1528076966b.13.1765895612514;
        Tue, 16 Dec 2025 06:33:32 -0800 (PST)
Received: from [192.168.103.125] (ip-005-147-080-091.um06.pools.vodafone-ip.de. [5.147.80.91])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7ff725efd8sm171981166b.27.2025.12.16.06.33.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 06:33:32 -0800 (PST)
Message-ID: <3c38ce9c-4259-4149-bf2c-a54e74c00a34@canonical.com>
Date: Tue, 16 Dec 2025 15:33:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] riscv: dts: spacemit: add SpacemiT K3 Pico-ITX board
 device tree
To: Guodong Xu <guodong@riscstar.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev,
 linux-serial@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Samuel Holland <samuel.holland@sifive.com>, Anup Patel
 <anup@brainfault.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Yangyu Chen <cyy@cyyself.name>
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
 <20251216-k3-basic-dt-v1-8-a0d256c9dc92@riscstar.com>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <20251216-k3-basic-dt-v1-8-a0d256c9dc92@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/16/25 14:32, Guodong Xu wrote:
> K3 Pico-ITX is a 2.5-inch single-board computer equipted with a SpacemiT
> K3 SoC.
> 
> This minimal device tree enables booting into a serial console with UART
> output.
> 
> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
>   arch/riscv/boot/dts/spacemit/Makefile        |  1 +
>   arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 25 +++++++++++++++++++++++++
>   2 files changed, 26 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/Makefile b/arch/riscv/boot/dts/spacemit/Makefile
> index 95889e7269d1bae679b28cd053e1b0a23ae6de68..7e2b877025718113a0e31917eadf7562f488d825 100644
> --- a/arch/riscv/boot/dts/spacemit/Makefile
> +++ b/arch/riscv/boot/dts/spacemit/Makefile
> @@ -4,3 +4,4 @@ dtb-$(CONFIG_ARCH_SPACEMIT) += k1-milkv-jupiter.dtb
>   dtb-$(CONFIG_ARCH_SPACEMIT) += k1-musepi-pro.dtb
>   dtb-$(CONFIG_ARCH_SPACEMIT) += k1-orangepi-r2s.dtb
>   dtb-$(CONFIG_ARCH_SPACEMIT) += k1-orangepi-rv2.dtb
> +dtb-$(CONFIG_ARCH_SPACEMIT) += k3-pico-itx.dtb
> diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> new file mode 100644
> index 0000000000000000000000000000000000000000..0f9d04dd352f5331e82599285113b86af5b09ebe
> --- /dev/null
> +++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (c) 2025 SpacemiT (Hangzhou) Technology Co. Ltd
> + * Copyright (c) 2025 Guodong Xu <guodong@riscstar.com>
> + */
> +
> +#include "k3.dtsi"
> +
> +/ {
> +	model = "SpacemiT K3 Pico-ITX";
> +	compatible = "spacemit,k3-pico-itx", "spacemit,k3";
> +
> +	chosen {
> +		stdout-path = "serial0";
> +	};
> +
> +	memory@100200000 {
> +		device_type = "memory";
> +		reg = <0x1 0x00200000 0x3 0xffe00000>;

Shouldn't the reserved memory be described as no-map /reserved-memory 
nodes instead?

I would assume that 0x1,0000,0000 is the location of OpenSBI.
What is at 0x3,ffe0,0000?

Best regards

Heinrich

> +	};
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> 


