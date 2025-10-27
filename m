Return-Path: <devicetree+bounces-231790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 227D9C11A0C
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:11:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF89F460494
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C365324B30;
	Mon, 27 Oct 2025 22:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JtgerWjf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6546F2D94A3
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761603105; cv=none; b=aDNVRFLGBUKvkg5GYkaDhkCyQgDObSuPyYrOy7trpjTLctvOLkzyabJRWIqFpm2d01AMQvcRdVKsqwbAGIfgvHKp+3gzhHSNN90xl4FDnJb2C2vcyPg3siElve3RPr0bSZhyhaNhFZnnRnUAxQTcD4AzR+tvKw43Cko9fGt4fms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761603105; c=relaxed/simple;
	bh=/tdW9Tc35Kw3/0Y5blWohgMonE+9zr16T+U6ZKHumPk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q3aUS0nr5lIhZZfEHc8VXUfOm9cnXFD6yuqqWNVp+/pmz6yy6PCqsnXaHjt53DGwy4TfpfjG1Cmyh8V97Yirc2G0MXOqxQER377cF+e67HNTVmcgkcPwVJqlkFseyvS4RUGZ9sGeKAEkSTcCnCy0HiNI3bjF4k8cmGa5tRzpQ2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JtgerWjf; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3696f1d5102so46015571fa.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761603102; x=1762207902; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/tdW9Tc35Kw3/0Y5blWohgMonE+9zr16T+U6ZKHumPk=;
        b=JtgerWjfnNGJGdZJeAneaLeKfq3MYQX1xXHFMiLMj5HLGBgHDbWAgQ4R1Ohs4D1+T1
         CBUT4Ym+w/kAIk/kN4c4UmoN+AXvHSF7FbTRszTrHf00LuS6vWKL716sjcSR6W2IJSVr
         OtF9p2ndJtjkK5ofDnyCxLqt9jY6XRMiWYG9dpFH3MvlZrHwQIkOuDZuWRclU8EnCkjb
         wosn5OsvLXe3S+d8G2rIi6UXYxqTkvb+R/bDCOuC3jRj0Shq0jIMVN0AH6zupNCjhA9b
         BJQQlZ2OKtxwQz4VoVKujIVD4U7z/4lGEFtHIrj4uQcP2ryUEsAC5LAvnR3K+qFBKxzn
         ffCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761603102; x=1762207902;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/tdW9Tc35Kw3/0Y5blWohgMonE+9zr16T+U6ZKHumPk=;
        b=LT4pyviFp+WpYO4kILIBg7Z0mHakJ/SLOqdvMYLltpB5cnw4K+Y89Jd8I990Gbuf/t
         1cVB+VuDn7AjSCc+FAw3wIaC5c3zr2GF+Vjq5XUbdvaorq4wXCFvvyHMIHagxSfaauOQ
         +z1BKbwJmFCVdFb4BZtL4CDMZ0ZmmoCcMRcB6+TPgwmW2E/klfRqDn+d6k45Z0VL9JMB
         qTHAyYrU2nhcEY7fhkhWPZK4L9imeYvf42+ExxE7oG6ZaTHK+oE59QjHbv7RJwdjFaOE
         wHjF17R0UiblS1fGpJTEiowTsOxVtLscsf2B4+YCm4KyDwXT/c4+Nkrb+EyOLDJphakP
         thoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXM/QO5nGtAsW9TIXeTfGJTFUafFUsWITPelPKsBGa27UTsybGeylG4jWkt2mFpO/uxJSLjDNLWz+tp@vger.kernel.org
X-Gm-Message-State: AOJu0YwWUbds+AJG77cgR3X4XSArpIW+cZPzCZ9ceiEI7/cGGRaNusmj
	fxwbeQ4NkJG8kjhiX69hmDTQYSW3KLCd9kokUbyf2O9azIIwJ6qY8gQr+0BZqwceWGrNj9Q7BXk
	ZWq9jad92WzydiflIqYyO6QXP0JCMHHoH2ysWg/LCfg==
X-Gm-Gg: ASbGncu9dWEESXQ2Mtf3U2gg47L7LCnUZ2cSsyPQOFQSjXwzSwq6koVTdCwY4o+lD0E
	x0/AxKIleHWBxiVU4GRtMrCazy4hycWve4x2Dao+hI2o8URZJcBepi85Zm9ItBNmM57bnlyrKLw
	q9dldsMYfKlTDtjh4jbn9lPC9P3Ut9sUYBTJrlISNyTgi1YCpCYrv6g8bj/Run7/3Txdd1pRXfl
	EeLtxAG73C8yu3ozsSuwkCSrBliZgkB3mIvwOpNTdrnkmr52Flpr37AjUls
X-Google-Smtp-Source: AGHT+IFLT1ZdWr/hhEMnm9sTGNuOU2VvPh+C7lrdPQU4P+9e/YVXxLQp3pBZJvB8TttzAJ2Uq4NY4gf67nRQdQ5ZGG8=
X-Received: by 2002:a05:651c:885:b0:372:9505:7256 with SMTP id
 38308e7fff4ca-37907711530mr3518411fa.30.1761603101693; Mon, 27 Oct 2025
 15:11:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023132700.1199871-1-antonio.borneo@foss.st.com> <20251023132700.1199871-5-antonio.borneo@foss.st.com>
In-Reply-To: <20251023132700.1199871-5-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 23:11:29 +0100
X-Gm-Features: AWmQ_bma_Zx4YiWdv5O86TAgEFt04A-92MDE252FFHP4HKRhB_QpFTlP5ImwzJk
Message-ID: <CACRpkdZHYWMezkPq55Xmfj9U+0pALg-DJaR2bKXA95s_ptk8-Q@mail.gmail.com>
Subject: Re: [PATCH v4 04/12] dt-bindings: pincfg-node: Add properties 'skew-delay-{in,out}put-ps'
To: Antonio Borneo <antonio.borneo@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Christophe Roullier <christophe.roullier@foss.st.com>, 
	Fabien Dessenne <fabien.dessenne@foss.st.com>, Valentin Caron <valentin.caron@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 23, 2025 at 3:27=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> Add the properties 'skew-delay-input-ps' and 'skew-delay-output-ps'
> to specify independent skew delay value for the two pin's directions.
> Make the new properties unavailable when the existing property
> 'skew-delay' is selected.
>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>

Patch applied!

Yours,
Linus Walleij

