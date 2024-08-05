Return-Path: <devicetree+bounces-91004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF46E94767F
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 10:00:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACEDD28197A
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 08:00:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 822B7145FE2;
	Mon,  5 Aug 2024 08:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vQlQitgg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07125FBBA
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 08:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722844853; cv=none; b=HJbtUk+kbxyCn30ZRFRxqFZHJATkwyuauEr20+cKctK5gYHsAiQZ5TQAWNcMGxflJEJZdCo8vo0UiMYQKDXoCoEC0zW7ZMp7eL8yVmTYrQ++ukCBWR0ap4i2j1qMAQYEFpoxSfyc3Fhok7juovvGZYd3C81QIo9Q5I8yucVP6WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722844853; c=relaxed/simple;
	bh=V0XBLdWPsEfluunRhLptNbPEUeInLXsANcgHR2jT3fE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lVa1Lrua7suBOmXqLC9SCwHNLyyaCXX+qpPCqcBzVgZOSRV2grqUKgZ46ZvPeNAS2yQh0gvpri2FSCrlax2VUuRE3lwpTD+ZM9Rwl0dikcOPbfidN2B1/sc/c6uzrnGXYF32k9+HfnMm+ZZjLQxlSBOfK8D9ggTaCEmnorpWcjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vQlQitgg; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-52efc60a6e6so15756636e87.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 01:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722844850; x=1723449650; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V0XBLdWPsEfluunRhLptNbPEUeInLXsANcgHR2jT3fE=;
        b=vQlQitgg8MyKgVBqn9roFoJioZPR4FZHlPEt5jOkCrCLsZFYsHzr2F+mcKg40uk/3N
         jQnMlRLEqz0Xk13WAixEGKM99yaxYlZAlL4ArkB09FmUK95eFOJpGX0ygTVzU0PdYEH3
         tV8f5RGGqfjg1mx3GhyLN1QjJnO3AzH5jeCb49OZjTT6/H5ZUO3H8CsVyS18Zo/6Lwrn
         4sWCi23BsP1S1W/yM5jbhab8cWdkOK8KtxA1cLmxtMW07C9cf+jGfLkFIgWItQ9Z4nOd
         3wLjL9U0TAs3TKo4h5puEzo1xvGgczdYpbWczHjjwDS1FTSomYi0Ofwsp14V8UPnQRZ7
         tP+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722844850; x=1723449650;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V0XBLdWPsEfluunRhLptNbPEUeInLXsANcgHR2jT3fE=;
        b=IV502XOVu9dralq/mIEoqxngO8rt3X+Jpqetgno27JbDlgVdxWyAoauVa8baWyQXis
         coxlbkwIC0Y3kk41org4vidmq29Rc4PU4ttflroOrVBlYCi9Rak0q+FQp93EQ/2ogh4w
         K2F+fuvvpoOKQeKNksM6T9/Nexb1djdir0W7zzqVyyxm9j9t24abpiCcwOcP5WAfSQwV
         ciczsprTxs70Pc12bwTOqWOhepFZPpupuT+WvEuJvapj0kbmsCCqbhgXOg7zBVj9zt7Q
         U61mvKHLsGb/YcFAmxOdK4XHtjAmlNy/qGm80vugxyWYf9o5Sl30kV378BorXRd4fO0J
         l7OA==
X-Forwarded-Encrypted: i=1; AJvYcCWpXIfcBjXAcl7jM1tliOohLOH4PkKp/Nf8czpR/ab8I/nDRQ6FKFhKTWIiDI9i7V8nJ8ebz34MiE10tcIxVZKNlSOeMhKHkM5iiw==
X-Gm-Message-State: AOJu0YxZdBU5IsaAKmLod8ArZKVsjc1pl2Apeo2hC+gkba6/pwz6DlJR
	XDpUV57UoY4PRfJBGqDCxm1t1k+legseyXv2C8nqchhjiValdv9jpOgiDYDOpL7oinI/R6OBIIk
	0yREcKoHZJpaLYCD2vYCcIyXi+L8646e/2LJh9Q==
X-Google-Smtp-Source: AGHT+IE4e1ypq3XkPGGxUNLRbeIjoKSdEBrPK+4BFko20jBg17ItwlycPxb12bAyuzMocKZw3XI+Eygzrzew8wFEJfQ=
X-Received: by 2002:a05:6512:ba7:b0:52c:9e82:a971 with SMTP id
 2adb3069b0e04-530bb36640fmr7509297e87.7.1722844849933; Mon, 05 Aug 2024
 01:00:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240723-supervise-drown-d5d3b303e7fd@wendy> <20240723-underage-wheat-7dd65c2158e7@wendy>
In-Reply-To: <20240723-underage-wheat-7dd65c2158e7@wendy>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2024 10:00:38 +0200
Message-ID: <CACRpkda-QEnywHSwMQDMtbP8-rZEbUZT58D+hvXVRdMkFu09wA@mail.gmail.com>
Subject: Re: [RFC v7 4/6] gpio: mpfs: add polarfire soc gpio support
To: Conor Dooley <conor.dooley@microchip.com>
Cc: linux-kernel@vger.kernel.org, conor@kernel.org, 
	Marc Zyngier <maz@kernel.org>, Daire McNamara <daire.mcnamara@microchip.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, Lewis Hanly <lewis.hanly@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 23, 2024 at 1:28=E2=80=AFPM Conor Dooley <conor.dooley@microchi=
p.com> wrote:

> From: Lewis Hanly <lewis.hanly@microchip.com>
>
> Add a driver to support the Polarfire SoC gpio controller
>
> Signed-off-by: Lewis Hanly <lewis.hanly@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Looks good to me.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

