Return-Path: <devicetree+bounces-10175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D27D7CFEE7
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 17:59:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3EDA51C20F44
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCC773219F;
	Thu, 19 Oct 2023 15:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="K/NEFcZo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032B33219C
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 15:59:09 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88A80198
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 08:59:07 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-507a62d4788so8245344e87.0
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 08:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697731145; x=1698335945; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sm/Wii6+7o3UXX8C55yUutEJQSIovh8VXkokjTN3YvQ=;
        b=K/NEFcZo6LXuop6dYkg2EkVZANrGbVlnANb4YU8w8XgxJqVRS59Lnuvjws9l34VXbd
         lcUQjtOplHylYKpkyF5OrwwTxiuRkxiQwEsEpEax461jOQ51LcqsfT+qFDwmIk1ES4d3
         cIsn+fudxCYIRGepGUyertcblfwmK/j9BM1HDUj61bma7N8tw00v98KrWoCLQaUSBu4R
         /yfaabDlKxaO07FDVqv9BGOoMahmZhbw2zp6jVo6qN7vuyJrf9zMbjWWAKglq72d3hzI
         TfoHMZ+WFZOy2crAux3luNzVQ5hiRH4GImUoz9zS0VwRPc11bx/BnIbXnJAT/YPP6i/n
         f5GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697731145; x=1698335945;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sm/Wii6+7o3UXX8C55yUutEJQSIovh8VXkokjTN3YvQ=;
        b=PN48FQczOYc8WvzpGOLoXUt6BowoFQhOD/OwXUSGXw+S4DD6EmYeuwbN0wACVxa7YT
         MGF5hxNnp0LkM0k8LCfWt03iD4Ccb8CcAkLfLPcwLyW3a1Yv1e47YrEW3IkDdEAZKeGn
         M0Ens7qJwD4tGvp9CLaZYJy3dom85qpkW7P3GF7g37uGdLo97wRIMEe8+s8duhM8jygf
         I8d+2XjXI4Ofp7Up4t5jLebFGQ02q0ldwIip6hMlV19ucb5vHDuujPV3Xz0E3OrMXwtI
         ePG8W6Jr6uAuTCI7Foge0mx2iyHIVSAaO9tUC/C1wlqxVQ0O5WU6ECAMRAVZlKCzUT8r
         ug/g==
X-Gm-Message-State: AOJu0Yy4tI0XLLLq74eVYnKyam8gPYxmN9r6NDwPjVtDzgIIZUGfv4kW
	11JKWVdc1Y74O8Mp5BAPhxp/DXU0AstpSAdeSKvPIA==
X-Google-Smtp-Source: AGHT+IFhWqGbbE8JI0y4QRuxzilbQXa+K0fS3Bh2vLrdcR1Ry3XED7EDIlt4FyQSCadgcN054zLlg6tJMnlCOQmsWWg=
X-Received: by 2002:a05:651c:555:b0:2bc:c28c:a2b8 with SMTP id
 q21-20020a05651c055500b002bcc28ca2b8mr2127428ljp.27.1697731145578; Thu, 19
 Oct 2023 08:59:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017131456.2053396-1-cleger@rivosinc.com> <20231017131456.2053396-2-cleger@rivosinc.com>
 <CALs-HssL=wNwj9nRuZwpZhy1CB9p9-X=OqgwBw9zvgA7hA4fEg@mail.gmail.com>
 <20231018-scrap-bankable-a0f321d97a46@spud> <20231018-flagpole-footpad-07a6228485f3@spud>
 <CALs-HsteDO0PvAKKQje7wU0f4z8w2V3f7WiHh5+LvQeVaSua1w@mail.gmail.com>
 <0b2cbc89-7892-4c43-898c-03757eaaf3b7@rivosinc.com> <20231019-smith-purging-627c50cfa3de@spud>
In-Reply-To: <20231019-smith-purging-627c50cfa3de@spud>
From: Evan Green <evan@rivosinc.com>
Date: Thu, 19 Oct 2023 08:58:29 -0700
Message-ID: <CALs-Hsv2HK7dtZRi9R4GH0vZnf2oU9xVhKfK153S7Y_txUceqA@mail.gmail.com>
Subject: Re: [PATCH v2 01/19] riscv: hwprobe: factorize hwprobe ISA extension reporting
To: Conor Dooley <conor@kernel.org>
Cc: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	Palmer Dabbelt <palmer@rivosinc.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Albert Ou <aou@eecs.berkeley.edu>, 
	Jonathan Corbet <corbet@lwn.net>, Andrew Jones <ajones@ventanamicro.com>, 
	Samuel Ortiz <sameo@rivosinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 3:24=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Thu, Oct 19, 2023 at 11:46:51AM +0200, Cl=C3=A9ment L=C3=A9ger wrote:
> > Indeed the comment was a bit misleading, is this more clear ?
> >
> > /*
> >  * Only use CHECK_ISA_EXT() for extensions which are usable by
> >  * userspace with respect to the kernel current configuration.
> >  * For instance, ISA extensions that uses float operations
>
> s/that uses/that use/
>
> >  * should not be exposed when CONFIG_FPU is not set.
>
> s/is not set/is not enabled/
>
> But yeah, definitely more clear, thanks.

Looks good to me too. Thanks, Cl=C3=A9ment!
-Evan

