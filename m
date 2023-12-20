Return-Path: <devicetree+bounces-27358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F160581A082
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 15:00:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE7142834D6
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 14:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70C1239872;
	Wed, 20 Dec 2023 13:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="hnMlaTWX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797A139869
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 13:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0657C3F337
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 13:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1703080779;
	bh=GORz2Rp468DG/BOConaMtErEasFxTme5lVfMMQP4MUs=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=hnMlaTWXATqxlutyL15CYB/jXzsNvxV3DyelCltS8S6JwzOSaJxMP9pgmtPJtcFvD
	 ZpC7WFNUslAhETHJYItj0RxRZ/rr0XZbjNl85g5CaT20rrMO2zPvoFfG2So4mQuTIx
	 zRNZaNPqZ8bZ0GGyi9gSpeIZvQnWY3cak0Bh91Y0JYuQeCdUUDBqQr3indLq9lFMLH
	 L47CZfgJMk30BAaB3RYtb4y5QC9A+4BR6sZdTy0f874oJ3Q5xlvlAqupOpFQpZfSgu
	 bv8DnVdmc1ji616+zbSbCWHQxEWkdvjV9NrW4KwBCsnBgWMOANzEw8gZZd4IDKARzx
	 pRaxaKcB/1ESw==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-425f0ab06a2so86001611cf.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 05:59:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703080778; x=1703685578;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GORz2Rp468DG/BOConaMtErEasFxTme5lVfMMQP4MUs=;
        b=edCW2JeViwrqXMko5rmlVy7igh/Vm7JzLUgUVljHZbHP4e0Qj3hNj386gxF2x2mNw1
         v7/BBN1Y3ylGxL0tKNG1TebNBuA68PDCuzGMQQeCCoNU5Em+iKouCMOqo/AL1TQiWipc
         Vbs49l+PvbW4AET+e4KU5r5h5JxBsA7W/akQrchzr/sYEdBNR44nnnzec9L8lYYMYqyK
         KBBYMUs1JcA2n1cg4vYAHJhl9wg6lLvq9H9VKGico26XDIqFFEmhH3ikaiHvyDsDIN/4
         XMSEPibSEscDura8G+FLK+HYBRIpN5LNWCHIsGZE05HDfKKvvHM+f3bBcBHKgak8RqCp
         zpfg==
X-Gm-Message-State: AOJu0YxLZPScNFhjIG9OXqKQZuCPjBrX+s7L/GBDH308BY/ADQ/rdp6S
	UM8AhnmiMQuO7JhKpVXCv9fxNWVIfEnk2fIg40DGnk9whEZB+ijBDFxV58AxiADsW0a1mKPMNGy
	eA71n08kZNzsNFbvc6maqhxWdpd4jmoZf/DFH57uvilt3jsy3o2jyNTU=
X-Received: by 2002:ac8:7f48:0:b0:423:93ce:bde2 with SMTP id g8-20020ac87f48000000b0042393cebde2mr29365883qtk.63.1703080778016;
        Wed, 20 Dec 2023 05:59:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHSaFdvONz8qARVl9xk2ogiIoiNQxVWQOGFEh6uNs6/Cm8/+RY61RyiZi9PYlTSrc0KpTX0sX3yWrbwWUM9sdQ=
X-Received: by 2002:ac8:7f48:0:b0:423:93ce:bde2 with SMTP id
 g8-20020ac87f48000000b0042393cebde2mr29365861qtk.63.1703080777739; Wed, 20
 Dec 2023 05:59:37 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 20 Dec 2023 05:59:37 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231219145402.7879-3-xingyu.wu@starfivetech.com>
References: <20231219145402.7879-1-xingyu.wu@starfivetech.com> <20231219145402.7879-3-xingyu.wu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 20 Dec 2023 05:59:37 -0800
Message-ID: <CAJM55Z_X9b=TJt7343kQ68ndN1MvH-rFM9hyEZMJRvQnOk72Yg@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] clocksource: Add JH7110 timer driver
To: Xingyu Wu <xingyu.wu@starfivetech.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Walker Chen <walker.chen@starfivetech.com>, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Xingyu Wu wrote:
> Add timer driver for the StarFive JH7110 SoC and select it by
> CONFIG_SOC_STARFIVE.
>
> This timer has four free-running and independent 32-bit counters.
> Each channel(counter) can trigger an interrupt when timeout even
> CPU is sleeping. So this timer is used as global timer and register
> clockevent for each CPU core after riscv-timer registration on the
> StarFive JH7110 SoC.
>
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> ---
>  MAINTAINERS                        |   7 +
>  arch/riscv/Kconfig.socs            |   1 +
>  drivers/clocksource/Kconfig        |   9 +
>  drivers/clocksource/Makefile       |   1 +
>  drivers/clocksource/timer-jh7110.c | 360 +++++++++++++++++++++++++++++
>  include/linux/cpuhotplug.h         |   1 +
>  6 files changed, 379 insertions(+)
>  create mode 100644 drivers/clocksource/timer-jh7110.c
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 9104430e148e..fe0e803606a5 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20617,6 +20617,13 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/sound/starfive,jh7110-tdm.yaml
>  F:	sound/soc/starfive/jh7110_tdm.c
>
> +STARFIVE JH7110 TIMER DRIVER
> +M:	Samin Guo <samin.guo@starfivetech.com>

Last time I sent a mail to samin.guo@starfivetech.com it bounced. Was that just
a temporary error?

/Emil

> +M:	Xingyu Wu <xingyu.wu@starfivetech.com>
> +S:	Supported
> +F:	Documentation/devicetree/bindings/timer/starfive,jh7110-timer.yaml
> +F:	drivers/clocksource/timer-jh7110.c
> +
>  STARFIVE JH71X0 CLOCK DRIVERS
>  M:	Emil Renner Berthing <kernel@esmil.dk>
>  M:	Hal Feng <hal.feng@starfivetech.com>

