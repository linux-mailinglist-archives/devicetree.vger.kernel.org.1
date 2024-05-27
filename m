Return-Path: <devicetree+bounces-69417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A278CFCEB
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 11:31:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37BB51C21A9D
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 09:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F16C13A3F1;
	Mon, 27 May 2024 09:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZatztFKV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EAAE13A24D
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 09:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716802290; cv=none; b=DgByv31ar/Ny99Chowty0AB+Q3CLZEjZ2nmlpztU+2tAY1YaDqBJSEKGFmiCbwRJVSQ7jZTk+trBQi1MjXNn8L1rz9giYHCHLcHBVVdaMupcdtD+WDkM8KXA/gcJ1ka9H8Nl67LmhuR69T9soGAz8AgqbzqgV0ta+9TOLnp5jfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716802290; c=relaxed/simple;
	bh=7QuK+dRxWekrg4574FU6ZFuSg2KV//r1UAoPSO1UBcg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hkxgobet/567e5Hj6vZeoKCE20AAOMeE+rBAjvOzE0TCVdnmNg9k4pTyGSlozWyhG82ZkIaP17nKgMWm80D0aSjIVD/3cLmvPnqPCrNFCUmlsqY7lKFgfYYuXoOvx5JDULYTQhm+oianz45YtdHQ1N33VaD5kmpWiqm59eK0JR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZatztFKV; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5238b7d0494so11770798e87.3
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 02:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1716802287; x=1717407087; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nsle90kquxqyGATVLGaUwfEqMygpQJmcBP3wYD4Xyos=;
        b=ZatztFKVqWS4qJ8Oxy++xStcbzHAQgPQR2v71e9dokfKPy4I4lty/oZ9SwO4cjL2Yl
         GiHNwaOx3cYy4+XCv3f9UDkxGG/rRZoovDijOFoXz1Hf+u+F/9F+UADhMC5nSnxz34in
         UTIce5eoTpllOEJe5EeYhdUKNhZCW53lSfEDg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716802287; x=1717407087;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nsle90kquxqyGATVLGaUwfEqMygpQJmcBP3wYD4Xyos=;
        b=YPWkBxGzInT7xmAn/lI/CVfCuOKN9AX9Jr42oQd05zhTbLqGvUHtSi21/TWJoK2PQ1
         mwmVGq0rKjeCiOoL70XQ6bcAoVfsl2abj8jornjOQlHO1RuMm46laRyQ5ah0v+89wPiK
         +vOnjAg+A/yxdM8E3lry84yVGg9CwdnRwKsIpxZvu4RsSJ222W7bDoalWeNEukzO6DB7
         EjX5R1Mj0kDkWQOKueqIJpStrHuOipP01O8kaW4osS9MZlEsC9aXZiEhWsT1HnjP/14T
         /MgXZYnxPPSc+VdYyQhj3L7uz+V5kUOsO7tZiG+LZS5bVNannbcl0L5NRfqhPfx2ZefE
         ST+g==
X-Forwarded-Encrypted: i=1; AJvYcCW3LH2ln2RSa7YKm9osd069IFFF4idL6Vd5wgH69kPjVWTLuKnIDM7hKmdfaIUKeX9bfmTlj8fUu1rMgZfI3jwP63niPHoibzKCww==
X-Gm-Message-State: AOJu0YyUiN24sCUYfrDhX7iD5jdV0TlnfHXBx0tEu+JY+1NPvj/nllZx
	znTjQnaldCrh2V0h2K7XaRyoZuHt4OCVxa0xBlahcwKP8HMYGVM6y8OShjIPHMYAb3lfghQ351V
	y+6mh+rgc6lbG877XDWek7qZIVqTmzzlSiPM0
X-Google-Smtp-Source: AGHT+IEkCNM2qY1QxwWMjQ5Y6VGnSYpnCwe9tanGjyyeQWcnQ9MczhIoPwNeqRZhqbClYjaT+d8vnb65A/W5+FPMd1k=
X-Received: by 2002:ac2:4d91:0:b0:51f:53e0:1bc8 with SMTP id
 2adb3069b0e04-5296556f885mr7749628e87.25.1716802286862; Mon, 27 May 2024
 02:31:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240527092513.91385-1-angelogioacchino.delregno@collabora.com> <20240527092513.91385-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240527092513.91385-2-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 27 May 2024 17:31:15 +0800
Message-ID: <CAGXv+5G_n1B0yaoOBx0k8syRPma=7NnuRcSL4M0N0BJONa5fCA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpu: mali-bifrost: Add compatible for
 MT8188 SoC
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: boris.brezillon@collabora.com, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	steven.price@arm.com, matthias.bgg@gmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2024 at 5:25=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add a compatible for the MediaTek MT8188 SoC, with an integrated
> ARM Mali G57 MC3 (Valhall-JM) GPU.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml =
b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index e796a1ff8c82..4cf676190ae8 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -34,6 +34,7 @@ properties:
>            - const: arm,mali-valhall-jm # Mali Valhall GPU model/revision=
 is fully discoverable
>        - items:
>            - enum:
> +              - mediatek,mt8188-mali
>                - mediatek,mt8192-mali
>            - const: arm,mali-valhall-jm # Mali Valhall GPU model/revision=
 is fully discoverable

I believe you also need to edit one of the conditionals below so that the
number and names of the power domains are properly constrained?

ChenYu

