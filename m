Return-Path: <devicetree+bounces-231797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F3269C11A6E
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:17:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0FF4A4F5607
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC082F60A3;
	Mon, 27 Oct 2025 22:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YBO75K8y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0CC72DA771
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761603393; cv=none; b=NT8f1m3tpFhjReDVWlNS3ZNhNT/av6b+sUI1RwTKU0lAN7NTPtX1c/ICAtaxbnkt8KaYZmf6iLGDkIu+ROP0pQS6D+sh/oZlgfDJf87sy+w8nbXADkFWqHrk2GsD6YqPtTWjPUve6//C3wMnx99qFXLdId8JIHTnc2LBFdEKah0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761603393; c=relaxed/simple;
	bh=Zc9UIv9/MZ8vS/A9E/+9Rzg7ZN5v4cfKPUZNZPqRWGI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I8JJDeX/gC+UBJ+XCjpuWtdtDh4Pc9nkVnpMf2XJ06u3DTm1jX4ry5gFRQtoyVdyEPZHTcLdyWX6hNv8DpCNAdJLJYhSZcO4YOgGiQmddWgZjeMESzZs9btuAnzLlEvrcFxlsztzoaH+kASFnEcDG2uhlteT7xBqksVrYZt7nG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YBO75K8y; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-36d77de259bso34697381fa.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761603389; x=1762208189; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zc9UIv9/MZ8vS/A9E/+9Rzg7ZN5v4cfKPUZNZPqRWGI=;
        b=YBO75K8yUsF13/walveGNT2ZweT0wNllcspwcgJL8h3LaMCQo1lGsp9NybEP1Newyu
         +pMdrVZ6d6mbN6IigHGd2ZCFZOI0RgPjxAad0/sPa1whmuJ39p7JffuPvt3mz4TINDat
         wNR4heIFcbGrePW7FXzewvCdTlRTTrn/8tBmBmNYmtGxsm2gCTQrO32RHF/TGghyu96c
         ViljOYE+LKXhvW7e3b8Lcc93r1K28SubHSdC2f5HBIdOVC3OQ+e5r362fGjAFnGYyQ4X
         2nSjUbcmgAkyOn4xW4OCGYt23IAvRN74SN3MYNbJRHy1GN9nHe8f1l2g4EZtztx+nPaA
         AMbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761603389; x=1762208189;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zc9UIv9/MZ8vS/A9E/+9Rzg7ZN5v4cfKPUZNZPqRWGI=;
        b=l9V3zOy40VK4mWOhEdB2xrYuSWiXYSazGyMCk9IOzEbYbNUkUwIifw7w+q6SvpyaVa
         pbO17bcy55hlkmmMfeEw8G6wBmMs9DxXSr+RynnxYNyJijjnM/kTiwWxwThSlqDFTu0G
         /2YYtzzbZNkCS8h1MEJgAhkIwBfk7xKLwT2sXgoVundGv30EWteTM6T9095uhLjXItCw
         b/8V89FYrlkQSCoYAertOHDqRpMZ5FSCwzsGPzjVCf6EQWFP2SrK9ryIMq2TvQexVdSI
         HqnkZLdCuWswFp+AJxDbzqPmyR2G8Om4OP6y8sVfkvs7vdrXhcIOjcvpMyOOg3QXIAob
         hDHg==
X-Forwarded-Encrypted: i=1; AJvYcCVJFk3B9/Gz/Gn2baB4z6mzSus0jrGYILv9uUMca29IvizPWD2/55Pt2ylc6dsWRL/8vWYIMO7PblT4@vger.kernel.org
X-Gm-Message-State: AOJu0YwA6Ll9r4JY65pfgLk6a/f+SL48kBqm/V54FTEKc9gyScfieKjE
	8N5zFgkMpx6bVtguJ15OqVK0461dJhUQFjF7fuT1lp1nH7S1KmWfXJvSCAWMF5ikzkRLrnR5xbS
	CSwWfK3FODk6rcJhVzBWXfC4WnGQx0KnHBdUy8BLGzQ==
X-Gm-Gg: ASbGncu9rjWzEu/UIkylr6rKZr89Ln9c+njiLPHjMJNUv1jU5uBN6UPxEL+V4b89THn
	kKTojPB87apTlELtQUze5lwDaZ7YcwGDnXNaAK3gVrNYg4+JIvYmtoYSoYDh0m0xgi4EC+ARIGd
	ES9PHWHIl+2WVM7u/KsCve8QwRZ44Uzw9UhPgNWY0GAHxXV4mYxLUF1t205/psV2dcJS1LDjL4r
	ictujgjnMKGpzxsoVT3CquGa+F8os7g0rmg0uu9JDMBGQmT7mDAIpPJWug8
X-Google-Smtp-Source: AGHT+IFA8HV2G/sHhNwZvEShaiZsTM+MMwIFC3kj57n0Kcgm/A/zFAgZaU2xFGY5jATvp1YPW4KS9FCoawvfscRyh9U=
X-Received: by 2002:a05:651c:25d7:20b0:378:d690:5d96 with SMTP id
 38308e7fff4ca-379076a9b61mr3296741fa.8.1761603388859; Mon, 27 Oct 2025
 15:16:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023132700.1199871-1-antonio.borneo@foss.st.com> <20251023132700.1199871-12-antonio.borneo@foss.st.com>
In-Reply-To: <20251023132700.1199871-12-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 23:16:17 +0100
X-Gm-Features: AWmQ_bmBzMCqn0FgOeFfQ7QhGc6mfzGjYtXO83EFE5z1zNwN1wCq6PGHLCzury8
Message-ID: <CACRpkdY-e=KT+nOaVNaEB3nFkXTrZeJ7e47LLzD46xsfzm63sA@mail.gmail.com>
Subject: Re: [PATCH v4 11/12] dt-bindings: pinctrl: stm32: Support I/O
 synchronization parameters
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

> Document the support of the I/O synchronization parameters:
> - skew-delay-input-ps;
> - skew-delay-output-ps;
> - st,io-sync.
>
> Forbid 'skew-delay-input-ps' and 'skew-delay-output-ps' to be both
> present on the same pin.
> Allow the new properties only with compatibles that support them.
> Add an example that uses the new properties.
>
> Co-developed-by: Fabien Dessenne <fabien.dessenne@foss.st.com>
> Signed-off-by: Fabien Dessenne <fabien.dessenne@foss.st.com>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>

Patch applied!

Yours,
Linus Walleij

