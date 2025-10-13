Return-Path: <devicetree+bounces-225963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BC6BD28A9
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:22:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E75854EC29A
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8B0A2FF14C;
	Mon, 13 Oct 2025 10:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tn4AMXvL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37C31FE451
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760350942; cv=none; b=sk0WYjflwDYf4oeq/+17YwxmVD5Q9sUCWjlue/nUs8bp/bXc83WUGjxl1uC2HhUSvmPnRfxB13W5jHwxFftOcJtM7oxQrHPmRHuBwdcTCpFEExjBwGSTK4Xuy1mVRL8VP0gEQRpOYUkuNqAPFYqD9k3wsCJK/ogeMAiRJRXJgpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760350942; c=relaxed/simple;
	bh=J0YVa95Ez3fXkjsDuSjMGBX3HxLIWmcP2kzWtuxN1l4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EQyz/JeqfWil5jCwaBganSxF60BeC5kcH1CtUUAKSgCc6Ld+gw6VGj90eko/TwqPkp+qcqQF7kQzM1u+CXWXCyKwTztvPTwzDbQJ3QWm93xKh18MGbmdytp8eyiiCd2gVVdWoaHV1otgRfW24tCVSTWEVcZXpBT1eLK1FcOF80c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tn4AMXvL; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3696f1d5102so38614741fa.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760350938; x=1760955738; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J0YVa95Ez3fXkjsDuSjMGBX3HxLIWmcP2kzWtuxN1l4=;
        b=Tn4AMXvL+mZhvmxc/MctQS9zlQk6xCQhCqtvzpuxU/9ieJ2oa9yoMddqOT3mG908Ma
         Hc38u8FRja6QHwDUI6OA+wB3FoHVFKH1PEwGRGAGq2LSdIM1hqQSyQvrTEbqExaEtZy6
         L+9MYT0pvVq9xb35emWfBlRQYK2aAHUTmxYwc9xS1+Pxyize+A3IxNBueGshakQ8pJXj
         quoI7BTb+B1FFLm3tMndfFRy5zkmOlmhR5g7ZGJSwBOJVfcX/g8OeBCuX9wAraefquBt
         q3oF3BFW9fIBZkXgbyAuM4FckYBYPJHe2ByFQTgcXCbdX3t5emfftvESh9pvp6YnA3zX
         rc9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760350938; x=1760955738;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J0YVa95Ez3fXkjsDuSjMGBX3HxLIWmcP2kzWtuxN1l4=;
        b=g2JcR6sOyYzlzIVJlsTSoa23uPn7pVjvN291UkotsRY8TF7KXLHVyq00X8A0/mtAIP
         0860zqB/en/m468axfr17iYaU43qB2xtxh+Xn3DEozdt2oFfX9+KmVNa5S8T2c/3n+Rq
         NANktuzmiuLxQJCJonYiSAaMLajbWOeCqGgXO4hoMGC8yWBxLEFUJuT8b7jBg8AiaGI3
         B2b0SB+a+GaAyWv/Kv83uR6DWTuKvioWkGag68q4IoXNFvYHErdjSzMMBzl2x2Wcg8L+
         xJmvXUhuTL7Rhw6e2yqcXUIN6k13rAHROILC5rfZ3JHyjVCewu23KY2B1kp4kD4dX7qv
         qIYw==
X-Forwarded-Encrypted: i=1; AJvYcCX6wqCoydHrL3I8sUVZrASFMzi5kH3nRzhr5QfYab+Mar2Oih/hVeHdw5PGAR9PuPQwQGf9s4+iciyE@vger.kernel.org
X-Gm-Message-State: AOJu0YzMMbYltgffjKqcYjKN1HtRHXmJ6QyCboleLNdj7qa0/1Ib0QEK
	J8dVTCx1Zc6R4fCKU4DqL/OLSUyFIERe8IcuSVSxl3h/Y41jxCH9WQWxDUjgMwbZK2nVpWDkwaM
	/XWh3m59bh3N87E7581bbxyyxOmKTGSmB1RWdwqRmuw==
X-Gm-Gg: ASbGncuWXxKBkQVSiRfJ14tG/jRwYZoEidOBcz0pMsRDjKaMa9Dm+O9hGiQgMQqVRwy
	5tQGxLMDhOR4uoHKp17xUV4rlY5IGxDLsMcQBh3jnzEwv5i5MFrkuQS9L0K+sOOr8LN8zz6tTpb
	oDj9HfGelbWhw8BXwnLAehrrC2WhRxfqP6eqycNrH4zdD8/vjYKcnGXjdebfZtnbeGmHloeFxgN
	J9PbJb2RT/njcqU/nui+J+QCeoEejNaKs9f4oZ8
X-Google-Smtp-Source: AGHT+IENaEcC3/wZaVUeeDsXpBkIr3KX7viprB/pcczwPYsh26J5YtWYqjYpftNdfDJE/OvtfEnuPnKWez6O/cJUrSU=
X-Received: by 2002:a05:651c:254c:10b0:376:4320:e34c with SMTP id
 38308e7fff4ca-3764320eb7bmr17947211fa.46.1760350938409; Mon, 13 Oct 2025
 03:22:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924223201.2952988-1-robh@kernel.org>
In-Reply-To: <20250924223201.2952988-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Oct 2025 12:22:07 +0200
X-Gm-Features: AS18NWBwORgIspwCI_5ukY34xV9cV74ksQiqXEWSRd7YtTs1Q41FvnzidRhvUj4
Message-ID: <CACRpkdashCu1Se0DofbtRbck54QE8nW666GvDitFT4LT4_2Q7Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Convert Marvell Berlin pinctrl to
 DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Antoine Tenart <atenart@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 25, 2025 at 12:32=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org=
> wrote:

> Convert the Marvell/Synaptics Berlin pinctrl binding to DT schema
> format. The "reg" property was not documented for the newer SoCs.
> Otherwise, it's a straight-forward conversion.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> With this Berlin is warning free on arm64.

Patch applied, thanks for fixing this!

Yours,
Linus Walleij

