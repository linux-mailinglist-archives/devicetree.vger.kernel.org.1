Return-Path: <devicetree+bounces-54217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CB988FF6D
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 13:45:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 457A01C29764
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 12:45:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FCF47FBA5;
	Thu, 28 Mar 2024 12:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Lw/NKJCV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5BB7EF1B
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 12:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711629934; cv=none; b=kOma5PbuByOKbZRL2nAmcnTmiJEV5lUvKYbspVjmbQDNvd9u+VIa+rwhnKbX1+/m9xmBwfoZP/cSKch5ToSYvd7BCsqI644L4fUQwT9r+6A01fSSgfRAMSBLETAv9kYVvpc13dVbt8PYvNNUfPq0kg8XyEyDYiWt92f3eqHUBI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711629934; c=relaxed/simple;
	bh=8lEHF+5KeY7IwPxT0CU+sV7sbI+hhTxcWOVByD0uw5U=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uBAANrNUrnPO0tclJ2YGyI7mtNSvZb8/ZAsQ67pVD493+RuQrtrUDRsE6cTdNZ+Lm1rq2htGNAG50XLlOTk3BUSYhQ/jMj6EX5N10BXmIuWhMZ0YqiHLl0GRUkSZoCVnq2ky7mijuY0StI3JIA/OiNaSHwV1nckHY3IC0XftuXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=Lw/NKJCV; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0382742491
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 12:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1711629924;
	bh=mcy8xBzJhA5/GwagWLEOHwxzAhDGLHOwYxY0lrDfVFk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=Lw/NKJCV4zL7nNlebWFYY/iARVLdHHm5UsGfIIV+E8K9B6H2HVNzcrAcAo2f5tUNZ
	 nKoXc9+FBXhYJDnF0bLPVd7Cm1VIFO0e3NWlINNSnAYZA+JOaOUL/iIoZpAZlSoF1l
	 97YNaNUycfMCCfEO0+VVLvbv0mwdUbP9VCSr6dqKs+HmCpWQPiqRJyzNWwC/S5P6pS
	 zqhUe9pagFZPgjGlx2jHK6uLtjS99bpxvkyMgZw2lq7VVxF1gnCY5BPvRusQjdtDxm
	 YQ+4AT+2balnhjWpY9lKKDEhdz2JnZ/LODA8fzNuFRIRtaAZkDX5S9SJV9J1l9pG+9
	 KtwDE6yzfqxCA==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-430ba0fa798so9983401cf.0
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 05:45:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711629922; x=1712234722;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mcy8xBzJhA5/GwagWLEOHwxzAhDGLHOwYxY0lrDfVFk=;
        b=JR0TmJtCv2O+ni3GHS/EgDD4ZCMXuHbcfle/NSoUZiI2kTm0I7xgv7E23bpHLrOyn8
         /I9UnZBQI37gcvMQ93sMGMBxMievxhIF4o4ebXHTIrPejUeqydE4WLTc3cWQNGHhBClt
         75/WQmJTS1CHT1Bkir7pzCsCWzWSQ7lAXG+k8iqHhRMyI1MMNpH0kKB18GQWbmjXzg09
         ZGVE0x8w8NYowHV/r482xUHbx3GjbrbxOHHaO4S9c7PUhUDsk/J4qgxdRj69BBe2sRP5
         4nM+4+z/W4y/HejdM9nTrP5fvPG68cR5hwMK9zqnn3GCSEmioxH/VD94kmSrlrNxkN3I
         AnFg==
X-Forwarded-Encrypted: i=1; AJvYcCWlk3YZtDPvD0T9UpEqXz6lh1XuCmg7VvtevAk5/1YakH19/Nxu09cwdw5PR8np0ZPT61SNru0G1r6xzdW7/hpNENTJqwWW2K3G9A==
X-Gm-Message-State: AOJu0YzaLjSOZkpjJF8Semmau76IvwY8yIlMmxIWbG6J+v4NuGGfdChq
	wjM/EtI4NEfkziIWRR+lr1a3HkVaSvRUDyr0iS5RhvChFtvgDUUhg6IILYfe2z4lmcIgYjfn42X
	4kmpyejNqCx41d9LzZwUmjidarm2cnEfo/YQjsw+NvGV2mz3VdvpW8JfCc7HOR9O8yrSpF0rnkp
	cGQ9i2BAGCsS3umIsKCpdEDD+Z1mzevpC/W2Pyuu3+cPfOjqfwgQ==
