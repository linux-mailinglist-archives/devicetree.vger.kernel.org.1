Return-Path: <devicetree+bounces-11254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C512B7D4F74
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 14:07:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DDB2DB20E62
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95853262AE;
	Tue, 24 Oct 2023 12:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Z8ToVP4Y"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369605CBE
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 12:07:30 +0000 (UTC)
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B63E5D68
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 05:07:28 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-5ac87af634aso2602425a12.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 05:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698149248; x=1698754048; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fnbQ6Q2EDEmeDrsBAt+FskdauroAd8IioN5ZwkR9W1E=;
        b=Z8ToVP4YdGc/2ZIa7dKHtDbq3o5iYB93FcJ955m/jR+4ZFG9BZ2pDVZOWevPLLIxLR
         72Q00xewF8LcZybXSDwEK12lSPK7Z6UHFZFsCJsjtMOwuqN7MfnN7CphIVPa8P3BrHaP
         kakWlChh7qkQVb4Ak0+Rm6zAMHBjaXcLRg7X0prRxG9dGGvcInGW+Dg6RaAB+xRWygRq
         hgTqbaVLLI1nzUjBUNtoOgbkMV48SU3I4vkwAifvErV/HuRHG5NJOAm1kOuDMzzIVHOK
         gUyVWBQVVr5ZN51Fy2JYNJXYmzi6GCIB+DyBVXhMJ4gqDfOXfd0bBglXOeFkVaHM1Zyi
         5v/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698149248; x=1698754048;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fnbQ6Q2EDEmeDrsBAt+FskdauroAd8IioN5ZwkR9W1E=;
        b=XhrGuSUJJD8UvnFJBodPKG7C3B/RXhhawulzjyT8TGJtHce9fNOs3s8bBraP/zdqYL
         Iyej3Iu87efBCx+N45tMHaWe3F4Bhffm3LWDipVflzvfvZtsAzR4BRPf2Qf+tIw6SmIh
         f2vK2/U9Rj1A41c2MUordWr2NY+44RH0y6DBSFJliCKiLGOXBoBZrh4PmpijIvbZBh5Z
         6TC/2s9ubyjuI8wD6gY1x6YaTAlqAsZ+RP/jNQ7mrG6c8oaqVXl8enOXG9x77HVMoazx
         HE7EDs26cTA4Vjaivz8dSDPPRnab91mvtyWbHy+hc/+jrBp3qYvSGP7adxDmGy6Rl++j
         VY4g==
X-Gm-Message-State: AOJu0YxN5QnGde68P5F8q6JbZsezY1rp8khiEV8MBL6dwvCnkHF/7dMQ
	c3yExGQYb2ELGyLd55FYjMxHZhKpjcSTCwH+m6XCaQ==
X-Google-Smtp-Source: AGHT+IG0RTgNFoEme/gXUtHy69ZlWk+VDdfjWqZ9EjZXIbatFOkLD9Eb6PUwQTRfBjWAxVZwmGXX+UlFPH+OLG/I4So=
X-Received: by 2002:a05:6a20:e109:b0:163:2da1:387f with SMTP id
 kr9-20020a056a20e10900b001632da1387fmr3054954pzb.50.1698149247695; Tue, 24
 Oct 2023 05:07:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231023172800.315343-1-apatel@ventanamicro.com>
 <20231023172800.315343-2-apatel@ventanamicro.com> <87h6mgs09f.fsf@all.your.base.are.belong.to.us>
In-Reply-To: <87h6mgs09f.fsf@all.your.base.are.belong.to.us>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 24 Oct 2023 17:37:16 +0530
Message-ID: <CAK9=C2U7nRc95-DoxesfOzBBat8wNMhTqi4NTJWgJjQYd9NZow@mail.gmail.com>
Subject: Re: [PATCH v11 01/14] RISC-V: Don't fail in riscv_of_parent_hartid()
 for disabled HARTs
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Atish Patra <atishp@rivosinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 5:25=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kernel=
.org> wrote:
>
> Anup Patel <apatel@ventanamicro.com> writes:
>
> > The riscv_of_processor_hartid() used by riscv_of_parent_hartid() fails
> > for HARTs disabled in the DT. This results in the following warning
> > thrown by the RISC-V INTC driver for the E-core on SiFive boards:
> >
> > [    0.000000] riscv-intc: unable to find hart id for /cpus/cpu@0/inter=
rupt-controller
> >
> > The riscv_of_parent_hartid() is only expected to read the hartid from
> > the DT so we should directly call of_get_cpu_hwid() instead of calling
> > riscv_of_processor_hartid().
> >
> > Fixes: ad635e723e17 ("riscv: cpu: Add 64bit hartid support on RV64")
>
> Patch 1 and 3: These fixes are stand alone, and doesn't have to be part
> of the series.
>
> Wouldn't it be better to pull these out of the long-going series, and
> try to get in the fixes ASAP?

Yes, that is correct. In fact, PATCH2 can also be taken for Linux-6.7.

I suggest PATCH1 to PATCH3 (3 patches) be taken for Linux-6.7
since the merge window is pretty close.

Regards,
Anup

