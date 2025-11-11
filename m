Return-Path: <devicetree+bounces-237075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 206A0C4C726
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 09:45:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE44C3B4F37
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 08:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC18D2737E8;
	Tue, 11 Nov 2025 08:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DL+37iUB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670BF3E47B
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 08:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762850735; cv=none; b=BLiq4IfLSUPrt+2CWAOL98vdel85exhtTAdi3f8CzG+g+8EmP6OQon/GyEFFxHjtHnrsjsa1lJEUX4TNmJooRE7fjR5VnreuHHDYqT8pDV2jYsvalSqvQms1U0gHf8YamkuOd0UWTU0RzZlLe09T2UOKGAcbNzCv7QlfH7UaT0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762850735; c=relaxed/simple;
	bh=3nnAWyr034dlww4gOSVC0sm7Af2ZgKc/X5ULm9PEN7g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kaw7i7ab1qjvqpKhb0cLFGKZ0OlTr+km5ddJWDYVrzZYTVgIVBctkxNnMFwKnyvxNRwunGFZ/Lm/MMj1F3yM1U/YHPAAzUiISl88x27uVyRJCNoNwnWouAzUxWrO7uXebFS6EuVaA8o3lUYV3VW8tUJLB36wFZYRObjVzbpnbDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DL+37iUB; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-29555b384acso36895505ad.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 00:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762850733; x=1763455533; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5+hmxQBj7IsYd1S8pXVYnG/VuhGQ2SVQVtQG6+CGoaw=;
        b=DL+37iUBYq2NC6GuDj5QbS9dmtbIAcXH7TR4+r8D8Ta5XT+EKK8+zFIPF76wicuL9T
         +u1q9o9w/zmluGvs+gan7Q4YSWeI9txAKet7Dr8gP8z+aWdaq6/A0uJZWXvEnc3lqU85
         rKOyCz0WVMwUmV/WUfvi0ZTRQ+rbOkrS0nhDtrl3C2NNz2+Y19GBcaAG5B4XNmOS9zfW
         dH5E/IJ0NHcnmR0Kvo6Pnamh6gSS2psh+qlV8fTKRjRlARJ+uQ6dZ189IuT5XJAjOGOQ
         A197/pSNPbMXRR5azjSNyLxqu+hRf8EM92kVav3oNdlGUYo9spv91kfRQCjGMjCSeUn3
         r8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762850733; x=1763455533;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5+hmxQBj7IsYd1S8pXVYnG/VuhGQ2SVQVtQG6+CGoaw=;
        b=PWRZeQW9GBLddR1AR4r1EYh2QTWSeyzgrHjFZTSu7Wr2302L5EV7Zb7uCm93iNTv+b
         DePZyBIDl0zjK5fQHMkPHTK3jrMcLFr9d04AlxGj3VA/EjqttWdyZ/e5u2z+FL+XGv9Q
         zl0G3WzH5QGWOWaBkdP+hfjQa8YyZHgD/AwNYHNafDoM8Oqf5M8+FDsoT5fIoNOLl++A
         94a/IrxMLQQF0fQpQAC2CAYoQGSfx543zdfne+eKCPQ3Z1bCEYoMk3utEqb860cdaNbO
         cTPIyhydy/dLuaCPZ9RFiE7J2RBqDRYS1CCYXiEyV4rO05rncfwJsmowS5m5ElWHxJpu
         99wA==
X-Forwarded-Encrypted: i=1; AJvYcCWTw+2FXzRJESTSwwhwonG0z2QSPnNiLgRn0oLnJsnubKDNdadb5wgm7E4zE3eJ4yisE+dhRylrpCHm@vger.kernel.org
X-Gm-Message-State: AOJu0YwqlhbVa6OglmUPDAQ83aAH1snnuaKXmoM/LRKeCmU3qoMiKLbs
	c8FkB7jyGTjHX7BnbdsdIcyHumC7/jz8ucSnWJkHiSHvXtaBiWBRUfoVFe5CS1Y0mZcFExCLg9e
	9HJ42LE1Oajbalu4JtQuS2HtNIu+Synw=
