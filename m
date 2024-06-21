Return-Path: <devicetree+bounces-78466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A64912607
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 14:53:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9639B2C6A2
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 12:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEA3015CD67;
	Fri, 21 Jun 2024 12:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="2/nYqkgF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADEEF15B978
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 12:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718973875; cv=none; b=dcY5XKRZhYb4FHQ/M1EfHjJ81NSUZW2wEcjZx4zL56NKnQ6otK32bhJv5mcenNI+lOa38mzhXm3XgpsbGOuSuisBz2vpbAPPVdCkUFZ0sdsF/lJfG5eBqKeg/dIzDrlvEVs7/OtwaemvyXjwiSxJoBUuDZCpKejdqbwWoSn4GcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718973875; c=relaxed/simple;
	bh=5l08J6QwTAydc1Q035PbR16J+Enp8p+H6+DUEul73Uc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fY4dXmRzp9wSBM/6MZbtWwr7Mv/VifLoMzaXmQ9rYanJ8MV0NGgZDXfAJCHY1p/wWAgQeOQW9tpmy44WeaXnsOHYm7kF0yMhQRrQiVSumbWGV5HWNJ1h8VE+f5/6dw8RjY9hpE6HR1w9hrRgMQmqQWlSMZp4mXRxLJVLu9H/qR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=2/nYqkgF; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-6f980c89db8so1000900a34.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 05:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1718973872; x=1719578672; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5l08J6QwTAydc1Q035PbR16J+Enp8p+H6+DUEul73Uc=;
        b=2/nYqkgFh4BQX24EVE1GiO4QA5l4varwH8FB9cvXPIIdwe98n1tSYgA3wlx+UjAcOP
         bXpOE8hgn+VVvYi0oDw6H3kW3c0/5CL3YPGx9bB/TNvpuJltFR/DCgtrMP6XwIYlLeTk
         dEnuhX8skNCXatglG3kR9wUX9qiG44IgnVNqbRltj5gIwRA8oCI6xneka5XjZPqt+Gab
         IeynXAaaRfMRChGOIBEZut1Vy0i/cil5+t9ahnzdhC5liwDkonxFkJWQ3K0JBPe/z+jp
         PsFfPxPFqQOJw4N+gXp7LEulfX8/7V15sHvkKI63OAK+3cUOHDwM+Y2zOO44WDT/8TOH
         AHpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718973872; x=1719578672;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5l08J6QwTAydc1Q035PbR16J+Enp8p+H6+DUEul73Uc=;
        b=xLebfyPRhrpZti8Sym/8E1+c6m41PisXXbujB8Mf9VSfTZkkZKwzNUibuse/pFX8vv
         ZYb9ghgzl4TO7R4mBGqNKywZECvuLczwtpCNdHhAPXQuqhJRcK1vEQRxRulFAMbaGRPN
         Du0bidfwo9fThi2xHbY0W9n6hrjNiYkS86pdAEpVCXgsmfkFeLxR1FNzRBq07KRo3DlC
         vhkubXdULgX443d8nC/Icv40h97SC+9zmqyFRe8X+OrQxh1ODrPex5TcB03hB2LuAZbK
         mG2RQycWi0GoHXOU7D+7N9WUHlZvFp5lwNe1RdQRXz87NVvQEUFZK2u1UIzoilqPncZl
         yyUg==
X-Forwarded-Encrypted: i=1; AJvYcCWuDjCtuzDE2oCrLPd9qTI56rnWUMrM6IueZpo57LI+MSx3b3RUznE5sec6GrIL/ZaSLZPlHyXnEfmcRIS1w4XwamqNBa4+igdkCg==
X-Gm-Message-State: AOJu0Ywb2JYVLOcedHbgRfh/COta9mFXtXfAX318Ipp5TRttiYsVKsmy
	DA3hf1bNR8HjfAtDkDEZziII4cW2tNYLI1v6XSFNmu1u/s4/ZShv1+Ys94EtfvbzaLxVoTFssJ/
	Gr5C8o4oUDD64UBG1KJ+D/Wp6JhfcMmv2v/kL5Q==
X-Google-Smtp-Source: AGHT+IEOZNlyLp+OxVrBD22Lk7qV9DoUmsFRWzsrduGbMG3NGbu8paAH4Nzg2EEG9ozpibJTiN4vqzTSJCMR3pLWBf8=
X-Received: by 2002:a9d:76cd:0:b0:6f9:e6a5:dad2 with SMTP id
 46e09a7af769-70074dc525emr9327837a34.17.1718973872714; Fri, 21 Jun 2024
 05:44:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240620175657.358273-1-piotr.wojtaszczyk@timesys.com>
 <20240620175657.358273-9-piotr.wojtaszczyk@timesys.com> <20240621103019.783271f4@xps-13>
In-Reply-To: <20240621103019.783271f4@xps-13>
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Date: Fri, 21 Jun 2024 14:44:21 +0200
Message-ID: <CAG+cZ06GSxPsTzRLXSk23qWXMkp-qxYq7Z9av5-2cPHSJmVAHg@mail.gmail.com>
Subject: Re: [Patch v4 08/10] mtd: rawnand: lpx32xx: Request DMA channels
 using DT entries
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"J.M.B. Downing" <jonathan.downing@nautel.com>, Vladimir Zapolskiy <vz@mleia.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Russell King <linux@armlinux.org.uk>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, Arnd Bergmann <arnd@arndb.de>, Yangtao Li <frank.li@vivo.com>, 
	Li Zetao <lizetao1@huawei.com>, Chancel Liu <chancel.liu@nxp.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	alsa-devel@alsa-project.org, linuxppc-dev@lists.ozlabs.org, 
	linux-sound@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-mtd@lists.infradead.org, 
	Markus Elfring <Markus.Elfring@web.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 21, 2024 at 10:30=E2=80=AFAM Miquel Raynal
<miquel.raynal@bootlin.com> wrote:
>
> Hi Piotr,
>
> piotr.wojtaszczyk@timesys.com wrote on Thu, 20 Jun 2024 19:56:39 +0200:
>
> > Move away from pl08x platform data towards device tree.
> >
> > Signed-off-by: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
>
> I don't see any change regarding the NAND controller node in the device
> tree, is there any dependency with other patches from the same patchset
> or may I apply this directly to nand/next?
>
> Thanks,
> Miqu=C3=A8l

Yes, this patch depends on "[v4,04/10] ARM: dts: lpc32xx: Add missing
dma and i2s properties"
which will be splitted into two or more separate patches per request
in the comments.
I'd like to keep driver changes and corresponding changes in DTS in
the same patch
but I've made a separate patch for DTS per request from v2 of the patch set=
.

--
Piotr Wojtaszczyk
Timesys

