Return-Path: <devicetree+bounces-22501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8D7807CC6
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 01:10:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1C341C209BB
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 00:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B8FB7E;
	Thu,  7 Dec 2023 00:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=jms.id.au header.i=@jms.id.au header.b="MsHH/5/X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1FD6C9;
	Wed,  6 Dec 2023 16:10:31 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a1db99cd1b2so39048566b.2;
        Wed, 06 Dec 2023 16:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google; t=1701907830; x=1702512630; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0yA9MR91ePkju7nca9/BkZnzwRCmKruvRUqc9sHYXbs=;
        b=MsHH/5/Xy6Z3/Tr5lIykZlGOZkaj7OPoaGdULgJnfFqHl12OByDx4jwlePDSUd8iyg
         kmcDfyBW04/+j4wmizL4OGBHXdt/bOzZLcaOGU0YbRr4b2d04CuLc3989RSAWlYThd0m
         6Rb6em8v9oapDoxSQi2Wpq140tzGpOBgURIJY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701907830; x=1702512630;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0yA9MR91ePkju7nca9/BkZnzwRCmKruvRUqc9sHYXbs=;
        b=OoSpZmb/2jnrOz3c4UJkgg1ygX9x7DdruLIG3zsaRjBtQMMuT/RO5+rlrXumtfErGe
         xk9lthoFOxYVpHDm7CEA9HP4HKe/hSPq8BL/6uV+afnrxCXghHcrO5hw3L3pB0ZKw3sC
         nhRcrEhQVFXitvy4PW6lpkMYdRas9d3McBViVCLRByUaz8/pc0itZthT2OsPEX7w4c52
         UwEKpfWu1AHOt+rD6d2oBf5UmPCAxAQcoSh8pJXuKkVcNol8blsZVaiOED3s7VWGXndv
         YLSBN0PjSs40NDFgMr04l6pEm/LQXNPrSBOITE3pojIx3Dfw1fD7Vibsnpve0K5xJ4FW
         KRog==
X-Gm-Message-State: AOJu0YyMzEA2akLxoaOCqusjUj6VT6e9M3LbEW4P7+uOQpr1zXF7z+xF
	DptZWnBmOYcLdxxCJK/FbLgiZVoeSl5ygc/Z+QtZFzP0bMw=
X-Google-Smtp-Source: AGHT+IEYmwT9MlyD95aEzDWmDlAFWtRHjJrEZFs5P5trbXnhy2s8EqkN0CnnoHwWcsvNS/RlitpXI3l8AyRaB8YCmZc=
X-Received: by 2002:a17:906:d104:b0:a19:a19b:422f with SMTP id
 b4-20020a170906d10400b00a19a19b422fmr730295ejz.154.1701907830244; Wed, 06 Dec
 2023 16:10:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231206155316.4181813-1-peteryin.openbmc@gmail.com> <20231206155316.4181813-3-peteryin.openbmc@gmail.com>
In-Reply-To: <20231206155316.4181813-3-peteryin.openbmc@gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 7 Dec 2023 10:40:17 +1030
Message-ID: <CACPK8XepWC+KUaYr8nQJ9ggkX5n=aQzT_U5+u_N86=LthkbwDw@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] ARM: dts: aspeed: Harma: Add Facebook Harma
 (AST2600) BMC
To: Peter Yin <peteryin.openbmc@gmail.com>
Cc: patrick@stwcx.xyz, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 7 Dec 2023 at 02:25, Peter Yin <peteryin.openbmc@gmail.com> wrote:
>
> Add linux device tree entry related to
> Harma specific devices connected to BMC SoC.

This isn't a very helpful commit message. Convention is to mention
what the system is to give context; eg "The SuperCorp Machine1
multi-node server system uses an AST2600 BMC".

> +&mac3 {
> +       status = "okay";
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_rmii4_default>;
> +       no-hw-checksum;
> +       use-ncsi;
> +       ncsi-ctrl,start-redo-probe;
> +       ncsi-ctrl,no-channel-monitor;
> +       mlx,multi-host;
> +       ncsi-package = <1>;
> +       ncsi-channel = <1>;
> +       ncsi-rexmit = <1>;
> +       ncsi-timeout = <2>;

These properties are not supported by the kernel. It seems Facebook
uses them in their machines, it would be great if you contributed
support for them to mainline.

If not, please drop the properties.

> +
> +&gpio0 {
> +       pinctrl-names = "default";
> +       gpio-line-names =
> +       /*A0-A7*/       "","","","","","","","",
> +       /*B0-B7*/       "","","","",
> +                       "FM_BMC_MUX_CS_SPI_SEL_0","FM_ID_LED_N","","",
> +       /*C0-C7*/       "","","","","","","","",
> +       /*D0-D7*/       "","","SOL_UART_SET","","","","","",
> +       /*E0-E7*/       "","","","","","","","",
> +       /*F0-F7*/       "","","","","","","","",
> +       /*G0-G7*/       "","","","","","","","",
> +       /*H0-H7*/       "","","","","","","","",
> +       /*I0-I7*/       "","","","","","","","",
> +       /*J0-J7*/       "","","","","","","","",
> +       /*K0-K7*/       "","","","","","","","",
> +       /*L0-L7*/       "","","","","","","","",
> +       /*M0-M7*/       "","","","","","","","",
> +       /*N0-N7*/       "LED_POSTCODE_0","LED_POSTCODE_1",
> +                       "LED_POSTCODE_2","LED_POSTCODE_3",
> +                       "LED_POSTCODE_4","LED_POSTCODE_5",
> +                       "LED_POSTCODE_6","LED_POSTCODE_7",
> +       /*O0-O7*/       "","","","","","","","",
> +       /*P0-P7*/       "FP_SYS_PWRBTN_IN_N","BMC_SYS_PWRBTN_OUT_N",

Is this machine going to run openbmc?

We have a set of documented properties for GPIOs such as the power button:

https://github.com/openbmc/docs/blob/master/designs/device-tree-gpio-naming.md

If you intentionally do not want to follow this scheme, please mention
why in your commit message.

Cheers,

Joel

