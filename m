Return-Path: <devicetree+bounces-20360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D467FEF01
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 13:25:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 98EF71F20F30
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 12:25:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A3B347779;
	Thu, 30 Nov 2023 12:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ECLhJ4NK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B95910E0
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 04:24:59 -0800 (PST)
Received: by mail-vs1-xe31.google.com with SMTP id ada2fe7eead31-464441ec47dso312043137.3
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 04:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1701347098; x=1701951898; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pPS3xxiuZWf1VxJtT0YO9mlspTNHuYgCnulWUTvdTUA=;
        b=ECLhJ4NKqF2rj1/PeD6iSReZ0dFLqck+yBSx47CopTjwkcv5JLnp/yhXp0huWedkpj
         QdpjT87bayDcGpHhuDCIwSstPERFF2LjATKBUt3sxvCkh3tYIJdjb33ZIvRrxwRKwZvp
         xguxDjOFJf2l0XaYLox+FAG2HVUTQOy9L1ZNQqHos0lDY9ohp2FfBrfn49T+zO7/kFcq
         OFKvcgko4TLMCBicbSmk8XFTgtVB+r1nLINfKtoi6hlEAFaBfq5Qc52+LXBfGf1jrxly
         yAaSKDhfy7tGdUskuh1efPAuf2RclOIEgbO4XIvwwEmmAZQPYD3JWCne6Qd9AO6NPOA9
         hBvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701347098; x=1701951898;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pPS3xxiuZWf1VxJtT0YO9mlspTNHuYgCnulWUTvdTUA=;
        b=DzGPPbhYR2nA1NWoZkNuyxP9igKl99f4x0+46KctmWT2M5p0t+VrTc9J5mE56mQ7L5
         iGH5a3q9sq6hixh0bMOB0LvgnNdFVWsGqtL+iWXbWv6AFdoSq3biE+yZaB3a0SGohDug
         s5DNnSOog/epBWhaniOkV8Gf+Aqm0FXP1JadlT5sfn9L6pP6bSlbYYyu6vHWyAssj8SK
         KZyUvYJ6NrTKLlUelAXwzxoR2Ac12/LnpPqbpiUpY/ZB3tbzvmeKwHYuImRHClAYcjW9
         C6kXAMAxpJuOcNqYm1thEJb19LzYFc/mzzmjRXYp6g7XSONjaI6fz75qxs2KQNLM2clR
         9Pyw==
X-Gm-Message-State: AOJu0YyViAP4SvD8nohI7KsDWZJdUwlVgtH/dc++c/N97J60pqS6Igcp
	4wLeaD1OxxOEUU1qdWVgIuDnTixIs3dDSW9zSDRhRA==
X-Google-Smtp-Source: AGHT+IF3j3HcT1aCoqg1svzx44lwtkXhHBGyT4I2UYvHSkERVae33zMG4SIUDxax/bcsvwuJzqZtRwm3Sbusnpboi2w=
X-Received: by 2002:a05:6102:317:b0:464:38fa:5ba6 with SMTP id
 23-20020a056102031700b0046438fa5ba6mr8074289vsa.7.1701347097820; Thu, 30 Nov
 2023 04:24:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <IA1PR20MB4953C82499C5D81D2C6A020BBBB6A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB4953F9D77FFC76A9D236922DBBB6A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <CAK9=C2WAv5jJBt56xBea268DeyUA+YvbU7i+ahVjueafCi-r6A@mail.gmail.com>
 <20231130-decibel-passenger-6e932b1ce554@spud> <CAK9=C2Vsx8ddpYiqUhvqnJpdb-FKeNhLz3PsVpSeEz4TeQHiEg@mail.gmail.com>
 <20231130-shower-award-3cd5f1bba5db@spud> <CAK9=C2WgN=3BjxS+nF2ibFQoquNwXfxr_UQv8Kbf1+e4Teyfcw@mail.gmail.com>
 <20231130-laborious-dwarf-6913457466ad@spud>
In-Reply-To: <20231130-laborious-dwarf-6913457466ad@spud>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 30 Nov 2023 17:54:43 +0530
Message-ID: <CAK9=C2UWwHVCvgXG0kNLt86JTk7P6p-EdPLS3F8Z5qnSpCPLkg@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: timer: thead,c900-aclint-mtimer:
 separate mtime and mtimecmp regs
To: Conor Dooley <conor@kernel.org>
Cc: Inochi Amaoto <inochiama@outlook.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Chen Wang <unicorn_wang@outlook.com>, 
	Anup Patel <anup@brainfault.org>, Samuel Holland <samuel.holland@sifive.com>, 
	Guo Ren <guoren@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2023 at 5:40=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Thu, Nov 30, 2023 at 05:18:15PM +0530, Anup Patel wrote:
> > On Thu, Nov 30, 2023 at 5:15=E2=80=AFPM Conor Dooley <conor@kernel.org>=
 wrote:
>
> > > > and add separate "riscv" prefixed DT binding for RISC-V mtimer.
> > >
> > > Do you know of any users for a "riscv,mtimer" binding that are not
> > > covered by existing bindings for the clint?
> >
> > Ventana Veyron-v1 implements a mtimer per-cluster (or chiplet)
> > which is compatible to "riscv,mtimer" (i.e. we have both mtime
> > and mtimecmp MMIO registers).
>
> Okay, thanks. I guess iff veyron-v1 DT support shows up (or other
> similar devices) we can go ahead with a "riscv,mtimer" binding then.
> I had thought that you guys were going to be using ACPI though, so
> I guess the "other similar devices" applies.

We use ACPI from EDK2 onwards in our boot-flow. The booting
stages prior to EDK2 (such as OpenSBI) use DT. In fact, EDK2
also uses information in DT to populate static parts of the ACPI
table.

Regards,
Anup

