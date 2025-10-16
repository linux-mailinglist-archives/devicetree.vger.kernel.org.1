Return-Path: <devicetree+bounces-227730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9A1BE3F59
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 16:40:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D34081A64FE2
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 14:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F129E31196D;
	Thu, 16 Oct 2025 14:38:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552742E764B
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 14:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760625532; cv=none; b=s4E4YtLlhIrXat4LF0K6uI58VJBTKfjrTwqW0IMb4c/w/sRhS+/KZQm+No5JHHSsAWdOUNevJbSs7lXyVqGurZOtsw2d84kgWOHeunDSagTDxi//LNb9U9EY+quqsbTaEV1pUtesnjEtAQ164K1GXSmAeemmzOTm+cc+kK+S0Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760625532; c=relaxed/simple;
	bh=QMYwPDdqJ8DV681rGtY+oh0LJ+MFkkVHcY4G0TluSio=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LPNmykoO2Cf7fru0Lw8VCasOLMOovcZgaquJTaz/q7cyMGAFI+c5AKqExaqLxtPuAMz5Km0bLbGeE8G71mNxg/hAeFNFNVb2Qk9SSW2kQ8onVgXfy2Zk3LKtcD7u4ro1XaYmAyBIr1vhiB5UFuvBtaxKZcbz+PH9M0k7Yg13JYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-87c148fb575so12980186d6.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:38:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760625530; x=1761230330;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7OKo+B/N8OpvVSgOheqCo9k1dnTlp+LYue6K4y6i8Mc=;
        b=NZyO6PPhq/+UXDgEs43twjaoidPNP8/9chRpbshTpdfa02JxQiKP8/rnOdls5KNAD+
         Yx5gIl1AcGLVx4oTdxzF96MEKOhNTbr7Lx2ZK6DcC9ct4QFh1uEmSu3iCjEf9KRBXWzf
         ZZsE2HrfSYnLDJjjDq+UvR1glOlXmjLuk7nEAU8AXOb9qVc7m8vhyrF22UP9fu4RZ4W6
         MI02tbuIoMA+/IalYKcOOPhM9Wa1naEFU+/sa+ptSXdYXuX6fIfkNrzqH04XSjiPGDH1
         z0KZQaXCYOZn3tRZ23wTElUuvWnWV0Z8os2X1RV62YNH4aHgfFdl2pMR+JAaqpSDzruU
         vzng==
X-Forwarded-Encrypted: i=1; AJvYcCVmWZ/tINidJNHuladdFNIxFMecS587ygZDlaZWAmP/DGJT3P6NbNcVbiMEdEE9cPcQt5wiR80yga4d@vger.kernel.org
X-Gm-Message-State: AOJu0YwUnUXtHARyrGUDCtRxR8x15QaE24k+5ZwpSkbzAYpCg8lyNjw5
	rg5hS4tZ3+UveTlr3XaPC4dj1lAvVBaccrcsx6GPNKRmaMU5/2V5tzKrkBnMFVyy
X-Gm-Gg: ASbGncvZSYaOEnt4WNO8DUX5tJvTPTOpaMDXTMAMWgzcZONTqwe+dC9eViCLkTiC/Ow
	eWSC9H0xQlmoVpuAJDSJCsRfYAg5zEHeIWqvt9bZRtVQQXuGstNnQG4jx9YbhUHQBk9upmHnE2D
	8nYc6hVhrTJZpvc4DdVO9A+RZNrzXg/3C0M9cwcpKbcIjUplLXJePVkaFnAsw4L1VIThDZeTMZ1
	0mzxhjRlkMlfDk3ariNpRRNzNF2dCO0CXrR1Op90n+r+QtSxy3e0MkAyZDVDuzvSd3Y9lTDUqPp
	rm7iGnQwQQUpcc7YHUOJE0WIVwBSqJCxu5UnumPpMs6Ja9dkTNyoBG/8sYKupijoCcrTpTjbRMZ
	4Ub32K+g2smHamnVOoHyyciMXCIvSkmmL54o/hmtIF1PzuTH3X6H4G4hOtD5H4TxfnpYheNDN2b
	B7HIkD5XGaTrL5T9beq7wrzDKCS938wFLemCETXVUdRhFQq8CJn/q9
