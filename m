Return-Path: <devicetree+bounces-185074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 46945AD6655
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 06:00:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE5DB17578F
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 04:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C421156F45;
	Thu, 12 Jun 2025 04:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="l1JaIQQ4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AE410957
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 04:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749700827; cv=none; b=kEpZjs/GSbGZyGrVW2gEjIIapktSh/SFIrsg34Y28vjVLx6UKob4odzC84omKkuETy4e2dMS3gEUGzKr/7pSQAELehcIgJ1PjIsqc0grokTvR5rWfAb9Uk/eKmakw05E+ItB+kiW65IzQTC1ekdf9oWT7PhxC7pfRIdPCTAQppw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749700827; c=relaxed/simple;
	bh=LrZf9tw7ue1AjUWwaIRpX02bUAB62dzm3WhOTiLfKg8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DLD1tjEgg/9/mZYA2K30SbZVt3rWLOcS2cAY91Ys/riJSNnUZMKk2CC47Krqi1MllrCSbDuqnMF3NbaBqxk1CVqLzVsCSMTD0PofTbSYZLI0VMohev6CvqRp8jGRvZrqob8EWiG9o/pvP5CVFhO8THQ4t+HuTOmxFdj59a96gqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=l1JaIQQ4; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5532e0ad84aso490001e87.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 21:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749700823; x=1750305623; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LrZf9tw7ue1AjUWwaIRpX02bUAB62dzm3WhOTiLfKg8=;
        b=l1JaIQQ4IipbLDrlJAd5wq48I3EnHNxUCz/XyNSq1qRxudJf+ysLG8dWTJpDBGviGz
         ZXkCIneRl2HInlh67JUlcp76zlqbfbhn331R8iSR+OuS/eETVR54WHHumWEkNePvDJkm
         aC1xhJHja7o6opJkIZXxO7pKZiyscJuMTlscILmb9p03V9VJk2+4TrmYek29iDo9P5Iq
         2geeaYqme1nWR17W1H6hUbE5kOE75oesphuVSO/oeo3ueoBAlzoZG3wrfbTt8Tc+e1iH
         Ik6myCgWnhkriWMoXckun5kwCvvbywBDfcE8aCLHLo2P4J4TQhLxgl99ox37bJCt3rpi
         5A4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749700823; x=1750305623;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LrZf9tw7ue1AjUWwaIRpX02bUAB62dzm3WhOTiLfKg8=;
        b=TG+dZwl/5j1JxE6qQYshY2sluC8YcDWt/caKWJjneVRMd3ZTPKyLc7aSwvVlJBnAwG
         /cZ2Wuj62I8SfbVHQpyY1xhv74HGtpwDLxNMKAAPnE9uEo/HfLS3E3nO7EZ7RIkEDtLS
         8TXbLIBUHshdbAOi27D/o2BXRKJX2aRpDFGlg8cYSlyO4mheFaIC6vEfhdbc8yqQJbQR
         RVPeYzlipY2Iptmi7iSd3CaKlwoE7zIa26ww7Po4oDE7ntTCa5MW/oH5wjMHaON9VklZ
         VCnmlGw1x1Hkn44oNOP1vNMsajaL0N6uPaw9nVDQ7jxtE/FGlElfojgkpkToJknv/Yge
         ceFg==
X-Forwarded-Encrypted: i=1; AJvYcCVZlk6+R5R/TusX8mx3g9z5uEsdZOX1yO2F9FTmJmRF7v4oEhRFKUyX/WsD+JMd2xFZOXDuuNzvE2Rd@vger.kernel.org
X-Gm-Message-State: AOJu0YwVbvUt0tEOFhrsl+//d1rsBoYfC7SN/eM9WYNolpkpxvEau0XK
	tvkcrS5EkDlas7JN61a7vUfdfTv1o/wLCJBjRtr1hScIKxq5zzoG5q4IH1QiXTz+EjeIJ8FzelK
	dYdXW7ga9OFsTPghwYHK8h/utUBnVxX1adv+AAjkNIw==
X-Gm-Gg: ASbGncujABlUpkUfywYw3Rw7rAghAJFSyTY5bF88fVhoUjheK/DRx9ZyxTGeVP7JVqQ
	pjVZbcW/+8svj1ZHcAr4+iXlnoIVluEEN2SiYXWNWmpbQGFbdzXaae4799EijqzDg/p06qLckp9
	bz6MB2iMgAyZaUOtf4OUwkym7CacuEY+qpoSQEguBZwpcg
X-Google-Smtp-Source: AGHT+IHFiT/1CKTclaeo4nECAjAsNA6jBOPa/LZL3M+Ccdnks+IHwcRkfiDgkJcope9mTG1+XxA4A5iEPu8+KuKIZnw=
X-Received: by 2002:a05:6512:3b0c:b0:553:2450:5895 with SMTP id
 2adb3069b0e04-553a6446c73mr435357e87.4.1749700823052; Wed, 11 Jun 2025
 21:00:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250611062238.636753-1-apatel@ventanamicro.com>
 <20250611062238.636753-9-apatel@ventanamicro.com> <20250611-sprint-playable-07774a23f027@spud>
In-Reply-To: <20250611-sprint-playable-07774a23f027@spud>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 12 Jun 2025 09:30:11 +0530
X-Gm-Features: AX0GCFsKCy8m7CU7KuBd7obZnUUEUh3VEd4feuIdW-8ohTJTYbZ_MYkJD8lCino
Message-ID: <CAK9=C2UwtBhefp_FxwTtDPRyXb2McVdypgh-A9PaQO9288uzMA@mail.gmail.com>
Subject: Re: [PATCH v5 08/23] dt-bindings: clock: Add RPMI clock service
 controller bindings
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
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 11, 2025 at 9:47=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Wed, Jun 11, 2025 at 11:52:23AM +0530, Anup Patel wrote:
> > Add device tree bindings for the RPMI clock service group based
> > controller for the supervisor software.
> >
> > The RPMI clock service group is defined by the RISC-V platform
> > management interface (RPMI) specification.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>
> On v4 I said the tag I provided was for all binding patches.
> Is there a reason, other than using b4 to grab tags, or not noticing,
> for why you only added it here?

Yes, I use b4 to grab tags before addressing comments. I will
manually add your Reviewed-by in all binding patches in the
next revision.

Thanks,
Anup

