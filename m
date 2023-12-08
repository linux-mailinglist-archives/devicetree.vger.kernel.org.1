Return-Path: <devicetree+bounces-23229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3615C80A823
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 17:05:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E04FE1F21023
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3774F37177;
	Fri,  8 Dec 2023 16:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="PEss/u1X"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0773F198D
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 08:05:37 -0800 (PST)
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A172B3F79D
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 16:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1702051534;
	bh=NPjAizr1MOai52nap908c7Q+sjbuL1SW7438n8FuRps=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=PEss/u1XOos6DqZ95ESCvKU5ctCEC0VDifWEvOeAmw6IrLgtM8d2jog04lrCdDbzl
	 MN8Qr95NByVNonE4/4JcLiYhBe4mUlgRh6P5/KVdststG1XTowL81ePnwID3JzGCH0
	 GT5fmoBE6g+1h8Rdvt+3T09qtxMI7JvdfChQvlzxBsjlbXHm/gWm/vX6iwI067nk+o
	 fSmSxYDgtXm/VaGeXdcz9RL1c4zrhHjW78nUsP7rh3O4+pmzA2y5Af46X+ZjouSOMP
	 ScXN9ble6L5zzb0OTVUancjr/CwlXu0ieloXAN2P7rt7n0L0P4qCOjP16Hbosrm3x/
	 LON/cByiQu4VA==
Received: by mail-lj1-f197.google.com with SMTP id 38308e7fff4ca-2ca0187da0bso14287611fa.2
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 08:05:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702051533; x=1702656333;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NPjAizr1MOai52nap908c7Q+sjbuL1SW7438n8FuRps=;
        b=uNXpOmH1fjcs4TWouyiaNd1+D9Ezov16rGRDsdzbbb64GpdejAJ8vQy70gKUBZvIk8
         6XwJe0MTfnir8y2M6uyh+1kv/8AgUpelPCLW+asrdrcpBdUf9rfwwPw3t/Vf2315SEQu
         G9IE8JKAGHNNWI/mfvcv/J+lc6Fgaf89sueetZV1rMIZqyf7Kqt7loHY48ZUxaSKMb8D
         d78h6lFAoLK3NvzP+fuT0bpY39bNkjwYB0sF+gytu2bt67Y50zCWmuaU35eeIj7vhAjF
         grG3AnFJgr5MCHudxWG26zQeJP8pxJArFmAijQPvbs6jj0lY3MVzQV2xu2YiIuJoYf7b
         cflQ==
X-Gm-Message-State: AOJu0YwI4Bdf6wK1diR2cvB6bzcYgSnxGTH7ndfNsXbM2foBMht3ritw
	q/W9LzCddccas7X/8uvOt6IpwU8LrJBsUun3sLyXsa/rlM9kV7M58479ChH/UrbzEm2e57f29I8
	6uvj7PE9aFRrVw4CtB/dIcjoQqkjyq0N7TwFyx+4mp3YhbME7kkdYsb0=
X-Received: by 2002:a05:6512:4894:b0:50b:ef17:5136 with SMTP id eq20-20020a056512489400b0050bef175136mr42283lfb.154.1702051533066;
        Fri, 08 Dec 2023 08:05:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGgfEA4LBbLEwJ04GKNCXCYVhgqscCJbjoiVfiXJNCGNQMCBQy0BVcPeUSngDtE9hH0oJFzO52hRcf04wYtCO4=
X-Received: by 2002:a05:6512:4894:b0:50b:ef17:5136 with SMTP id
 eq20-20020a056512489400b0050bef175136mr42276lfb.154.1702051532771; Fri, 08
 Dec 2023 08:05:32 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 8 Dec 2023 08:05:31 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231201121410.95298-7-jeeheng.sia@starfivetech.com>
References: <20231201121410.95298-1-jeeheng.sia@starfivetech.com> <20231201121410.95298-7-jeeheng.sia@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 8 Dec 2023 08:05:31 -0800
Message-ID: <CAJM55Z831ucY4QqPTR_0zJVB05UUT4W-3M0CGzvtyPo=AMD=Vw@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] riscv: dts: starfive: Add initial StarFive JH8100
 device tree
To: Sia Jee Heng <jeeheng.sia@starfivetech.com>, kernel@esmil.dk, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, krzk@kernel.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	daniel.lezcano@linaro.org, tglx@linutronix.de, conor@kernel.org, 
	anup@brainfault.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	michal.simek@amd.com, michael.zhu@starfivetech.com, drew@beagleboard.org
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, leyfoon.tan@starfivetech.com
Content-Type: text/plain; charset="UTF-8"

Sia Jee Heng wrote:
> Add initial device tree for the StarFive JH8100 RISC-V SoC.
>
> Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>

Looks good to me, thanks.

Acked-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