X-Received: by 2002:ac8:5e13:0:b0:432:b582:1818 with SMTP id h19-20020ac85e13000000b00432b5821818mr1585116qtx.45.1711629922505;
        Thu, 28 Mar 2024 05:45:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGUKlsOrsfvlyk23QZwEukdnQFti77COK+AMtjF8pDiCQ3BPtiLG/Cb9YHlaPR5B4U1pD56yQlPhI2rzGy27Xc=
X-Received: by 2002:ac8:5e13:0:b0:432:b582:1818 with SMTP id
 h19-20020ac85e13000000b00432b5821818mr1585094qtx.45.1711629922222; Thu, 28
 Mar 2024 05:45:22 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 28 Mar 2024 05:45:21 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <ZgVBurohYRDzFjgb@xhacker>
References: <20240131132600.4067-1-jszhang@kernel.org> <20240131132600.4067-7-jszhang@kernel.org>
 <20240206-magma-deem-2c88e45a545a@spud> <20240327-cotton-fang-37f6d8fde0e5@spud>
 <ZgVBurohYRDzFjgb@xhacker>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 28 Mar 2024 05:45:21 -0700
Message-ID: <CAJM55Z8O20qjYmbjwOOE2CDCrWhCDGJ-jXY9TsR2hMSn-gEFtQ@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] riscv: dts: starfive: add Milkv Mars board device tree
To: Jisheng Zhang <jszhang@kernel.org>, Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Emil Renner Berthing <kernel@esmil.dk>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Jisheng Zhang wrote:
> On Wed, Mar 27, 2024 at 06:06:58PM +0000, Conor Dooley wrote:
> > Yo,
> >
> > On Tue, Feb 06, 2024 at 07:13:48PM +0000, Conor Dooley wrote:
> > > On Wed, Jan 31, 2024 at 09:26:00PM +0800, Jisheng Zhang wrote:
> > > > The Milkv Mars is a development board based on the Starfive JH7110 SoC.
> > > > The board features:
> > > >
> > > > - JH7110 SoC
> > > > - 1/2/4/8 GiB LPDDR4 DRAM
> > > > - AXP15060 PMIC
> > > > - 40 pin GPIO header
> > > > - 3x USB 3.0 host port
> > > > - 1x USB 2.0 host port
> > > > - 1x M.2 E-Key
> > > > - 1x eMMC slot
> > > > - 1x MicroSD slot
> > > > - 1x QSPI Flash
> > > > - 1x 1Gbps Ethernet port
> > > > - 1x HDMI port
> > > > - 1x 2-lane DSI and 1x 4-lane DSI
> > > > - 1x 2-lane CSI
> > > >
> > > > Add the devicetree file describing the currently supported features,
> > > > namely PMIC, UART, I2C, GPIO, SD card, QSPI Flash, eMMC and Ethernet.
> > > >
> > > > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> > >
> > > Got a dtbs_check issue in the patchwork CI:
> > >
> > >   +arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dtb: gmac1-rgmii-rxin-clock: 'clock-frequency' is a required property
> > >   +	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml#
> > >   +arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dtb: gmac1-rmii-refin-clock: 'clock-frequency' is a required property
> > >   +	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml#
> > >
> > > Can you fix that please? Also, I applied some patches the other day that
> > > seem to conflict quite a bit with the common board dts patch. Would you
> > > please do a rebase on top of that please?
> >
> > Been going through stuff on my todo list now that the merge window is
> > closed. Could you please resend this with the rebase done?
>
> Thanks for the reminding, I will rebase on 6.9-rc1 then send out the
> patches.

Hi Jisheng,

A rebase would be great. It looks good to me, but could you maybe call the
common .dtsi something more generic like jh7110-common.dtsi like the
jh7100-common.dtsi. If we'll see other boards based on the jh7110 upstreamed
(eg. Star64) I suspect they'll also be heavily based on^M^M^M similar to the
VF2 schematics.

/Emil

>
> >
> > Thanks,
> > Conor.
>
>

