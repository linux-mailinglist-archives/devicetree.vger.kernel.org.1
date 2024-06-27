Return-Path: <devicetree+bounces-80731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 798C491A48A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:06:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CC1B1C2174C
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:06:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F62E146D4D;
	Thu, 27 Jun 2024 11:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="fBhAyFjK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189921459F1
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 11:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719486367; cv=none; b=LyR6DhpQZYuIaa+dcjr2klWfvpDA99JbY0xab4otK0vs1LUXkrPQYI0QLXhLLQeA8j5OMTpfc5wMSFXD5aYoo3or5zqqLVUdBZUQuMDMlJ0zkHzjBcMmFRbmQAL7f9wC1bYfKqm85UfvELU/0OJZZT9E/3mbf4dyJUzGyEQ1tqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719486367; c=relaxed/simple;
	bh=q8pm1cQ32txw1WRPKTanNTmvRox3c7g4AlMuHhl+D20=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pxZTMzhtr/qE8LepljDKziEZE/Sp3ekGQId7GRlvarJ9cutDEcNrzs7h8h6YbEaWi/M+Esh2kHqQCd4o6AglSJlsqzQP0pfRVmCLd2VRuM0uFO6RTyg0IOSXMXlR8ZVZZXXaPhCF70C9DdYphbxFAHN9F9BXfZoM7G8tLyFW5io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=fBhAyFjK; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6b2c6291038so12687876d6.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1719486365; x=1720091165; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q8pm1cQ32txw1WRPKTanNTmvRox3c7g4AlMuHhl+D20=;
        b=fBhAyFjKVQH9Q7d5wuaZPgNCYT5JZ3kprAQjwr592CkBHUhnX3a5lAKlC+LXqlNXK6
         IKK8qoY5lh5I5yR79PDRkGPX/5QQU+UXnW/wz+RYa/Jl6D9eDMGTT2zTYn9BxKtqPQvv
         Sgr1yE824hNKoxfryHz8F8/9KFp9SALgaX0ApbIIi/stoOt+V6g7RGoCQ6LoBfr9loHz
         9JV1cvDWtjwK0C4A6+1DlYe2isjwsVZmtHoPVYtVx+6k/T2WtcYngryOKSmglxBONKMj
         kkhYSnsqi9hes+wu35KzkfUeFxqPQIjZBifRRIbZYREauaV1ZbL/e0JeaYxaWrwRLYq0
         4ChA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719486365; x=1720091165;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q8pm1cQ32txw1WRPKTanNTmvRox3c7g4AlMuHhl+D20=;
        b=LxjYkf6lYkXHegTSEtWSBsVTRPybFa2XGb9/PtJ++mO1PWC8JeQJ2Cv3cPXj+4KniA
         3u0M8Nocav5+lMpEXTsMI+uYLABJ5Ji0R7Y3RNhOD5b3uB18agryXI1Q26krTF/F6kiK
         NtgRGWThH+EB0247sS2r58Bu5N6z4kvIyRsX2whJs3iG++4kY40s1GkXtsTqATtxY/Pq
         TH6BR0hOh6xHWA0PB8rgrJ3uX4WBU4gtosLYfeTK4fQrWbNOfaBERwIn7kW6Rt3yBRT1
         MGvWcFg6aRugF2anN2wB6Ox73RauoVhu9/hBQLYRfzB3VgzSjIh8zpnaNwUJR/eJu+ke
         +Vvg==
X-Forwarded-Encrypted: i=1; AJvYcCXLMdI07NsSdL813qN5CbKMrvsJxEcL10/VgWAoqbPk64BQ8yks/R4j7toq8co6UpR7DNI0TQLtQHNuKAlHr9tCjgSRseP9MEFxtw==
X-Gm-Message-State: AOJu0YxyKqbBSQjrnMlOoR3X2P3gjNz62Y47LUM5mC+79AYlAj5CVuCt
	TghpIxDd3ME68/YTaeFcEKB0PJkGK7CILC8QavuP8QcQ6o4pMwP+JX4HXBOMpR2y/4OAGgYoxgR
	ynpcvGLaxy8c5CW3iBrjTNwtw1+W9OMsZdcCr7A==
