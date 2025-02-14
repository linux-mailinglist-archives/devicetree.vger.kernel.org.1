Return-Path: <devicetree+bounces-146770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B02E2A361A2
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 16:26:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5020F188EF45
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 15:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6746266EE3;
	Fri, 14 Feb 2025 15:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qF8e0ZKg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C4826656A
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 15:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739546767; cv=none; b=bCtI5redaAKAfBNmaSP6SEGT+hS6TEMY1ESvNP6z3kO5i9bUkp8tbBo+fjGTeG2KRGxGq76keIFNrYHPnUNzenSkqryZHZ+iXRfHUFWwfsw0yWNnP15PFmVQeFCdAK5hLGuyCcVAbPWtUOBq7hVX0Q5QUSWjbdi54UPzHmNCCtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739546767; c=relaxed/simple;
	bh=aTKpNIO8BVUvvqOEl+Eu3gFI8x59iG70MSZOgbD3qR8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DoaI78c1s5d96z9+aoY0OtL1yJt/FYfRr11e1TBZhlC9hAkktuqIyyLVKn/mZFM8DczHmJ95vNHz/LZpQGjX9n12+Pa7nTaq1Lkwu5isTIdHMyaVyqVksn2euwdsYuAZ++YesQYFZMEITqwnHLazuNDJz2yfqKyDugnAL9HmmiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qF8e0ZKg; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e573136107bso1963383276.3
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 07:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739546764; x=1740151564; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=40kfap8VDfDH8hk27H/hMJFx9uMBhXw6N31yql9KOwE=;
        b=qF8e0ZKgKmi0OXccMLxqRLdA+6u/1IuSy8R8VEQ0riJkjbEm+SnlA/zsFux6EBxv1h
         Tp3qphAt9K6u/1kw49vt0sm5lF1uNIW81eH/uoJ0D4L7rOudT8brqQXhF/aRsc/5RFED
         1aFdSjLn3v8P9FZwsUnVgwV4V11ibOrUq8X6Q2Bt0UKcRPTd1dEqo6/4dJJTbHr9HAJX
         FwbIZNioJUuW7bVX0X60Vi9nsJUhdlLxKX59Ao41HdrVMwkuFfLzk2d0kOpI9m/rKnLA
         oYonzF1Pv528fog3d8/qf6P+3G1B+mi7aCNKit+d9LgrX7qMk4RWvbjJ6T48zLB1dSdD
         NMxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739546764; x=1740151564;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=40kfap8VDfDH8hk27H/hMJFx9uMBhXw6N31yql9KOwE=;
        b=gU2fOyT8um2ByF5f18mA1Dybywwv1tIN4VQbj8iqVqMaGtPaaEPHMzljXwkxrqG3Bt
         GVvyvzQWT3AGAPQw0HE+O/SqPGbZouH50HdhUB4+RC/uA2qA1xzMJumlks7uvlpviFan
         +cdCx74ryBNY8UhconwSgQw1bq9Qo6VnpMAdy/lo9K9lKM6kJi8zgpB7hmWpExyja/zp
         iTPBcRWi3Bd+dx03JM4QQsirOVDpw3J8pTkA6dd8y5Qmc9FDA3YBN8MCcK2KYpHcaUrN
         bQVu3hRekzN4tGxoMsP0uHdJnYy49Q+WFL5Nbs5CGBC8aTNhghx+vQdAh0nxm0uq4oKR
         W4yg==
X-Forwarded-Encrypted: i=1; AJvYcCUkOcCO1TicnOgl09UbDdLn51mShiFzzt0pF0S1YVdkFNYsCmUp8Y1hfEoPRn78IGse1GjtEPL4njCI@vger.kernel.org
X-Gm-Message-State: AOJu0YxdYNvNSK41NsYBnF32236tQ9YbzDss+XNbdvUAi9RYjSoia4OW
	cRRyc7z2KtId+OX0ApUYF0s318eTbqYmTtOpx5RYxMR/KYC0TwqoujM9/nEjAIuVbtVlI9UVqBQ
	QDbvRAIEUGJM9WgcgsXSUAZzBSi3jbE3rI86XlQ==
X-Gm-Gg: ASbGncucXfoZ2Df2O5j5uhknvfu0IEMEiRcVVARhJeg0JWYBKjPEh3ooQZz/5Bzh4nS
	NN1NIGSUuqDUOUx4TJ4GEeM+a8i3Vg+YtlMWhssQ6LhVKM2t0TugJddw2PAscs2+wI5qrYNOOh1
	AAgCiLsiDIW8WQBlRDTNp+V+bQoDmsrAE=
X-Google-Smtp-Source: AGHT+IHZ2AvHwjAm58HmrUXzBfbtKaNh3ZhqjYj/r3cal992zurt7vRZq2oTP2grTR9IpbqtQfo+RsuwG6l/eqWLOA4=
X-Received: by 2002:a05:6902:270a:b0:e58:37fe:4a17 with SMTP id
 3f1490d57ef6-e5d9f1965cdmr11696325276.46.1739546763637; Fri, 14 Feb 2025
 07:26:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250214043343.263-1-wachiturroxd150@gmail.com> <20250214043343.263-2-wachiturroxd150@gmail.com>
In-Reply-To: <20250214043343.263-2-wachiturroxd150@gmail.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 14 Feb 2025 09:25:52 -0600
X-Gm-Features: AWEUYZm0a9iYbwJFulT6QDwvSZFUTkts4BDa7xViN-gwjOa66CO2DAjmCUVdtNI
Message-ID: <CAPLW+4miogww5cgf=Vd_A0dX0=JaH+CV2G8__3Nx6B-Wddu9PA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] spi: dt-bindings: samsung: add samsung,exynos990-spi
 compatible
To: Denzeel Oliva <wachiturroxd150@gmail.com>
Cc: andi.shyti@kernel.org, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, 
	linux-spi@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 13, 2025 at 10:34=E2=80=AFPM Denzeel Oliva
<wachiturroxd150@gmail.com> wrote:
>
> Add "samsung,exynos990-spi" dedicated compatible for the SPI controller
> on Exynos990 SoC. This ensures proper representation of the hardware
> in the device tree.
>
> Signed-off-by: Denzeel Oliva <wachiturroxd150@gmail.com>

If someone gives you any tags (like Reviewed-by, Acked-by, etc.)
during previous patch version review round, you should collect them
and add those around here. Only tags for the final patch series
version (which is picked up by a maintainer) will be handled by the
maintainer.

> ---

Please always add a change log for each patch version under "---"
line, it helps reviewers and maintainers understand what to look for
while reviewing. Something like:

Changes in v3:
  - none
Changes in v2:
  - changed this
  - changed that

>  Documentation/devicetree/bindings/spi/samsung,spi.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/spi/samsung,spi.yaml b/Doc=
umentation/devicetree/bindings/spi/samsung,spi.yaml
> index 3c206a64d..1d3c95bd2 100644
> --- a/Documentation/devicetree/bindings/spi/samsung,spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
> @@ -24,6 +24,7 @@ properties:
>            - samsung,exynos4210-spi
>            - samsung,exynos5433-spi
>            - samsung,exynos850-spi
> +          - samsung,exynos990-spi
>            - samsung,exynosautov9-spi
>            - tesla,fsd-spi
>        - items:
> --
> 2.48.1
>
>

