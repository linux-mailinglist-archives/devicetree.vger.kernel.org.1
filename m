Return-Path: <devicetree+bounces-12507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF9F7D9B97
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:39:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 29407B20FAD
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EF4B18654;
	Fri, 27 Oct 2023 14:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Wc9yZqFy"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7B0374C6
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:38:38 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D21B611F
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:38:36 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1c77449a6daso18448205ad.0
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698417516; x=1699022316; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=55I45Qtlplt+aIkb3uw3RfeEyoBtnIxw2UGzAOCPdDY=;
        b=Wc9yZqFyEFXH4zn/PSLKQ/HOqrf0AoU2UFslouG08QDJqMelIZEnrsHC02ddkxZ8uP
         8nHshG8bhaR42c6RDsFT7/zNmYgI3eEFA8jy3S1RUQ/2phKYFGN/LUBsOGXR1MTK3puc
         QNX3fQrW/PeDDcaRqbxA8/WedSrL34SjPJ+W/Y1yEz6tVcJeO9PxxUWStQxZFjf95WOs
         m0mDZPAlJ29u17K9cvcpRUBdVEtq9m3nde73g4z1NzBR2mts44iJhBCdgz8xEbAqJEcJ
         MJxC+OuHN1PITAU/SmNfNy+jV33G8ZCQJOC4e5HpsZXNcu+MC1mb0d+X3hRfd+GGgzXq
         Tj9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698417516; x=1699022316;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=55I45Qtlplt+aIkb3uw3RfeEyoBtnIxw2UGzAOCPdDY=;
        b=ASB37fddAHcns2F3RgEKD1LqJx7OzdgmM2nEmKkTWYBLNr6hTDlCa8qfzHYJb3SbQ+
         O5Evw0NBe2057lPPI3kq/A3JDx840r+seCTM6G/fAmp8WS7+aKMNu3toNSLSFRdnig9I
         KOkQpZeAUq3rKjFneLwtTi2gC0qZw7YBQOJT9bVtrEfciIAfkfxJxB16npEru+va+klw
         k6px4J9AXmGarBddyhD99FkBxtKq3RTiGNptijRlr9RCj80PfERyBz4AvqJRQUjNSwkU
         4NtHpKODHw8daJEfAqmSuCKfyjnokEiN9b4PoduTMKvOoL1G3verLJdhGpXUvi2bOhcb
         s1aQ==
X-Gm-Message-State: AOJu0Yy47knRtieiKtr1LmSP7piobGdb5Dg8aL66iTL+bUYlYJIRMhir
	+d3eDqysVJNXoC37Fzs6WhkNkK73OxHmq4REko+Y8Q==
X-Google-Smtp-Source: AGHT+IEJ07q1D5+4KgTEUidlRWDjPLhaZTGEoCul8Ylb8bU0eDcjf2kvbdOo0yKFuk4wmgeVVBFcvoZPzXSIbNI0bKk=
X-Received: by 2002:a17:90a:6e48:b0:27d:3c75:db02 with SMTP id
 s8-20020a17090a6e4800b0027d3c75db02mr2979762pjm.32.1698417516000; Fri, 27 Oct
 2023 07:38:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025142820.390238-1-apatel@ventanamicro.com>
 <20231025142820.390238-2-apatel@ventanamicro.com> <87y1fo3383.ffs@tglx>
In-Reply-To: <87y1fo3383.ffs@tglx>
From: Anup Patel <apatel@ventanamicro.com>
Date: Fri, 27 Oct 2023 20:08:24 +0530
Message-ID: <CAK9=C2WC7N-9LgrtpfeWCT08iToqMevgvR0rkjEvdJFPzNDkMQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] RISC-V: Don't fail in riscv_of_parent_hartid() for
 disabled HARTs
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Atish Patra <atishp@rivosinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 27, 2023 at 1:29=E2=80=AFPM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Wed, Oct 25 2023 at 19:58, Anup Patel wrote:
> > The riscv_of_processor_hartid() used by riscv_of_parent_hartid() fails
> > for HARTs disabled in the DT. This results in the following warning
> > thrown by the RISC-V INTC driver for the E-core on SiFive boards:
> >
> > [    0.000000] riscv-intc: unable to find hart id for /cpus/cpu@0/inter=
rupt-controller
> >
> > The riscv_of_parent_hartid() is only expected to read the hartid from
> > the DT so we should directly call of_get_cpu_hwid() instead of calling
>
> We should? Or maybe not?
>
> Please write precise changelogs and use imperative wording as documented
> in Documentation/process.

Sure, I will update the wording in the commit description.

Thanks,
Anup

