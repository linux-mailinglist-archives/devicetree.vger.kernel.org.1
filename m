Return-Path: <devicetree+bounces-13597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 692567DF2C0
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:49:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 239A7281ABA
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 12:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D306C2FB6;
	Thu,  2 Nov 2023 12:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x4StsjNl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAAD63AD
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 12:49:31 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08943121
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 05:49:23 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-579de633419so10623377b3.3
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 05:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698929362; x=1699534162; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=widlyZwBYPlMRjGOv/8GxlBrQ6R1o+G/iEjecWXMJTc=;
        b=x4StsjNlXJ7hQpUzAKfTqAQGM25dai7i9xjomn39z9mlqqdF0imr4UOSuwcJvJcOnf
         eGOrmXpj14eqY5qwSoV7ld9u0fGe9pfOXwawshKayB+sjistry++tR+7oVzDzFb9LwXt
         cZ1As7CbO8WCaVaFCeF2arTTxKpHgnV4FkN6qq9yX9zDPCwxnJMBwlJawlrQPjbq7A4e
         GOgKOucm2g421u01pHS+1sZ4et2553eYVSvumOB7biy5LeKoEH+2zGcwmJb0S16sPSjx
         vrxSqebKEOSTmX7sk/NUdleSbFsNuoeiCaN+6n5c66j3n9WZHf1iGRR0ZEzTjAURNJuh
         i3fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698929362; x=1699534162;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=widlyZwBYPlMRjGOv/8GxlBrQ6R1o+G/iEjecWXMJTc=;
        b=UCE59+7V4E0DOLhIkjmfSBTQXplB4vkI2ZcswUB0FVEXu969hKfTK7BR39DrpJT1v0
         UKEkYRdnOO42Z4UjmWY/gNKx3zV0VIuR6Uglj+9FuFRyPURmMj0hNcBtn0TPq3WCUqu4
         Ij0y3qdw+ATQz1TXiJLeLY5vF6kXQzu/qsE2y5cRrV1Fu3MJV7uBkDjJL1Zu4syEyjD2
         VdurabEIiRCNzKxKniElJpQ4XN6gxDrc3ifW9xXSKRf6sg89CJS4F9kXmfsxIGxHbcpo
         hb9Ms0ezMhqy18X++nhGty5t08xIjn9BR4elcVPW2e9G6xnd3h8DcYztRrd2i6xQCveA
         R/Yw==
X-Gm-Message-State: AOJu0YznMcXSPxqP3MFTmRbUXED7HBeVdKOJPFBzkEx39lE4/cYB+Mkx
	mnp2NLPGlmO3FBNS2eqZ09W7w0iuETXWQYMFyH3vEw==
X-Google-Smtp-Source: AGHT+IHt90STRVe8je/Z5zX/p4SgI7q02TIIO9EFzScpg845KJIIMk9ZkoVKpvO0vaU75EWje+slqqI/wuSSqst9a5E=
X-Received: by 2002:a81:7e06:0:b0:5b4:2a52:d18a with SMTP id
 o6-20020a817e06000000b005b42a52d18amr4113501ywn.36.1698929362230; Thu, 02 Nov
 2023 05:49:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231101025110.1704543-1-jim.t90615@gmail.com> <20231101025110.1704543-4-jim.t90615@gmail.com>
In-Reply-To: <20231101025110.1704543-4-jim.t90615@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 2 Nov 2023 13:49:09 +0100
Message-ID: <CACRpkdZgqfzti8KW25m++VG2GhU7LZCgzxeWW+uaNO7rh1kmjg@mail.gmail.com>
Subject: Re: [PATCH v7 3/3] gpio: nuvoton: Add Nuvoton NPCM sgpio driver
To: Jim Liu <jim.t90615@gmail.com>
Cc: JJLIU0@nuvoton.com, krzysztof.kozlowski+dt@linaro.org, andy@kernel.org, 
	benjaminfair@google.com, brgl@bgdev.pl, robh@kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jim,

thanks for your patch!

I saw that Andy already provided some good feedback but couldn't help
but to notice this:

On Wed, Nov 1, 2023 at 3:52=E2=80=AFAM Jim Liu <jim.t90615@gmail.com> wrote=
:

> Changes for v6:
>    - Remove bus-frequency property set
>    - Use GPIO_GENERIC
(...)
> +config GPIO_NPCM_SGPIO
> +       bool "Nuvoton SGPIO support"
> +       depends on (ARCH_NPCM || COMPILE_TEST) && OF_GPIO
> +       select GPIO_GENERIC

You select GPIO_GENERIC but you don't actually use it.
If you were using it, your code would be calling bgpio_init()
and it does not.

Yours,
Linus Walleij

