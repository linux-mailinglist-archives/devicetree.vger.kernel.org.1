Return-Path: <devicetree+bounces-220081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 334FEB91C23
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 16:40:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E01B51894F2F
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 14:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4307627B326;
	Mon, 22 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="HpZE7SAf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7364827F00F
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 14:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758551993; cv=none; b=Z47aEb+466815hCq3bx5J3XsV3xTyjdAChyCf3lwWDSaS7Rw0+pObowvEVKikzMsXUKeOBeF/4R6e+8W0C/EU/NJ3un7+zni5cf0B4N20qXu9nv5ZYU3nN7Bfy20poN1siqjucscCQD2JAhJuhL6OrAvQCrOpal04f2pJHSvThE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758551993; c=relaxed/simple;
	bh=1qb/PhPcrTa7xKmIVwUMrRZk69KrdxahU7Zve9sj4Kk=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t5lQiXpF4BBdZ4SgFBvi7vr2dKCUFrwKvOw7g+5NrdX1vPjgKsv9xfiXUoGhR9jvqdR/uyKJ5zR0amdJ6d8k/5bSIRar4KrRsgwVfhiAUJBGFWSlQtFXQs7m35xhVV0MUE71YFtwb63m/hsKCoJ58Qu/OftyMSCMnpDpDo4r0DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=HpZE7SAf; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-36bf096b092so9080931fa.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 07:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1758551989; x=1759156789; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=gmPELkULJYImKCx1BhsM+Vu7fjNRwtbTTMHczanPvlU=;
        b=HpZE7SAfU3wPHIrvIh4TEl6K+nqVKQw0UmXKD8ugeOBNC1OKM0bTnk7SV+pFNpSy3W
         iuCRkM8iLwAjnsXZVkIRVUbuq10XWTKe7+i+2KCHAAWpSZoQzcD5BNTA2bumB5K+jSvT
         6+NJ4FhO1NvgbqyRzc6w/ZuVSO21fVu0aczNv1v9PmqKZPK+xycv4gTc005l9jJXEpUs
         5Kq6EWFAaYs4EYu5x2TpVTK996jdK2C/+Akvb3YBdrcoJTZYKx9ojEDxxcFaP5oPbf8a
         s+4dg41LqmJR8ftDJLWCkaSZf4e5LO5hDpXfh+tHmZKEN2SvJLkNYMARX75r0KFxf+xj
         Litw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758551989; x=1759156789;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gmPELkULJYImKCx1BhsM+Vu7fjNRwtbTTMHczanPvlU=;
        b=XWwCowXjNRGaQalMqBNpIJUK2rh5M0rENoiAPkuKSNYzCLTfGvMHr6Oti7KIXe6owf
         84jIj5/D6HO6WZzWFMN4h1wGjITcBKtCl//XBI4Ih/v/KCc1+LnVEpCuwNGZ/fVyDkir
         MNRqaKw770Ty8SkInRmREcqGmeMyeFftSfzgjXXhV0KJmGiAQzsXXCuPnOyDBfjKMDVB
         5FfC93vX5s6a8kRGESarhECS35RGxipPO6ftnnZwg6QofIf4EYaRatyYbGMl/+uwswSz
         P1Obeh83KqkNwV7vS3f14aR++AhzGF5OUcivoU/NUklk01up9CqHq6O5xBtfPz0W0Bw1
         nVqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdPUft6pqEmiNWDvMkgmUUwLnNbAeMagSENVZsEE34larLdJOM/tIlHXU6krFOnRNgo8NsPUhXcKfu@vger.kernel.org
X-Gm-Message-State: AOJu0YztTh/2kFW8+pj4Gysmul9LWEXMaVKPY1KfpLPahbvBJMnPT917
	WBKT+sQZ8HHnjJg6A/d7mV10CsWyx8gEIjd3Q838y/QVVm4d8226Kv5LOAstFsiYo1HJiMg7FLr
	AC/yCdLNnqFJUl9k3SbvnY/aAM6N1C+q5dqyM3fBJsw==
X-Gm-Gg: ASbGnctX/46/3m9JPC1CDU58tsSow46C00nMrF5uWQeXhIQ4dQkw1sWQll8Ra3CFL8M
	zEuo/nh76H1w/dWU21rz7zPk7A1jDETvRhCwqH2Qd0zPDU/QQPm/QYn+N0Yez+tv6WfialiOJBO
	u3GjeHL89n0x+YGO16B0YA3UYnpZt+WkzuWIuvyUv8g2pNWE0YMJPe/bZMWkYJB+o8yKcktjxqV
	d5ylG9Kjlyl4HJyfrQPyap5G4Dt5+jsJwT2Bg==
X-Google-Smtp-Source: AGHT+IExZvu8LaOkD+FFW6unD2a0DePvm8B7wQ5voZaVzHneD76y1XY5ORMFjW0HfESuNlENS6VkMBHIa4vtWl8+mWo=
X-Received: by 2002:a2e:a985:0:b0:36a:5be2:610c with SMTP id
 38308e7fff4ca-36a5be26b03mr17593061fa.42.1758551989460; Mon, 22 Sep 2025
 07:39:49 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Sep 2025 07:39:48 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Sep 2025 07:39:48 -0700
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <20250922142427.3310221-9-ioana.ciornei@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250922142427.3310221-1-ioana.ciornei@nxp.com> <20250922142427.3310221-9-ioana.ciornei@nxp.com>
Date: Mon, 22 Sep 2025 07:39:48 -0700
X-Gm-Features: AS18NWCusPQ_ZjuN8MoZetaRUxQ4865VBVL6jpxaDsdoZyr1QW7ZOWPBnamzLQk
Message-ID: <CAMRc=Mf0i+_1VKdumcHyK_vBU_dK5CZWhEPhUwsFX6dRyJ=sjg@mail.gmail.com>
Subject: Re: [PATCH v5 08/12] gpio: add QIXIS FPGA GPIO controller
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Shawn Guo <shawnguo@kernel.org>, Michael Walle <mwalle@kernel.org>, Lee Jones <lee@kernel.org>, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 22 Sep 2025 16:24:23 +0200, Ioana Ciornei <ioana.ciornei@nxp.com> said:
> Add support for the GPIO controller found on some QIXIS FPGAs in
> Layerscape boards such as LX2160ARDB and LS1046AQDS. This driver is
> using gpio-regmap.
>
> A GPIO controller has a maximum of 8 lines (all found in the same
> register). Even within the same controller, the GPIO lines' direction is
> fixed, which mean that both input and output lines are found in the same
> register. This is why the driver also passed to gpio-regmap the newly
> added .fixed_direction_output bitmap to represent the true direction of
> the lines.
>
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
> Changes in v2:
> - Use the newly added .fixed_direction_output bitmap representing
>   the fixed direction of the GPIO lines.
> Changes in v3:
> - Remove 'drivers' from the commit title.
> - Remove the qixis_cpld_gpio_type enum since its not needed.
> - Remove the NULL check for device_get_match_data().
> - Use a bitmap declared on the stack as the config field passed to
>   gpio-regmap.
> Changes in v4:
> - none
> Changes in v5:
> - none
>

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

