Return-Path: <devicetree+bounces-20408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C287FF329
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 16:04:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0FF681C20FC6
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD0AE51032;
	Thu, 30 Nov 2023 15:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="JPkxJ3xp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 225411B4
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:04:40 -0800 (PST)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D12E540337
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 15:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701356677;
	bh=FPCmM4heOBQnergRut0J3YYhJg2qbq6GVBQzZL89KsE=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=JPkxJ3xpjNX+FWoXBxIeDGOodPgYorjhIzNmbAuLsBEMXjLaXe69AecX29K+tfPuQ
	 eTpF3sNkJ757LUm99TSoY8A5azePKOD0ONe0g/Ib8zkAjw5ok6WWHZaRHFwwX/d6z8
	 9uq2hRfWw6iqB4JEqLdvfGD2N/nKTR/fpe6Hh8nmmyzKMhXieDMy06Eb4xlJCdOvVk
	 cWttWSxzkPNvKL52HDItzILQ9SPnSZGMK4O9jjvkP8J6x5XLoJwTeQIngUBxkYWZXo
	 5m8qPI0uWZS5HX2mSqeFRrekVub8aqzrpgmsu8SqPhkeWffHYoovSJM7ojDe/+S94z
	 QYzHsDTUmS1bg==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-423a1e19a76so11095331cf.1
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:04:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701356676; x=1701961476;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FPCmM4heOBQnergRut0J3YYhJg2qbq6GVBQzZL89KsE=;
        b=Ow0EiZNfQiadVfVIHWMeX35fILuvrqocrSnAZfdjBe7nI5y/nc2okPV6FJWtfwaFJ2
         9RhzatbOUQozPRnn+rzTJ04Rvs1qJSADautcvjiy4shaapUSI81OHEbcK/jNUIZJmOsO
         43jDAkdbXslzW5TPyIURcyhzSETwPMQcibOKT4eO6kGoh3QuFn7H8qa/8K1i2ywQxnJx
         gIKbueHGk1OBXmp6JEAD9/iU80RhSjzILToIbpv6r1vO5kvrdIMgZCWjzcqM0obt57Eu
         KPQ/MrdfbVd5isIksWrzBh2HQBSjRoykig3fLa51Zd/3kQiTq/sy6cRGOfhNTrTwP2YX
         CtNQ==
X-Gm-Message-State: AOJu0YzdIu/UlHxfkFnLZYJF3nF9/epXurV8eGvHmaHd6H3xM1FmZEDE
	7wDn9G2oR+uU1QV/1lBxNWBO50pdd84okhso4I4KT2dQUfbW4i2YzM5iUgEOSVIc2C0c3gGXe7c
	zwQDDve/Vxhezy/cd25cHn/qkSz+PQ/ycvFeqUNUjPEuWrRuFoKeiw3A=
X-Received: by 2002:a05:622a:22a8:b0:423:991e:8589 with SMTP id ay40-20020a05622a22a800b00423991e8589mr20147209qtb.33.1701356676666;
        Thu, 30 Nov 2023 07:04:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH9k158ZXjtgNdDUlZzVCNCmNLqRi+AOk+q/iadsE/+/aYALRFnyCxg84z0xW9r9HHy2iLKzeqhcclFfe7hrr0=
X-Received: by 2002:a05:622a:22a8:b0:423:991e:8589 with SMTP id
 ay40-20020a05622a22a800b00423991e8589mr20147170qtb.33.1701356676224; Thu, 30
 Nov 2023 07:04:36 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 30 Nov 2023 16:04:35 +0100
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231130-skating-shindig-af43058fc8ff@spud>
References: <20231126232746.264302-1-emil.renner.berthing@canonical.com> <20231130-skating-shindig-af43058fc8ff@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 30 Nov 2023 16:04:35 +0100
Message-ID: <CAJM55Z_EPMuCbX-_8ABKwT27xdtDX7X2y_nv+o4knVL0DoK2xQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/8] Add JH7100 errata and update device tree
To: Conor Dooley <conor@kernel.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> On Mon, Nov 27, 2023 at 12:27:38AM +0100, Emil Renner Berthing wrote:
> > Now that the driver for the SiFive cache controller supports manual
> > flushing as non-standard cache operations[1] we can add an errata option
> > for the StarFive JH7100 SoC and update the device tree with the cache
> > controller, dedicated DMA pool and add MMC nodes for the SD-card and
> > wifi.
> >
> > This series needs the following commit in [1] to work properly:
> >
> > 0d5701dc9cd6 ("soc: sifive: ccache: Add StarFive JH7100 support")
> >
> > [1]: https://git.kernel.org/pub/scm/linux/kernel/git/conor/linux.git/log/?h=riscv-soc-for-next
>
> This stuff all seems fine to me. I'd like Palmer to take the first
> patch, or I suppose I could take it alongside the cache driver changes
> with an Ack.

Thanks, makes sense. In addition to the missing Signed-off-by I also forgot to
update the commit message for patch 4/8, so let me send a v2.

/Emil

