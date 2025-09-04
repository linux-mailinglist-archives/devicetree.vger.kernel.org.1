Return-Path: <devicetree+bounces-212657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C1DB43681
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 11:02:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F9D816E2C9
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 09:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E55CE2D77E7;
	Thu,  4 Sep 2025 09:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="k50We7Xu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AF22D6E49
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 09:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756976550; cv=none; b=i6bJs+3bkdAtqMS/Lnj25z37412BTaKaUJtEiBQlZm32/oyLq5FVBcXHli4m2IaaavBVXTcW11+feD8EB8EBwBw6P45Hycj9SxxWVsq/gaZrnR0/iqPGeYqK0eDkhfEmiDCsDD6rarpVayOv07JoFMsPodrhIznaFx5xll4NMeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756976550; c=relaxed/simple;
	bh=t3pzkYuGU2tYuRTyuDW5/Wc33zKbBI7wfB66Rtab/NE=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AVSULhUpWouWHIEpCTQIHXcUiKsipDv+n6QeEHkO1GPHFc1akkC7nCLAnAqLkKX60ZySgoCUBTs2QogT2eH673nfWrcQUxuDE9przYUx8SiYZYA9umjK+bKOQ1ztsJBIu4BycHy+42pTk8zSPj3Eks8D9Tu+sWB6EOw9J+WACLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=k50We7Xu; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 357B43F715
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 09:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1756976545;
	bh=W5tXZLE9U8ZLxM4XnYQFYNA7WVcvzE7u2s5SMaMyKfs=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=k50We7Xuom84tD6AoaIJjVxCwfgxmanRSqjOuPwfjO2Bkl7XVE/01msqMhSGhepN6
	 ot1uE5UWvoe+LFkzz0RbggtKVw82o+NnlOfps4EL/loEf4ttglJ0wOWQ2jpCpFkjX7
	 bAYTfdd52yHJdUf8KkxmIzNVN1ulHcOVXlefpUkEI8ex5T+MAWpHkBcURVZmSxSbGd
	 ORUHbHnehYG2lZ9Ke4cK7HDoJ4S3pQHdKjayN/oFGAW4QMbvGLVM8y2uo9eefYGkqh
	 C30jjKMHFrlQg7H0MUxveRoyfrI8pzx/uaRwoOChZSv4ron7SLCoCUOOFKa0TcVQ+7
	 fHxy7S0KY11tA==
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-53040f4a9f0so235157137.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 02:02:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756976544; x=1757581344;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W5tXZLE9U8ZLxM4XnYQFYNA7WVcvzE7u2s5SMaMyKfs=;
        b=l+5WONCcNBm2VwIBzWo3GKmiBj3oXgPsnW+ZKN3Rv7MR1SgMtbce3oOfqaHDl8mS4B
         yD1zNS4L1a/EvugkjY2Mmtpnn1BJsScZTT686vwWueK7UT95i4NUDQ5Tl+cwHBdPRwJ2
         JR/QAmrs2l4i5dLLWx7dho2e35f9pJrQMY/w4VLE19IeNzMFdJWLVSV4//f8TNHa4pL1
         a8b5pI5iarKJdUoMw7qMwI0hJRIx+WWZpgPSUIn2LT2KNm0hKTAR5KsQjV+VTLkeDPLs
         i3syGmpd8Mv0y9BXpJjPy9ZsS0K9STskKzFT4q+YR5oR/19mzNGW1pFJFmgjxHomeUnV
         fQDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLbv0EBUvL2PyK1xn2Kyee3wbdI5W1OkLN8dWWjhpL3MLASK7k/Xgv2MYEHaehEwj/8piK1nGRgxrG@vger.kernel.org
