Return-Path: <devicetree+bounces-168198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC58A91C91
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 14:41:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F7C2189DE04
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 12:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7DE24339C;
	Thu, 17 Apr 2025 12:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="g42nueKz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC37241678
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 12:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744893711; cv=none; b=LsQoV9bX3MUfuA79ob4+dcOyEWjgOdxNLh30GSwGeQnjgLHED8z5zxkqhsgHdTessWzedl36Tu1ATDW6SbgQbkQSKeGvV4QuWpivxASvhbgE9wCSuH6TOTghwT5437GA+aAkigYA2gOUiBbaCIHEti/s+TBMNPBs88vySynYpoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744893711; c=relaxed/simple;
	bh=nQIIrU067YTPjOc8LmZh4/vPjF2wg8asBmSLf3GZb2Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kvee42ma+MzCZxI/qYnl1MJ0lSfnusSPfo1AbhY7VloeKgwlPhVoP6sQqXwW5q2qyUhdBJmja/52o1Bqa3ckhIiW0LRosH1M/OnhYPWOjXzOrnSWDti4CwUGQyLZGfexeRcaoUZ/QVj4z+6mQiRFL+fZ0csARGBMVqnQ1kJQzsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=g42nueKz; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54298ec925bso208069e87.3
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 05:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1744893708; x=1745498508; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lZ5lyKYfN+K0uYV9se5bx7j4N0g/Y1mbf+XUFGCcm+I=;
        b=g42nueKzZ04eVy6vvZmlMsoemoK8Hj/WzbiclabKX+DVq23/NEUMdXtZ9Td/5lkqy8
         RSA+kXAClrcSFInJCXyLPz44r8/WmmaW5eT0MU3682gv2zhITYNPgmkSwnC2GDQ/QCWf
         lf/EJyozmkFYDa0gyInvRi7wSzVHXll+UUOWKO+QZ1nl4vtFLfwm9b4/CCpMP+wvUfJ5
         qtupkr6jGWpGDBePjwPsKOL5NzXrbgUeQYgZUiylvrtN9MS/0oB7UxP/2FqYrhSZuI8I
         Yeo6tWuzs0nne1XOHSBEqFQpjthZlh7ZLPfKOs+qVaVxfW2LsbLnV1qUR/zdk5mrBNHG
         6VrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744893708; x=1745498508;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lZ5lyKYfN+K0uYV9se5bx7j4N0g/Y1mbf+XUFGCcm+I=;
        b=LHp86bi7nHK0HlTnwFiro7fgWRvfKSjrdeK0z+UdzJC8wvkAFJzLxL/wpOBNeKHd2o
         ACVaJJhvyptMWQ5uSCqx6K1g1HtymHffotpkcVgOozu3T/wB0LS2j0hWrSkLHxy2K1by
         SfSh+U5WMxaPne78vlURyhcsY76axRDfYZmscJqdDg4q0cde8AP/6sHfcUGuFCatOBc0
         oHjedRjsJEpXc6g3F91vt6Q5hHV0uY2Y0TwCrUhNBSBraQO/cR3jyFhc0JEMo+6FpBI2
         bhRsw6mi9wSir3s4t36xq2ZvCsixf9s/8DR3TckwY3RMDPnNeXlF2maSI3xSZ6MN90eK
         TKuA==
X-Forwarded-Encrypted: i=1; AJvYcCVts66hVihfY/1g4XkA7HoNQ4Zc4HGxUVvfwNUaEksWCT2jiVXESwH5wIoH0sS6VYR6k9M8K73mOaqb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywcn9ujtCo1eCND6oaiMqfMZ2A3dlgRF8R4PMynb6Fv2HAknlWL
	ApsdUXe5V4qGpXZD96JXtOptaZ5FlcYdoihTW07xaRxPCciXh1RgCZ/pUpKs7/3GQ2KSdBdHrlo
	8lzFRBlRRqYwQTiFH2J/hl4sqhs2IaohHMGzdjA==
X-Gm-Gg: ASbGncuA+dwbMx5kcX3aeBl4yYpiOzeqwYunLwSbByNEVIhuHKlHI9lPKMetPI/Pg5K
	ZsR6AJspKl6dHqJBKv9+9Q5VmnmWzWokRcb9kwdToLXQqKk78ah1sTOMSop425bRVlZRBWwVyjQ
	QOaDwsvDOaXXbTXoDE+WKJ6puDXGm9QIl2WmmsnkNAU8z79fnrYiFD1ws=
X-Google-Smtp-Source: AGHT+IGCeVLIonXAZLoZuX26dLN3o/5NzBTerYwwXcLsLxVnsPGKrq48ijHC2fwB40UH+JZf3EjGuDJ2/FAZWXTNCFQ=
X-Received: by 2002:a05:6512:3d0d:b0:545:1082:91a1 with SMTP id
 2adb3069b0e04-54d64a7b6f0mr1692690e87.7.1744893707675; Thu, 17 Apr 2025
 05:41:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250409-mdb-max7360-support-v6-0-7a2535876e39@bootlin.com> <20250409-mdb-max7360-support-v6-9-7a2535876e39@bootlin.com>
In-Reply-To: <20250409-mdb-max7360-support-v6-9-7a2535876e39@bootlin.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 17 Apr 2025 14:41:36 +0200
X-Gm-Features: ATxdqUHVnRgKXXdU0felXL5SR5G-r5Je-4YU4gveufkl7eBQ6Hnf24ePYuscRak
Message-ID: <CAMRc=MdKswkm2jzok6Uw3cG6uDkVq+CMXbJgP3fRY+jHo+rPkQ@mail.gmail.com>
Subject: Re: [PATCH v6 09/12] gpio: max7360: Add MAX7360 gpio support
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

On Wed, Apr 9, 2025 at 4:56=E2=80=AFPM Mathieu Dubois-Briand
<mathieu.dubois-briand@bootlin.com> wrote:
>
> Add driver for Maxim Integrated MAX7360 GPIO/GPO controller.
>
> Two sets of GPIOs are provided by the device:
> - Up to 8 GPIOs, shared with the PWM and rotary encoder functionalities.
>   These GPIOs also provide interrupts on input changes.
> - Up to 6 GPOs, on unused keypad columns pins.
>
> Co-developed-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
> ---

Looks good to me.

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

