Return-Path: <devicetree+bounces-210843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B16D2B3CF24
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 21:50:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17FB43A9130
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 19:50:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F22B32DFA25;
	Sat, 30 Aug 2025 19:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="k+xd4gYP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A06E2DF710
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 19:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756583400; cv=none; b=l+tOYjrLO2GHk/Sl9s3G+L8EHhHUgWAANQyntAmZYmxacvZtc9BsTIXDrliZTNBAS+zsOKurgOdHT9kvepsW8dQbnv7LKzeZ7gXnqaEg5or7VGAYMNuZx1z9czFoEHnP8/QB2YdocLQLRlJB7X2xNlDjePoW6SQtCXQQYgbj40k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756583400; c=relaxed/simple;
	bh=RESvPL6lZSU1LVrX5w1VrBJByLVlXWsRl2ULoQXIrYw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XmEcdL7edInu0HC30SvS/e3X9xyjXT4zghzFdi08WbxbgFwFuScAEOO79EbkKDp1n7cU3oGn0q/lndBCMZM4mLbXYehAiqpLJVcvorXMj5dL3mq/iaK5uneccen4s351o57HN4tEddyd2BZ1XW3SOJDGv6jZl80EbELKj8Qs5n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=k+xd4gYP; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-55f6bb0a364so1864139e87.1
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 12:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1756583397; x=1757188197; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RESvPL6lZSU1LVrX5w1VrBJByLVlXWsRl2ULoQXIrYw=;
        b=k+xd4gYPPID2fGD2mriQ/uWrl5Rij0kxv7aV+7AothtEwbuKIR5bBrefwe5my0dN0W
         dC0Hkv+TONrXPf/rhC0/LTwZTwyTex+MZ0OvVQDpGfTCkpg98DtppVN9N82cN1GwyyBr
         CO8dKAeYRXykeGNW/7N3ST2CFG8/KaYvTn82dX6grVGet5dVM3pdHzl9pJyMfJ6C1648
         iTEEw9t3Q0M9LMZEYis/KK4GTTrTnqia+fpXV1/wernfdD/fS71PwYGP2N95WmdkozYr
         TNB5i/RVoSW7R2dhUHb61ejRVeJIRqATDF0Na/enuuary5EGq/f353g9qSz0hk4FTTw0
         0nEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756583397; x=1757188197;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RESvPL6lZSU1LVrX5w1VrBJByLVlXWsRl2ULoQXIrYw=;
        b=Fz6xwEEb4wY2dsawqwoI/FqEBItKyLDA9Lq9lmpJF3+kgo7T4ngtbyBxZA6ELot+Zd
         7/Y6kOhlgQ/kWmN64xG5I5Wne/2h37rTLmo/nkKMiFMcX4pXHiFBCewE5MVewKEyVJOn
         PMa4CgU6qE1ufP70bLBj1TR34xTYP8/2ZcPgw2q+ju8VctCXXoyLFSu73Thp84SwZqpA
         cdLvGFeasBWGFoRisxywVpLq/7vqITVATVdgQsmKLWqZphzFGroR45mr4pU91rjpO6Ce
         y+d1LI3UBSMxUYfwERcr/Ny9z2BRVTbwCzbiJmVzKmQ0D3n2G2fWjA/iN6Za+4qj5fzT
         e7cw==
X-Forwarded-Encrypted: i=1; AJvYcCXrnSSThUtdCqXcvyjGxdnCrETA+i9iAC2tYsweC47/tN0r15AtaTFb5pGeooBNMEpwJfXqr+g2EAOK@vger.kernel.org
X-Gm-Message-State: AOJu0YzYlY2deia+/oc1mnp1zXpcLPpNAKazkmUbRaJ3mtJPBRESGeNa
	z3I4wWNzo2MNXe7c7yL4inhKI44ZnD3kvLuLLm9lcXCCiP8fo2SPxY3+gPvUT3O3D7wgY/wKZwi
	uuHjbMo35ekQqNyk5JZtHSeIU0ftcerCy+vKyxLmtcMtqwgEiX6hw
X-Gm-Gg: ASbGncuCcsutMN1sFuAoHypV3O+BA/R1kBIRVXOK/QA/5dVGIFOJbaFouuSs2xZ/Plr
	yJstwyTXHkgTOtrR5F5XFQhYFYe2l7Yd34umc3CeSXtpvzAsIh3panerqV0udWpgQR5UrfCiWw1
	nOVu9rYpird5depwLSOL69QDXNwkDzXOgGgGlA6g4zNldPNmDht249EVG9tTskZqnac2ksEiD60
	j59WyMWBXeonNZetluKq/TbnljrT4PmmXwjKgB6OqB7KzmUTw==
X-Google-Smtp-Source: AGHT+IE50mGD6Wsp5fjlHRmoMQ5rebLnfakE86Vnr2ujarxjBgcFlbm1KFCExKkXTA2m/S8rPEWfnwfaAxEiJLlgF8g=
X-Received: by 2002:a05:6512:3b9e:b0:55f:486b:7e44 with SMTP id
 2adb3069b0e04-55f708ecf52mr685020e87.37.1756583397500; Sat, 30 Aug 2025
 12:49:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250816035027.11727-2-ziyao@disroot.org>
In-Reply-To: <20250816035027.11727-2-ziyao@disroot.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sat, 30 Aug 2025 21:49:46 +0200
X-Gm-Features: Ac12FXyuG3vAb6oO4Z4zArYVmCFaF-tcxGvuqQuACijURT9dTtrTa_sARjkZMYw
Message-ID: <CAMRc=Meed_x_OODv1fw1m7rpLY4uGic=0pacjV+Mj147_WMZPg@mail.gmail.com>
Subject: Re: [PATCH 0/3] Support GPIO controller of Loongson 2K0300 SoC
To: Yao Zi <ziyao@disroot.org>
Cc: Yinbo Zhu <zhuyinbo@loongson.cn>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Huacai Chen <chenhuacai@kernel.org>, WANG Xuerui <kernel@xen0n.name>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	loongarch@lists.linux.dev, Mingcong Bai <jeffbai@aosc.io>, 
	Kexy Biscuit <kexybiscuit@aosc.io>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 16, 2025 at 5:50=E2=80=AFAM Yao Zi <ziyao@disroot.org> wrote:
>
> This series adds support for Loongson 2K0300's GPIO controller. While
> being mostly identical to previous implementation, its interrupt
> functionality hasn't been implemented in gpio-loongson-64bit.c. PATCH 2
> implements its interrupt support with an IRQCHIP, and the code could be
> reused for other Loongson SoCs with similar interrupt functionality like
> 2K1500 and 2K2000.
>
> Tested on CTCISZ Forever Pi, reading/writing GPIOs works correctly, and
> both level and edge interrupts could be triggered.
>
> The devicetree patch depends on series "Support reset controller of
> Loongson 2K0300 SoC"[1] for a clean apply. Thanks for your time and revie=
w.
>
> [1]: https://lore.kernel.org/all/20250816033327.11359-2-ziyao@disroot.org=
/
>

Hi!

This doesn't apply on top of current gpio/for-next. Can you please
rebase and resend?

Bart

