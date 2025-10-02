Return-Path: <devicetree+bounces-223425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F5BBB48F8
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 18:36:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91A7D2A7B8E
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 16:36:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3AC226D4D4;
	Thu,  2 Oct 2025 16:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AcbGbx9S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491A326CE36
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 16:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759422973; cv=none; b=PcBBNAmjRpaNmG7ZHDq/dGSIwWtosfe9gPPnu6/g7RDyMc++4YUAMBofUtkhm82IW19xSlaAam4m0woN68DJXS0ZTyGntiF2yRyr3MZPx04KzfCZ78609qDUKB+xtJ4P6OKZFv6DZeHnUo3ccBKBUHzW21h+QOIy/Oi4tVPc9CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759422973; c=relaxed/simple;
	bh=yaZ9SzpRI2LHRcIcGfUFC3TkkXVUKrkaTU3WyHq1f6Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rLi3YchXfgi8kmScTIkHhxemqlj30gqjNR7MbI3DmRSwfxoUukWXlLkcxb6KHXXS6+TBgIwxDzjft/P3GqfheT8BxB2D3xKqjWOiLGoHw9+kJ1JnXScJ02pPOUL7bu8cbQnp6eR6zm+vwFSSXvGZHJR4X9Zd7Cj94vzwM4KjVhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AcbGbx9S; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b60971c17acso1103169a12.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759422971; x=1760027771; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YQrrasrLzXRHCK6pvLkSTGkuCT0Zt8c+KxprEX9pa6k=;
        b=AcbGbx9So5KBiz6BGvXgsczbDu/5Cxfyp3Xlh4p7NQ17KT7hOMzLC86Ap2pzz5v+z6
         trX1qOK44eKIBXPtkmuALQHa8yFDaQgzGt6InhTHBmalQ26cU37ksKsIHBSulljoOdF3
         H5A5ZBuwShXo84n50dm1LsmA5LIW3JKyvLxQkDmPaHu31mJYlr611G5WIp+vuhoITPnJ
         wqwTxs4J9E0WsblUsNa5Ti3TNFDnWM2F27OWCzFW2/zczHd/9TCajWA0vXdmmPBhpGzb
         yFYTlDIfAwZbss1Tl3QSsTcQsfoONtiVrE6pQlW/u7f3veS3zssVQrpTWfXjH3a2gCtY
         /kbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759422971; x=1760027771;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YQrrasrLzXRHCK6pvLkSTGkuCT0Zt8c+KxprEX9pa6k=;
        b=sbKCftPqpdbkNPurCxSyhdm4GqMFYWsm+M8h3gxI8UXhq8AAHapOIhzr3DmZVbthsg
         h8FwysGthKewWKCeQS3+X8ULRjSgx19jagu7czUmliqyElPKDt+qekAg9EqdeTIPpsst
         16vDJ5wYa2qse/kjwbCTpFIdhkhBuQD2zRBb/R6JcodHTyiePPZ/Sv697mOosFvrmx1V
         aS2IMM92i25Sol9T4hIEU1LIjCcxXJnk40Z6qyW115XFPM4/51xwAG2nbtoYBr8xwaUP
         wOBePJg4rXTWQ2Du+jJQeMTwOknfKH67chfjphzH+kefFNWwL2nsbTkz/TgxuhXMGZ6U
         IlgQ==
X-Forwarded-Encrypted: i=1; AJvYcCV473HancwV6n4fo+i806wWFOOHL2C3ZkQMS0z1rnimjZmNeuKxiSiR5+R4I7xuvFkBAyPnZPcDjFGD@vger.kernel.org
X-Gm-Message-State: AOJu0YxAOy84HN17Sqrun6n8mfNeWAb+1alS8RW05vZ47UjgOuT2NhBN
	mGV+t9LBzga2m36+yxtDn6zXXb3+ohO/inSMslX8Z8Ci6DtZJkZGkLMPgO9AjVv6tEU6JSP9rsi
	PTWgXHCjBAUJ8ee5jTmnspaqkFALGHvE=
X-Gm-Gg: ASbGncsZbKfMT5rc1Ge5Idqsqv4hBUy+MgF0asoLyIdYHJmt8FNhktmzssXTlSzbDJ/
	TPV/Jmfk2crq4d4muKAlxeB9z/amPk98QBzWxG+f8xFQr52mYpjE9WnSFUuoqKjvjg27phxqvm3
	jiGN4r0etf7bTZW0wVyRvGjHIHwhRHd9DavXM66RoZjKwU6LS4vnVIhbJ435hLTZKgm/epPDzMw
	oRF99X+DxVYQCbsGdroae4ukf1cqOX5dwoT4EorJQ==
