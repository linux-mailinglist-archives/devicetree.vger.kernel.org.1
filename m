Return-Path: <devicetree+bounces-236151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D83C40957
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 16:28:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 29F3B4F12A4
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 15:28:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D853332C317;
	Fri,  7 Nov 2025 15:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bpAAEzE6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2AD1E9B0D
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 15:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762529329; cv=none; b=grRcXi6KxTFzFKHNkIsehFxrUY8c/XpJ77yjf+ZNxuRTaY7DrugkqIzEhhMv27idK0GpwtXc8zFsAI8RqQC5WgfCdSw4eGKgTELEunXA6UpBTze/W21AeNCdgjYFm/Ut/klDaLaDwcGA0dGYzUk8TpFDsbP6N3jFTPE22q0KZD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762529329; c=relaxed/simple;
	bh=on+0lfNYd2qRQ5EohElifDfUVwjZgh8Fp9lemjJw8Q8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Fvs50QOmuqPeOO9coT4nTkRbTDCEzLzHT3dUHa8QP0uoBH70RBWtuLn9yQdO0+Y0q1krkE2z8NLvruGhXB8wWGPUBjzmIGGzNnm9Z3/l1t3/d7lk6IAWB4ea5GosgOq0NaePeXWWPAzXli1sg9ttowOpppHw1henFTFvOwlFMvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bpAAEzE6; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-64034284521so1473181a12.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 07:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762529326; x=1763134126; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=om+pxjglHnG3GE2SnITLVrnlYEBEuJnFX0jyMAWe+ik=;
        b=bpAAEzE6qugsHG/BSG5H8YDNfQdbVpYCURVVZFBpr0zX+VRrgykhf4a/mNpFwXdRKO
         YJh93b4TumbET357txnsS8CfJ0JjnbG3XpAaQiJ5FDjmS8WE/Z1IcK42FX1dPtwVpw3K
         g1vQrcNgge8sXiaYzION+suRV8WKwuWpkOwiH2FJ1P3FxyQ4zC7EAeN2zKgWj9hyOj0N
         UF0IXTL6UKB/JO3nQuN91wTsXXnwnrGQ/Er5WdXCXy/C3ZBuW69xeGvJz3NVyYQ+fRQ0
         LxFDU27vEbjDGgzK8RIJX14OPWEabCSlcWXvRlRdvhhrtyJBccJZLhBG+TSeCcXWj+vR
         NtXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762529326; x=1763134126;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=om+pxjglHnG3GE2SnITLVrnlYEBEuJnFX0jyMAWe+ik=;
        b=OuUEUQJuYz3vOJiWkwmh9VfpiF5n2ez3mr+Ovze0az2uKSd4oj3e1ImOHp1Lo7b0AU
         sU+2yl90cwKCigHHWcOtSWZh9aOk9MJZjf4+2r/No8hMX5Es/5QWAiEWJE5hSHJ9xJTx
         JIYSCR57jO1EG1EoZOELY6B8djJkk2czgPJWuoHPgSBT5aFclH9LChbupn7mY7qlStvQ
         ObdiL/yts1COJZhYMcTxShZDosI5I0pgtddGncNSHw8wSuwmRxB6yxyf9p+/4DdCC0ib
         0tXwDi8ng0HT/oly5T1wDvzfKPEheQfBHpSteh1/XbVnwnFOAn2oyS/PP4ueO7BOK8PF
         XmQw==
X-Forwarded-Encrypted: i=1; AJvYcCUXXLIDAUM3/EdEhLvLuC5WMFYFKphRVoHmBmUA7x7l6y7Yx47P8jd4JZ4iNOLvrazN/0HYX0LKZyb/@vger.kernel.org
X-Gm-Message-State: AOJu0YzceN7KKgVtVSjPoRPpzNwchAo+W645dp5TEzb+XV1mbz+BZ6Yf
	z5pPuRkN5i0YrC4E9FWs73yXFFwYn4pl+9yZGp8aYplVSbvcRua1Cvm93Ql476lvjYi/5D8X0rs
	71Rc/HnOnDOP13toRBP7YIEtoUFnGDb4=
X-Gm-Gg: ASbGncsXuC3LNr8V5/lsrlpAT+exPj0wWliHC9+7RMohnLmDpHGDGcqkZvKIGusQ/zl
	7HsPA5HXmB7mFhn6+tZ2s1SCNd4/L8P4UN+Fj4J313RnxY4enaWN3poyC8SpNXdalEz1X1ZeQTu
	vqEDFIhcsA//pXqbap3PA60aTKunXirM9F5uSChuHyjzNNpejTAV+NxTGxILKANPGLXzTnoYMlV
	ZaWn+4ybQME3zv6c/9bKw0nOU9vH5a1BLxv+huezdIClNja7Jmj/eEGwA79yA==
X-Google-Smtp-Source: AGHT+IHmZEpx6M0+J5OC7HbsnR5hvwcdGVfSYgbkWyKHi0+xhyzqEEx/b9s9Gbx2PtIhusPWTRG7qVzmkQemfsoLTks=
X-Received: by 2002:a17:907:7ba9:b0:b6d:a7ad:2fda with SMTP id
 a640c23a62f3a-b72c093316fmr378400366b.12.1762529326176; Fri, 07 Nov 2025
 07:28:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251106-ltm8054-driver-v3-0-fd1feae0f65a@bootlin.com>
 <20251106-ltm8054-driver-v3-5-fd1feae0f65a@bootlin.com> <aQzpvR-030zgA82E@smile.fi.intel.com>
 <13882660.uLZWGnKmhe@fw-rgant>
In-Reply-To: <13882660.uLZWGnKmhe@fw-rgant>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 7 Nov 2025 17:28:10 +0200
X-Gm-Features: AWmQ_bnZqZC5EGS_uMqpAyoFV3kaYI0hktuWm533W__Dt4Ccx-T9uGAY1_3i4NQ
Message-ID: <CAHp75VcxpoYOgMLOVZ6LvPNGrvws1vnL9gDPVuK=xJjLHsGJqw@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] regulator: ltm8054: Support output current limit control
To: Romain Gantois <romain.gantois@bootlin.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Hans de Goede <hansg@kernel.org>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-iio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 7, 2025 at 4:54=E2=80=AFPM Romain Gantois
<romain.gantois@bootlin.com> wrote:
> On Thursday, 6 November 2025 19:32:29 CET Andy Shevchenko wrote:
> > On Thu, Nov 06, 2025 at 03:11:50PM +0100, Romain Gantois wrote:

...

> > > +   ctl_dac =3D devm_iio_channel_get(&pdev->dev, "ctl");
> > > +   if (IS_ERR(ctl_dac)) {
> > >
> > > +           if (PTR_ERR(ctl_dac) =3D=3D -ENODEV)
> > > +                   return ERR_PTR(-EPROBE_DEFER);
> >
> > Hmm... Are you sure about this?
>
> The only case where I want to defer is if the IO channel hasn't been crea=
ted
> yet. From what I've read in iio_channel_get(), -ENODEV is returned specif=
ically
> in this case. For example in fwnode_iio_channel_get_by_name() you have:
>
> ```
> if (!IS_ERR(chan) || PTR_ERR(chan) !=3D -ENODEV)
>                 return chan;


Yes, but my point is that -ENODEV !=3D -EPROBE_DEFER.
The latter may create an unbound driver in some cases. This needs a
very good justification explaining the metamorphoses.

--=20
With Best Regards,
Andy Shevchenko

