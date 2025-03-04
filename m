Return-Path: <devicetree+bounces-153736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E363CA4DA8E
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:32:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F391A1887A9C
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75A341FF1BF;
	Tue,  4 Mar 2025 10:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="2/D30y/C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DC251FECBA
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 10:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741084040; cv=none; b=YCyKM/gvzNkdvTd8g0hmsq7i+mP6cPmkNIgtf3yft8zaTB5gSeAsljn8NfYPZ8o6c+aYwqBwI0R3/cRPbR6f2x+0l8reKSeDy59OivVMmCgib0nM0p1fr1UoSeVd3wl63/wVjBqFhyCe/T5kkN4PRskyqdFVwbX18/HehhYAo1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741084040; c=relaxed/simple;
	bh=VaeM4EBLjlRLaeRZ7jK8eXptVBhZ5/jQrDVTP9sdaTM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GHYXKKP+sRdu+3iuvRcQuX1JOYyr57puRIs3nAD1pEE+ktaWO3RfUxf9dug5AmooLWFBZF8bBtNbcNT7wk0xoRXeF8vxkB/wP/wIFK8E4NJGrD9dbCclolu8Oi/wZVgJ71sLdDrTb4IXOeuXFrn/SLR6Gxyug6/QKa973S+G/ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=2/D30y/C; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-307d1ab59c6so57635811fa.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 02:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1741084036; x=1741688836; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VaeM4EBLjlRLaeRZ7jK8eXptVBhZ5/jQrDVTP9sdaTM=;
        b=2/D30y/Cb9ppddS1CMkT6bUNXgDU6om27AwRzXBrxVgfX9YW88ST5iooBBucXWMhAv
         gE5Q0fQ1Lgsyoff6XuoqgAPzeJZYRf4SzTuX0XE0nC6PQQ1RfDe6+xkyPcoI95YlNs+C
         rJ8Z3dWRI7LMXvsB0EJQcJCtI6fLoLqtFM+F1seNGnV2h+JLkzTypPy4TXuSOy5QzkDv
         kwAL0b1rKLqgQfA66ru7t9WFiFe1CQWK/X5a4j+0tNbUNuskmxoVZz7vYuqzfraPZSS8
         9n0Yv6QRr3u8z3ZBwj75pq32mvghXGFIoxkavt7cu6a9OXYjMi5vSqARZyCZ7v7ayFRd
         XKbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741084036; x=1741688836;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VaeM4EBLjlRLaeRZ7jK8eXptVBhZ5/jQrDVTP9sdaTM=;
        b=aL0zQnzJJqDIUhF4+mV7vS/8ppsbyaDGSxmWXNsXu/o+vjS3s3J7skaALJ2OmkaTkr
         kzV9DNL+/bzNrZRzVoodPv2Sm+lPiMk9tcBaRyD2e9V6PJDWKY77C+MXChPNck4tZxcd
         G/qSm90TfZGsgqNuT5J6HHpm15brEzT9KiQ1kuciLNOEREKELyu00BbjgNF4x9eAUtjm
         W37QOeG0Km5q+01JQpLbPEjoLkupXo4W7cluH1Y4XlHZgIxXEN+mlvE64k4iylrq2ApF
         2f8SnrEdhieSW+Y+/3j4YttOcFKh0q+yd4vZIcDwxoL4PCIONCz5DhHAyxZ0FnSlDOFw
         DE8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXMGCtmx/Ecu8v9CrqvYTe9kcsA3hIEpYIFUxBjLltLrGNMr0ep08+KRiDPvQeiHgSExjjr80LBXClB@vger.kernel.org
X-Gm-Message-State: AOJu0YwtK2IVSSb97hplMTpxEnLr4PG5gWLzds3CIZkJ+NYxY32VIYTO
	9a+vzFD1Y+cEn0VC+J3ymZg1FzQOociewpXezmR5flLpJlpdHve83WQteG5XC0FC67UTJ4dkgRF
	1Dtuo22m03gggNcylHnwFgBFxSRdN5nCeItuo7Q==
X-Gm-Gg: ASbGncuxGCm3lrcy/4lV3PVzOIdiv0+HRqz/5fTAGNTnagrMmEyM1c1Cc4/N22NAY+I
	1j07qdSKWgpiRYKPcVcPPiGTuSYi3PxN4ruJSKnLqWrz/c5H9XYs3ohZboohmTNWkuEd0zgb2LX
	5+0RNmu1P8gjzo1s4+L76p2KMy13kG1/tpzqzSsruGdP7VnWoR9s+lWeyoJA==
X-Google-Smtp-Source: AGHT+IFJ0dfu9zZ39Ud4rjP1r2PPHDm2YkIXfMsFqKRfcRODX5Mj23DgauvJAFjRMJB4X74hHXOLMCsdyMVea/yecJg=
X-Received: by 2002:a2e:a7ca:0:b0:30b:ca48:1095 with SMTP id
 38308e7fff4ca-30bca48154bmr9735351fa.7.1741084036451; Tue, 04 Mar 2025
 02:27:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250225-gpio-ranges-fourcell-v3-0-860382ba4713@linaro.org> <CACRpkdYfcf0toAcU5OEKG8paOv+x4KXSNMEyVoyULpBONZq=EA@mail.gmail.com>
In-Reply-To: <CACRpkdYfcf0toAcU5OEKG8paOv+x4KXSNMEyVoyULpBONZq=EA@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 4 Mar 2025 11:27:04 +0100
X-Gm-Features: AQ5f1Jr8qZEBdDQUIP2Mrz_5IoFFTxHRFJuC9PDdwCqsWXm8NSVEvmM91MKiO-8
Message-ID: <CAMRc=MftanJuksgUG-BTYSzMDcrejutYcw6E_d68XO3dZGSXbQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] gpiolib: of: Handle threecell gpios
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Yixun Lan <dlan@gentoo.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, Alex Elder <elder@riscstar.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 4, 2025 at 8:44=E2=80=AFAM Linus Walleij <linus.walleij@linaro.=
org> wrote:
>
> Bartosz,
>
> On Tue, Feb 25, 2025 at 8:40=E2=80=AFPM Linus Walleij <linus.walleij@lina=
ro.org> wrote:
> >
> > This adds some code in the gpiolib OF core to deal with
> > several gpio chip instances per OF node.
> >
> > The change was prompted by the need of the Spacemit GPIO
> > controller.
> >
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>
> Maybe we can merge this threecell handling code so that part
> is set while Yixun is working on the irqdomain translation, I
> think this could need some rotation in linux-next in the meantime.
>
> Then the threecell irqdomain translation and spacemit driver
> can slot in right on top.
>

Sure, I had it in my queue. I'll apply it now.

Bart