X-Google-Smtp-Source: AGHT+IFZQbWXAE9AavM+7cwJY24M1lC/WOk0Gdmoj2KNwTbwRFE858KN4A3iFakakpLeszDldLkvDQ==
X-Received: by 2002:a05:6214:29cf:b0:7c2:d5b7:dd54 with SMTP id 6a1803df08f44-87c20566c92mr6183996d6.18.1760625529900;
        Thu, 16 Oct 2025 07:38:49 -0700 (PDT)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com. [209.85.222.175])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87c012b5de7sm40732616d6.65.2025.10.16.07.38.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 07:38:49 -0700 (PDT)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-88e1a22125bso114515985a.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:38:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUlB66XD5B5t8WeKUufxjBbWEKyYdQZsb1PO+ECxusioRnoi4McSJAD+6KtQHD26+9zSJ+Vle/9+Tsr@vger.kernel.org
X-Received: by 2002:a05:6102:54aa:b0:5a1:3bcf:a93f with SMTP id
 ada2fe7eead31-5d7dd555922mr220616137.4.1760625133095; Thu, 16 Oct 2025
 07:32:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015153952.185249-1-marek.vasut+renesas@mailbox.org>
 <20251015153952.185249-2-marek.vasut+renesas@mailbox.org> <CAMuHMdVdW+tMA1=g9D+BQV0fk0kis8FzyQgf7BpN-u=pi5eQfA@mail.gmail.com>
 <51ff107d-126d-4481-b94a-f614f31c7bb8@mailbox.org> <CAMuHMdW+_1NZYdXrGsNcHkuvh_ym9148BRB+d0Wbz1oZrpWCdg@mail.gmail.com>
 <6f29d7af-a2e5-4412-9575-6368621c1178@mailbox.org>
In-Reply-To: <6f29d7af-a2e5-4412-9575-6368621c1178@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Oct 2025 16:32:02 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU9xSeFtLB-jUSUnJb1JHxYDXLe91GhZbT7QVGzYCXkRw@mail.gmail.com>
X-Gm-Features: AS18NWBZ0iJCimoz06t01ILJ3nlCiaOTwnBjpX9tKhkz8DwVN2SfgQuIjQCiZ2I
Message-ID: <CAMuHMdU9xSeFtLB-jUSUnJb1JHxYDXLe91GhZbT7QVGzYCXkRw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: renesas: r8a77960: Add GX6250 GPU node
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, linux-arm-kernel@lists.infradead.org, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
	Adam Ford <aford173@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Frank Binns <frank.binns@imgtec.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Matt Coster <matt.coster@imgtec.com>, Maxime Ripard <mripard@kernel.org>, 
	Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Thu, 16 Oct 2025 at 16:13, Marek Vasut <marek.vasut@mailbox.org> wrote:
> On 10/16/25 12:14 PM, Geert Uytterhoeven wrote:
> >> which are also never disabled, do we want to disable the GPU by default
> >> and enable per-board ?
> >
> > Yes please. We do the same with renesas,*-mali GPU nodes.
> > The board may not even have graphical output.
> > Or do you envision using the GPU for more general and headless operation?
>
> The GPU does have GP-GPU compute shader, so even headless system can do
> compute on the GPU.

How is this handled on other SoCs?

> >> I would argue the GPU should be enabled by default, so the GPU driver
> >> can do a proper power management of the GPU. If firmware is missing, at
> >> least power it off on failed probe, if nothing else.
> >
> > The *_PD_3DG_* domains are powered down anyway when unused.
>
> If the driver was bound to the GPU node, then the domain would be surely
> powered down in control of the Linux kernel driver, without depending on
> the prior stage to leave it powered down.
>
> I think it is in fact better to bind the GPU driver to the GPU IP and
> let the GPU driver power manage the GPU in a well defined manner,
> instead of depending on the prior stage to leave the GPU in some
> specific state ?

The domains are powered down by the rcar-sysc PM Domain driver,
hence the system does not rely on any prior stage taking care of that.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