X-Gm-Message-State: AOJu0YzkRwJ/VPcI0pquuupnUKrhUsfqTbfVRVZtRphZ1gB1x4suju02
	MMVDtJZsy+FZUow6zrN3Qpddph8vDHs/69KZkPR09Y3IbDHp7j1sMsidoxqy7KHwIsoATOefAwI
	PIjQq86lPoKo9g7dBPbCaatvx+73RYBF7L/Cho+jXYTMnKYGTU1bet2zcRtxBFb/4NB860s5fLL
	uSaetdJ5YSCJOF4uAB4QWS6uWRjIsQ6RCrqC1H+aP7ex0S1U1deWFYMg==
X-Gm-Gg: ASbGncsSYo0aVbgduXmOWFti5jMnC8RbgX4jEgC91J5ExpLw8NZh64utngNe9pmnng6
	S1D2VrsJ2YAvSRUW1VIsgeB7IABiDDS+fcdSch6MXomIyjwKSKbTMxNwwtROJhrRH4vwYqquQbP
	FddxlNd3ymIR8UsFDpTRs=
X-Received: by 2002:a05:6102:549f:b0:51a:4906:f195 with SMTP id ada2fe7eead31-52b1bc21699mr6330769137.29.1756976544060;
        Thu, 04 Sep 2025 02:02:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGfwrOh3ZXQWUEYw7cNtkkSuMIylybKSVsj1rE0ILOBF18eeNxhb8j1NXutX/Bv0RybyaBlTDCviu/T9BrHNss=
X-Received: by 2002:a05:6102:549f:b0:51a:4906:f195 with SMTP id
 ada2fe7eead31-52b1bc21699mr6330758137.29.1756976543690; Thu, 04 Sep 2025
 02:02:23 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 4 Sep 2025 02:02:22 -0700
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 4 Sep 2025 02:02:22 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250823100159.203925-1-e@freeshell.de>
References: <20250823100159.203925-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 4 Sep 2025 02:02:22 -0700
X-Gm-Features: Ac12FXx9BokiA1zWTAcPCh_5RS6LljOLjGyyWFJoP9qUWJdcuwYzY8X--Neq5V0
Message-ID: <CAJM55Z9KJNPOp1ngDqKz0BDpxWu-_cqOMALSE_Jou9FU2TPK9g@mail.gmail.com>
Subject: Re: [PATCH v3 RESEND 0/3] riscv: dts: starfive: jh7110: More U-Boot
 downstream changes for JH7110
To: E Shattow <e@freeshell.de>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Hal Feng <hal.feng@starfivetech.com>, 
	Minda Chen <minda.chen@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> Bring in additional downstream U-Boot boot loader changes for StarFive
> VisionFive2 board target (and related JH7110 common boards). Create a
> basic dt-binding (and not any Linux driver) in support of the
> memory-controller dts node used in mainline U-Boot. Also add
> bootph-pre-ram hinting to jh7110.dtsi needed at SPL boot phase.
>
> Changes since v2:
>
> - patch 1/3 "add StarFive JH7110 SoC DMC": wrap at 80 col, clock-names
>   const is 'pll'.
>
> - patch 2/3 "add memory controller node": memory-controller node follows
>   sorting style by reg address, between watchdog and crypto nodes. Update
>   clock-names to 'pll'.
>
> - patch 3/3 "bootph-pre-ram hinting needed by boot loader": add missing
>   hints for syscrg dependencies 'gmac1_rgmii_rxin', 'gmac1_rmii_refin',
>   and 'pllclk'.
>
> E Shattow (3):
>   dt-bindings: memory-controllers: add StarFive JH7110 SoC DMC
>   riscv: dts: starfive: jh7110: add DMC memory controller
>   riscv: dts: starfive: jh7110: bootph-pre-ram hinting needed by boot
>     loader
>
>  .../starfive,jh7110-dmc.yaml                  | 74 +++++++++++++++++++
>  arch/riscv/boot/dts/starfive/jh7110.dtsi      | 24 ++++++
>  2 files changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/starfive,jh7110-dmc.yaml

Thank you!

For the whole series:

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

