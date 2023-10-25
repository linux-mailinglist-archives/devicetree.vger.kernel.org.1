Return-Path: <devicetree+bounces-11907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC447D6EBA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:31:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8EB6281BC3
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4999927EEB;
	Wed, 25 Oct 2023 14:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="a8jHXs/n"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D562AB36
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:31:41 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5827194
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:31:39 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1c9e072472bso41837355ad.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698244299; x=1698849099; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SQ5KMjXB468aEBKF9WSiVgBHVpR3dfOc9lss4H+jYhs=;
        b=a8jHXs/ncDqFO3Ug9Z+uiw8TCylysZZRBAyDhkAouP9H9sVsz6SlgE7cGOONSIdeza
         UyncUDczzJNaeSbXIYDPiTPFwwc+eZyNkabPIQlx4L1df+00tTn8diRoxnMEybe02RUx
         o2AtaQH7glr3jSKfvclC4QyiVUYiGELEg43rmPzVha/M+cCfw1CrsEA+EOaiFaFPoMbn
         s5O2UX9M/zoOPD+6V5Uzy9gvYMNMnGu1K3bRnWcMBR8fMz/IbZrpOK43A6nzeLjG8773
         wwc2SaKRumc0WNa8CsysrQj1IJVW6JBrlDtBirNzknMzmiE3rsTXWWFb7xP0XEf1v631
         jdgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698244299; x=1698849099;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SQ5KMjXB468aEBKF9WSiVgBHVpR3dfOc9lss4H+jYhs=;
        b=d2KjDKJPwILGL5nnadW80+aiqUOkTAzy7CFikyK0m8d4O/0vnR9caF8IluEexEuUoj
         ReztcFABNvSCCV5CRupHBZbzipiP4nAgX7Ky9oIWQhWpLlb1eZNs2XYarcXV/CiQFd5R
         DrkTJmAKA5wgLqea0GYEOOCSAkkUuuJ6zymoKO+3Fy7AdxTUKMe9bVeTIRf3np/r2h84
         oejxohhe+ikRrrujl7VyHcb29zYpWY5U8IuVOJhEjKOm80scJAKAjFCYjhGf4smJs71z
         cmOdnb7Gf7PBpva7CeQOom9tOq1RPWljCQOqVbF0tmIi13yT07z31sCbbimKAMoQZYgG
         K7zQ==
X-Gm-Message-State: AOJu0YxYZjYDjI5a1V6W7BxVV5D4ZnMwaS8lLR8Ri9F4vfRCCSTjAGaF
	cJ02TiRNzwojjSLW7J8Yi8WVV1OrX3xIOJZbZpYFaA==
X-Google-Smtp-Source: AGHT+IF7tK7NfgRXXBPos0ywzXuU86jChm+AWmtZlA6vYIo4J7cbqAiHmW1rfAYJAfDBMxaRs+5k+PsdcZyeZeyJr4k=
X-Received: by 2002:a17:90b:4d8e:b0:27d:515d:94f0 with SMTP id
 oj14-20020a17090b4d8e00b0027d515d94f0mr11823715pjb.24.1698244298909; Wed, 25
 Oct 2023 07:31:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025142820.390238-1-apatel@ventanamicro.com>
In-Reply-To: <20231025142820.390238-1-apatel@ventanamicro.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Wed, 25 Oct 2023 20:01:27 +0530
Message-ID: <CAK9=C2UrDELsQpM2S5h9Qd9SJWrFmuGGCT-zYJgHL3E0S-DkUA@mail.gmail.com>
Subject: Re: [PATCH 0/3] Linux RISC-V AIA Preparatory Series
To: Palmer Dabbelt <palmer@dabbelt.com>, Palmer Dabbelt <palmer@rivosinc.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, 
	=?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	Anup Patel <anup@brainfault.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Thomas Gleixner <tglx@linutronix.de>, Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Palmer,

On Wed, Oct 25, 2023 at 7:58=E2=80=AFPM Anup Patel <apatel@ventanamicro.com=
> wrote:
>
> The first three patches of the v11 Linux RISC-V AIA series can be
> merged independently hence sending these patches as an independent
> perparatory series.
> (Refer, https://www.spinics.net/lists/devicetree/msg643764.html)
>
> These patches can also be found in the riscv_aia_prep_v1 branch at:
> https://github.com/avpatel/linux.git
>
> Anup Patel (3):
>   RISC-V: Don't fail in riscv_of_parent_hartid() for disabled HARTs
>   of: property: Add fw_devlink support for msi-parent
>   irqchip/sifive-plic: Fix syscore registration for multi-socket systems

As mentioned on the patchwork call, these are the first three patches
of the v11 Linux AIA series.

Please consider this for the Linux-6.7 merge window.

>
>  arch/riscv/kernel/cpu.c           | 11 ++++++-----
>  drivers/irqchip/irq-sifive-plic.c |  7 ++++---
>  drivers/of/property.c             |  2 ++
>  3 files changed, 12 insertions(+), 8 deletions(-)
>
> --
> 2.34.1
>

Regards,
Anup

