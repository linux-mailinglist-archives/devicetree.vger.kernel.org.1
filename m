Return-Path: <devicetree+bounces-44017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A8485C27F
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 18:22:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1797282A12
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 17:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A64877640;
	Tue, 20 Feb 2024 17:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="n3AwI2tW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4527477631
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 17:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708449701; cv=none; b=jCElPUbd3OY7J5ysbl9wH1JC4MaVDJ0A0KhEpAbgTsIt2CRbeSfbnjNFrbLSfcdXRRPyn5syTpCgwjzwl1hXKAGtwUrgTuvL28uCPv0vuJQ6u4Sqwh5tIv6nq+FqoRzmPSa0TIfNVyJURf2s3DpYOOaACv8cnnnSBzaqUlb2Fvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708449701; c=relaxed/simple;
	bh=H+CYG1HmEgtu0LxM7cNVpXsLAz04YxVfh7pCUep5NRk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O0MjVHEfLWCXad1lHDOovEYjemVdY0mSspBdF37JG9p1TZDtdoRxRSI1Lx5xkl1wcI+CuElJAqZxvDyXw7xQjxdGjG+wIVFT8KwDLKGyQt1AJnbpmb0kHUCRmSiqBz+dhS6/HgEmXNNIrc4u2dU94GcGsPFXdaP0z4ZVv7tD62Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=n3AwI2tW; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d0bc402c8eso54102221fa.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 09:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708449698; x=1709054498; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rihM8gZY5Rpoa6nRB67kPe66RFi61qM4N0eC2eheyvM=;
        b=n3AwI2tWS8fXoZ1KFeITo5hUmF2+VhF7PySr5i7E0yxgO0fXh49nL0nyevvyVddiEO
         cyzc6/nbR6x5pwN1VxGn+VutBmmY8zi/P2hrDh22Z+Ecl2FQgeox1M+IHHZKqi2tjd/i
         yjc3cwZfdP+tTCzxFOwnNo/WwUiF5WkSRJL3wPwVWsuK8NQBYSJF4DgNx5YEbWDix/9E
         9WXYhD5MnplbvxbBadoXO0tCo9KjggGMIKrjF5k4pr88dALC5dJMGGwigyZPDRWz8xX8
         dFj/HYweyC/XCkPZXFNmIjkZfVtD21ytKoKu8Exj5QwTHHUkzrPi0OrVLdAviODPzgBy
         /qmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708449698; x=1709054498;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rihM8gZY5Rpoa6nRB67kPe66RFi61qM4N0eC2eheyvM=;
        b=old/MuigXHArB/ghb3Hgm7p49Gi6cFUMEysJakfoNjSv5baHgrweo6RE8/TKOwwhyh
         4b/f4tHLXajXUCFgylhxWzXQb43fjLyOeqGGpXuToU6Y394oat8MWViR6nt+2sLdcW5R
         K6AvWaQtWkEkUZRZjH7JEH/pT5nLhYc8wR2JsSMxd8UJr4JN0di+2e7Xq5B+cJrG1uZf
         xxfCzCq9NpB8mPxqpIMTY9oAdOVXvJzsrzRg8vRPE399qkPsRQuLwfXXZ/MJrIZDTINN
         CHavmbcZmZPaQVvNNUsCa7R2EjnhaINfZ/nZEzQWiNldM6FUze3IEgfiE60Uf7cJuDlJ
         OXXw==
X-Forwarded-Encrypted: i=1; AJvYcCXc4P0wyyxCvyp2x9cXxVoxvfF+9ZugfFKJi+yDYa+6ORrdh2i0J4eq2mDRrfmvEETURLOdxPgw9/TRzi1mrwwvrhtfA1CuEwQlJw==
X-Gm-Message-State: AOJu0Yz1fbNCNRw31YxZD1y7r/LCGmlnhKm2PQ8YvMuaDNnO/gJ6BOnW
	96OEtCG3zD0Dp2bjYcBRMpIQt/3C0DiOGKLSr+e8DH6UiBYHUOsd5NCLVdR/tdqJGqPn8Je0Deo
	zaoX9VI9D7GvFb3V6U3lqbLfPta8q7W2Sz9uwcA==
X-Google-Smtp-Source: AGHT+IEkrb47fFTpwdC/omRvJj22/7b8TTe73nmNk7AtrgajHxsJNK/IAgqz0F7H8+syKUfz++fFCnpUoSe/FJZH4UU=
X-Received: by 2002:a2e:95c5:0:b0:2d2:33cc:7483 with SMTP id
 y5-20020a2e95c5000000b002d233cc7483mr2732678ljh.4.1708449698204; Tue, 20 Feb
 2024 09:21:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220060718.823229-1-apatel@ventanamicro.com>
 <20240220060718.823229-9-apatel@ventanamicro.com> <8734tni7h3.ffs@tglx>
In-Reply-To: <8734tni7h3.ffs@tglx>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 20 Feb 2024 22:51:26 +0530
Message-ID: <CAK9=C2UgYpVtjFZ4NLzOCP6f3LQ=Fx7kPMywwQyFiNMcKmPyLw@mail.gmail.com>
Subject: Re: [PATCH v13 08/13] irqchip/riscv-imsic: Add device MSI domain
 support for PCI devices
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 20, 2024 at 7:05=E2=80=AFPM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Tue, Feb 20 2024 at 11:37, Anup Patel wrote:
> >  static bool imsic_init_dev_msi_info(struct device *dev,
> >                                   struct irq_domain *domain,
> >                                   struct irq_domain *real_parent,
> > @@ -218,6 +241,7 @@ static bool imsic_init_dev_msi_info(struct device *=
dev,
> >
> >       /* MSI parent domain specific settings */
> >       switch (real_parent->bus_token) {
> > +     case DOMAIN_BUS_PCI_MSI:
>
>         case DOMAIN_BUS_PCI_DEVICE_MSIX:
>
> ?

Actually, the DOMAIN_BUS_PCI_MSI is not needed because
the real parent domain is always the IMSIC base irq_domain
so DOMAIN_BUS_NEXUS is sufficient.

Better to just drop DOMAIN_BUS_PCI_MSI from this switch case ?

Regards,
Anup

