Return-Path: <devicetree+bounces-182202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E63ACAC5C
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 12:20:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 715123BE486
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 10:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8DB01F4176;
	Mon,  2 Jun 2025 10:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="glJd32y7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7591DE8B5
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 10:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748859605; cv=none; b=sUjHqQfS+FS9tlUcCMM5LiizeC4s0/a3mVwkxXI1UHOrFUvbxKqPdvNkOEnnPcu/nyUDSqYAtrAmR5z27V0xB31dPIyylpR8M9g1eoQrkNit+GnMi/CfsmWalwVYzw0Bb6h4L/YxRxdfJuJZrKXCWlqeZWieOhg9te5H2MVhdkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748859605; c=relaxed/simple;
	bh=NIlPs+ESOqsvDgZLDklVbzL9Y+PUvN6JpIx6y7pwPq4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sAeOoOiLnYnkkoL8uHDMH66/hUfvNJyF1SPGjjKbUwY32f2lC/x4ppMxHob1OSasoQ9dFfI6dWSvF5E7Pt0XAWarrfxoeZz0Ya/mSd55gxrY1lkxI+D9NbHipz3oDxZhlruRj3J1rK9pyoc1Mcr3mx36Udd7KKPnY+kdz3MG2ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=glJd32y7; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-55324587a53so5974387e87.0
        for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 03:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1748859602; x=1749464402; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NIlPs+ESOqsvDgZLDklVbzL9Y+PUvN6JpIx6y7pwPq4=;
        b=glJd32y7JS6LNeMiz8W2iiR+4lp8rqB4HaSkUA9fbw3QA+94EYGJpBuwrGF0CdS8HK
         C/MXBHUP8tLJVidF521G6My2nYMPEOjOhwXv7JbBAO/JCYBEM/7+0DGdCxLqDYHCAdEt
         znyJWOGrKkyNnlBk4yksb2+cgm9MeTXuOQtaw8jckEUqTchTb8G7QIPfjVGYXsACyuxu
         s2bbpXAgLNnkDiObjQu+71KYhRwTybu4qtO4aJ2Qiv3X1371JOjBrrBG+NocR+0aiTy/
         zm6YQLKx/MTcj9DgXgY4my+rHnUVCiklwHyZuO92sjW2FijdR+IC3nNutUMCrZN1Nerh
         J3dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748859602; x=1749464402;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NIlPs+ESOqsvDgZLDklVbzL9Y+PUvN6JpIx6y7pwPq4=;
        b=qCuHY0FCPFg2D80lK/zCx/Ub376A+16D/Eh0dPTM74mOxcS8Hql7K2upvNhI7Ylhf9
         5GOMK2q2BJ6sYDbHdTUTetop+UdknmUyMdrzKO+UrbCcewSTLDobKd0FterFdjg04TjD
         3rRFh11Yu3aOKX7PXqTzzp0TGqyqE00039uKBFhnAd6x80j5Iipb0dUVoKgg2znG60gD
         uWIKMF56Q1ymUCaOmZkPUvQkKLXYfYo1cPJTs+5/KIfDQsxHFVVvf770ZwiTsbapjtvK
         /KiIWgj/fDrDMpy6iqcLe/mEYmqdgoed/JDCj2PYouzsL+YAxYtspcffzH+rlqTBL2xi
         JE4A==
X-Forwarded-Encrypted: i=1; AJvYcCUTa9qAqL7MosgvwFESTlV9Ry/i7+XqZJO0zodxWHJgd7JeGVW9/s+FCr4Xh0sJ22unzR/OkGLRVxom@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6eKahoOF7RJ0BBTf16qggIMEYOZ9LUnqaKmQ8PANnbKqr3SBP
	Y5eFrghz2y57O6J9UOEZkImaohEsAVLpNbA9ihQsl7QqLYH/RLhaHmOnHFUEVPYTs2E7w+AisAA
	wJy7pgz4vYfB9W+H26xSItzJoU2HEd7ZFmzhAz9dguA==
X-Gm-Gg: ASbGnctPQh50zIL8XhtdL0r5jGBkqmuwQS4mkbFsFWaur4VQi4GzAtF8HMuTk1v8LNa
	yXXdOtak58P07HDIIRX+uavRW4N6puCNWpcVfg/p5646OgCvl7Tb4nr1DosdbNK5j3EDko/sIZR
	NbSBEXd15GNTAI5h+uTThuPjS49d0q7qnj1nsgU93S5BJen4Xl4DjIUtuzjP/flnbe
X-Google-Smtp-Source: AGHT+IGAtxy6GkCqOPbxv+uZc6VGUawOyddEURdLOtYulQAX/H29kqSWQGJzmIVuwy/b0vz39hl6HX77etZ58j+aC2U=
X-Received: by 2002:a05:6512:15a7:b0:553:278e:e64b with SMTP id
 2adb3069b0e04-55335b0aa20mr4535065e87.6.1748859602083; Mon, 02 Jun 2025
 03:20:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250530-mdb-max7360-support-v10-0-ce3b9e60a588@bootlin.com> <20250530-mdb-max7360-support-v10-6-ce3b9e60a588@bootlin.com>
In-Reply-To: <20250530-mdb-max7360-support-v10-6-ce3b9e60a588@bootlin.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 2 Jun 2025 12:19:51 +0200
X-Gm-Features: AX0GCFugojk72c7cm4zkMsB7ZrEhUkwTFOc5dkzcwC-isnDlIuPSAwn4kkDrnwU
Message-ID: <CAMRc=MfRZQE3dn38oS5Yteb19HbEhmfwyc+oDvDeP_fMg+ZpTQ@mail.gmail.com>
Subject: Re: [PATCH v10 06/11] gpio: regmap: Allow to allocate regmap-irq device
To: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kamel Bouhara <kamel.bouhara@bootlin.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Michael Walle <mwalle@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-pwm@vger.kernel.org, andriy.shevchenko@intel.com, 
	=?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 30, 2025 at 12:00=E2=80=AFPM Mathieu Dubois-Briand
<mathieu.dubois-briand@bootlin.com> wrote:
>
> GPIO controller often have support for IRQ: allow to easily allocate
> both gpio-regmap and regmap-irq in one operation.
>
> Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
> ---

Looks good now, thanks for addressing the devres issue.

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

