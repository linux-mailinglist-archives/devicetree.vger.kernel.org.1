Return-Path: <devicetree+bounces-222777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C2CBACCDF
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:23:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E1583A708D
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 12:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1B412F7AB1;
	Tue, 30 Sep 2025 12:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VeB6/Iys"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27E272617
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759235020; cv=none; b=qFBDtwog2FTFFSu1aZ/j9AKGP303o9zFd0GdxLedzjmAf8YOPIgqowmQ89qWlLAU0dwYen9bdDot7vK27ZM6XQWqKD372DwXVm+kl4386ds2mEg/DMLmjuAOTQFNy7r9TRWNKLp0q9LW5BgzDMmZXiuk92UBWREv2KpHb6LpDcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759235020; c=relaxed/simple;
	bh=CFblSBEdSaQGPX0Gc4Q+qwyfooSQGZjP6fJV0qhJXws=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dONG/2XFwyRMm5rs45aaBjUTOQaXlffTrypwPUkAtjHXOJitbYMMN2enxkP7i3+MO91NXmLp5DfDDdupJZi8lkFmJMVQ/6gBBEpEjewFTlMzgVcm1JE5D6e+GtcAu5sCmr1PJkfA/9f59iLrkovqfLo3/+HKd398g5Bf0dXc188=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VeB6/Iys; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-367444a3e2aso67541521fa.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759235017; x=1759839817; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R5mPBHZgztFe+UJNNaee0Rp7S41YshdGbGpEnWAlyw0=;
        b=VeB6/IysHU6UTkhoMmezC0i5vJzBLzgRMh/19vWeF7D8jw5B4rsja9YZjH8aMRw1xw
         CnZvtj8YEFLkBIivPYiE7qkA8wiw3zpREhwRqUpTmJyKNXSBM05vKlRk50IMHcxjvK61
         21g/NhbHx+tQlNcawKDn1+yX+8e5TCgt42WZVwUr37Fpt2nPnf1Vdb5+H5n9GAM7lHQO
         yKw/O0JjBCgSFR9PEGwgdzj0Uf6J3dSFf3ytAkLjdpOcHLhSS+G/lXOM6GkZktOes6Nj
         hSOf2ReqPUGL57uKMz+mxc+yZsO/oIedb/z6PF12QNUw4Bt9iqlfvstfYuJCcorGOB22
         HxsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759235017; x=1759839817;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R5mPBHZgztFe+UJNNaee0Rp7S41YshdGbGpEnWAlyw0=;
        b=t7mJdT73j0Wb3iLCNCmesaLECtyIv9es5bW0Xp+RPmdjhsdIUJ6fG6J991RgSPKqGv
         VdiSvz8IJYBH+AkFknkvumy7Kpj8eXdq2B7cLA96lOf+8RJYGlBwKJTh8i5yvulM+yWm
         uBNs9rcHm0pQHqCHSzhnq/bX0NYe7BvCZ8Qt3x2MoGhyHz4ieSfha4O/fldORK4lemN0
         8Lqv0lXcXEGrjztH82ga8+ogDbQw9V2Rm6FL1nM0x8a4Y1HqUnP3QoSJocCrgOPA8egE
         8fA9x+wUnlgcovD+9YDGnRwIwGH/O6eVBMXNSFoGF7pRoQVwh8ZTFUhbm3KD8jSDM+aV
         fOEw==
X-Forwarded-Encrypted: i=1; AJvYcCVZYfSs9y/WD5br8JNyZYdxYAEQ0cv7hlg/PPInp21E47ktt8cZxSR9o2BCJqQ9yfh/ypfIdz9tJhIc@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ33TuEaETsV5bRUhGqxFukk9F6b2zcon6P6IR2zQKV5XaULfn
	HkgI/Q86yDvar+dfDfsLQqAGgq3Jt4ALhIpBpqS/AyAm+oZQyNpC8URmOcTr8x0PigjWhIfImRD
	MzBeNSXiMq2Gq5lmRaBZ8NiFMQbm1EDobHAioCORODw==
X-Gm-Gg: ASbGncvRV9Nt/LSbG29fFs7OmIWGsM71ssLOuva3/L5EVwMN1eLHr8BT22sYDo6JJXH
	6631AIP/ih73I4cNqL9d0E2eyPT2eFtDMBffqPdbEg3qyEHeQB4ga4TtuXGsg7t9bxAv410IlAT
	4nzOhUa9BIFV+Ijf4cZoetP75LL4jKGnEPUVEcKImRBnNgMNudvGTGtPzx3zStlSwXMD0k8CBeq
	1uMiJ3WPHuuBsGZxvic0kg4jx1nqGWpVfGL8hhK5Q==
X-Google-Smtp-Source: AGHT+IGSs2X9ijyFw3JfP/dbcoV1x5reGxsDzHTGImekBQcST65Fp+vF2qwnOoDfoooKD5etndPOpCBR4hOz+YmTkyE=
X-Received: by 2002:a05:651c:1541:b0:363:f65f:ddcb with SMTP id
 38308e7fff4ca-36f7d8c0278mr61009281fa.18.1759235016634; Tue, 30 Sep 2025
 05:23:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250905135547.934729-1-antonio.borneo@foss.st.com> <20250905135547.934729-3-antonio.borneo@foss.st.com>
In-Reply-To: <20250905135547.934729-3-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 30 Sep 2025 14:23:25 +0200
X-Gm-Features: AS18NWDLuT_uRRtCvqxguuDTeW5zZ6aEk6iy9iHLeu2I6jlVchqTLlkeIzQ-p-Y
Message-ID: <CACRpkdZCKXYEegV1cK6X9A9k8ORLWweBQs40PWYuTof3JgcC2w@mail.gmail.com>
Subject: Re: [PATCH v2 2/9] dt-bindings: pincfg-node: Add property "skew-delay-direction"
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

Hi Antonio,

thanks for your patch!

And sorry that it takes so long for me to review it! :(

On Fri, Sep 5, 2025 at 3:56=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> Add the property "skew-delay-direction" to specify on which pin's
> direction (either input, output or both) the value of the generic
> property 'skew-delay' applies.
> For backward compatibility, 'skew-delay' applies on both input and
> output directions when the new property is not present or has
> value '0'.
>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>
(...)
> +  skew-delay-direction:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2]
> +    default: 0
> +    description: |
> +      0: skew-delay applies to both input and output directions
> +      1: skew-delay applies only to the output direction
> +      2: skew-delay applies only to the input direction

Unfortunately I don't think this will work, because skew-delay
has a value, and with this scheme we can only specify that we
want this value to affect both in/out, only in or only out.

What happens when someone want to configure different
skew delay for input and output?

I think it is better to add:

skew-delay-input =3D <u32>;
skew-delay-output =3D <u32>;

So the drivers that need this explicitly specified will need
to just define one of these instead.

If you want to be very determined, make the schema
not accept skew-delay if either skew-delay-input
or skew-delay-output is specified.

Yours,
Linus Walleij

