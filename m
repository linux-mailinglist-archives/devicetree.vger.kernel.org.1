Return-Path: <devicetree+bounces-183036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 181CAACEFC0
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 14:59:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 889783AC734
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 12:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BEE5223DFA;
	Thu,  5 Jun 2025 12:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BT3eqY1Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79485224AF2
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 12:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749128328; cv=none; b=D5WKrcKAi2N7GgVDqwNCiy6VQoWglGNVrfxm1ZdY0Dv935W7+GnjNcUmqeUNCZ7KpDu/PAUr9J0TDhw2F1UpQr1aUl7JDsbp/jeEuOy78g6pAeUHCN2I08KE8nRYh5iCYRTbkIDPhnKfjH2O8eyuJ1J9LCHa4zSegjUfIVkiBdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749128328; c=relaxed/simple;
	bh=5F4J5fsk2zo51ye5xZxurgvmXqAk6TLsSVJ4G+IBpes=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pPKH7U9CcO7eKdUnqNZT7a+qHWI/VU7R33QNCnIDCHTr8VOS7xDSQKpdSF3EHhI/w2SLyy9ttDYATyzThOwVLNLZSPEUEvVtqgu2HcrGsge1T7EQRO10JJcsofNiYYY/DN9MCLsEfI22A16eagjdjiI/2qI+QGy3Rg0YJ7cNeuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BT3eqY1Y; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5532a30ac45so957768e87.0
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 05:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749128324; x=1749733124; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5F4J5fsk2zo51ye5xZxurgvmXqAk6TLsSVJ4G+IBpes=;
        b=BT3eqY1YjGowVD7zIW92iWMhbBDHsqhlDu05hSD+L2lblBHPr/MK6FBU/qC0U/osBc
         J/EH9/ck057rjD7cetbpOxspOKf6Dlv2N/mrDFkP7vErBLZLnojTkB1uB/QEt+8kuR2f
         qVTEORHO8/UUcEWgAHOenhhed2zzRHRjbUBg0cOt+wNFaYjceflBN+QR/U7XARQ0mGC3
         PdSl2OKKd6ipdRP8d72b9mUpznYiLeMq1OONEfSyHnBrBMm7GiXgcZE7Qho5lkOffdke
         RgvG9Kzq0Rz0+cYNiE0rAGRADWgbswlD6Jfc05RvAJsiQQmfpS8cqsFiFN1N+VMxl+w9
         3MCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749128324; x=1749733124;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5F4J5fsk2zo51ye5xZxurgvmXqAk6TLsSVJ4G+IBpes=;
        b=cWEHKwwCSrraa7WbpM1AYwj3G56xjhYp3eFK0M0vgwxdWf+hjlFkag/DHQdcFFxIuo
         uNZ1x3AgXE79/IOZtAGKLVBdbfZC+s4gezVLkt6zY4cRja7V3qGcLamdtYTvoqwR3riB
         V+VTZAylLvLQnsQN9zafY5Y3cvQGu2s1RbnmvdKHGtNMnLyPTpmUArWBeHkJsO7KwbY8
         aEW0HYbsrlmu/kUpMR5U+dw0Fhs9XyEOz3P3DjiqIL+J9PM1ihgCwfiITuUxGNAcBdYC
         VUpuyehjN8qYdo9RXyNV1353SJZm32sZUPLZqTrJApX29wWSXIcCGLHl7PVAFrVRXako
         yk5w==
X-Forwarded-Encrypted: i=1; AJvYcCXmCa6dLN01QfzUKf4xnbChc0uk7s3pYpNDVbkj2pm9S+hbLVZRjCDu1erwmiXG/nSG4FUy1214dy/G@vger.kernel.org
X-Gm-Message-State: AOJu0YxEM7xqBVDiYNMhhb3M3O/jyJHXpfyz9ACQmTvnZW5mixZqSsWE
	sM8cE+9xaHZVwRH+wYhof8ubZvmugv0IvGHyKb+YMx9EE13PCslOwoUltPqmyfzOuCmI8PICW3K
	APyIxaajmSazmHa4fN1xxL9e6S+JkQlPuF2nFde+3Og==
X-Gm-Gg: ASbGncu9Xp/cJT7fbXlpiTBmIc6wR50H6XGID2+jDLZIDkI2hQTdkPoLrvvEs/AQ/SC
	EquMfxRPJU3AxjxOE64GLWWS6N9KtZkeK7xDDpozCCPu/g1S96sjuZpbcyzxzQMiycJi6Ls5XLu
	p+iWRiczyKsjrpUF/I+RrvXadFPgJ5yYSo
X-Google-Smtp-Source: AGHT+IGlsLgaz+OzrX7gChqfwNLu6aN4e02li+U7R1p+y1C1vMiENS7zjDEUb53JJ0ECcJmO7Mh9wmCUqhcTsFjS6Gc=
X-Received: by 2002:a05:6512:234e:b0:553:2308:1ac5 with SMTP id
 2adb3069b0e04-5535d8f54e2mr916430e87.4.1749128324545; Thu, 05 Jun 2025
 05:58:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250523-hdp-upstream-v3-0-bd6ca199466a@foss.st.com> <20250523-hdp-upstream-v3-1-bd6ca199466a@foss.st.com>
In-Reply-To: <20250523-hdp-upstream-v3-1-bd6ca199466a@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 5 Jun 2025 14:58:33 +0200
X-Gm-Features: AX0GCFvp2kYXQryODv4yaq3ufj5OHSvi6P7gagdyzXCjgZwqYR5kV58IYRzsLbE
Message-ID: <CACRpkdYz5BaoTfG+y84Y=HQUxdSberU3qnaWDmv2=Fk8zcbm1Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/9] gpio: mmio: add BGPIOF_NO_INPUT flag for GPO gpiochip
To: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 23, 2025 at 2:40=E2=80=AFPM Cl=C3=A9ment Le Goffic
<clement.legoffic@foss.st.com> wrote:

> When using bgpio_init with a gpiochip acting as a GPO (output only), the
> gpiochip ops `direction_input` was set to `bgpio_simple_dir_in` by
> default but we have no input ability.
>
> Adding this flag allows to set a valid ops for the `direction_output`
> ops without setting a valid ops for `direction_input` by default.
>
> Signed-off-by: Cl=C3=A9ment Le Goffic <clement.legoffic@foss.st.com>

That's a good solution.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