X-Google-Smtp-Source: AGHT+IG2MNKNNOGC761uBwvpqX9lGsPO6rQNPCNWhEy1V6ZqnINWb303gmPma/KMWKNSmIVuRVUQ+Leug+4DoYkVHJE=
X-Received: by 2002:a0c:f2cd:0:b0:6b4:f7bb:6d69 with SMTP id
 6a1803df08f44-6b56380939dmr109313566d6.32.1719486364821; Thu, 27 Jun 2024
 04:06:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240620175657.358273-1-piotr.wojtaszczyk@timesys.com>
 <20240620175657.358273-11-piotr.wojtaszczyk@timesys.com> <jgqhlnysuwajlfxjwetas53jzdk6nnmewead2xzyt3xngwpcvl@xbooed6cwlq4>
 <CAG+cZ04suU53wR5f0PhudgNmkxTRtwEXTS1cWH1o9_rTNM94Cg@mail.gmail.com> <73yvglxha45d5ft74m3y5fdmkgatm2yftvhza2msg4ombjz42f@wz43pubhbpdz>
In-Reply-To: <73yvglxha45d5ft74m3y5fdmkgatm2yftvhza2msg4ombjz42f@wz43pubhbpdz>
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Date: Thu, 27 Jun 2024 13:05:53 +0200
Message-ID: <CAG+cZ05uam3LkvLXG3xAc8FY_p6jx4p=zinNeWbkKUbcLxSTrg@mail.gmail.com>
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

On Tue, Jun 25, 2024 at 11:12=E2=80=AFPM Andi Shyti <andi.shyti@kernel.org>=
 wrote:
>
> Hi Piotr,
>
> On Fri, Jun 21, 2024 at 02:08:03PM GMT, Piotr Wojtaszczyk wrote:
> > On Fri, Jun 21, 2024 at 12:57=E2=80=AFAM Andi Shyti <andi.shyti@kernel.=
org> wrote:
> > > On Thu, Jun 20, 2024 at 07:56:41PM GMT, Piotr Wojtaszczyk wrote:
> > > > When del_timer_sync() is called in an interrupt context it throws a=
 warning
> > > > because of potential deadlock. Threaded irq handler fixes the poten=
tial
> > > > problem.
> > > >
> > > > Signed-off-by: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
> > >
> > > did you run into a lockdep splat?
> > >
> > > Anything against using del_timer(), instead? Have you tried?
> >
> > I didn't get a lockdep splat but console was flooded with warnings from
> > https://github.com/torvalds/linux/blob/v6.10-rc4/kernel/time/timer.c#L1=
655
> > In the linux kernel v5.15 I didn't see these warnings.
> >
> > I'm not a maintainer of the driver and I didn't do any research on
> > what kind of impact
> > would have using del_timer() instad. Maybe Vladimir Zapolskiy will know=
 that.
>
> Your patch is definitely correct, no doubt about that.
>
> And I don't have anything aginast changing irq handlers to
> threaded handlers. But I would be careful at doing that depending
> on the use of the controller and for accepting such change I
> would need an ack from someone who knows the device. Vladimir,
> perhaps?
>
> There are cases where using threaded handlers are not totally
> right, for example when the controller is used at early boot for
> power management handling. I don't think it's the case for this
> driver, but I can't be 100% sure.
>
> If you were able to see the flood of WARN_ON's, would be
> interesting to know how it behaves with del_timer(). Mind
> giving it a test?
>
> Thanks,
> Andi

I took some time to take a closer look at this and it turns out that the
timer is used only to exit from the wait_for_completion(), after each
del_timer_sync() there is a complete() call. So I will remove the timer
all together and replace wait_for_completion() with
wait_for_completion_timeout()


--=20
Piotr Wojtaszczyk
Timesys

