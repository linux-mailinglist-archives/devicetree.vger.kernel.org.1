Return-Path: <devicetree+bounces-112909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4709A3D97
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 13:54:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71985284B2E
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 11:54:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17E4D8F6B;
	Fri, 18 Oct 2024 11:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="3Ui2cQSy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4019015C3
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 11:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729252455; cv=none; b=GTsiJOakhG48iHeXXHOC2GLN5uwYsmuIF5MYSCH/AmjZgGCpsQCPoxv69QMyLgF5liALxIsg0mDWJJ7Uu/mj7VQRxSjEzdXMvkURqvH5E/iPTqz5biff7xedAE1PbLL+aS4fF2QG45WG8QgHL5pHcrH0KlZ6Qa8q/ByBiFJPf/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729252455; c=relaxed/simple;
	bh=R+AOxf+aDYAfdzS/iwTw8wPE4Fu+7CXl+K2uObemX4s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R8ygLizxagSza/Kzkhi27sSn7avmMKu9vnU2kAldJXd9dzT/H3cHb4j+79drsAbxyTwIXp9n7KOwwkZhv0yv/hkjTGQkxrHDqGl5J1M0MBzkOE1LVCvnEvNB1rimH6FWa6xZgpFIPy77DOPyQLJQv1T5FmuKLt/Ii3Z2QEdP7eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=3Ui2cQSy; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539fbbadf83so2668156e87.0
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 04:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1729252451; x=1729857251; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R+AOxf+aDYAfdzS/iwTw8wPE4Fu+7CXl+K2uObemX4s=;
        b=3Ui2cQSyW9pIJd1XL5mgRFMPlRxQAIx3qK55HrIaDaJlrVd7kDCpS7Igy3slfPKGtj
         hMfClJkDys8JjplhGTUMEEOqxqB5DjVG9wo2GgIA/VQ2qNf9RawYCdJYMC5aoWu6ZGEv
         2nLY2ufz8BrcMVQsNuXQLZOo2jQ4vCGMwljyqvEatbCvuv2GhP62t7qiFgGvEg88UrTV
         jYw4FBX0lYAuk7ysLspvRuJkBSO+B8zLmOl7gjAYMQCLzy8/KietPKzRH8SFkGkjaTs0
         riyKE6Jrbr1yu8RMjjDX8ujNM55LAM6pGWCEekhHi53hUUvC4BGreYUOQrn0KPVgSWsH
         D6Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729252451; x=1729857251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R+AOxf+aDYAfdzS/iwTw8wPE4Fu+7CXl+K2uObemX4s=;
        b=i2JQtRK4vyohyJAkChq3PaKwk0Y5rTs8Cqw5WcAAiuNE/vGX1R9Qhnj6LWSpHk4Vb9
         ixquHonodQiaABj5aeamOOm8zv76yv0W5gjz8+o9Rae/MtrhvYjO5DJoaQQamhdILqVH
         Kgg8n+afkeIUD+IsCEZ7ZMmQKi1JA9SrU93ip/jkEYY5EnyxnkDom95cLJeEq7oO/Kt4
         qkMVBjwkoq1/Gbz+08abwI32kTVv5z8c17p8slcriBVIovSQWNjLjv2yP3tJwmHISwVB
         wT/SZf43nnH3GGoczhZepTsouwP4e6RV7Tg9DMAUsZ33vkpYDazwDgC14kwkIlz9MTOH
         N2CQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlx1o4GCY+rI+evDcMuCEl4RMXI1EXLTcKCLQ1yZp660PUGUZYmTCwgGKUlisXveRTWx8AwhGrsLIw@vger.kernel.org
X-Gm-Message-State: AOJu0YwusZZThnLdg12VPplvilXhDoV+ezh8/Qsn+L5ZQUUjP7jus6YW
	6xx7Ii8gbYiY01X8oaBN8QmoN18B0GMnTgyEOeCHBYi+Gjqj0OklHA3fV2BqxcRs7gWw5ve9jsi
	M7flvqtrAYsdU1BvGZZArsZI1YSFDVmRjmbeD+g==
X-Google-Smtp-Source: AGHT+IGUQgH2LgImLhYYgCYRyZ1eHg5DziD1U825uTMvdAnFcqxTubAakIf4JTFLzwcMTyXcbSOuzLUP70wTACWniRQ=
X-Received: by 2002:a05:6512:1244:b0:539:e9f8:d45d with SMTP id
 2adb3069b0e04-53a154f9980mr1277516e87.52.1729252451143; Fri, 18 Oct 2024
 04:54:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241017-gpio-ngpios-v2-0-cecfdb38d40e@linaro.org>
 <ZxJGxXNl29i8d_fA@black.fi.intel.com> <CACRpkdafFs-p6ikk7cfSWc6=C=8J6Gh+oe4TagAJh0EypWg3Og@mail.gmail.com>
In-Reply-To: <CACRpkdafFs-p6ikk7cfSWc6=C=8J6Gh+oe4TagAJh0EypWg3Og@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 18 Oct 2024 13:53:59 +0200
Message-ID: <CAMRc=MdA+=ejKx6SR+-_30kCgeFX3fUFReLR7+tOT+8+O9_gFA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] gpio: mmio: Support ngpios property
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 18, 2024 at 1:49=E2=80=AFPM Linus Walleij <linus.walleij@linaro=
.org> wrote:
>
> Oh well spotted! I completely missed the fact that we already
> added ngpios parsing elsewhere in the driver.
>
> Bartosz, can you please drop patch 2/2?
>
> Patch 1/2 is needed however: it is just documenting the behaviour
> that is already implemented.
>

Done.

Bart

