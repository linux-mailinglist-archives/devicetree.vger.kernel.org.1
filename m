Return-Path: <devicetree+bounces-24753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5815E811135
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 13:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B02E1C20ECB
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B31228DBD;
	Wed, 13 Dec 2023 12:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="f9szzBr3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3368FCF
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 04:39:15 -0800 (PST)
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 926813F289
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 12:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1702471153;
	bh=RVX7Hkci1GalSOV+ggHHM2J9QrW4mGKi5xvBhDtdXC4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=f9szzBr3ADMAHhCsWCszBvUGzG1Hfw/V+cX8IlK8N3Jlj07oGhVS1/OWHUrvr/Rst
	 uBca6wkaw635mfxDExVlne3g2O4KPvLqyFufAdnSWb3mneSVCSnTBvvU5MZRsIy5EM
	 MVUiMFWCiUtdycsEFj18WtPVLnfe3hlMI4zUZebnU2nqjlw7BAYK9C12wSPzIKdi9Z
	 G3imHwl+NYcxa1hCVOUV8TreIC6mM6RGwV8K0XwzvEZkaEFzWRv/yu7Ixho9RiZDmN
	 cBGoeHF03hF7m0lgt6jdpFugAFzvdicfrNMS+uHjR2MQ1ZLlt1hddeMYpQCmgTK4RS
	 /NIUKjD4zUIjg==
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-425c3f06bd9so52262461cf.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 04:39:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702471152; x=1703075952;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RVX7Hkci1GalSOV+ggHHM2J9QrW4mGKi5xvBhDtdXC4=;
        b=Jp+R7L1Uw6/Wna5jq74uIC2F2F8Y+mZJKXYoScV1QmhqDIBjhad0x/DwPoLbSG8Tir
         u0g6S7DRmiPayvdFS7JB4nmZFgXrGBZwwAGt20pL9EL36ZR4gXPh9WlF/LGj5zaJPwdq
         1gFD8RRsbk4xNSAsnPv1fztd7+bZmJCe9hk0sdBxW95YIJiigTBx6rbFtO+qJ4ynEKAL
         B1kAiSmddquVg9BMYJWbq4zwtjno7mNoIxJbkd9hUdgxM0IUx0QXVfzx5BwnXansPwSE
         tA0DfOGW7IYFBTix1M4YITAra/Kc2brIWVe5MtLJdVJg6U1z+HpE0geMMkPbENTwIZWN
         lONQ==
X-Gm-Message-State: AOJu0Yxt0mKLLdzzMkBd8HwD0lXT1oJINQcAPY9wdBKGzkGYEbDvkfuJ
	erqzu0E4V6S6L3UN3w6DaRm9rLORAYM2Jv6vrSOd4EcDOVMEPkTEoMpp03PFwwTu+HKEx7taVp1
	uRi3w8J5YNFFhEsXiiajCqsd7gOA4Wx5E13Y7vy4g+J3YT/XxTFPT2Q99iWouzrY=
X-Received: by 2002:a05:622a:28f:b0:425:4043:96c5 with SMTP id z15-20020a05622a028f00b00425404396c5mr12063923qtw.82.1702471152383;
        Wed, 13 Dec 2023 04:39:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHIeVXeXX7w4KcjeNOZNUYxmPvYFuILxSBmeeP5KBI6qOM2DYJi1AyFB9Hnx/wH7nuTyyjZHzceB4Cl8ASZSCc=
X-Received: by 2002:a05:622a:28f:b0:425:4043:96c5 with SMTP id
 z15-20020a05622a028f00b00425404396c5mr12063906qtw.82.1702471152113; Wed, 13
 Dec 2023 04:39:12 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 13 Dec 2023 04:39:11 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <CAJM55Z831ucY4QqPTR_0zJVB05UUT4W-3M0CGzvtyPo=AMD=Vw@mail.gmail.com>
References: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>
 <20231201121410.95298-7-jeeheng.sia@starfivetech.com> <CAJM55Z831ucY4QqPTR_0zJVB05UUT4W-3M0CGzvtyPo=AMD=Vw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 13 Dec 2023 04:39:11 -0800
Message-ID: <CAJM55Z-BJMi=rbe8op5EQ-efwo-9AbmavVE1BVJ9_xuHQzMhLQ@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] riscv: dts: starfive: Add initial StarFive JH8100
 device tree
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Sia Jee Heng <jeeheng.sia@starfivetech.com>, kernel@esmil.dk, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, krzk@kernel.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	daniel.lezcano@linaro.org, tglx@linutronix.de, conor@kernel.org, 
	anup@brainfault.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	michal.simek@amd.com, michael.zhu@starfivetech.com, drew@beagleboard.org
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, leyfoon.tan@starfivetech.com
Content-Type: text/plain; charset="UTF-8"

Emil Renner Berthing wrote:
> Sia Jee Heng wrote:
> > Add initial device tree for the StarFive JH8100 RISC-V SoC.
> >
> > Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> > Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
>
> Looks good to me, thanks.
>
> Acked-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

I just learned that this JH8100 is not actually a real SoC yet but just an FPGA
implementation, and no indication that that's actually a product that will be
mass produced. Hence a lot of details may change before it becomes a real
SoC/product people can buy, so let's not add this device tree yet before
everything is set in silicon.

Please consider my Acked-by abeve revoked.

Sia Jee Heng: With that said I still think it's super awesome that you're
beginning upstreaming support for your new SoCs early. I wish more SoC vendors
would follow your example.

/Emil

