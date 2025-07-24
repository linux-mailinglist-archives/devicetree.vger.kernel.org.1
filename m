Return-Path: <devicetree+bounces-199350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39901B10583
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 11:17:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F30633A666A
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 09:16:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 085D2258CF7;
	Thu, 24 Jul 2025 09:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NSfngbi+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD9024C077
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753348597; cv=none; b=T0K3WhXj23EwLGNUZtmrO2t0LEr9zuPkjtYmiZDf36K9cHxVqqRIjvK0DNNdORQzex8pcgv6BnKZoNTcYuZOZUL14wWoPTpmv6K/8qFrUnQwhJcrfveIChaNP1aPLVUYnSnnLMtfwyhK00NzN1TPoMjKv2AKG1dw4hr/vgBIoNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753348597; c=relaxed/simple;
	bh=+Z5k7cYpy/tb3WBWJYgYNu2N1HaIlkdbbuwQhmQGG2A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pi3roIvIYzmwsGrk10yc2gaMibDhu3cHPZxGg6MTb7yPjNZJbcDrwvJTbZYOx8Sh2eIg+6DeRFcs2W2ew1DJri0jZvJoW6OYf3+XqQjNPKSdPRX5IjsOuyP/G2hMoGibiEeMvCNjcWiBY9bjTZzqJEtbGhq0E2W/0cvf/LDlPxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NSfngbi+; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-55628eaec6cso720949e87.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 02:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753348593; x=1753953393; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1EGUBO7UhvbornJQ/pvHFRfx3IzKAnj1mgdzrBixYxY=;
        b=NSfngbi+EdP+b2lqHxlZKJqnzPS4zhclgoqqq+ra7+Hv99LcP+FSVIsZaJcs2FhecI
         nR9kLmfIuVJHiOS0S3vMmxv/gXOZWj5EG2VMZihq7UxEuaMt0s945yQ6sOKOTC7FRKfj
         e4/NLsRu8RpKVatV8x3jxfwUFT8MDZaybw1lw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753348593; x=1753953393;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1EGUBO7UhvbornJQ/pvHFRfx3IzKAnj1mgdzrBixYxY=;
        b=iYb5cmNMtjXUancr2ivrfCJdbNMq51I0RZQuESGTY/b8bScABxWsIguNoBHSGnVgXa
         N2omWRDUpW5qo0uOmTFn9a9YF81PTjp4hJkrE81AuVlqbcfWFciVs9LcG5hRTK1SbO2G
         QQs3fcavimTtyXzxqYhjAEAECqCrnvwI34zh4XBuYPXlLK6XDB2+zFCMqdB7yRynYlOY
         kDojhEh9u3YV0/UJv4M07MJsTXHw2R0wBwxgKWILk5ciuWjnt/x2LM07lriMjI1H8XKz
         OXSpclMsx1DG9LfUdDmqPB8uF55zl37vew4leVvSXZ9KfIJwLMFHRy2qwkMtxST4Ih7c
         0Kzw==
X-Forwarded-Encrypted: i=1; AJvYcCU+NRcSIv2P82AhMmvdMEzQMgm5azrx3ed70g5j6MwMG4ZfR6duTJOZzDmrZGofKjtzT8PRJfcec2oS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4tHeS6FsL29R0FVAeQ4k+TYDOeUCWfTKnirBc4GRFwFARn7OI
	NeCYW9UeaqJUPAd3saLBl/ddVcZTY/TK2PUf6zNFbo7lvltZsaqpxbUnSXMxIrJROhLxjrDuQ1J
	IEOz/ViUS/WEEErg3f9pnCQlOcDSsHZszo2xcTkZL
X-Gm-Gg: ASbGncso3zcwidvNImqWW8hMekL1dWsdTCVxs5ZvZeBh+1zOjUBAigx5HqmsaLfjlKZ
	kMsmzr8ZwnYGDKOu+0cB0R/0ecCE5phHqOHhD+R1U6WT8eCWQCAiFDDXaTquLBEAwlUc69wEsay
	Vt6NubI/AQRrlKYnT2H1cki5i1aOBrdmxyebtuigDLdNyokymfnpJGf8ZISduXfhuCpOtxbD9a+
	vC8CbAOR8qbzPNhItxdOfUmWyb5RdExR44=
X-Google-Smtp-Source: AGHT+IFazo0IJsf/W4w5gkkS9NANKkfwPsnIOoIE7mqPwq0TufYlLOotKobMGK5+6Hu6w3hpGvP3VOsw43jDOtB0xs8=
X-Received: by 2002:a05:6512:3ba6:b0:553:6583:8e6 with SMTP id
 2adb3069b0e04-55a5136bd25mr1849929e87.15.1753348592903; Thu, 24 Jul 2025
 02:16:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-2-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Jul 2025 17:16:21 +0800
X-Gm-Features: Ac12FXzsHRsmJR2EJuPhkIesX-COS28ovNftNstiUszbMRhNBb7-HPz6xQpMdw4
Message-ID: <CAGXv+5HTdK8aiUYdtNVhWAvsSNfMPgK6iCqe-Jsb-OBqQBWsBg@mail.gmail.com>
Subject: Re: [PATCH 01/38] dt-bindings: display: mediatek: dpi: Allow
 specifying resets
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	herbert@gondor.apana.org.au, davem@davemloft.net, krzk+dt@kernel.org, 
	conor+dt@kernel.org, chunkuang.hu@kernel.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, jassisinghbrar@gmail.com, 
	mchehab@kernel.org, matthias.bgg@gmail.com, chunfeng.yun@mediatek.com, 
	vkoul@kernel.org, kishon@kernel.org, sean.wang@kernel.org, 
	linus.walleij@linaro.org, lgirdwood@gmail.com, broonie@kernel.org, 
	andersson@kernel.org, mathieu.poirier@linaro.org, daniel.lezcano@linaro.org, 
	tglx@linutronix.de, atenart@kernel.org, jitao.shi@mediatek.com, 
	ck.hu@mediatek.com, houlong.wei@mediatek.com, 
	kyrie.wu@mediatek.corp-partner.google.com, andy.teng@mediatek.com, 
	tinghan.shen@mediatek.com, jiaxin.yu@mediatek.com, shane.chien@mediatek.com, 
	olivia.wen@mediatek.com, granquet@baylibre.com, eugen.hristev@linaro.org, 
	arnd@arndb.de, sam.shih@mediatek.com, jieyy.yang@mediatek.com, 
	frank-w@public-files.de, mwalle@kernel.org, fparent@baylibre.com, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 24, 2025 at 4:39=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Even though the DPI IP has a reset bit on all MediaTek SoCs, it
> is optional, and has always been unused until MT8195; specifically:
> on older SoCs, like MT8173, the reset bit is located in MMSYS, and
> on newer SoCs, like MT8195, it is located in VDOSYS.
>
> For this reason, allow specifying the resets and reset-names on
> all MediaTek SoCs.
>
> Those properties are optional because there are multiple ways to
> reset this IP and the reset lines in MM/VDO are used only if the
> IP cannot perform warm-reset.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dpi.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.=
yaml
> index b659d79393a8..eb4f276e8dc4 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yam=
l
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yam=
l
> @@ -102,6 +102,13 @@ properties:
>        - port@0
>        - port@1
>
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    items:
> +      - const: dpi
> +

Do we really need the name if there is only one though?

>  required:
>    - compatible
>    - reg
> --
> 2.50.1
>

