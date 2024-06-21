Return-Path: <devicetree+bounces-78444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 044F99124C7
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 14:08:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 346491C21AA9
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 12:08:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5419C174EE2;
	Fri, 21 Jun 2024 12:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="bwNl9B2b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307CA174ED2
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 12:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718971697; cv=none; b=AzYypxfzPwSzkhtP7GUvMFftmyLuF4TmeW/bxeiHc35MDHBCgIvUItVA9Jd+UaBJBNlxOz8eWK7cn4bQRYptVKfTpyQuMI2ldd4zX2zwcwDp8Ar5NpnzKts97M0X9wvk9v2fzgocRWOMnmDViy+jWlf5V7GqsSrkLdv+hsUlvIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718971697; c=relaxed/simple;
	bh=5CsIqk65T8h28pv7LSZHK/r+thMfNFgpmh7VKRl0UWQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QSm61UehE6/0phloIX5YeyhJc4pflZzwnx9OzGex5BM4/JMI4YDvXtysyHPtX2yTBgmUYSC3721B+IVmKvv0xUz38zPe34bCSrwolVy1FinugG34hPcv1+tMTliQAjta2/ksJJkOXDvige6G1tYx8ZIVNWaq2+hB/2YkMN+sigY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=bwNl9B2b; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7960454db4fso123516785a.2
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 05:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1718971694; x=1719576494; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5CsIqk65T8h28pv7LSZHK/r+thMfNFgpmh7VKRl0UWQ=;
        b=bwNl9B2b5uBkts+d4e1DdRjRmxBlNK3fTwlrYckofd8DFZRyHpP+wuYJNoiJFzIY0N
         6J2XMZlIWqrBJdPaUYzL7AaytwBd2cv+HOibYo5pDM/cXmrBDsHNLJJg2+DNxDbfTG01
         PGNcSY0E5srlf0xby1j0hw0vKWRgAxMKkG1uK9hQshCVklS2nrHA+8JMmi+OcLH9ExEM
         76uZVM00QNMp5apgZUS8HFiWsw1t/COUYq6QZDqgb2TK+SDiYiCU5xgaajdsU4GHyF4a
         TgfV1+fSkkp2MooWuTU1LdWf577gqcZAi+/zsQBwMkDc00qjp1XBC1jfhw4NHZJs/Mg0
         fn5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718971694; x=1719576494;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5CsIqk65T8h28pv7LSZHK/r+thMfNFgpmh7VKRl0UWQ=;
        b=OKG4b08EDlGXKxHNGORlUU4QCOTnu4BmSB1R/4fcYooMhO1c3Toj2UbQN7b2wPH0fV
         AXJOImNNTvAi7om0YDlzrgGbCa3sOy5oG/ERW07KiYciH6/oZOBtOYVdHWl0xVYSsxJW
         rHiV2qIQiAwXfA3SXrl0Y/NUzKgwkF7jv9POcfS1XtEuY8TfQvdjSpKkJvjr/LnxvP7t
         qqj9xFCfMnOaII6SqU7pdyiHB3m8bWP5ft4SnjdwmapkNzoS6migZhNOcWkZVG3gaEJ9
         wRkCHbczKvYAcF8OWSrezax9CJd+2ak14Vvs77ShaJQqdXy74hIk5i+v2vunSNNLvbe2
         5V7A==
X-Forwarded-Encrypted: i=1; AJvYcCWUZrs90332x/N20ESWSq6EnI3hQQLbX+3+hLmrWvliKXP9oXB4LHs551G+rl/aY5cDXcRdDVb8ZX67+3p++nyDcDHbYCuAGTFhnQ==
X-Gm-Message-State: AOJu0YzbiLmIJbfijJ0tzc35gC94JBK0s7PJiuBxQq6QH0wmU7rEToIF
	AEnQCdVn7JZYcM/CHXUDrpSJJytnzZmH3nL1n+LN96mG3vUniIyRTeRE0vJ7Zlzbxr4fXrgndA5
	nOm8hjAWEQktubT6vRBV/uQq0jpEdFwGzDj353w==
X-Google-Smtp-Source: AGHT+IH9SeiO8vfdoOxDABbDkc1VlJaHvluIQfS8YUVwP2eXorBPvqf3BAKJdJfTNAn0CNJ3/z1faNaXrP6fson02ac=
X-Received: by 2002:ad4:4245:0:b0:6b0:6629:bdf9 with SMTP id
 6a1803df08f44-6b501e2c710mr72849356d6.21.1718971694039; Fri, 21 Jun 2024
 05:08:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240620175657.358273-1-piotr.wojtaszczyk@timesys.com>
 <20240620175657.358273-11-piotr.wojtaszczyk@timesys.com> <jgqhlnysuwajlfxjwetas53jzdk6nnmewead2xzyt3xngwpcvl@xbooed6cwlq4>
In-Reply-To: <jgqhlnysuwajlfxjwetas53jzdk6nnmewead2xzyt3xngwpcvl@xbooed6cwlq4>
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Date: Fri, 21 Jun 2024 14:08:03 +0200
Message-ID: <CAG+cZ04suU53wR5f0PhudgNmkxTRtwEXTS1cWH1o9_rTNM94Cg@mail.gmail.com>
Subject: Re: [Patch v4 10/10] i2x: pnx: Use threaded irq to fix warning from del_timer_sync()
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"J.M.B. Downing" <jonathan.downing@nautel.com>, Vladimir Zapolskiy <vz@mleia.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Russell King <linux@armlinux.org.uk>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>, 
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

Hi Andi,

On Fri, Jun 21, 2024 at 12:57=E2=80=AFAM Andi Shyti <andi.shyti@kernel.org>=
 wrote:
> On Thu, Jun 20, 2024 at 07:56:41PM GMT, Piotr Wojtaszczyk wrote:
> > When del_timer_sync() is called in an interrupt context it throws a war=
ning
> > because of potential deadlock. Threaded irq handler fixes the potential
> > problem.
> >
> > Signed-off-by: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
>
> did you run into a lockdep splat?
>
> Anything against using del_timer(), instead? Have you tried?

I didn't get a lockdep splat but console was flooded with warnings from
https://github.com/torvalds/linux/blob/v6.10-rc4/kernel/time/timer.c#L1655
In the linux kernel v5.15 I didn't see these warnings.

I'm not a maintainer of the driver and I didn't do any research on
what kind of impact
would have using del_timer() instad. Maybe Vladimir Zapolskiy will know tha=
t.

--=20
Piotr Wojtaszczyk
Timesys

