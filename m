Return-Path: <devicetree+bounces-157526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB2AA60F5B
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 11:54:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63EAD7ADE1F
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 10:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 729CF1FCFC0;
	Fri, 14 Mar 2025 10:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ts5UoW2Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096061FCFC2
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 10:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741949638; cv=none; b=eoIR+O0hQ5Kdk0zWDFEbBh2WyAecUf9XvX900NlaVvIT2iGfZDaVh3SiY3h58KSXhMKeJrkhePCuOeI6kDG5mfbd3aEB2cz4Gy/1zNqlfiE/J5LKWlma0NOc0s5y6RkpHxM927/mS7gDLRQGoNSozeSn5e/gOQwPVLmRVmhsUmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741949638; c=relaxed/simple;
	bh=TdjrUj2ENKDpO8QMmgpWcHwmqWwffwTY4fDD4PrBuM8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CLJJEvCOes3matzO2ESBOrRZ6Rf44n23bGrk6VEvVlbkFdcZm9J3zAwLktyp+dalWSk3XBo9HjV4LKPYrUefLzZ6QMafbtCnQeMbE62ZWEjrAyHUKAZxf4ZIOlMeCK1E0nXQL9AbIwdBr7Xvc2+M8mMYxu647jO7YbjJ1BF8Gv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ts5UoW2Q; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-549b159c84cso1943996e87.3
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 03:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741949634; x=1742554434; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TdjrUj2ENKDpO8QMmgpWcHwmqWwffwTY4fDD4PrBuM8=;
        b=ts5UoW2QyXh5vBfN5rcptPygxva1UOMQcvJJl3YF7SN3js9KkNVcC5CSs2I4yR5WEC
         nkWFW6y354+sOI5aep1y+kapzuDq1dPCA3Vp/Rt1kd9ckl62vom5aWk8c1J9yvxHvPo6
         /+6M1EgwyUiDAQhDFGBW7tDzrrJVPmuky6/4T1ecyG9tmk4MGyzuUgYr6S+urcCBLny5
         Umh60qOF0XoRFlEtUjaMY1MFLsaT5BEbeuuQlF4zmzpkCaSNKFKFdUENhS/woA27wdPb
         zKyquqR4IZwQh2Xwglpa8p3SX52ZHbk5x9+nz3JIpRtmL9TDVo/JU8hIPpkEsoRmtHsb
         r6ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741949634; x=1742554434;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TdjrUj2ENKDpO8QMmgpWcHwmqWwffwTY4fDD4PrBuM8=;
        b=qmqBiswjOztdN6KD9Itshuur+hsTRuUkEE6U2Ft92LcGG3YKSmXVNezOgI6qXhrIuA
         z6o2q70TtfJ4FmI5Bvjk3O6JNJUeF+twshXD4AOzUtWdPHaGPAD/prkCDrxo3ekMyqjP
         JNzXzIkQ+feomanmJQvuPdCjsdyO++NK4UTlmJtXN3Qtqpv5YmPHkyrYDWZn+L2Dtbev
         fYwTPBFht+/rFqKXcY8e3LIWUy3OMjLSlBtEZ4XVB3ErGZqNDOpjfX6tbMWQGAV38mh0
         tzqycHTzffzsfCPHpsCFlra1mRnM8Eecd2F2hcUEuw7g0PcdZc+iT9qeCEcMkP/yQFPt
         D6jQ==
X-Forwarded-Encrypted: i=1; AJvYcCUW/4QnejNO984EwlcdPoQaPl4sgnLHj7T1srt3oTJ8bXmB1GDA9Jwzr2ee31kB/pE7QCGrRAJ/cCk4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw17YnsveFqprG+f+yhC/Qs36P35ZshtRv0v277J8Zx9QgHiUOi
	YEH3mornoD27pIWvLZjSPLZn8QW2GuA7rrDCyMbiPy7np2BNMy2U6YCw35C5hYNuQiOqQQUFEkV
	HAX20qtShEZ+HRjfqU1VspMLuJxJZfxsDqQUIIA==
X-Gm-Gg: ASbGncs/fFRxUimNicPHDttoLVa9DQci6n5Ll78CrA4a30ZbSJ2YPZ01ssl+ywIKaZy
	6qLg4qRklA2krVwBKoTdbxRCkR7Km3Dp8lW2ZsCR5fsYfrtFCANYJzQ3FcMsJyASmKAFuorKwGH
	5UuBYcIqngaDrtcZx2T5Z7rNDi6y5DOescnw==
X-Google-Smtp-Source: AGHT+IGyZcjGQVRXdmPf+HFRkYlkCyfk9cxA0ikymLJVaBdq4csHhKzWdrWNXA3EtIAdbabIZKVRbXn3G++rpQeYfIs=
X-Received: by 2002:a05:6512:2350:b0:545:2b24:c714 with SMTP id
 2adb3069b0e04-549c3911e6bmr776230e87.18.1741949634058; Fri, 14 Mar 2025
 03:53:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250313-dev-adp5589-fw-v1-0-20e80d4bd4ea@analog.com> <20250313-dev-adp5589-fw-v1-7-20e80d4bd4ea@analog.com>
In-Reply-To: <20250313-dev-adp5589-fw-v1-7-20e80d4bd4ea@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Mar 2025 11:53:42 +0100
X-Gm-Features: AQ5f1Jos35lQGGapvP68CdJghmgF62TRmPj48uDq9_6LrGBWABanTI3P7iIbNwU
Message-ID: <CACRpkdZd1b-D76n2oYMwg79BewV70FGaNcxbYfq1GDGOHm_BDQ@mail.gmail.com>
Subject: Re: [PATCH 07/18] gpio: adp5585: add support for the ad5589 expander
To: nuno.sa@analog.com
Cc: linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-input@vger.kernel.org, 
	Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Liu Ying <victor.liu@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 13, 2025 at 3:19=E2=80=AFPM Nuno S=C3=A1 via B4 Relay
<devnull+nuno.sa.analog.com@kernel.org> wrote:

> From: Nuno S=C3=A1 <nuno.sa@analog.com>
>
> Support the adp5589 I/O expander which supports up to 19 pins. We need
> to add a chip_info based struct since accessing register "banks"
> and "bits" differs between devices.
>
> Also some register addresses are different.
>
> Signed-off-by: Nuno S=C3=A1 <nuno.sa@analog.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

