Return-Path: <devicetree+bounces-153744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3CEA4DB09
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:42:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 488EA3B0B54
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A1562046BF;
	Tue,  4 Mar 2025 10:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="0YTgtxRc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C87D20485D
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 10:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741084660; cv=none; b=l9ytO+2IdkKyjtMxcC/DkIzDZmDad53wcszQFuuQhwFC0C76m9AIMxErUGbqNlG+b8oZQFdc6TFQznpltsp0ABvdOaYeLgLtYTdmsRG8kobm/krdmAOTlhSaVt+NM5tkxZqGi2y+0E3GYJPcAUkW4XKwOwK1u3Nuh99tZMNA7Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741084660; c=relaxed/simple;
	bh=W7wu7x2CGHp+hodRLerhrOyuQsqw+FEk+o1KUxZ12pk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rXtOZrlvxDZt8omHnjsX6fZ8Fa1JqMJKQeiWphWQWhNfGLww8asPRxgsGcKtGa5T4LiR4BMqZe87LA9WQAqy4GlxUPnzOq/3dfDIgQE3z5RkIKyC+lVh0+UoLAt2eCQkhdsPhPmPIvsQ6lpOskEJl37+7NQJYjFDijtehilIwJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=0YTgtxRc; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-549490e290dso4162973e87.2
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 02:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1741084656; x=1741689456; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W7wu7x2CGHp+hodRLerhrOyuQsqw+FEk+o1KUxZ12pk=;
        b=0YTgtxRc1G9z7rDwnABxcg/ByXXadjxAutXZ1ItVvJh0QPNu1I0EhtOvaOHp6SHWoe
         sKyjlFNH7v0qDv7HvwHME/z2mQA0EEaiL/Mb7me4XwOz+CWtyGjmcyJsk+2oH4eudi0U
         752W1pzlKTyEkRjC22eSIJI2FU5zQUzJDctJ8NjF+3eZR78QVeJT/HmkztbO62FqkENb
         4TvzAcwoWgTZjcOiwonK45m58k2tptJ5122aJfYzY2REZuizWBn0L1XDqHi7I2kGgtJW
         +RiHSigepggpyIqULqYZvochfIF9G5yeZxxf/zGH1ZgjdOF+N9bWxAzMuFle6vhHxDl+
         d4rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741084656; x=1741689456;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W7wu7x2CGHp+hodRLerhrOyuQsqw+FEk+o1KUxZ12pk=;
        b=ZHWbP2mMftGb9vqu/8TIxdEWkqo9L4NO1/pCpAkyZmurx/X9F2zHcRRMjCuTTNeJHY
         5nzwhkA9STJo4UEhkkVqmbdJSOvjYXonMnTp/XBAdOfW8kO/7F7h902j5055O6V7PMTf
         SeyW5pjlP24NADe89+nUXns4AudnlkraxsPPNAFiPQhS6q/VR0UFqjZpll9vfBic6GvG
         geb/4cNKmuExuI+LuqpuXenBry/0YkzkNRG4t6dJETzreppQsGuzYZ3i5eo+wb0hWtmU
         0CO22PnJ6j8bhOsPYP1gEYTnojH1Lja2X9+jvoWjdZicjlTSmSLE32VKVvMgjueX35CH
         ValQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5P+tcDkWhnWJMB6rEPWdyhCLL52n+F183qSRzhHD61GgfMeIW4BGp0VRTtjRmNLRAV83shd4BSBZS@vger.kernel.org
X-Gm-Message-State: AOJu0YxrO1qMekMI8RpmN3UAAnpLP/Yon1nhHSjpBJaZsKyOj395/+p/
	KlBqLxpOnYoIky/V40ZNO56EWCB/qCC7HUnKYlqrWwLf0Spk1CU3v5UqsmrJqS7VBYocqZPLoqs
	oABSnkgd9DdDhOcoa4AeXJWumnzAwmUA0jXQw8Q==
X-Gm-Gg: ASbGncv4Eiu8WSIBCU0keNqPF8QriRewBR/WOMbNHurQAk8uVTLIo6hxDaZZpOMGm19
	VX+45zja1adorfNtBBsW6p3zVBkcykkuAxbM1uoJt7RsdJ70mp+ypjhKUJU8BFAjU/8pTiFtFFJ
	glIaaeELhso7h68RIw0AZsklO64kq4xwY4c8HLB4K4S75MMMGdSbJnuWp3jA==
X-Google-Smtp-Source: AGHT+IFB+Oj8/Xe4YEFmV/Rb3Rt3KPraZIDAVAusl2gbbTUJaqBBb2xF6ULfEj5cbkgmnDxxA+ahMM664a5woA/zI1I=
X-Received: by 2002:ac2:4a74:0:b0:549:4e80:6dc0 with SMTP id
 2adb3069b0e04-5494e806dc6mr5633715e87.0.1741084656455; Tue, 04 Mar 2025
 02:37:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250228-max77759-mfd-v3-0-0c3627d42526@linaro.org> <20250228-max77759-mfd-v3-5-0c3627d42526@linaro.org>
In-Reply-To: <20250228-max77759-mfd-v3-5-0c3627d42526@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 4 Mar 2025 11:37:24 +0100
X-Gm-Features: AQ5f1JpxU_9Y_clBmQu6eNXqzblGFz3KZ1pj5Yu3Z5R1OCnwlBjw0Sc-D8_i8O4
Message-ID: <CAMRc=MeYXFonF8wcU_5RzSYpTUXEhnY+wpsFKJQ6-EJ1h=K3Wg@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] gpio: max77759: add Maxim MAX77759 gpio driver
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 28, 2025 at 3:25=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> The Maxim MAX77759 is a companion PMIC for USB Type-C applications and
> includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
> Port Controller (TCPC), NVMEM, and a GPIO expander.
>
> This driver supports the GPIO functions using the platform device
> registered by the core MFD driver.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

