Return-Path: <devicetree+bounces-157517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE73A60E3C
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 11:08:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A87B11B608B9
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 10:08:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC7341F4162;
	Fri, 14 Mar 2025 10:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u+Nj03o9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D2D71F3BA3
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 10:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741946908; cv=none; b=ue+YxFkiJs30FFc7QSBwnaeglHgALubCCAyn1hnO9ZDPlwF/dtGAcz6gMOSiB79lDz83999oPc87Bsm2QThvCo8EDuAAANaSD72eqZsacP4nPlg5LWqVIcQeZzm8+GvXLNl7I1B3xmdUN7lh3wtv+EjbWuu3aih8LpKcjldh1aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741946908; c=relaxed/simple;
	bh=Gt/9/LzPfx6RB2Ri4REYVqp1qcpJjg1U1nS59zQ5wMY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E0bjHm+RyjzOTCwsVvuicRlxR0dQBquvU/DIzx+cBWeO0FhGdNTA6obT9wchEpiDzpCCDcVy4UVKoNdvt4klGmzWCov9Zhe2+c5vcIRyr+2CmtgFxxDUkyQR8iCByKeU9QWQUBakqoX139X828g5kU4AgW174W1byLcYsuYHFX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u+Nj03o9; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54998f865b8so1703232e87.3
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 03:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741946905; x=1742551705; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gt/9/LzPfx6RB2Ri4REYVqp1qcpJjg1U1nS59zQ5wMY=;
        b=u+Nj03o9/G6Q5npypn/X5zXy0HE3LmSGtyjbWd8mdYRJwrtUgqLSPkec4dEGk/ACXL
         ooVyGaQLstHEUyYoMlCEPiIbwqiJkc7qzgG3rjA8vZ/YnO7kXSmmoJLtP6r7G0dcX3OO
         v74t5vheXTEpJbyLqpCBGk6j8eW7cgRBxv8xqQPL5KP83OqMDNpJf38npIpc63XVfEkQ
         z+HWsgdDwvT+plIZ55k7EoNcEEaq44AUxIYeiJ+O5/wU9MdyGNrStIe5r1okuenYV9OS
         tXZE/87lJTJ1IOoO2ra12tfpLsx3CbJWp2p9PrMwF1Grv3lF93Kgm3kzaitBHGnjzFit
         2d9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741946905; x=1742551705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gt/9/LzPfx6RB2Ri4REYVqp1qcpJjg1U1nS59zQ5wMY=;
        b=e4702ond+U+yReKUNWkPbbMNe39YZzkj9X0wMLLclwAEiaY3vLrJpkgbLy7vptG+hk
         SOlLICdiXFqYAUw3gnzQvUWcnUlXIkGaKAxg9PyeIsi6cTqbMlO8wdo+XjgcPOD78SnN
         +nKpVdSco97jIply4evnQvpRhtX7hLcH4rucUvXhTRJDaDFiKyQSmuWiRjNwEPluLrG5
         CK4JjQJejvI9ZkmmbkrIyW1e3K9lOsRvUlo59hRtsgxtxeNhJH5z6WZWn9DPqKhydBir
         0g0WJ24Hp7FK/jlNk/BXE1qQ91eLwKLz3gAI1FOh96INW7WUG87K6xYaHxMOfxW8mznz
         csLg==
X-Forwarded-Encrypted: i=1; AJvYcCW0YtJJP0d8KmXPMtXOTvSeDO+WrQXrNr5Z1UX3i2qYGlAh5MMMvLW82Sm8pXzJg29HfT5dQfwEmGvK@vger.kernel.org
X-Gm-Message-State: AOJu0YzB24cEKI9nFimtOcJJko6DquD0nbBafXHjMLjWV4ZJEFeeX64G
	PgSPzsuT5wEu64JElfQcVhSeBl2YEh502D6kD8XN8ilU+9iiNrFm2caHJw6gSIQmFwiEsCnJL/f
	FgDLDV0iRE2S8Jgn5NcPTme8SOFwSgZDO7Hu3DQ==
X-Gm-Gg: ASbGncsQA3wT2guSf2CACguq3IL2LVIcOQsof4qPeV9lRRpFjrFbKimrQ0StQLVy0Ze
	esqjX6MvEwyOvaO8Lu49eC5LWvN0mOjyEmEj8yNP5xslnk07OGp+d4suXSToduBtfTeegrk2Hq0
	yfXCzjaxr8C5vrLdCFDX8vQ+Y=
X-Google-Smtp-Source: AGHT+IHJo15rlSs7Va08NHOofodKMD1H1XNIRjRaa5BY0in+MTDIERdp60qoDZO21fZpfDmKsEUFpvdk8Y2VP5vuLUk=
X-Received: by 2002:a05:6512:b94:b0:545:c1e:65fb with SMTP id
 2adb3069b0e04-549c38fbccdmr671564e87.18.1741946904682; Fri, 14 Mar 2025
 03:08:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1736522006.git.Ryan.Wanner@microchip.com> <821255840c09d8d9cebbb1f2daaedd8a7c138875.1736522006.git.Ryan.Wanner@microchip.com>
In-Reply-To: <821255840c09d8d9cebbb1f2daaedd8a7c138875.1736522006.git.Ryan.Wanner@microchip.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Mar 2025 11:08:13 +0100
X-Gm-Features: AQ5f1JqSOmT4FHz5UOAsw4lJg3-dP8L_NWpCJ5kNHWtjrkJLgD54yy-3c3bbVqU
Message-ID: <CACRpkdYYeC+2G0u0LYSUjAX_ex7MjWLhEcu7QdNXudj8BEO4PQ@mail.gmail.com>
Subject: Re: [RESEND PATCH v6 2/3] dt-bindings: pinctrl: at91-pio4: add microchip,sama7d65-pinctrl
To: Ryan.Wanner@microchip.com
Cc: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, 
	claudiu.beznea@tuxon.dev, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-serial@vger.kernel.org, 
	Dharma Balasubiramani <dharma.b@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 6, 2025 at 5:03=E2=80=AFPM <Ryan.Wanner@microchip.com> wrote:

> From: Dharma Balasubiramani <dharma.b@microchip.com>
>
> Add pinctrl bindings for microchip sama7d65 SoC.
>
> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

This patch applied to the pinctrl tree.

Yours,
Linus Walleij

