Return-Path: <devicetree+bounces-77587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C89190F56E
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 19:47:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2CFD51F215F5
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 17:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 090D715538A;
	Wed, 19 Jun 2024 17:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="L1840z5S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3B4558B7
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 17:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718819222; cv=none; b=TjNoqcu12mPOAmQCbz2bnMjMSUsqVeEaJiSCfM0lZNMFndEsJMqHwDhAP+ME+OJMb/UyMSr1O95jPX6Om2QWfQCTqXlSf29bi/byAOPT0dU/RZFN9LIJhfegLBA1GdVQK78fs4/zVl6prScOvdydq+1Lo64S7Sh5tsuqj5WWukk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718819222; c=relaxed/simple;
	bh=7dKHhsWrdXGUj9CUjBKpNYM5hOCQBSvW71NJlWmtlYo=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Em8hii8QxJuoYjn1IKusmca2BJAPXmWgy3ABYYAQnGm9Djr9FMXOOXW44sLbmkMoiLS7KSq9kMLZ9QhRbhMYsqdeE2CU/eQU0YSvnLBWGa4tmIGHQhBVzzWJ7h235DcYpsfYu9iTNQJ/miulNqhCS5pH7yJbGKXH6JTbtPpXbq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=L1840z5S; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 629DE3F456
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1718819213;
	bh=IHT5FlBGHX8BcDz3usrcaubsAD5+eJT9hDJvn3YQ/tg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=L1840z5SfzOUVpq+Ezq21xEnWsqMqpoy/H53tYwXWbjnHXdDexztKffb2CLGgUuSu
	 tFQQP9W/cZcO+K6tJaT0KxBJVd66k63V6RgORPO1mY4zLmy/WAeSNUTvwsBILh29En
	 avZdpvWHLNlg9AbbcJiXkL8Jl+wq3O0swTSyivbFoRsO013rxWNU+fDOoAX1KYIJIR
	 w8jq8NBlaDBQM7j4WasR8XI6WKSIG8c//k0ogAN/Ovid8I1sVAYTR2uaEv77FzgqZi
	 pMvk0LNCB4lmisc29txler0psmEcaHD7z9zMICuzT6+z6BI+7y5LAuZH6vOCBxofAV
	 HDg6b0Gk/xkwA==
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4406476507cso77120611cf.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 10:46:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718819212; x=1719424012;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IHT5FlBGHX8BcDz3usrcaubsAD5+eJT9hDJvn3YQ/tg=;
        b=faOaEmOyoPJ6mY4CNRpiw8IFVg0c3Emj2lsiAdCoKW37iV7tJ5oUox3ls+lUc6TZRp
         FPfH9B2TbQrzS1JM23hgGC5ZeacbkmhlqWtaklPwSFTspedelRZLrNoF2pi7q119fj08
         6QK5Rw5xR2DJUB92TKdkVThtn5kUhrxcePfCLFz5cPiwyE54tV1jdmwLex7Km+2t4ckd
         nCFLeYA8L0O6F3Rtl61fwWl+b9RVz764PRDJliQ8PQICgBGIxw3W/w8+05Xbf7O4fpjV
         NDUKqaXHOiPgtm7iMD/dxZ4ZibK64+1efy8U6ngLO+n5bt6DG6MBoddoKPOEXS0nUT0h
         +OBw==
X-Forwarded-Encrypted: i=1; AJvYcCUtRAB41Zpcs9ywlCmQSDekIrvxx/s4wfynm7JNYjwwIoX3XQd1qjf4MM2K00/pBwmS5Ze6LbJS3u5bRghhI2k6KVVpvkcM3TlOGQ==
X-Gm-Message-State: AOJu0YyddDb5BWA7+wFqTyh0vAPHjYthz0J53cEGjFwn7OiEt53g9dFj
	vAN8qyTSbb0UnrxxHdykZ28PkMJbkFSjRYqgQhfCpdu4PLFmIoL1ik5EzUSnlzk/9ffIHVxiE7C
	RharGgRH8kGgYPLhT3vYFkZ1v9lb4RF3VCvfgq5DzWiZ8qxt3dUOqF/pK+5/nvYn9FMGXItPmgt
	EEt5tDDAj1cIYwyP9zqQOpFeJS72REhaYQV+qORIkOi3B0Cuoi4Q==
