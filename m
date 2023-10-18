Return-Path: <devicetree+bounces-9738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6557F7CE478
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 19:29:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EC13281A6F
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E32D93F4AD;
	Wed, 18 Oct 2023 17:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Sts3Gh/i"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796B63D999
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 17:29:02 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F47B172A
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:29:00 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c50305c5c4so88103001fa.1
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697650138; x=1698254938; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KecMZIvYhLiPYK1GTiccjaRpV9Eq5PLhQIfDXh9BqmM=;
        b=Sts3Gh/iHfuxwcOKaDl6vwMNA5HSUH5CI1OyckNMimNusWTpvhGOJTON/e8B8pooiS
         Em/iLj+/R2dnS5FGOCmKTKk27wo+dm+Um3gS0xQ/U7eCYPtmAgQWv8yYi/UXJYDjsmJS
         yEkh9Z+9cSK7yzH/Ht+SSnVnYOwBudF/SeSaTDhWMPPLE8ISaq7sTtIY/ShtwWbjMxV9
         pVh20lTH8OO/A5bPZLtKYhx5LmbFuuu6iPyJQrDLg1aI+C7tNl4U6w1uVRhhjpKU1wPJ
         RpeY3j7ePCq+q1yEXj4FR1f3qNNnMqYb8XoZsnm3naClI8yFr/pRXekeavaGOHKgzGHA
         oCBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697650138; x=1698254938;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KecMZIvYhLiPYK1GTiccjaRpV9Eq5PLhQIfDXh9BqmM=;
        b=heb6FPwFzU1neueXV7tT3jIPtV0JU5yBY/2i6Gw4JZy/mRnepX0RYsg10LuP8opapH
         XoYUmIU/i7TiQz04lKEkPryQSJ9CeIkfpYI0PB0rXTrNlBDRcwc9cME7Ltms/P9jFmOb
         ISyvBH1foiIrvRMBt7OU7FKDh6gpCa04/rykQLwQaR60mC7rI/YO6DeTOG4RyoSEoaDw
         3EwKOYTY7CeWfYsz+e1Mw2riZmeerYpc8LteC8QRxcYr4n9j1/LBWrgd59jt5aFNvlrW
         0PqAzEnhNC9hTp8mRb8jilywS2MV3nC9npi9Ab+gp/v4CWEa6OLYPi1z2Q/Bc6KOdsqs
         snNg==
X-Gm-Message-State: AOJu0Yw5MlZqKgGw1Hk1T58qP9r3bWFGn1yhLPiBLvS8yrViX1HSEICT
	4DiP8BEZ20gXtRt+sc5x7OoHxhKEDAovxdV8gqPswA==
X-Google-Smtp-Source: AGHT+IEtoY1yZMCUmYkHB9d1SqV2lcdLSWQ0+n+bBu7Zg4eMSM1qn1YEnUNWUrCwdIkscxBAZQ3k/ahzY9IjsKI+bfI=
X-Received: by 2002:a05:651c:227:b0:2be:54b4:ff90 with SMTP id
 z7-20020a05651c022700b002be54b4ff90mr4251984ljn.53.1697650137918; Wed, 18 Oct
 2023 10:28:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017131456.2053396-1-cleger@rivosinc.com> <20231017131456.2053396-12-cleger@rivosinc.com>
In-Reply-To: <20231017131456.2053396-12-cleger@rivosinc.com>
From: Evan Green <evan@rivosinc.com>
Date: Wed, 18 Oct 2023 10:28:22 -0700
Message-ID: <CALs-HsvXt_gPCJ2hh5ftPn0sJxWKNzn3_8uyamko4OufCE0+vA@mail.gmail.com>
Subject: Re: [PATCH v2 11/19] riscv: add ISA extension parsing for Zihintntl
To: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	Palmer Dabbelt <palmer@rivosinc.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Albert Ou <aou@eecs.berkeley.edu>, 
	Jonathan Corbet <corbet@lwn.net>, Andrew Jones <ajones@ventanamicro.com>, 
	Conor Dooley <conor@kernel.org>, Samuel Ortiz <sameo@rivosinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 17, 2023 at 6:15=E2=80=AFAM Cl=C3=A9ment L=C3=A9ger <cleger@riv=
osinc.com> wrote:
>
> Add parsing for Zihintntl ISA extension[1] that was ratified in commit
> 0dc91f5 ("Zihintntl is ratified") of riscv-isa-manual[2].
>
> Link: https://drive.google.com/file/d/13_wsN8YmRfH8YWysFyTX-DjTkCnBd9hj/v=
iew [1]
> Link: https://github.com/riscv/riscv-isa-manual/commit/0dc91f505e6d [2]
> Signed-off-by: Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com>

Reviewed-by: Evan Green <evan@rivosinc.com>