X-Gm-Gg: ASbGnctNPL3UkmOtLDfSG1oojs9QW4X/VFDpQ5zYmtiAtodwQe0EZxIvnf4Z5wNuq1C
	IMJZI+8acYfOs4LYmwBtIWBvYFxNX6BCSqnI/lBnyb/0Z6zjD5hWLDWZrfos37k4+V4MziP5rqN
	PXydjh/sV7JOHMUb+o8fSES9eeYg5VUAfN5cuELKwK9dv63e3lphOcWofgW5BDbN7iZyHwhoiLA
	JnvImN6jJpCI5Gg3D7hZO4901ssfq+11WEc9Ky/OkelRHe1KMTS4mpwDsnbBygipXr1
X-Google-Smtp-Source: AGHT+IEbIBPvg62Y1Iztl106EfvgBmmryD6TUmDM5qu02qmAT6MmSP20+OStlbhgquJhSpSV9FwS3gQC37Rdo9EXvMw=
X-Received: by 2002:a17:902:e80b:b0:295:7453:b580 with SMTP id
 d9443c01a7336-297e5715410mr146810455ad.58.1762850732603; Tue, 11 Nov 2025
 00:45:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251109214515.121742-1-rpimentel.silva@gmail.com>
 <20251109214515.121742-2-rpimentel.silva@gmail.com> <9d48a54c-0585-4524-b9d5-30696f5ecc8b@kernel.org>
In-Reply-To: <9d48a54c-0585-4524-b9d5-30696f5ecc8b@kernel.org>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 11 Nov 2025 10:47:56 +0200
X-Gm-Features: AWmQ_bkje38QBVH41X3V5QeZd3T9fbYsWDLt3kUsgCWuUpLG1ylXQ7gyr6WQwdA
Message-ID: <CAEnQRZCvpXzGt=7NGv7-s+y0gvOg7Jx4OqbfbW3uv8jDp-jroQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: add support for NXP i.MX8MP FRDM board
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rogerio Pimentel <rpimentel.silva@gmail.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, alexander.stein@ew.tq-group.com, 
	dario.binacchi@amarulasolutions.com, marex@denx.de, 
	Markus.Niebel@tq-group.com, y.moog@phytec.de, joao.goncalves@toradex.com, 
	frieder.schrempf@kontron.de, josua@solid-run.com, 
	francesco.dolcini@toradex.com, primoz.fiser@norik.com, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Xiaofeng Wei <xiaofeng.wei@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 10, 2025 at 10:12=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 09/11/2025 22:45, Rogerio Pimentel wrote:
> > The FRDM-i.MX8MP is an NXP development platform based on the i.MX8M Plu=
s
> > SoC, featuring a quad Cortex-A53, Cortex-M7 co-processor, 4GB LPDDR4,
> > 32GB eMMC, Wi-Fi 6/Bluetooth 5.4/802.15.4 tri-radio, Ethernet, HDMI/MIP=
I
> > display interfaces, camera connectors, and standard expansion headers.
> >
> > Based on the device tree found in the NXP repository at github
> > https://github.com/nxp-imx-support/meta-imx-frdm and on imx8mp-evk
> > board kernel mainline device tree.
> >
> > This is a basic device tree supporting:
> >
> >  - Quad Cortex-A53
> >  - 4GB LPDDR4 DRAM
> >  - PCA9450C PMIC with regulators
> >  - Two NXP PCAL6416 GPIO expanders
> >  - RGB LEDs via GPIO expander
> >  - I2C1, I2C2, I2C3 controllers
> >  - UART2 (console) and UART3 (with RTS/CTS)
> >  - USDHC3 (8-bit eMMC)
> >  - SNVS power key (onboard power button)
> >
> > Signed-off-by: Rogerio Pimentel <rpimentel.silva@gmail.com>
> > Signed-off-by: Xiaofeng Wei <xiaofeng.wei@nxp.com>
>
> Incorrect DCO chain. Please look at submitting patches which explain
> what is DCO and how it should be organized.

In addition to that, Rogerio please read:

https://docs.kernel.org/process/submitting-patches.html

At this moment I think you should keep the original author of the
patch.

Then mark your contribution as follows. If you just picked the patches
tested them and made minor modifictions only add your S-o-b

e.g

Signed-off-by: Xiaofeng Wei <xiaofeng.wei@nxp.com>
Signed-off-by: Rogerio Pimentel <rpimentel.silva@gmail.com>

If you made significant changes add your C-d-b like this:

Signed-off-by: Xiaofeng Wei <xiaofeng.wei@nxp.com>
Co-developed-by: Rogerio Pimentel <rpimentel.silva@gmail.com>
Signed-off-by: Rogerio Pimentel <rpimentel.silva@gmail.com>