X-Received: by 2002:a05:622a:2a0e:b0:444:b33b:f64d with SMTP id d75a77b69052e-444b33bff32mr9783251cf.46.1718819212429;
        Wed, 19 Jun 2024 10:46:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF95k2RvsNdi+fcZdUd49VFCJUgO12myNtpWdozPj6zXj+cU0eJTQB6VEWAjg1+fxFJrgsQuA6Wpy9JkVGnUFc=
X-Received: by 2002:a05:622a:2a0e:b0:444:b33b:f64d with SMTP id
 d75a77b69052e-444b33bff32mr9783031cf.46.1718819212115; Wed, 19 Jun 2024
 10:46:52 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 19 Jun 2024 13:46:51 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <CAK9=C2WP2+gKScUFuoE9782gjSfnDtcLAw01eCwram3LMAStBg@mail.gmail.com>
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
 <20240222094006.1030709-2-apatel@ventanamicro.com> <CAJM55Z9hGKo4784N3s3DhWw=nMRKZKcmvZ58x7uVBghExhoc9A@mail.gmail.com>
 <CAK9=C2WP2+gKScUFuoE9782gjSfnDtcLAw01eCwram3LMAStBg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 19 Jun 2024 13:46:51 -0400
Message-ID: <CAJM55Z8ti-ePT0t714h1Za9X3Ns3=Fw0pCu3NZ=7eT76JU_p5g@mail.gmail.com>
Subject: Re: [PATCH v14 01/18] irqchip/sifive-plic: Convert PLIC driver into a
 platform driver
To: Anup Patel <apatel@ventanamicro.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, Anup Patel <anup@brainfault.org>, 
	linux-kernel@vger.kernel.org, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Anup Patel wrote:
> On Tue, Jun 18, 2024 at 7:00=E2=80=AFPM Emil Renner Berthing
> <emil.renner.berthing@canonical.com> wrote:
> >
> > Anup Patel wrote:
> > > The PLIC driver does not require very early initialization so convert
> > > it into a platform driver.
> > >
> > > After conversion, the PLIC driver is probed after CPUs are brought-up
> > > so setup cpuhp state after context handler of all online CPUs are
> > > initialized otherwise PLIC driver crashes for platforms with multiple
> > > PLIC instances.
> > >
> > > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> >
> > Hi Anup,
> >
> > Sorry for the late reply to the mailing list, but ever since 6.9 where =
this was
> > applied my Allwinner D1 based boards no longer boot. This is the log of=
 my
> > LicheeRV Dock booting plain 6.10-rc4, locking up and then rebooting due=
 to the
> > the watchdog timing out:
> >
> > https://pastebin.com/raw/nsbzgEKW
> >
> > On 6.10-rc4 I can bring the same board to boot by reverting this patch =
and all
> > patches building on it. Eg.:
> >
> >   git revert e306a894bd51 a7fb69ffd7ce abb720579490 \
> >              956521064780 a15587277a24 6c725f33d67b \
> >              b68d0ff529a9 25d862e183d4 8ec99b033147
>
> Does your board boot with only SBI timer driver enabled ?

I'm not 100% sure this is what you mean, but with this change I can disable
CONFIG_SUN4I_TIMER:

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index f51bb24bc84c..0143545348eb 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -39,7 +39,6 @@ config ARCH_SUNXI
        bool "Allwinner sun20i SoCs"
        depends on MMU && !XIP_KERNEL
        select ERRATA_THEAD
-       select SUN4I_TIMER
        help
          This enables support for Allwinner sun20i platform hardware,
          including boards based on the D1 and D1s SoCs.


But unfortunately the board still doesn't boot:
https://pastebin.com/raw/AwRxcfeu

/Emil

