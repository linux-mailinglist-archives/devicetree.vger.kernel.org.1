Return-Path: <devicetree+bounces-183038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5362ACEFC7
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 14:59:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF87B167EA4
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 12:59:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 299CE207DEF;
	Thu,  5 Jun 2025 12:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xoHrauFL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4001C1FFC4F
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 12:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749128389; cv=none; b=Jo1H0QmL4CYLKJM3JYelCZe8qE4pnKAb3fM9tL+U5BzzsWDxRwqOyQHGpq+NjwlnP87LgRA8jbBuNSQUyGzjmoRSwPDY6XsFfoYrDe4hr0rp95X9QkRnyEzoBnsUOzssvOP8a6Vo8dBNtxiIcWTKVkbR6ZX5IAqd5iErC+wOfsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749128389; c=relaxed/simple;
	bh=+1SW841llZ/TeEXc7OtrdGQp8Q6S49QXPRYgXl1e+Uc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qE5k23ggcsZYdmfI2aqasQFI9RRP1vO2qCWCo0SPfSzVKppxhJO5XBIce5pbLX19QJmHNXqb153E3Y7ApbSJhAJIxZQ/unx4m20pGHKfj5fHoAK+Ro0KEvQJO1mHpk2cxde4RNSUF8eI0FWE0oIBNUvADxSXf7vlzS5ehKs2pi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xoHrauFL; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5533303070cso1058586e87.2
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 05:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749128385; x=1749733185; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+1SW841llZ/TeEXc7OtrdGQp8Q6S49QXPRYgXl1e+Uc=;
        b=xoHrauFLBS2MyIsJrZf+9KN1Vlyu7/Yo5+H9evtq4tkyDncnLN+moqHZ1UaEaFULhZ
         4fGlt8P6Cr7SbxOItRI+VZjAPlLjQKwHa997plGQFDMAJHlmw5A2kdE5uGaDI3pAOeDy
         nhxLcs8Ry/3n7UsasEui1uQ4XuQnzCiHKXUhXy3u+KKYTYTxkXRQ2gX/q1tkDF4u+6A3
         XyRwLiAha9CGadFprSQE9MDPLdXj8m1at+FXoWOzy9I/iWlDDgzxPkBYgFVbSerpzpoF
         JEe0W0YgP/eVYTzBtagB4RvXr3/ziWEP2O2g1i9QrwF0wggaqHU1q/N242oVAhoFFR81
         XafA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749128385; x=1749733185;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+1SW841llZ/TeEXc7OtrdGQp8Q6S49QXPRYgXl1e+Uc=;
        b=KD+bVwlRlhyxUENp1lSUv7WaZmJWMEdnJI56noYV818CBXQDD67cSrEdm6+YPxADZw
         b3YzWidM8lUfSsfPDNHPPI8pUImPxc0JHF/FUPLTTaawf1k1QJTGiJu7nzQ4qu4LUSrf
         d+uXrjT/eJhrYqGI5P07dww4MjtYC+Q16bQUvqawVK7Dk12XSE2j8Jqt3fV+/3CaTgv5
         mIRedF3u6yTNgTaWn7i50Yu8d1ZbhHODWgZh8/kIcfWPbG5odFSA+wA8BcQAz7C+UcLQ
         xzisNMdfK692JFuVWbQB/viP0NIwr855NunPg/bpVw25UkrNIER6rwb5vjU/UvpkfMYE
         tBEA==
X-Forwarded-Encrypted: i=1; AJvYcCVtjv5Nzr18LZ+iNK6RXIX0z4zOQP6sqYl7jXgEcNFjz1g/nUn63odTUnFkmKi3mQtn0lyIY0Odtt8q@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3BDUc+lUtKIKB+FrcxkN4J7nwQPKY8r2nrG2uUy/TvWNZ+/AA
	rH7p+bdcOfl6F+y2LwLFSM8HKmmVwrdKOBMSYReFsFMiW6846+dNLNVe6eGHOrUP7Ij6c9crtLL
	68nmZLwArr6OJfM/UB8KCI//2reAYhBXOq8sBzvtLWw==
X-Gm-Gg: ASbGnctyd/TZ3zGmBTlIfLX43ir4r36ARO0Q2leBrL9rBJ8g9NBlzbodfFRLFUKXptP
	eYdGoYe77FxOmMU7LDNngxhoOCZV7jiLLF1/F+AEfwyd203U+H49NYmB4Fq0RjHLMW34XFRKv9M
	WBuoQ1F74SoilOajrfAGr3r4fKDvr4TPA4El7/JfY0V/A=
X-Google-Smtp-Source: AGHT+IFCavHF9adGcVmqAC/SJ2B/xxLRQCctMY8xdnqc9im25wwFXVUPSZMsCxZi+sqtxi8x7B4+E8N2egCUTx7o6NA=
X-Received: by 2002:a05:6512:2399:b0:553:3028:75bd with SMTP id
 2adb3069b0e04-55356df25f4mr1863539e87.49.1749128385410; Thu, 05 Jun 2025
 05:59:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250528-hdp-upstream-v4-0-7e9b3ad2036d@foss.st.com> <20250528-hdp-upstream-v4-1-7e9b3ad2036d@foss.st.com>
In-Reply-To: <20250528-hdp-upstream-v4-1-7e9b3ad2036d@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 5 Jun 2025 14:59:34 +0200
X-Gm-Features: AX0GCFu6YXXSfinnPxm6al8Hk87Fy7463uSEHIJGoc535sekNRVPuuiSEP4FOgU
Message-ID: <CACRpkdYfU0xGAWwjJVaDLS_QjT2jjVZouQ4bVU8gqMkfEc05Bg@mail.gmail.com>
Subject: Re: [PATCH v4 1/9] gpio: mmio: add BGPIOF_NO_INPUT flag for GPO gpiochip
To: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 28, 2025 at 3:33=E2=80=AFPM Cl=C3=A9ment Le Goffic
<clement.legoffic@foss.st.com> wrote:

> When using bgpio_init with a gpiochip acting as a GPO (output only), the
> gpiochip ops `direction_input` was set to `bgpio_simple_dir_in` by
> default but we have no input ability.
>
> Adding this flag allows to set a valid ops for the `direction_output`
> ops without setting a valid ops for `direction_input` by default.
>
> Signed-off-by: Cl=C3=A9ment Le Goffic <clement.legoffic@foss.st.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

