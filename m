Return-Path: <devicetree+bounces-106790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8614F98BBDE
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 14:13:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B84C21C21DF4
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 12:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A22FC1C1AD0;
	Tue,  1 Oct 2024 12:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RYT6RwR6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C8818C011
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 12:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727784814; cv=none; b=oDFoky8HI3wDL0LZ+T3j/Yvqhwxwqt7yVYhBjUhKaUjHm2K17TEIG/4q8rhZ8CMeyrm4HhDqaO/RPxlsrYHSIV+bYEjPF8d06WRzgQGRnurbNG+oTbl8zoZyMyl9L6mFEF33P7JjNEhnWVa/12E2WbMi3fCQe/Cn+Gtvyvj5b3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727784814; c=relaxed/simple;
	bh=GSmtCX/NXBnxPD6tdxViAr4FvJpalMjvGZn0b4FY+V4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LjCxRBAJMxDKNj9dabzBusfGZE4hCEt8cS7T1NpZf5jAAIiFrsRxunXzFumXhzMLqMvxc/PhZ0DAWTaG3WqxRkEnlCOQlXO5aRpSesr95lNU0LR3NBsI33ZaDODtbweWtML6lnDzhiqngBlqA2nGR772yHghEVfBa3IEyaniG3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RYT6RwR6; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5398e33155fso3383835e87.3
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 05:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727784811; x=1728389611; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GSmtCX/NXBnxPD6tdxViAr4FvJpalMjvGZn0b4FY+V4=;
        b=RYT6RwR6dr4iKtNAWSyi5sMu6LhtjN64USsF72jVnb4aAbixj/pZNMPIwLy+6v63on
         Fi54Qmug0gUVx4RC+CWpyPSsPcoGtaARRj8ma00BqLICQPs5blpiyN03NgKKEMiK5Qza
         fVycwZ7nIPYMbnFSqDF4CKrPmcSB75WI9bRo5dEih2P5nGMoF/wVZCkj4lHAGF6UpBC4
         sHcNn9X5lcoRiM7Wor1NkjcNDE58a4EifgkWSnmqGh3lv11Ss9Eh0+NtJqJE3btMlvJQ
         ny/fDNsjzzZjhAohNZQ1PFql3zrYzXlfHKfypsmx1KVaUcpo4GrCRXwZ1N5JQcgcnKkK
         B2Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727784811; x=1728389611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GSmtCX/NXBnxPD6tdxViAr4FvJpalMjvGZn0b4FY+V4=;
        b=XwXqW7Z0dJ3GCObZn9a6SnV3nym3D5rfpG4DP3WlZbYdCotCos7lU9Bv1sDW6DDHEy
         J0N3HwQ2UsUrWfblveU4roGiaGanBsrQ+HNwyoVhWDvvbqZ+KfiX4JxNEnXrh5PWzuyA
         nLQe77YnC5sszhbJ7dMGYqktG2tnxLEi62Ybs6YxstbBaztbbJJQVI5sM1PzymTj9Cpr
         kyFhvzYuP4SR4f5wqzzwF0FAg21gS2dL1a5CDZUhoavA3bWNOzrX3Hbfd6uOcCPSZAF5
         u83TGpfq8p86cI9Ipm5NvX8VC6XEfHLdWsSwDo+uQhADYzuYhC1vcFgE6AsvrhBb11al
         rqDw==
X-Forwarded-Encrypted: i=1; AJvYcCWbt90VtAD6Hi4PSX+GPUUtku324IC6/ZJXIG/dR6WM5Fh5rzKE2Fd5Sj7ZdeoKFb4kmTOewqej/ant@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe5/vWbz/Eyv+Exz/Sj8YVRqBVczSCp3+c4hRNjEpmk4aK+wlA
	wlyHnhzbGzBMp1V3wvpIgMdxQJFnX4PcyhHdEUmtKfL4SvDQS+d0+jyX+X/vOg91bH2pmX58V2Y
	xB412KJTDKLOTEBKZj7+vz3dN3oRWaBhtNiLoAA==
X-Google-Smtp-Source: AGHT+IEX5c6pNgEkIZ+KSeqJcmc88FrIwMBPRJFBiIDtvkFGTTvq4JIs8I5dD3c76xnQBRBnqXQWDaKFo+LINH3spi4=
X-Received: by 2002:a05:6512:334e:b0:539:8d46:4746 with SMTP id
 2adb3069b0e04-5398d4647aemr3244329e87.60.1727784810881; Tue, 01 Oct 2024
 05:13:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com>
In-Reply-To: <20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 1 Oct 2024 14:13:20 +0200
Message-ID: <CACRpkdavPAv2sPRREQhx_A7EtOj6Ld_n+NcO+vH0QCnfVedXKw@mail.gmail.com>
Subject: Re: [PATCH v3 0/8] pinctrl: Add T-Head TH1520 SoC pin controllers
To: Drew Fustini <dfustini@tenstorrent.com>
Cc: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>, linux-riscv@lists.infradead.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 30, 2024 at 9:51=E2=80=AFPM Drew Fustini <dfustini@tenstorrent.=
com> wrote:

> This adds a pin control driver created by Emil for the T-Head TH1520
> RISC-V SoC used on the Lichee Pi 4A and BeagleV Ahead boards and updates
> the device trees to make use of it.

Thanks Drew, v3 looks good. I've merged it to an immutable branch:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/lo=
g/?h=3Dib-thead-th1520

Then I merged that into my "devel" branch for v6.13.

You can merge the DTS/DTSI files through the SoC tree, FWIW:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

I think I'll make a stab at using guarded mutexes etc and see what
you think about it!

Yours,
Linus Walleij

