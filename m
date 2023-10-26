Return-Path: <devicetree+bounces-12203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D6F7D850A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:45:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C84B28201F
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:45:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60B052EAF1;
	Thu, 26 Oct 2023 14:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="QEEhCKwN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445918829
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:45:05 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A23FDD47
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:45:02 -0700 (PDT)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E6B0441528
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698331497;
	bh=KyhXAQ347/D5dTVlSbEJNnsvSJxeXoai/S3IoPDxqGM=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=QEEhCKwNmQBYuff9Zej1sV7WH/jtU1b4momBaBD7AYx1XC+VmMTho92C4yNuFvWUe
	 JmdNp8AURU3JLOAYl91sGmQbRkbRDcGu5nxR7/FFc9r0sanovaSgjYjweama63pd2N
	 CM4y+pFYFJ6w+Yd8mtwQETAaLgfi5iPTvzNlse9lFoU1F/fgbVMP0M4zSBRTzdYPm7
	 84tJjwbxXJxhIl1o19xmVbKexBXlSy/wm+MARfZVZos9eKArQwOlDlcFFcdZ3KyMPo
	 rk4R9Uh8E5qk4QEbEOgtTYxeoCDuwH3+9pw5aMByw+PpUZHpCriiCc8RADfaA3HZrh
	 +MM8LDNOptFUQ==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41cdce61c6cso12570991cf.3
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:44:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698331495; x=1698936295;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KyhXAQ347/D5dTVlSbEJNnsvSJxeXoai/S3IoPDxqGM=;
        b=HCOGqFuhAz9yKPWv2linkCTxon48/+Db/ljnbioJoQTNUCu3b0PjUImERolcg+JJHh
         xF6Y1ZpUwPNIL+/7HdfryruVeqlveYORhisLZLQd5Rolp8lTCbOxWSTsB0P5NABe9E8a
         IbO+TuOZMaA7wtZTe/FDK27fel/vDKc3rvonC0ftqgWYc54wbgynf7xJVYjPM0396hpX
         Jc1/k1CqypQfVV2Qbuzqr22D1nrR4Y+U8UK/mwhvcrNou2YaVqG0xsUwDAGRlN5dJMLs
         mMoUXCyZwBGwQPjohPih4/EvXHa+jH5FBpNXb2cqV3iAQm87ksh3jUfzTyaodyTmdkDn
         oR1Q==
X-Gm-Message-State: AOJu0Yy7tsvROE/AsQ+tY0sgHdLe4bHTMB2+jmZ52ZZOshK3/ev88N8G
	Mv9bft74Wa06pOCbqxXiXbMxw+XY7cw2yfaio9BNdGo328GBK+5xswKywW7lVt3qUadeWNvtiyv
	k8TtINvINhPodMEdQN3k58LieYPGwp2ZqyT6kYKaZqNiFohff/CFlc/S3unN4GrA=
X-Received: by 2002:a05:622a:1822:b0:418:737:87fc with SMTP id t34-20020a05622a182200b00418073787fcmr21060489qtc.18.1698331495023;
        Thu, 26 Oct 2023 07:44:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDUZEYahtREjaUlikk/d6DW0+O0yNz17AITtWS0cudA0V0aUT0OQQ86tpZcKtUcpjHs4dEqDgRXm8Mb2EWq70=
X-Received: by 2002:a05:622a:1822:b0:418:737:87fc with SMTP id
 t34-20020a05622a182200b00418073787fcmr21060467qtc.18.1698331494770; Thu, 26
 Oct 2023 07:44:54 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 26 Oct 2023 07:44:54 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231026-cupcake-smashing-eb150e74a17c@spud>
References: <CAJM55Z8DXDs6LT0JrTyEMp8V6BHvsjUW7aJ8Gj+fRGsasHAi_A@mail.gmail.com>
 <20231026-cupcake-smashing-eb150e74a17c@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 26 Oct 2023 07:44:54 -0700
Message-ID: <CAJM55Z-NAuGjwGXT7vMg+BCofQ8yo7Q_481LQV4zjN3ByRNxBQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: cache: sifive,ccache0: Add
 sifive,cache-ops property
To: Conor Dooley <conor@kernel.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> Hey Emil,
>
> On Wed, Oct 25, 2023 at 11:56:41AM -0700, Emil Renner Berthing wrote:
> > This cache controller also supports flushing cache lines by writing
> > their address to a register. This can be used for cache management on
> > SoCs with non-coherent DMAs that predate the RISC-V Zicbom extension
> > such as the StarFive JH7100 SoC.
>
> I'm not really sure why we need the flag, is it not sufficient to
> register the cache ops on a per-compatible basis? At least for the
> jh7110

-jh7110
+jh7100

> you're always going to want them, otherwise your system is going
> to be largely non-functional, right?

That's right. I'll do it that way for v2. I guess my thinking was that this
would be easier to just add to the device trees of other platforms that might
need it. Eg. mpfs pci and jh7110 graphics.

> >
> > Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> > ---
> >  Documentation/devicetree/bindings/cache/sifive,ccache0.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
> > b/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
> > index 7e8cebe21584..36ae6f48ce0b 100644
> > --- a/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
> > +++ b/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
> > @@ -81,6 +81,11 @@ properties:
> >        The reference to the reserved-memory for the L2 Loosely
> > Integrated Memory region.
> >        The reserved memory node should be defined as per the bindings
> > in reserved-memory.txt.
> >
> > +  sifive,cache-ops:
> > +    type: boolean
> > +    description: |
>
> and this | is not required btw, since there's no formatting here that
> would need to be preserved.

Ah, thanks.

/Emil

