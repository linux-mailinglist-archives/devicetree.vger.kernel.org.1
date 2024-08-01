Return-Path: <devicetree+bounces-90272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 957B79449F8
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 13:02:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C54A1F22FA3
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 11:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3016E188019;
	Thu,  1 Aug 2024 11:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xwmMacpC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E357C188013
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 11:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722510117; cv=none; b=aCUrjFOnz90wAF7OD5k3hr4g9PxYJgRwm8By4g9GbDa8slsHFW7hCffsuyGOtyuYCI/HnLpeB+vJ/IO3HwdB8rum8LTtRy9+5eILZ2kHDXV2ybK4dpoGrQ4w841VbdrFI/RbGJmh0mk2uEcaoFRvTuZbDvYy++VS+8Ej8CfwFWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722510117; c=relaxed/simple;
	bh=PDTx8zjwXbXzbNWfOuMH0iA/PcBbphotz7ExTZjHXjA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=To7U6dIjkhN5QG7fksesBjVDk36ZGAbSJvbKf3XoO763Mnws3yGTXZ49wu0e4N0QF72NB8BnZqKu4DG88C431aaMCx2Y0jDMXRIKyRZRN0rVJ4USObqDpDlHbCyQ6myUcSuBLdsy7V4XkGtpBYrnzWKEu6Hm9+WVEMJjChmM83U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xwmMacpC; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e0885b4f1d5so5383410276.1
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 04:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722510114; x=1723114914; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xf663Oxqn+Hg/bp3CbFPSIMYObW/RVLrZF4k/w+9/Rc=;
        b=xwmMacpCpRTKt9lDC4rBFs3WZ+qNGsRqxxnz+5c/cHCcZ7XvODk3qZVe/TGJ0MXmrM
         b8LW4Yed4BuQVU/OQ+O22BAZ5AM5Qz4MkmR3qmUUqUqQ7H5ogYtz6MLfXCNq2h4b/LD5
         /RDyEGQah+8Pt/TLw6DoWKLudCkQghjhae7yX7/8mzcWYXVDKcvNvx55emyEladT8ifp
         G+TpEE7qT5UXzjUbQZLQyj5G56IVtc8pru5vcdnco5rsbz8qkR3J4a0RanocBc+l4y6a
         toh4YymmyYkuWZi+kr9EX3fH/DOkE9Z+Re6KPbgavd3gHH7j64I09xZlU1S0I5WEakYT
         g/6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722510114; x=1723114914;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xf663Oxqn+Hg/bp3CbFPSIMYObW/RVLrZF4k/w+9/Rc=;
        b=cWLY0iJXtOUOIjalfhFch8Uy5401Voc9Ev06i6S6LPYmadHMWKC6KU4ybk1G88rh3e
         yFdiqpOLjAOSubjEEjJ19j8QQaENvf2b7IfaYxtpvwOGjQfv4qN9Ma+/V7b2fEhYHWbl
         6nX1TOpda+Fk5JRSGAM8KwdItoFr6J4rtM1BPtjaeaOXPGSnoj4NfpqSspzK/I9//F45
         kNBVnwqyjCxq77gwJDoyIoLhlUF20K1iO8jrvNN8A+DviNY8gtZ7g1tk2flcrhcArB1O
         Hyv+eEcAf0ZQyDIOeNen2euGkxLotAv35ZKMcV4Nd7tplbLoL6INzgmwAK6oRm6u0L1l
         J8IQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6ylLBh1GI4KrNiAUa+I0ppgl1cLZ/dnc7cwv+sxuj+d/PcbLoZfcP2e0hEV/lNGnpm4KtAHtwBLNgJYbkFyEm2E8flX7VpIAkYA==
X-Gm-Message-State: AOJu0YxCQ+3KOAr29p0Z2IPJhcr+UWaFK3cu/w6joz/38CtDFv2GeM10
	m3OC6xFu/vjpgzvmT673c2ftYBRIlj0HJGg3OJPMiKR8DaGdT450rXIXdJbtvmUAN1ULZJ9F2Bx
	bUn5uymfaPvuq8nL60WKeH5cHccmrVFqm7XE6zA==
X-Google-Smtp-Source: AGHT+IGz8BY1lj9zv3tlXj5dYR89gFHb8pzgw3f8o7RUzA9kEaL9W7hkxl5EaciVMR7U8IJTC1gV5bcO0wGy86mIQic=
X-Received: by 2002:a05:6902:110d:b0:e0b:bc96:550 with SMTP id
 3f1490d57ef6-e0bcd25c795mr2527077276.23.1722510113989; Thu, 01 Aug 2024
 04:01:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240724182119.652080-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20240724182119.652080-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 1 Aug 2024 13:01:18 +0200
Message-ID: <CAPDyKFpP7VkXNJZ_uYpnO8=bH9k0P0qq-JVBfYRC3QmsM=ia1g@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Add SD/MMC support for Renesas RZ/V2H(P) SoC
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Jul 2024 at 20:22, Prabhakar <prabhakar.csengg@gmail.com> wrote:
>
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Hi All,
>
> This patch series aims to add SD/MMC support for Renesas RZ/V2H(P) SoC.
>
> v4->v5
> - Since the SDxIOVS and SDxPWEN pins can always be used as GPIO pins on
>   the RZ/V2H(P) SoC dropped adding regulator support.
>
> v3->v4
> - Dropped 'renesas,sdhi-use-internal-regulator' property
> - Defined vqmmc-regulator in top level
> - For special handling of internal regulator now using of_device_is_available()
> - Fixed comments from Claudiu
> - Rebased patch on top of https://patchwork.kernel.org/project/linux-renesas-soc/patch/20240626085015.32171-2-wsa+renesas@sang-engineering.com/
>
> v2->v3
> - Renamed vqmmc-r9a09g057-regulator object to vqmmc-regulator
> - Added regulator-compatible property for vqmmc-regulator
> - Added 'renesas,sdhi-use-internal-regulator' DT property
> - Included RB tags for patch 2/3
> - Moved regulator info to renesas_sdhi_of_data instead of quirks
> - Added support to configure the init state of regulator
> - Added function pointers to configure regulator
> - Added REGULATOR_CHANGE_VOLTAGE mask
>
> v1->v2
> - Dropped regulator core API changes
> - Updated DT binding
> - Now controlling PWEN bit via regulator api
>
> v1: https://patchwork.kernel.org/project/linux-renesas-soc/cover/20240605074936.578687-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
>
> Cheers,
> Prabhakar
>
> Lad Prabhakar (3):
>   dt-bindings: mmc: renesas,sdhi: Document RZ/V2H(P) support
>   mmc: tmio: Use MMC core APIs to control the vqmmc regulator
>   mmc: renesas_sdhi: Add RZ/V2H(P) compatible string
>
>  Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml | 2 ++
>  drivers/mmc/host/renesas_sdhi_internal_dmac.c           | 1 +
>  drivers/mmc/host/tmio_mmc_core.c                        | 7 +++----
>  3 files changed, 6 insertions(+), 4 deletions(-)
>

Applied for next, thanks!

Kind regards
Uffe

