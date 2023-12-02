Return-Path: <devicetree+bounces-21003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAD0801EE9
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 23:08:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 53A71280F60
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 22:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FCD422087;
	Sat,  2 Dec 2023 22:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="DyHa6fTF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5819FD
	for <devicetree@vger.kernel.org>; Sat,  2 Dec 2023 14:07:54 -0800 (PST)
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id AA0F73F1D9
	for <devicetree@vger.kernel.org>; Sat,  2 Dec 2023 22:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701554872;
	bh=VhuiHjzGmesIrY/hSc2y05bK2i7Am6FUImDyu0cEMgU=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=DyHa6fTFxrMFdfW1mld8lFQEIwtgft806aM7Gp7qnP/CXyLGYLMm5DCkb8KAzxIqo
	 7shdaaZODXsjTqNkkfRy3HBsCWhIwKN08OcVr0U6neOPpsXQZz0U7MJ/eXmQWjUYgM
	 XwbnyWVqFWzjju1tZj0iWxvd5aOjd7Uj0pr+FUCAwhFuLQgBeOvVp5foN3jvTCv1c6
	 Z5GYMS7hOPXDpTDHLMSRH5IyH5apPLVLYofDZ8Wofab1m7k/Qvzf6HLVbNtQKZtx6A
	 Y/CYjALKLDxc/ak38EIV8hoXWcG6Y7A/roQkx42pGTJfgU9Pto4G+XQAL8duCDZDs2
	 jPmMDDKY8Y5Og==
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-6d88143b45bso47990a34.0
        for <devicetree@vger.kernel.org>; Sat, 02 Dec 2023 14:07:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701554871; x=1702159671;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VhuiHjzGmesIrY/hSc2y05bK2i7Am6FUImDyu0cEMgU=;
        b=BCcSa7zXjKuteEfEOmqQvTnC1jvweOpVPY7R/4mYRxk1UknsY3r9SdpcU1J6hCa61u
         obya/ThNxeCj7MgYzPxWR4cqWp81nuh77Pi2rWurX/Wv8gSvIlV7fHafalfq9AaMC2Pv
         ifBbuR2rLyLUlTFOO1uMrtJL3nsa9/KTI7kzaWnVaq9CsYqYZeSe3kpn2HbrXSDQpuBW
         EGmWL65FCqgHTu83nKWEJ/H4vi17b6eRn+AfpN3T6uqFxnrxSMQdTFahIohRK9owfIVT
         xxXbiH2cpf2E02u68hR5lQH9w6Ip4TGFuIFdwi84UrQw95hn9IOWYHwTk/ZL0tpgjzPw
         pRcQ==
X-Gm-Message-State: AOJu0Yx1kfRfoAWfidCS70FiGx0RpIIYXNjltnWODI30iRedad97fFUn
	k2Zw2g3A5kr15byG4bh3LCYr8gFVdQiL6Tv6L9JAe/Cuco6C4YTXkNDKvxRef8x1ZvXgNVGYE/J
	K+uRVv4Buzq5U/CzgEb9u0efnbgxS0CAEBRB4pJX8GKK7rcuBpJP4dGg=
X-Received: by 2002:a05:6358:4e:b0:170:17eb:7c67 with SMTP id 14-20020a056358004e00b0017017eb7c67mr1396020rwx.58.1701554871287;
        Sat, 02 Dec 2023 14:07:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGDgcC7p1ZVM37WrYOl9g6KwCFC9ba5aGWjLgxDGJ2WolVrkOMQ2nYCO3RuaqPRlAtCZA3dv3QColkp70DC18E=
X-Received: by 2002:a05:6358:4e:b0:170:17eb:7c67 with SMTP id
 14-20020a056358004e00b0017017eb7c67mr1396010rwx.58.1701554870917; Sat, 02 Dec
 2023 14:07:50 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 2 Dec 2023 14:07:50 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231202153353.635-1-jszhang@kernel.org>
References: <20231202153353.635-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sat, 2 Dec 2023 14:07:50 -0800
Message-ID: <CAJM55Z-9Y=QitvAX+z=XTTMM0CGRzGMD5z0H_Bzv=Q85b49rpQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] riscv: dts: starfive: add Milkv Mars board device tree
To: Jisheng Zhang <jszhang@kernel.org>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Jisheng Zhang wrote:
> The Milkv Mars is a development board based on the Starfive JH7110 SoC.
> The board features:
>
> - JH7110 SoC
> - 1/2/4/8 GiB LPDDR4 DRAM
> - AXP15060 PMIC
> - 40 pin GPIO header
> - 3x USB 3.0 host port
> - 1x USB 2.0 host port
> - 1x M.2 E-Key
> - 1x eMMC slot
> - 1x MicroSD slot
> - 1x QSPI Flash
> - 1x 1Gbps Ethernet port
> - 1x HDMI port
> - 1x 2-lane DSI and 1x 4-lane DSI
> - 1x 2-lane CSI
>
> patch1 adds 'cpus' label
> patch2 adds "milkv,mars" board dt-binding
> patch3 adds the devicetree file describing the currently supported
> features:
> Namely PMIC, UART, I2C, GPIO, SD card, QSPI Flash, eMMC and Ethernet.
>
> Since v1:
>  - add two new patches which add "cpus" label and board dt-binding
>  - adopt Krzysztof's suggestions, thanks
>
> Hi Conor,
>
> I see you have sent a patch which moves the timebase-frequency property
> to soc dtsi, but this series doesn't rebase on that. I can update it
> once your patch is merged.

Hi Jisheng,

Thanks for working on this! On the JH7110 the mtime derives almost directly
from the external oscillator like this:

osc (24MHz) -> rtc_toggle (div 6) -> mtime (4MHz)

So to me it makes sense to define the timebase-frequency in the same file as
the frequency of the external oscillator.

In general it looks good, but if you do

  diff -Naur jh7110-{starfive-visionfive-2.dtsi,milkv-mars.dts}

you'll see that those two files are almost identical. Even external clock
speeds and all the pin configuration are the same. I'd strongly prefer to have
all that factored out in a common .dtsi so fixes don't get out of sync.

/Emil

