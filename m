Return-Path: <devicetree+bounces-180847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A52AC4FFC
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 15:37:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3731A3A8906
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:36:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 410DA2749C2;
	Tue, 27 May 2025 13:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fooishbar.org header.i=@fooishbar.org header.b="h1NH0MNe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65AC82749C7
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748353012; cv=none; b=cJuZdHe0rWBupSb635TfZ+sxhuZZY1roxLZxICwNPwK5V2BpFJSEnAD32rLRcWcEbkRWxwXf6pTFKjnx+GwG5utGkU6XJsB4vPWrMPKOqHP3WL4FLlsG04J9gHaKGaOJ44P6gPsHFp3jQ7i0mbgepT063xvyRihC2A67EYGFNoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748353012; c=relaxed/simple;
	bh=AvTQfs3820KktS4EpY0ACK+ekFwY17It+Jl26bW88XA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MAYHNdmGsCAuHq9JyONyBKVKIYpGnpW20B8mDRl27eKU+yEnvvuojZl0fst0hA3MVEQmJSPeQx6HXsFpJ7HPjAVZDI78YGcmaSUq3nZPoPvkcfSfmlOm4qK7dBQc3DJChLqiElN+PWn/6Sp6S7YdvYpZ73pryvbbdhw2PY29EhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org; spf=pass smtp.mailfrom=fooishbar.org; dkim=pass (2048-bit key) header.d=fooishbar.org header.i=@fooishbar.org header.b=h1NH0MNe; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fooishbar.org
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4768f90bf36so27438561cf.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 06:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1748353009; x=1748957809; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ish6o0Bhh995IK2wzs6updBAdJ3S2zxHBcJqrswtQm8=;
        b=h1NH0MNeS550ipTUdVLzbpSdk/a+xeQDkmN6SrZKv4NR/Xn2qT2Tt1CVztlvBH5VxU
         yVGioDCU7jz3gclD8eY9RHtc0w5cpyvi0Qk1+rho3QrFucOZOBLGi1GjonFLKb7gXhBL
         /JKo2mX1GC9QZQjA+b41bSn7dpofuDCxiiovN01+gUCkiR92uRS426MSB+rkASqLiiyv
         orfsxV7bXbOjdnLDZDSonaGBVVmod3cUX2UbzmYoziyrIrmHTV0TML+1DGQu8XN1pIU9
         i460Xg9FLMmBMUSRwFyFcZLxJMJHQ2QK7RtBcKAdF1WnE1nNKR0cTXyKeCJIw0uEdp6V
         pAAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748353009; x=1748957809;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ish6o0Bhh995IK2wzs6updBAdJ3S2zxHBcJqrswtQm8=;
        b=RG+VnaI5hkLtVyUnYt4hUWC5qfXbhbdcYV4QIBXo4BEDHhv1IXJkq/kJFwO1Ni0Vtg
         PFBqqSTN16UTuCWZxCGDk8z8ZDJWHLorXzHHEh/wUYN49dGRVxSEuWnrHGmIZvHjxFr4
         gt4kzi0Cb3LbMWVOtioEXV/uaXbA9PZGhqEJaIWa740xl+nm2cwrCJbvBQTtvZxg+H77
         pbzNgQy9AAhjj8Z9/ST2d9SKHsYYUUXKipiKIV4sIVI/knhSmxfx0QjjbftP3OBgWIMF
         Gh9y0svFUwWpwVD2k4bEvyQ9acH19DGn4mhYOVihRDgQmLrH3ahDIdQXCfSELFscjRbE
         6JWg==
X-Forwarded-Encrypted: i=1; AJvYcCULJHL2uNTIQXZe6J8ik3ZY2sWVyghbImpWuZZSqLqHwiWeNXLcSH3YX1fnw+hvyWNjr7zT+ksBaHUY@vger.kernel.org
X-Gm-Message-State: AOJu0YwKk2HFrFTA9ARvNAWsXWposK5LMTUOpoQWqPeTYxvDXKWfNV7S
	uKugOf+mIK9y/nC96VWM5YK9LfBmeOaWMRQOqomngZ2A+syfzGb3ly0cHGKdF8r2sbxYElwuQ/K
	VeUJc3UbO+RXIv/adu9uGxgWtaNg3Qt9pFinugwEUug==
X-Gm-Gg: ASbGncuOdgsdoxfQ24xxnjdkvyML05sirDecLRir2If194mSVsM2AtS1uYNiOkPneGY
	Vj91uuudq1ag2UUdLvEExBSw0PgukWHWjUngYIl4loWPnl8QnYX0STTajhdG8mf2kYpUwqukj6P
	8dhqMk8Sz/mFRGGAGcvUCvubfK05fzEQ==
X-Google-Smtp-Source: AGHT+IHr4jwrHqEJczRvGQzuN87CsS5C28zJXtY9UXRLqVMsScrfx0niqPKTlAIrCpVv2931fOLgMYPlwCUzMNEDANw=
X-Received: by 2002:a05:622a:1f8e:b0:476:8eb5:1669 with SMTP id
 d75a77b69052e-49f4781ed76mr216619901cf.32.1748353009174; Tue, 27 May 2025
 06:36:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250525051639.68753-2-krzysztof.kozlowski@linaro.org>
 <CAPj87rMjAv-UphvFuQjop60o=wHrkfs4-XOM=JqH7f8Kk5dyVg@mail.gmail.com> <e462cdc4-7243-4cef-bd1d-a0ef551b3a87@kernel.org>
In-Reply-To: <e462cdc4-7243-4cef-bd1d-a0ef551b3a87@kernel.org>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 27 May 2025 14:36:37 +0100
X-Gm-Features: AX0GCFvEuF0JQkg3QiWt8vTrQrmgkUnYilTb6_QdjwVCLuie3br5KvhEpdyYryI
Message-ID: <CAPj87rNZPub=hEs+86JNfR-iqiuRYGGGKGsYyXtE1aUt8dEyUA@mail.gmail.com>
Subject: Re: [PATCH] media: dt-bindings: mediatek: Constrain iommus
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Hi,

On Sun, 25 May 2025 at 11:51, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On 25/05/2025 12:48, Daniel Stone wrote:
> > On Sun, 25 May 2025 at 06:16, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml
> >> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml
> >> @@ -45,9 +45,8 @@ properties:
> >>        - description: OVL-2L Clock
> >>
> >>    iommus:
> >> -    description:
> >> -      This property should point to the respective IOMMU block with master port as argument,
> >> -      see Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml for details.
> >> +    minItems: 1
> >> +    maxItems: 2
> >
> > The comment removals are not documented in the commit message, and
> > it's not clear why removing information and references would be a good
> > thing.
> It's obvious, isn't? The consumer shall not define which provider has to
> use or how many cells provider has.

If you feel the change is good, then document it in the commit
message, and ideally also use separate commits rather than throwing in
unrelated changes into a commit which does not explain anything.
Again, the kernel documentation explains how you can structure your
commits in a better way.

Cheers,
Daniel

