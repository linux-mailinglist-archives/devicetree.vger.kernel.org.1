Return-Path: <devicetree+bounces-12527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3207D9D00
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 17:32:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74F5D2822F4
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 580FD374F5;
	Fri, 27 Oct 2023 15:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="NZcYXdXD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E571F5E7
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 15:31:59 +0000 (UTC)
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 724901A6
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:31:54 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-5b8f68ba4e5so1848645a12.1
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698420714; x=1699025514; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=maQJijvrXIo+//hdL4s0bEnIoKNcGIK6OT+NU47ze5c=;
        b=NZcYXdXD7JvnMx2ftquH6WB3NWxD9wUfSMFutXr3hlRnFXrQ00Oo1T6ZRvQB+eaUmJ
         iR+sk+yEeop4F6Dk6acEH9xBZsInmnNZo3UET4D9PxYB2PEvZeUfk+M2cu95mSvwH6C7
         HzKKkp6scIXHMsDD7pa0cO+qNWZfT6OS/2LHX3pYF3V+PnwoLVycMKgqpdlpc5wLlVUr
         dYZ5cnnKxsrr0QD6/6tT2uvtl5RJUK6/tocZVdUUp3eUrXtW/E36JDNtLdhqdLapv6HE
         B30tyEaSBCV+f7WkdfSHTSXXSt7+p5ecrE4Z7iT9BkpSdxTk0ZONFFe2IPsjScR9ZRZo
         FzBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698420714; x=1699025514;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=maQJijvrXIo+//hdL4s0bEnIoKNcGIK6OT+NU47ze5c=;
        b=MZgi6TYcL52GcMI4ygfZwJrTehdaeXzIFoF00rJyVlKtEQPvO+hgiV45S5H1/gXhlO
         LF5TyDGgACbKOwGgyTy1hurqY2kZc0mX1TJVKsZxWat5fBezjYvo9WFL9aVBRS42pLpY
         6it2mVxuRwMRIJDYoDieRH7ZO5Fxh+82pFc7XQGlS9uIqr4+vmiQH5sl33/YVzDKkBei
         3yOTaGgf/0ZTNDhqE4xmjwkAGGaHsH/ZaKMi4ra5xJPTGV8XEI+DzffA1UiIcuX2Qzks
         hw2CLZ4STZ637V/fAQq1xZM582VVvSA6cldCiPWeBSoQ+uYj2sppYMIVS6nKyriYu4Uv
         kY/w==
X-Gm-Message-State: AOJu0YyuQYH3qp+XwbUrxDMjZsOP0/J3W1MkIIwfWinu37HRnIKaGX13
	Ja4TGmUx6wBynmbITASRGSYJvdgSW6RU98Qm5SNu5A==
X-Google-Smtp-Source: AGHT+IF7qOK76X37XYD3CQdQE8+KlnVfCDjte3STl/rzIVGxkqqhce9iU31fitYSyKrgl/A04RLugurjz9yHJTTksag=
X-Received: by 2002:a17:90a:5381:b0:27f:fe79:eb6c with SMTP id
 y1-20020a17090a538100b0027ffe79eb6cmr2782051pjh.29.1698420713657; Fri, 27 Oct
 2023 08:31:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025142820.390238-1-apatel@ventanamicro.com>
 <20231025142820.390238-3-apatel@ventanamicro.com> <871qdg4hvm.ffs@tglx>
In-Reply-To: <871qdg4hvm.ffs@tglx>
From: Anup Patel <apatel@ventanamicro.com>
Date: Fri, 27 Oct 2023 21:01:42 +0530
Message-ID: <CAK9=C2VRNJGySLT8_oN=U9Pe9C9mOdPjOUr24ugXciT0Hx9pqA@mail.gmail.com>
Subject: Re: [PATCH 2/3] of: property: Add fw_devlink support for msi-parent
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Thomas,

On Fri, Oct 27, 2023 at 1:27=E2=80=AFPM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Wed, Oct 25 2023 at 19:58, Anup Patel wrote:
> > This allows fw_devlink to create device links between consumers of
> > a MSI and the supplier of the MSI.
>
> How is this related to the two fixes in this series?

The first three patches of the v11 RISC-V AIA series are all
fixes hence I sent them separately for the 6.7 merge window.
(https://lore.kernel.org/lkml/20231023172800.315343-1-apatel@ventanamicro.c=
om/)

All three fixes are unrelated to each other and were discovered
during AIA driver development.

This patch fixes the probing order for platform devices having
inter-dependency based on "msi-parent" DT property.
For example, the AIA APLIC (wired-to-MSI bridge) platform
device depends on the AIA IMSIC (MSI controller) platform
device.

Are you okay with this patch going through the RISC-V tree ?

Regards,
Anup

