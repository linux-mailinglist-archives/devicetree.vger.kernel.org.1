Return-Path: <devicetree+bounces-186181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1717DADAA00
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 09:58:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 738923AEC34
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 07:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F45E213E9C;
	Mon, 16 Jun 2025 07:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="nL6W6Pmx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6C2211A0C
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 07:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750060644; cv=none; b=SjWuVlnZoohWoRPuY/NhXnUBPPkPafGixMDr6TP7xj6mxqJwNN6afShHBwtWwEPIiSGawsd/Y1xte6bBd13snOmRY5wZgUmgdPBkKLpr2oPeuIMB6Hqj5AN674Q5HlFVKVVgySdUadRYtQhCip8jpvDBqEmA/a82sJYJCNmP/wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750060644; c=relaxed/simple;
	bh=4qED4T83HWdfDSMzb8LueFEqsVDN+ECnEL/SM5YaoGc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u8sbyE9kuDZ5HlKxTL3sjRKC/aXEOiJbOIw318TRpQSe/gLw2+qN72AXAjqaE7FE3x6I79G73TDIp+pV8frgAzzJ0ljCw+1goZH55Gn8tQyy3iKJSOPszBvBf6yMwdKc92AYLGVC5Z0Qp0LUMmn36XTc9ZeVkn0LNKhSzisC2fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=nL6W6Pmx; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-553644b8f56so4263102e87.1
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 00:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750060640; x=1750665440; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4qED4T83HWdfDSMzb8LueFEqsVDN+ECnEL/SM5YaoGc=;
        b=nL6W6Pmx0UGEsfqFI+kXxnr6mRuBKYS0d+hDVoZMoAQ64MboSCgLwDmjyPIZ3WaT6d
         hhIWgYBqz8JRlskb7Y1dNaOsinm3h/17Eqn7nNVOTEtPzDOXuwRW/y9MU3ScmjP8PcnQ
         RnFNg5ya8O5zBZJuZpas5hLMBIiNKvpUiWwa+6UP4ebwTEqow7HJBhER7nP63VbclX4d
         pWwYf12jcqDl3pJvfbLERvVDo2AcxKEmcR3jtwkRscHtD1yqj+CX+8Flct37B2BjyvsB
         6Xf9c9HiF2HmXvXirqbNW3XMjRuOW/rDr6Gg7Q7bobZPgQYI9QXN0IkGgmm4y13n8FYS
         Fxww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750060640; x=1750665440;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4qED4T83HWdfDSMzb8LueFEqsVDN+ECnEL/SM5YaoGc=;
        b=U/Bv36etpNOxW0VwihAiw1U3TRco6Cm1tApQwPyysQjImk9rJRqeuBuoifl5J/lEvH
         xEKtfMrOnWaZZtZ7CB39SGAaaCnlgoH1lmrsUuJ3PXS1kvTEkYGXvnOq1TY0j4IST8YZ
         XN/ZmH0iz7dC6WfGdGeTAhpKjAq4nLPnDB+bKCUz7tNKxgOjZH5ySw1g6p5SLd3+rc0K
         CC8Ls000Cm44vo58GVEnRQqtIvZ9cEkyEAdC3gP5KjdOtCJDYrltlr49AGNC4CJ4cHAU
         vnS6e+WEZRySbqw1ZmSM2R7JMAI7MZhI4tiHrlMw1CQVEnOucmKBNKIltpZpBoV01tL0
         2paQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjGaUWOYn7ZDsQEfzruwcyiUKmTyIrTNxA3x1YyOV8gxpVtLuTT2SADu/KlUWteEYqwgH1ZJ7TJ2IQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxA3cwvz835bzWvjduDWBcknEqLg/FugK7mfax/A5BEKeywxc8g
	w61XdlrTuYHyZxejY7oKPkmWOqgjhcwAUKafDHkTYuHmJPTdQo1JRjPgwHsjZZsch7homJuHt0/
	YphZ5LP85U0gtloXLa6VOQIv0UH4AnRtHBFArqT+hUA==
X-Gm-Gg: ASbGnctojQ0qFyUAPilgPpx5cxUX0dpwE16csdXhIKfI68q4os1YgbHLEdzqaxTHEx8
	cojvSED2Tk7dpHyfAOh9pNaJ6VXayDwrXh2LSfYkVUL/u3iIUh1UD8H1cuczWAvhDeoH5NG+IPK
	d+y/QHvsodZ9kpUdPJGt2MV1jFF06+EDRxIIwdBibo9nUZnXSQ8EcRWn8BQtkiZAk5cBqc4t1rI
	L4=
X-Google-Smtp-Source: AGHT+IHQCUIA9uPY+4qB8NZMyiqQEyfKQbMdGIfmGIEOyX5zJueD1rzkM7PM47GrOY2V7WgbqKjEnCfmQcLchc4ZWKk=
X-Received: by 2002:a05:6512:33ca:b0:553:aadd:1987 with SMTP id
 2adb3069b0e04-553b6f0b19fmr1694038e87.30.1750060640532; Mon, 16 Jun 2025
 00:57:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250614-dev-adp5589-fw-v5-0-7e9d84906268@analog.com> <20250614-dev-adp5589-fw-v5-9-7e9d84906268@analog.com>
In-Reply-To: <20250614-dev-adp5589-fw-v5-9-7e9d84906268@analog.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 16 Jun 2025 09:57:07 +0200
X-Gm-Features: AX0GCFv6fter9mSjZCkrODp9lT43obOce09GneXfk4BW3yTfqtGiYH6ixmhIx-4
Message-ID: <CAMRc=Md45jxZUJUnv+O2UK-J0mzmwV4gKuECYYgzWX50wW-HKQ@mail.gmail.com>
Subject: Re: [PATCH v5 09/20] gpio: adp5585: add support for the adp5589 expander
To: nuno.sa@analog.com
Cc: linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-input@vger.kernel.org, 
	Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Liu Ying <victor.liu@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 14, 2025 at 4:37=E2=80=AFPM Nuno S=C3=A1 via B4 Relay
<devnull+nuno.sa.analog.com@kernel.org> wrote:
>
> From: Nuno S=C3=A1 <nuno.sa@analog.com>
>
> Support the adp5589 I/O expander which supports up to 19 pins. We need
> to add a chip_info based struct since accessing register "banks"
> and "bits" differs between devices.
>
> Also some register addresses are different.
>
> While at it move ADP558X_GPIO_MAX defines to the main header file and
> rename them. That information will be needed by the top level device in
> a following change.
>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Nuno S=C3=A1 <nuno.sa@analog.com>
> ---

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

