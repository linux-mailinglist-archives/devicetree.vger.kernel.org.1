Return-Path: <devicetree+bounces-206356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D20B2C2B7
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 14:08:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 790BE7A6266
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 12:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84580335BDE;
	Tue, 19 Aug 2025 12:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HqtQGYmL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC47631E103
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 12:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755605292; cv=none; b=JEjoERrx+kU+yCKCosN+EYchXDTAwpoxHZTk6AlpFQsLE+J3iGCwpD/hKz9YMPFW8jKF6U+zF+ASYw4W62YdXxSyduEqAYDymeaf1ntNNg0yT0ovYxIeTTpedREI68ITpvl2zg5zHATDzoMwylnMrIW/INIKjJQhDnxvjpDTLDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755605292; c=relaxed/simple;
	bh=jvZ5D7tp1bVrkSUr45nSTmELa6yA2IKS5foYDag26Ss=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CeOJeS8MVb2VStxChBS5KXlC1ZbP8wflLLM+TjO6CaOIEtPvDnpgYHz4t4FfnixQdGeT9opupA6q5dDXKfSR/2ZLPVP0GFyM1JDC4fWouTnBoMHsFt18nKkK8573E0HBXp7u8JgD4Q7oSAAdDJDQBSZ83slptIXU4mHqYmFD8l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HqtQGYmL; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-333f8ef379dso43354781fa.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755605288; x=1756210088; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jvZ5D7tp1bVrkSUr45nSTmELa6yA2IKS5foYDag26Ss=;
        b=HqtQGYmLKfsGMRc0jArKSeCknNjfKDAphbDNjc+pJdQmhWPclMMbUQqnW9ypy+dtwX
         ucD3pKYlRFucYlWFdNdTGrtvIC5diDQuGEHRR4vFdtIf5XZOGV9DSqgOYVkjV42EEasF
         3gDInV/jXXFF8HR97OmVJTi/927z4dcjchdRNDWUbwLYYje/ExhoAk4yu/h2gjJzSb1U
         IpThk7soP7cbksjzaf73PiV4ZNDl56r3Jy4ZlPxIkT53sZ5LIMQfKL9oP6CUyTo+EoZ6
         pIOZ1KEVleP/008KlBrjOKUQmDWEWhwvajcWiaHoBLBxryFNcF4NXh3srK23yQ2pPX5u
         83Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755605288; x=1756210088;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jvZ5D7tp1bVrkSUr45nSTmELa6yA2IKS5foYDag26Ss=;
        b=Xs74KcyTG/TbzH9hzF0zG8eV+yg9xCpTjbTXmfn+uTGWsXf/b6cv/7/rMNgCAT2053
         QD6VdfDZu9o/JtqbIc4kBVxjvHiGG/GxEvsAlnVbl3+0zHurUZjhYZw4WWd4u54x36s5
         WNBVcQVuNoBL1ZEGICIUVDHmz8i+GnydXbmXvJdIraMx+ocHGUuvH1O/jWKG7WsiJ/G7
         CLSLOXkgNpunCzvW09w0xs1sR/mXepgpgBc8Ld0MnvBdCDbcv9VmG6BxoPe8q7lrecCj
         893Rb9iorjeEPgFgfnoPoM3eQtscBhh0jLv8PYZYxR6WBzv0Jpn2l6lMw9b0NXKBqJTK
         hHCA==
X-Forwarded-Encrypted: i=1; AJvYcCUYmQeOQAKPCKIj+MQjHRSGNlQhhD8L8n0dcEVD1NI+ZEuxXnKaYvTMW5aNEiErQVHjGD2N4loegKpZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf4d5sbA8ljulP3mb2ng/UFz1O9zeA5BZEKfzdwPElKW3XdZ9q
	MGN5KW36sRMoflhXQAl+8zYfM9VAvjHZHteEPx8BygeBYGogZFd8bl43s4seVnnc4yLuH/ZZUN3
	KA22IvQ0utc4eZPLOE43AfkxUlCfGXE6DDIBaIA2cf9bxUDmRUEaM1Cw=
X-Gm-Gg: ASbGncuj2dg4pEkHKPf0I4vfrB5/X9h3VQenCFRDtBR8hkneYs7YbtoyoSKAfH1zg6m
	GrPo7mm86mixQoPAbjP6tufPsewrZ7jscHgCm8pNhzc9VX7vTAxZxv+iVt7nctObt7OFVI0bQ4x
	X1RA7E7Run3x/IQ44duZ5sriZPqwTl8rXlDAXRHF/i36JeoIsxZFWrRxBYpoq1Tzs1q1tCZfJhe
	/FcVpo=
X-Google-Smtp-Source: AGHT+IE3dfVYJKWXUrGRuEJA3+o6pONVlCs6q8ohEH3Jv0GLPiiwaO39fGyN+yXgfnlDzLQo+oRUw/tQcalr7ak4IWY=
X-Received: by 2002:a05:651c:516:b0:32b:533a:f4d6 with SMTP id
 38308e7fff4ca-3353072e501mr6155041fa.34.1755605287796; Tue, 19 Aug 2025
 05:08:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250814-ltc4283-support-v1-0-88b2cef773f2@analog.com> <20250814-ltc4283-support-v1-5-88b2cef773f2@analog.com>
In-Reply-To: <20250814-ltc4283-support-v1-5-88b2cef773f2@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 19 Aug 2025 14:07:56 +0200
X-Gm-Features: Ac12FXxaXh8IRrmO0qiQXEL9cXb2hqgOSqLusPCKGVI2Xon1ujnlah0xogXM2EI
Message-ID: <CACRpkda1E=2rCK+vt588FRJatrASx+dDss6HMX4NGoTrL=4mPQ@mail.gmail.com>
Subject: Re: [PATCH 5/6] dt-binbings: gpio: Add bindings for the LTC4283 Swap Controller
To: nuno.sa@analog.com
Cc: linux-hwmon@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org, Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Jonathan Corbet <corbet@lwn.net>, 
	Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nuno,

thanks for your patch!

On Thu, Aug 14, 2025 at 12:52=E2=80=AFPM Nuno S=C3=A1 via B4 Relay
<devnull+nuno.sa.analog.com@kernel.org> wrote:

> From: Nuno S=C3=A1 <nuno.sa@analog.com>
>
> Document the bindings for the GPIO controller functions of the
> LTC4283 Hot Swap Controller.
>
> Signed-off-by: Nuno S=C3=A1 <nuno.sa@analog.com>

(...)> +title: GPIO LTC4283 Negative Voltage Hot Swap Controller

This is a weird title. What about

"Analog Devices LTC4283 Negative Voltage Hot Swap Controller GPIO"

So readers understand:
1. This is an Analog Devices component
2. It is GPIOs on the NVHSC not a GPIO with NVHSC

Yours,
Linus Walleij

