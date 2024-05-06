Return-Path: <devicetree+bounces-65085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BE68BC7AA
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 08:35:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA5D71F21893
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 06:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E9773C463;
	Mon,  6 May 2024 06:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vFDgmlKU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F9D28DD1
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 06:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714977321; cv=none; b=tMnp7EsEWCuY34+6RCSNQP8JDumydVXgo7i0gjT1W7uqJnylPDCUAx2vdAuOgLQfpxDHMlYT+L/n7C9tKay2BxLuweGYPXXoz8uDMnv+Yv8ja2oSsU/cLKX2CXO/YSbVt1bWvVl40iKVUb2cxm4Ee+yhVJB2EcIutRelIx/wS9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714977321; c=relaxed/simple;
	bh=F4bCGtNldfkHhz1v+X5T6XqO5NjhSnpFKTEaXpHr2Fk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=otz/1dl3smXkLh06PTUIhOLbUO2avqOCmGy6kBQlEMstAFLSW51trhkBFy1MMUx2ft1IqSgQ8f0E3Qhd2YiUu/3muOLQtKaGNsEk3esN19LBtElmGsRQ3Q1+V4EWhNNklBJQEXtLS+aLhSdMJGwuZXMw0mNPHrFiYaHeVIZhgs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vFDgmlKU; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so1402719276.1
        for <devicetree@vger.kernel.org>; Sun, 05 May 2024 23:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714977318; x=1715582118; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F4bCGtNldfkHhz1v+X5T6XqO5NjhSnpFKTEaXpHr2Fk=;
        b=vFDgmlKUDw8B49EuS9swfJZehSXVlfgvo7SI5QXdVPD6I6J1MBtKXhtQYvNXe32mCy
         yko3IOviRQw8Q65yfBw29ZQ3elfTX8FVu1CQYaWW9k93StbOcs+IB1zrjsjwHXw8dBvI
         T7U7VF9z9yoFnuKC+6sMjX32w0Md9sLB20cz0vocGEy4pQxbxtidi3tcLj0kJO7I3nCr
         pD4E1AaQDRgzNt3pvmPGctjQbw9Cr/qu5JFhooZ15LMZJMyNZAn+KUNk0yb7bxI+693h
         d2Cgs3yT8rQ/KqSv088hTR/LDNIMBXPthphmgD5xbGPQ87IIn2Pn6Y+dFc4yAZp7vAH1
         fb2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714977318; x=1715582118;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F4bCGtNldfkHhz1v+X5T6XqO5NjhSnpFKTEaXpHr2Fk=;
        b=QWSBQrKaYU1CVdSa+DgwWP7rwwJNrNj8WiIIfLrVLPRZwkdMHVciBk5yYgNzh5xx/o
         FRaNcCn/00WA/ANNj8+JU/MrKsMUFqktN6kYxd413R+eZV3WXBI8eVXkQgIz+ooNm6hp
         4fBTqe544tbPL4CWsdryjaa12o1K56mpIcqBUYA4NZhiOGjswlQoPlOtVp9lr3w4Dd2A
         FxXbLcMCpFF3yeiiZ3c8PNF8p61OByrc3CLLyIriU7o77GuZXPp5fP6Ob84ZIQdFeUku
         aSs/2PQfVovF4LSLehQg4RjwRu1ygAP/qErbRQy20SsiyONUS9X2eQ63r2YXD0JZzCmk
         eb6w==
X-Forwarded-Encrypted: i=1; AJvYcCU09m6JDrJsL7UR0Gb5ZUBSkEiuAswXKyKPwVZWnzyxqNKs9pACtYndf7iEO/syrfL8DQleuzsnimX8ilKus1tyDw/AUkF3ktNmrw==
X-Gm-Message-State: AOJu0Yxpc3TIEBPg3kruCcB2PFIASVA43TBXQ9zOPE0lIMgwxV/GzDvD
	Cu2M8RHTTIsWMhPAkdeNS8hBJLZMoihXYd+nwlUDpLFNQlIGb6mN+4tvyjp8E9e5pip0pVH31fB
	mKJJJmx17ICmqiouKcuuK2k8HHHUJRnpO5GvKHw==
X-Google-Smtp-Source: AGHT+IHwFBLDH7pB4BuNuBdkU/p+O0HvtvUwPbTtHfpWZ5KWh1FNTe4KBMhrRQUWSn6w8OSGytaKBjVYjoN6DHr3YUc=
X-Received: by 2002:a5b:e92:0:b0:deb:7eb7:c9ce with SMTP id
 z18-20020a5b0e92000000b00deb7eb7c9cemr1681261ybr.1.1714977318711; Sun, 05 May
 2024 23:35:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240503111436.113089-1-yuklin.soo@starfivetech.com>
In-Reply-To: <20240503111436.113089-1-yuklin.soo@starfivetech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 6 May 2024 08:35:07 +0200
Message-ID: <CACRpkdbxzbNedWTpA5i-45AqPc4fA+GeBGkrjrD_OgkxMZRwXw@mail.gmail.com>
Subject: Re: [RFC PATCH v3 0/7] Add Pinctrl driver for Starfive JH8100 SoC
To: Alex Soo <yuklin.soo@starfivetech.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Hal Feng <hal.feng@starfivetech.com>, 
	Ley Foon Tan <leyfoon.tan@starfivetech.com>, 
	Jianlong Huang <jianlong.huang@starfivetech.com>, Emil Renner Berthing <kernel@esmil.dk>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Drew Fustini <drew@beagleboard.org>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 3, 2024 at 1:14=E2=80=AFPM Alex Soo <yuklin.soo@starfivetech.co=
m> wrote:

> Starfive JH8100 SoC consists of 4 pinctrl domains - sys_east,
> sys_west, sys_gmac, and aon. This patch series adds pinctrl
> drivers for these 4 pinctrl domains and this patch series is
> depending on the JH8100 base patch series in [1] and [2].
> The relevant dt-binding documentation for each pinctrl domain has
> been updated accordingly.
>
> [1] https://lore.kernel.org/lkml/20231201121410.95298-1-jeeheng.sia@starf=
ivetech.com/
> [2] https://lore.kernel.org/lkml/20231206115000.295825-1-jeeheng.sia@star=
fivetech.com/

v3 is starting to look very nice, why is this patch set still in "RFC"?

I would like some proper review from the StarFive maintainers
at this point so we can get it finished.

Yours,
Linus Walleij

