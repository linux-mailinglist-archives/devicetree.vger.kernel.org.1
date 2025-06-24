Return-Path: <devicetree+bounces-189099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 95305AE69B1
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 16:54:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B29F94C3347
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 14:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 647272DECD8;
	Tue, 24 Jun 2025 14:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="dvng8qUo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24392DECAD
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 14:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750776057; cv=none; b=HyrM8GvlUZqT5h01ItHWpcxQcffSISWqG/th04+rJAfayRs0klpap4JZw3x4YdgDhFi9KFz+VgORKNsSKhjv1Zj97/RArGDPdsv+Nq/O7VgrDj6TU2CEm4wsrnzSBf4zUUWOJfJqg1yhklcVpRl5V7Rih3zPzGReGPngnKB24do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750776057; c=relaxed/simple;
	bh=EzNCs9Ria+/nsHScn6KKXudzA13G16dAU3b2TbhXQXY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bClw2Lz4LV6v6u3XTzseVAG4VZ6O7iLc5IjOHvoQ8S+SxRWraIGU+DcNM4E6vmFOfNs6XxhNGU2Q22QJaGx1ZdjbMlptXBuljuxSisWImMzps76xjjOxEGon5syG6OsZbRTM7SLDccfXt8e8GN0Jubjgti8JxoilVb7J/JK6HPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=dvng8qUo; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-553bcba4ff8so5560648e87.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750776054; x=1751380854; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EzNCs9Ria+/nsHScn6KKXudzA13G16dAU3b2TbhXQXY=;
        b=dvng8qUodpYwB9Rkao4BI7wCKrDuFIdghJQY4ZB/h0bA7MYDdExo9ZRw4bWycAbixC
         UcJG0Zgg7gGQJTTRz58PGLzshfysFnnpoDoO/U0Z48TQxCeKNtp2x1eaxltD5Zo0nary
         FyEhfNXkmjAjKQQ041WytH0ukSBdoS20QqlXlkzDxhoYNuZQvE88yXUZk/NIVp10BDvp
         qHGorhVQjttrFD3ddQMpgmymL6UX7S70XhI52g+mGw3ellr3f7n/43ZnwJPWiqxywJex
         DmYjVpoK86fZYuwRfs83wLa/RfnTeBLqQR37X6RQIoNg/CnZ037lZAk9JQUehLi8KIl2
         dFEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750776054; x=1751380854;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EzNCs9Ria+/nsHScn6KKXudzA13G16dAU3b2TbhXQXY=;
        b=hHVMhpXQTUoqdolwdk9eGPzlQh3+Fo5FLD7ygUnj/BlSdGcHT1WIVwFUlRixCjmGYb
         NSAPloZfDXc1dx9rW7j29J/abgaVD3HwbZcDaz5wtwfxM0//hKWgUu8CNfZFOE5wZAyJ
         mVmVi+N3GD9ZWKht57FHs3oHrvsDCgpJXFnpfQjoO9Sl5tIxNuW3aq/fYs84SEu97LVp
         nPVK2/v56mW91SeG9eGVrDejG7TNSxdn/37S3PYV61Es1Na8n2geHS7Z347VibOdbi6F
         pteVgnbsE9/O0A3t0o5240d4Ll2TfQoyQILUPjtB1ouIE71SA72FSSU10D68YfAmDnX/
         snpA==
X-Forwarded-Encrypted: i=1; AJvYcCWp7b2GbtVLcAKyR9Df73I9b8IF2yhPlaXAM+RYsTlc+j/g7EjFd8mgbd/zx2V5/OUfjSHnKzRdu0mJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxNZzC7nKdD8DK+gURx/K5n0EXnt0ow5N2q0rHaUAcKYmSdw0Xm
	V8xVGBLuI1z29P7Z+spBBYeaULgK9GKVylB/rkBBsMZ5BdQQqZaeZ9vx+OOr0cp0yT1u4B1rLWI
	M7Lt9bSfpnXqSdFdF6xLOMw39J4BxMseJ8tidl+P7AQ==
X-Gm-Gg: ASbGncvrTVXQfNXU0IWD+z4PwQ4lBpD0ZEwjg6Nfh1JqPhPbMhuJcKU/6SqxTG6BiZv
	85ikprCC8hueq7VDHFCZ41xYOCVzZuCCssR0XmhOqAw38wGpLqgqwU56YMB/3gWqLnb+MNWFQpd
	2HtBE8fS0dEfrSl3uAq44URdqQSFLj5l0KwuEIrb/Z3hS9V7N9RAHaR/mI+ocozOHmEi4V+Ygdg
	fM=
X-Google-Smtp-Source: AGHT+IHoYTMP7f+GMTw3uTP6k4I0Bn231yrpp+uoyy9GCq8Fgqpn1kY4nGbARRHfnOknqCIYL6cW4GTWqP9E24930M8=
X-Received: by 2002:a05:6512:6ca:b0:553:3621:efee with SMTP id
 2adb3069b0e04-553e3d07037mr4828362e87.50.1750776053838; Tue, 24 Jun 2025
 07:40:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250624141013.81358-1-brgl@bgdev.pl>
In-Reply-To: <20250624141013.81358-1-brgl@bgdev.pl>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 24 Jun 2025 16:40:43 +0200
X-Gm-Features: AX0GCFtRDOKAyexKw3msruWQ3iVjYn3wJRU2OMc42QM_NdUIN3Q2ZlDVDbMilcc
Message-ID: <CAMRc=MeKfWsf8T1tJLdj=+7aq0zGpQ07pHd2Mz-Y=Bwae0sAbw@mail.gmail.com>
Subject: Re: [GIT PULL] Immutable tag between the pwrseq, drm and pmdomain
 trees for v6.17-rc1
To: Ulf Hansson <ulf.hansson@linaro.org>, Michal Wilczynski <m.wilczynski@samsung.com>, 
	Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 24, 2025 at 4:10=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> Here's an immutable tag containing the thead 1520 power sequencing driver
> for the drm and pmdomain trees to pull from.
>
> Best Regards,
> Bartosz Golaszewski

Just an FYI - there don't seem to be any actual build-time
dependencies between this driver and the rest of the code that uses it
(thanks to the aux bus usage etc.) so Michal, Ulf et al: you can
probably skip the pull if you can rely on this being available in
linux-next for run-time testing.

Bartosz

