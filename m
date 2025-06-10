Return-Path: <devicetree+bounces-184027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 412A9AD2CF9
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 07:00:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04F5816F839
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 05:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 108A72AEE1;
	Tue, 10 Jun 2025 05:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="dY8Ym0u4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734BF15C0
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 05:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749531645; cv=none; b=YRVDqrOAklMGVDq10cQvKL7AFlZ1aKTgxJLA3R8kng/88nuBh6OVjEXBGnwyxwoMzj6wvEmaGk62Tbh7zcjI6p7reJh6xRBN3U3BWHMRflqyNOcp1CgIc945xBiy+SIi2l3s3vJWAZn59O2qJ4G7zLzSYYbh4lU5VwJr2LNis80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749531645; c=relaxed/simple;
	bh=RkxdbjODuUBbJ5k/31S1WlX4KjeLcBHfIRe8IjRh4cM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZRuBSbkE6yDJXRIMJR/aa0QB0FaIPg1UaPn011H9B1+SHsyBwPbK9/3Mw7+H+H2TDOt57Nl1Cg+XyauWsCRrNtTqqKulleUCDztoBi033LTrbztMfId2g8pZCoMYdN5uQpZdKxQHtUZAqSDz+KNroFJDXHuOtRypi6nvvicRGgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=dY8Ym0u4; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-552206ac67aso6067049e87.2
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 22:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749531642; x=1750136442; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eG+QZlPSjwTQk4wkX+p/421OYI0NEzGDtfD+xtVDmlU=;
        b=dY8Ym0u4cZWKHheiGEYP6FleB6RMmRwnsgNwr95xHPwcEwSa8AUt2wBuwkPQEbmwqA
         /+xdll3T4w3fy4Tmynsk50Aj0D7y1MTjYzt72Yt3W/Zyjp38kOXgm4AWxej+jf2efp0B
         7Nk9xgorsuhx70P0VXYT3TzRfS6/9JrXzv3vARcIaHPuz2XVi5S1j26Rs1NXDiMAhVCI
         arYlPaw+JZ7gVhzcpscPgEufWtsh3diuOYYpQYo0lAiQSAROO0B/jz3m8RRdbCid1e+V
         vGjk6h/XUN0Vfkv9RjxcCA8C7Lq+Rw9F7lRurYn/HyxPtojcYgcDCsqd/lR7E8dlzIhj
         K0zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749531642; x=1750136442;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eG+QZlPSjwTQk4wkX+p/421OYI0NEzGDtfD+xtVDmlU=;
        b=r7UcybcZtN5me0lVtsfr9G6q/mlPiu8jHLEpc/dz6iUkZBytByqr/HuLCgMsXke+Ch
         QN1jdA60FsZh1/Cxi+/8eeF3/y9hlJcKFARTnwpFHm28P5CNIF4Uqfl9pVuoF45r8rsE
         iVdL/dv+sqBiMPtO/DSMwt7krr75fU3t8WedclItAGjrx4iSv4Js+O9/on8+gpLWeM6x
         M+ZkBtFhgjny46SnCu2jb1mTGmfH0CdrH/52GZLAOGBMBr7MyQTmnbkLICX8Uh9vPcxh
         GCCbMjHvwXIyNIv0qeBhrt5FFlhjHyZsLrxzy0Q3PO3bMca3ZOhkRHlCArGfwsR7UvtJ
         qOPA==
X-Forwarded-Encrypted: i=1; AJvYcCU+7GA+3fLtEgP71Ot/12kJ7tOzSjPqu1GTHTNdsSRUq7fOzzQFlvRrC/9bL2E1o5dlj95S49s+J8st@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfv6W/H6o17oPQh3+LpU7Zxdpwzww6P9y+2vrd/FNgFjNNGbvV
	pnI9mW8IOoI6jqKn4fTcZ4XwAP1K7S8mwJg4XwX3UtpM5tOAcE4EBdsoSnfElJYXMm3sg7nCuDw
	tdYhgAxSiUaEifZpBlfjvYJQ7h9ku/jdxxGh309ESSw==
X-Gm-Gg: ASbGncvZvsRto4uXvcsvsS/z8sAsbOe3HYdpf4OcFYVCVn0LXm23JwkV0NGqPiLwwq8
	W0XOnVbte48YXIzd5eNzsCA1Q1BSQDwBHvHpdHB3qJQXGE4jdO0AhQyymf+vc9IVKp7WNDpF7Gk
	fsRLYbQQlrv1XQ0s819TtY51YWBChjQXlehLnPMr56BA6B
X-Google-Smtp-Source: AGHT+IFc4bbR66Mv3WuueixJqBxHJULaviJZZe7HO26p9olq62flNuPFgpr2ULooMQPQ7QoisA5p/os4fCv6d0mjLC8=
X-Received: by 2002:a05:6512:1193:b0:549:8675:c388 with SMTP id
 2adb3069b0e04-55366e338e8mr4285433e87.52.1749531641605; Mon, 09 Jun 2025
 22:00:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250525084710.1665648-1-apatel@ventanamicro.com>
 <20250525084710.1665648-9-apatel@ventanamicro.com> <20250530-stark-maximum-2306978237db@spud>
In-Reply-To: <20250530-stark-maximum-2306978237db@spud>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 10 Jun 2025 10:30:29 +0530
X-Gm-Features: AX0GCFsG-CIRwlRAtjpdQwDbh-LfI7tbNGcMGwY5mVPx4e4ZARAwAgOKgyJVzwQ
Message-ID: <CAK9=C2Vs+q2t+iB7zdrXdieCcT7yYvQM4Z0vdVW3iGKG01UF9A@mail.gmail.com>
Subject: Re: [PATCH v4 08/23] dt-bindings: clock: Add RPMI clock service
 message proxy bindings
To: Conor Dooley <conor@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Len Brown <lenb@kernel.org>, Sunil V L <sunilvl@ventanamicro.com>, 
	Rahul Pathak <rpathak@ventanamicro.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>, 
	Atish Patra <atish.patra@linux.dev>, Andrew Jones <ajones@ventanamicro.com>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 30, 2025 at 9:58=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Sun, May 25, 2025 at 02:16:55PM +0530, Anup Patel wrote:
> > +  riscv,sbi-mpxy-channel-id:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      The SBI MPXY channel id to be used for providing RPMI access to
> > +      the supervisor software.
>
> Sorry for the delay in reviewing this series, wanted to talk to some
> folks at work before doing so. Overall these bindings all look pretty
> good to me. I don't think the description on this property here is
> particularly great, I didn't follow what it was meant to be used for
> immediately. But I don't have anything meaningfully better to
> suggest nor do I think that anyone actually writing the dts for a
> platform using this binding will struggle to understand it.

Okay, I will keep this as-is until we have a better suggestion.

Regards,
Anup

