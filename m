Return-Path: <devicetree+bounces-64707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4958BA82D
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 09:58:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9476282AD9
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 07:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52C3C147C8F;
	Fri,  3 May 2024 07:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K5JhXjhu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD671474CF
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 07:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714723086; cv=none; b=sCqWYsAWI+tmIRz3gcRn78qSXXmbd8eljNdItrJ2eRv0d1IGykosLuWwk/v+OdzASMX85FBoVQ9qHGmXSNMPRoc9SteAQG1RpGo9LrGk9aw/NFwxunr8QGX4N9/hDdQ5/KJ2lBrcJ6MtcrQL0OfPmBl6JdHBJkd5dnIGF0lZ/u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714723086; c=relaxed/simple;
	bh=9lds1dTNJm20KO2gDxu3lgrciPV698y5y+f6AzLSwyE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dzjopa3guE/isZCtgbbg13Ggshaj4yX6uBvqo70oYnex3uM/ZMVdNAlCmGjtc2c6MOB8VDg5AJx+apCL4YIgYFXyXD+hqSx1j6UqaLRlImT7Etv6yPXMdN/pLG77UZd8jqWKyPJ/bRebNXnYbkm8mVdIWMxhibUSoKzg+LoSR7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K5JhXjhu; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-de45385a1b4so8278643276.3
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 00:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714723084; x=1715327884; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9lds1dTNJm20KO2gDxu3lgrciPV698y5y+f6AzLSwyE=;
        b=K5JhXjhucB4znLF+uB/FGtrBnpkQ6Ed1SqK6TBeAL/h9zDvnt3Ht35b5qknF/ut0Lz
         Egr0k1YMgX4ZyYmbJSeSczilgscglEImgPLM175CZ+on0CiQrtiC95KJRFWRSylzk/bO
         pMopCT3MEWyq5DbQLX6b6mSfeyqmvUDJsorft1j4otZ18uyCSmvkE3/E0/rxc1i+Y/J4
         WAPAmcypM76lvsEn0mBU5LyGMS2rYkuJDOE0xevaEOjzEk0rD3/se15RzZMktNWGu+wv
         lhQKCHW7Uy7DSVBHx7lqWF47lgoQUFP5CCXO5Hr+EI3LhMBozgQLtc36O8HIWmgaM3rX
         1flw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714723084; x=1715327884;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9lds1dTNJm20KO2gDxu3lgrciPV698y5y+f6AzLSwyE=;
        b=nIAImFDRfSmp240kXSO1DGN8aA8cnJ+b8rdb0ds5xhaHnpTBOgp/8+7pRZkmEZsADV
         e7f6ZhR3eDoRHSGj6jetH7fuZswK5NyL9dl4SYtL650ZcIWeeeQWjfrLfgAhYe+JxJ6a
         MTV+u2FmfjycHodTsK/M3d+HN5u/lGYvCHrnQf1NFKJiobwPT75FLT+YlgDVXK/55Ex4
         fMC5Jrl7COOxuDT5Zkhfh8VjtwpFF5XFjiKrf61H73uCDRBnsJDVI3dmAWoPZC4JIjcY
         CxBlzTxk23IM0OG28u7r9Wo6WDY9iwt7yjMyi3yDOIo6hRDJRXaxxKfHzS5Y+TX/+t3I
         48OA==
X-Forwarded-Encrypted: i=1; AJvYcCV/VqBsPA2qvObY37RbJWXQax7VuOAImc1G3znGf5+ufR7/qZVfiVKsDIiYNiN9Xa464Fbg/azF+XkRseBWaSG0e8c8gUUru+pRTw==
X-Gm-Message-State: AOJu0Yz+aoJfKSqb2jOxPV4oYptC3zDzhANHZ1S5M9DcTfJ9vHN2Xzh9
	Y3Va1kzXWASBNJwj4AlGTOZHql/R1mhUEUpvdxGFbIu6DdIceg4NWvtgSbkgfL/FebaWhnmqeJ4
	bju+AYsNUo8qX49AY3OTIEJT4mmpeIKyEKUmJIw==
X-Google-Smtp-Source: AGHT+IEG4nOciPICYFkjWxdsB7yxrB7cRVj6SjUMBpSK0kxFtgIH4MKqI3NxijFyX2wkk8IVPl+GECzNHLPUJ6D97IM=
X-Received: by 2002:a25:cec5:0:b0:de5:6a82:49dd with SMTP id
 x188-20020a25cec5000000b00de56a8249ddmr2210883ybe.13.1714723083855; Fri, 03
 May 2024 00:58:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240424185039.1707812-1-opendmb@gmail.com> <20240424185039.1707812-2-opendmb@gmail.com>
In-Reply-To: <20240424185039.1707812-2-opendmb@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 3 May 2024 09:57:53 +0200
Message-ID: <CACRpkdZKdnDqDMnWFaZwwVW1BqcOMa8qFiu-aUbQa7UnXFtcnQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: gpio: brcmstb: add gpio-ranges
To: Doug Berger <opendmb@gmail.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Phil Elwell <phil@raspberrypi.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, bcm-kernel-feedback-list@broadcom.com, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2024 at 8:51=E2=80=AFPM Doug Berger <opendmb@gmail.com> wro=
te:

> Add optional gpio-ranges device-tree property to the Broadcom
> Set-Top-Box GPIO controller.
>
> Signed-off-by: Doug Berger <opendmb@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