X-Google-Smtp-Source: AGHT+IEPbLy9zgS2YHLiaw3ZJojcy6XTElb96QehQj13pOSCUVQInEA9iisG896Q64kXUS5xajUDRUPxuHljmvL2dbI=
X-Received: by 2002:a17:902:f68c:b0:24c:cae9:77bd with SMTP id
 d9443c01a7336-28e7f453db2mr115386765ad.54.1759422969883; Thu, 02 Oct 2025
 09:36:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250725093249.669-1-dongxuyang@eswincomputing.com>
 <20250725093436.779-1-dongxuyang@eswincomputing.com> <1c6b0262f0043e65592501d88221ec2a69e9d641.camel@pengutronix.de>
 <764c4fa5.321.198c105554b.Coremail.dongxuyang@eswincomputing.com>
In-Reply-To: <764c4fa5.321.198c105554b.Coremail.dongxuyang@eswincomputing.com>
From: ChaosEsque Team <chaosesqueteam@gmail.com>
Date: Thu, 2 Oct 2025 12:41:06 -0400
X-Gm-Features: AS18NWCYdMrlxPmPW-Ts6cs6yECUx4yrpLh4uW9B_ohoiObbQNOx6rCiuQB8UBI
Message-ID: <CALC8CXdv_ZEU9WDe4kTkmvOCNy2-z0AJUmkWpAjq7DVrardvrQ@mail.gmail.com>
Subject: Re: Re: [PATCH v5 2/2] reset: eswin: Add eic7700 reset driver
To: =?UTF-8?B?6JGj57uq5rSL?= <dongxuyang@eswincomputing.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ningyu@eswincomputing.com, linmin@eswincomputing.com, 
	huangyifeng@eswincomputing.com, pinkesh.vaghela@einfochips.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Random chinese chicken scratch characters.
Exactly whomst Linus desires in this project.
All the hackers from 1993 have been thrown out.

On Tue, Aug 19, 2025 at 2:32=E2=80=AFAM =E8=91=A3=E7=BB=AA=E6=B4=8B <dongxu=
yang@eswincomputing.com> wrote:
>
> Hi Philipp,
>
> > >
> > > Add support for reset controller in eic7700 series chips.
> > > Provide functionality for asserting and deasserting resets
> > > on the chip.
> > >
> > > Signed-off-by: Yifeng Huang <huangyifeng@eswincomputing.com>
> > > Signed-off-by: Xuyang Dong <dongxuyang@eswincomputing.com>
> > > ---
> > >  drivers/reset/Kconfig         |  10 +
> > >  drivers/reset/Makefile        |   1 +
> > >  drivers/reset/reset-eic7700.c | 432 ++++++++++++++++++++++++++++++++=
++
> > >  3 files changed, 443 insertions(+)
> > >  create mode 100644 drivers/reset/reset-eic7700.c
> > >
> > > diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> > > index d85be5899da6..82f829f4c9f0 100644
> > > --- a/drivers/reset/Kconfig
> > > +++ b/drivers/reset/Kconfig
> > > @@ -66,6 +66,16 @@ config RESET_BRCMSTB_RESCAL
> > >       This enables the RESCAL reset controller for SATA, PCIe0, or PC=
Ie1 on
> > >       BCM7216.
> > >
> > > +config RESET_EIC7700
> > > +   bool "Reset controller driver for ESWIN SoCs"
> > > +   depends on ARCH_ESWIN || COMPILE_TEST
> >
> > Undeclared dependency on [1].
> >
> > [1] https://lore.kernel.org/all/20250616112316.3833343-3-pinkesh.vaghel=
a@einfochips.com/
> >
> > regards
> > Philipp
>
> We will add the following dependencies in the cover letter of our next pa=
tch.
>
> This series depends on the vendor prefix patch [1] and config option patc=
h [2].
>
> [1] https://lore.kernel.org/all/20250616112316.3833343-4-pinkesh.vaghela@=
einfochips.com/
> [2] https://lore.kernel.org/all/20250616112316.3833343-3-pinkesh.vaghela@=
einfochips.com/
>
> Regards,
> Xuyang Dong

