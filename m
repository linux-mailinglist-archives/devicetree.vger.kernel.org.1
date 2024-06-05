Return-Path: <devicetree+bounces-72514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F038FC29A
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 06:20:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B0FC2840F4
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 04:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74D165C603;
	Wed,  5 Jun 2024 04:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="m5YInhKJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923862C95
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 04:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717561229; cv=none; b=PRkYGh66M5nC08UqJlMRQTddbUUhXF/TPdmr9XGQWbtK0jUBGgO2A/hH5xbQRdAg0JjWkvacefQ6gv7maGzl2ARceLYM9LofXHSr/w3AJBNOSTbucArBxUw2U3xrDjGXWpUA3SblcCS3y2uCRa8A13Ey5UJk0AFwy+btP4hWFG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717561229; c=relaxed/simple;
	bh=3LZDHieJ/4GM7xzNV/3GL4OdbwuZh84bv9wkWZHpSzc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GpVEDKawSmYSo1pq0wN7RFbxVxOon5BqZsS8ziBVVST99IPcmCeisdyp2oSWBFvxpGc3GaQ48kmCOm53IVcsx+tdgZnwSoFyNJZcu7OzcN++9LWmxlON3s3zhAaoSYwfCN1mkWaRHwxldt+sr/rMHZjMBFCQKC9umAwz0l8fONE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=m5YInhKJ; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52b93370ad0so5406320e87.2
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 21:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717561225; x=1718166025; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gzVsE2WVQtDSaAM6UmCM20Z/lAeEvRcu2iqhxm+Mwa8=;
        b=m5YInhKJcOOrYPcsOSy1mWKAhzerK+RmbcwYwG62wCG+X4/xtt+qk0PljFnuaPHC6B
         qg9yblt7ol6WvZqS1X53XzQVuAh8mLNFjr7hZEKD1n03vuB0v1XpefCjqF/pJSOMG4K0
         sbTkBJ7jun9ac9Z6Nkec8kMHlyYPh3LtgCbX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717561225; x=1718166025;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gzVsE2WVQtDSaAM6UmCM20Z/lAeEvRcu2iqhxm+Mwa8=;
        b=E9sQO1bhlHuvXA74i79tgjh8XzvLzcMmah7UhpXSgIRgUlnjrrLWE4bSWVCLQLK1ix
         fTya61UyK84JiwdwE1z7sbqzGnwbExL2UtUG/EoLbVcs/GTriN+JVrO/OTD/21uPqej6
         3kWWKb4elhs1rwMhdRYrfU4oM6DiCTwdcY4s9AUAkfzS1NYu1977BQuxtvRQ7LDp22EW
         MLVduZeHEcIBbfQoHkS6xU5GfSH9fKYwlJnOb0wSuw4f7WiMfs+7oFVmQLE490ziw03j
         MZGQUa7HoqNYeOj2Eix49usvaT8xGnYIs/yJ2evkxO6mBcMTqVXUq6QHLO92UhjNZy/9
         CHDw==
X-Forwarded-Encrypted: i=1; AJvYcCVNZpOqe6zx5bhDfiI9OUajVvmY9aPMsVYYHSTy44xAInDmDv4+bG6V1t6ngA8mQ4ES4laVglVwWb+CwJ2r6lJcaoUIswF5vdwuPA==
X-Gm-Message-State: AOJu0Yw3BzW7NlxN9zitG+Jt1qdc+HSZ0fzmjtqZiDohcOUxfXhUeDGh
	3dWcYhhFJpC4p1uD/hpDTRs3QxMcUfvGmHEKhvVEDR2ZVkwYf64DsOyQ+s41hB4foZqB2ETCXpJ
	qpex6HddGBduoXOAx0+4wivOhVoCHWcx3PTcd
X-Google-Smtp-Source: AGHT+IFjiCTeLxR5Rrc6kuVzd7PjI0caEZqFLRKsHokalU9T+t04/Xl7kHt8MmAkD3exLz2xwKl4SHO//vTdXIubI38=
X-Received: by 2002:a05:6512:b9e:b0:529:b718:8d00 with SMTP id
 2adb3069b0e04-52bab4ca25fmr1391310e87.8.1717561224514; Tue, 04 Jun 2024
 21:20:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240604123922.331469-1-angelogioacchino.delregno@collabora.com> <20240604123922.331469-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240604123922.331469-2-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 5 Jun 2024 12:20:13 +0800
Message-ID: <CAGXv+5E09RGRX=7Ra0H-VtbPKMVg6MiM+hZn75AyJ0KmEd5EEw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpu: mali-bifrost: Add compatible for
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

On Tue, Jun 4, 2024 at 8:39=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add a compatible for the MediaTek MT8188 SoC, with an integrated
> ARM Mali G57 MC3 (Valhall-JM) GPU.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml =
b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index e796a1ff8c82..8acb46adabe2 100644
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
>
> @@ -195,7 +196,9 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: mediatek,mt8183b-mali
> +            enum:
> +              - mediatek,mt8183b-mali
> +              - mediatek,mt8188-mali
>      then:
>        properties:
>          power-domains:
> --
> 2.45.1
>
>

