Return-Path: <devicetree+bounces-180326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 90397AC33F9
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 12:49:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 495E11767D2
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 10:49:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3644B1E5B62;
	Sun, 25 May 2025 10:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fooishbar.org header.i=@fooishbar.org header.b="glfrNzCg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A76A1EEE6
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 10:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748170140; cv=none; b=ctW2xlgyjcr76K2ONnNaZWD+9qsy9Y48lyPr26TPco/biOJ2waCTT20u+0EqVnMAeZY3/uyXDcfjbp3Ahv4tLaFkQTaROjJJwT7OpLRTYO921xuGm3BV6rSZO4ZWkPHfgLbYzZgbIFONNV+UHTS2I6ftJYzC131HgVo80Q6d5XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748170140; c=relaxed/simple;
	bh=PfOgIElE5pq0uCyaPuIg1zUcV9z6TscBLmCbJ/3yXOg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tMqvDFB+AgMNN4ll7ZhcCD3MhDaqD/RSQ+tLxVVVeHrtBwnpGPCdHGhV61tzwqh/tFyVmMf85azF3EzowULWbQx0uAiDFc4qtF6EImyJ0snnY+NJOG7ja7eJP9zWPOb4FKemkqWmUQIaDzePqtSA24dhH9cYvHQJ/1FeF9h0Duc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org; spf=pass smtp.mailfrom=fooishbar.org; dkim=pass (2048-bit key) header.d=fooishbar.org header.i=@fooishbar.org header.b=glfrNzCg; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fooishbar.org
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7c559b3eb0bso64548485a.1
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 03:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1748170136; x=1748774936; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FvMZwrrK4O9JD71L3DzuziqxKKZYlUuX09bTEYlT1Yw=;
        b=glfrNzCgcEDYE6kd+Ur+dTnZTJRqAdj8K6hw5HLXm6mieJYAB37sXm/BQIG7/yOfg9
         LmIFjd/21QwL5jlhfn+mrCtXfI6OSMD5JhRwTdYZycsCPMmfEHAXBgTN/8XjICollbVU
         JVqNS0+1SykNvBiZ6uAvLne0CHMQ+gjo4M2+YpeiHs7euuHj1acYlZUhuXc/xH9n7Uy/
         3neyMmStvpvw4FF4mBAddLnhK8ksYLmjl8PKOXWJaX/r2OlYiXEV8qS0YeB0CaWfprq/
         O6C+7N4oWWF8R15hi/rgHhfE8DtTKg2PdHi8/Dt+0rVNirWOXzZnA/f+f5tomIrNzBSq
         BNXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748170136; x=1748774936;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FvMZwrrK4O9JD71L3DzuziqxKKZYlUuX09bTEYlT1Yw=;
        b=Y2P4oaS6QZBGcp3MAzjEDnjhKBm+55oX/3LJm3k8kQT8kr60qZM7BgYhl3SDURrvgv
         D2PMJ+Whc9qH1ocQiASG1Z2BFPuvUdw8iX6p5boeQztSrCgELNkIJnntsNvyQZ/5ot+t
         xKmswb9xxIB+XjqSfyaSeqKvCUb5rbdGlaqgDJGcaNdLVe/5HKtGrznuFQyBcrIUgWWZ
         5VRC3GEYD8FwWQnJP7bMqKBTHOjdNsO4e3JU614HjABewtBIxVFUV7DaID3HYr1FOVNQ
         /3j7qJybGBeZ31f/Iv9Uku2b7/9jtGfcnJCpIcYrvPmyVEPR8X1a7OPCw9V7PKxgTogN
         1B/A==
X-Forwarded-Encrypted: i=1; AJvYcCVrUcE5ib+iBbrhU/elZCiAp6TLCv9Z8qbIrM9pww6G+DiQq4GyzJtilyu1Sf4jJ0VlEznBkJagw5Lx@vger.kernel.org
X-Gm-Message-State: AOJu0YwEXj1yAl+OHh3W2RaxhagE7S6VXnvSH8aosqS3BviRinTu2NC5
	6ZLKkUGD2OAwBXelnLemBcjPvAW18ujT2YanD2fqtNyCe/13jKwVE/0r1iCXQUxGYfvP59KzukN
	1vk7C6aIGfa3KlqelMAqSfd49hUnjaYLmv5iKnmIV0g==
X-Gm-Gg: ASbGncsIrHl3nioyzWCVxa0W++qVXfIg/psip4h1Me9Vd2SuBUt1qeeux2O5KabouIW
	aeDxlRarDU657MSb28edYIb9kmHiBMWxNX2n6Tn/wSwtm3pJhjGNYeT/9BN2LR2WS9d1sHP+yQA
	oKpEXUFcoTInbI/0ALYIhVLi0NeY42foqlxK4nU2z3
X-Google-Smtp-Source: AGHT+IHfLSQWm00np5MOUI9iSgjHG0uz8ZjLmKg3AyhQjzrIGk08erFcga0ZJK90E1+3HR6kZwenz2fYr+3ziRhndi0=
X-Received: by 2002:a05:622a:488e:b0:476:7d74:dd10 with SMTP id
 d75a77b69052e-49f46750736mr95207921cf.19.1748170136440; Sun, 25 May 2025
 03:48:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250525051639.68753-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250525051639.68753-2-krzysztof.kozlowski@linaro.org>
From: Daniel Stone <daniel@fooishbar.org>
Date: Sun, 25 May 2025 11:48:44 +0100
X-Gm-Features: AX0GCFtHF5h48b9Isl1N9tQLNjTjzN8BGszS3KNow9_vXa4svv2OiPk4eOV2_U8
Message-ID: <CAPj87rMjAv-UphvFuQjop60o=wHrkfs4-XOM=JqH7f8Kk5dyVg@mail.gmail.com>
Subject: Re: [PATCH] media: dt-bindings: mediatek: Constrain iommus
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 25 May 2025 at 06:16, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml
> @@ -45,9 +45,8 @@ properties:
>        - description: OVL-2L Clock
>
>    iommus:
> -    description:
> -      This property should point to the respective IOMMU block with master port as argument,
> -      see Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml for details.
> +    minItems: 1
> +    maxItems: 2

The comment removals are not documented in the commit message, and
it's not clear why removing information and references would be a good
thing.

Please see https://www.kernel.org/doc/html/latest/process/submitting-patches.html
for information on how to submit good-quality patches that can be
better reviwed by maintainers.

