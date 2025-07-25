Return-Path: <devicetree+bounces-199756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 78009B11DDD
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 13:46:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5AB301CE3CC3
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 11:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC58E2E7631;
	Fri, 25 Jul 2025 11:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cUJTlrk1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DFF02E6D1C
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 11:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753444003; cv=none; b=LMMRI3jIRE+b9pRITOd9eYe3IgozpY1+cEjL4qsJx5dqqbeVqtga9wD1MYRs5LqAs+dDXT5rngqA8hvJQA2f1d/uxN4r3bMJqB5hfalGXTo/gOSsQid/5nHE4YtGer4u5TXGpCwj5dbPLEC7vdYUk/azOJQ/s2SVTsOBNMnne/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753444003; c=relaxed/simple;
	bh=AyRroNoAAfZMLYMuOWzL5KFUvjXMr31GJOyZqB2g5AQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YmfY/0KzDGlo4di4DidV4OFNpEXcldoi87trhjmSffD/CCWWoGQy3toKu8HfDJOEmKDjnn62bRkzDH7lcB5qHFRlV/kR7tyqj/lfy1TeWXBcs0c6tizHqfchjz3t65qsj6NTgue0U9vGrAPdUckc7DSjpgHpOzTu0zrdIPA6+oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cUJTlrk1; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-74931666cbcso1836365b3a.0
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 04:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753444002; x=1754048802; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t63BOHgVickClQUeVRs7VclE4TnB0fFJ8koSEGsWT2s=;
        b=cUJTlrk1ewhxV/kf41Pp3uKt/EitW0FxDNL6aRzH/3lQXrmIN6MytZ6bJ5geXGSMl7
         H3elLkWp9jVdbs99DHsqRKwFJwllaYc4eFq6wN9sFMstVaTb9oqrxr3+uRy8P0/jhTyt
         /sI/6I0/hUgA4jbI4F4N3M4+hMDYTLPLP1RKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753444002; x=1754048802;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t63BOHgVickClQUeVRs7VclE4TnB0fFJ8koSEGsWT2s=;
        b=nv3jR1DEi1zBxfDOqmub6+79bL/B3s968JhTS77+ti9x1iRASFSHpuJ/Ms0oyLSOW9
         O5Ddnf4X1HDf1bK9ClNvSYLwP3ezXViZwkwL6/neF0moqPipv3Xz1hvcrHZdibZnLTf9
         Enx5MYzfCWNTVfePg6ms09oiTH26yi8ph2IQqHuilb+dU4axtywX4j/nvwHiOzKPU1Ih
         4jRC/FwYRMBHe7quy8JU9QTCCTQfYEhwHBrdZu4oO6KtNVIYqkx/XL6Pb7+hSQVwFiyE
         G0G7pkH4CdOmpakgexI+MSC+PNMsfEVbQB+HSajIWev4mpJlYVnfpCfufKYjta5uSBjx
         9Deg==
X-Forwarded-Encrypted: i=1; AJvYcCU/TVtBeLrnPsDRjubO8mbj7BTSLloELpGH5NdKvt8/Waf/toeYRUHwVZEqafTqzaGKrtiGEkmTs4j7@vger.kernel.org
X-Gm-Message-State: AOJu0YzytISbd16YaOSuD8Et+LaZzaL/wUFkXoJecGn8vB6Ojo6z/E+f
	Q8CEGSUMpnvsq+AAvNYbs75PvQ7kgvcWUiSmJFQYlu6wYcrLCvxlx0QzEnFmKsq4i3Oxp+bTcbm
	WW8uS8Nok
X-Gm-Gg: ASbGncvE6NSpwVl6zn5ZAjx0le5LD9gA4nebHD5ozTEnIkBq85DNM2lSgtirARan+0d
	MkbD/pP2wWnyUIfI7c8jYHp0r5m9zBI5hiSVr8sjID5vq8KMRk4yrHMc9Dy8ZPzVu65vjlf/y4a
	Rirbk+lfTyYgaJ2i1E8S8eNST1sZuE+jfQ05j+p1b0HkLpMxEghqaTDFxt3e7jTRT+ldsm1JjKz
	7Vy2JncxByYyHNy8ce6HrKwqyqKou50VKG1xqa1tlGdR3/CBsrFwE5YJ+bM2sKUhdRVPJQuVLCO
	d6UnZQD/Djk9Selxf5F/167cZULefpWVPmYQYW5PArM4bJdgLIbtU4k8haJcmm3uAfRWmecb1L5
	w796mV62mqNnn+X2VyXY/aGS8IvGiyxTg8M1agOc6BaJlGbsJUWx75YjUJUKPGg==
X-Google-Smtp-Source: AGHT+IGw53wZHQ28HnvMLYd0g9am5bLxsyuox1vjQJH78V6QOjU6Pl5n4ZWRe32qqRMhV0ZsBbUsRg==
X-Received: by 2002:a05:6a00:14c9:b0:748:fcfa:8be2 with SMTP id d2e1a72fcca58-763325782d7mr2652757b3a.2.1753444001672;
        Fri, 25 Jul 2025 04:46:41 -0700 (PDT)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com. [209.85.214.181])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-761adc70302sm3690911b3a.27.2025.07.25.04.46.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 04:46:41 -0700 (PDT)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-235e1d710d8so26303975ad.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 04:46:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV6BSiMtMPQCKucEJSAIRdqR2VSyBwN96GL9baMvKnV1vlPjmiHN/hPJYtyUnP9mphuplkZlnovmNjM@vger.kernel.org
X-Received: by 2002:a05:6102:3053:b0:4e6:67f6:e9af with SMTP id
 ada2fe7eead31-4fa3fa71860mr256656137.9.1753440125688; Fri, 25 Jul 2025
 03:42:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-27-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-27-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:41:29 +0800
X-Gmail-Original-Message-ID: <CAC=S1ni_6YRK0RWheKZJDgCknaZzPsde0J4dFdmkNhY7HMMD+w@mail.gmail.com>
X-Gm-Features: Ac12FXwspafB6XO0s33DaaDCIfXTapXC0TbPbPDsXvwxpmO6Wfy_iIb8kWhO-Rk
Message-ID: <CAC=S1ni_6YRK0RWheKZJDgCknaZzPsde0J4dFdmkNhY7HMMD+w@mail.gmail.com>
Subject: Re: [PATCH 26/38] arm64: dts: mediatek: acelink-ew-7886cax: Remove
 unnecessary cells in spi-nand
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	daniel.lezcano@linaro.org, mwalle@kernel.org, devicetree@vger.kernel.org, 
	linus.walleij@linaro.org, linux-remoteproc@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	olivia.wen@mediatek.com, shane.chien@mediatek.com, linux-gpio@vger.kernel.org, 
	linux-phy@lists.infradead.org, airlied@gmail.com, simona@ffwll.ch, 
	herbert@gondor.apana.org.au, jassisinghbrar@gmail.com, jiaxin.yu@mediatek.com, 
	andy.teng@mediatek.com, chunfeng.yun@mediatek.com, jieyy.yang@mediatek.com, 
	chunkuang.hu@kernel.org, conor+dt@kernel.org, jitao.shi@mediatek.com, 
	p.zabel@pengutronix.de, arnd@arndb.de, kishon@kernel.org, 
	kyrie.wu@mediatek.corp-partner.google.com, maarten.lankhorst@linux.intel.com, 
	tinghan.shen@mediatek.com, mripard@kernel.org, ck.hu@mediatek.com, 
	broonie@kernel.org, eugen.hristev@linaro.org, houlong.wei@mediatek.com, 
	matthias.bgg@gmail.com, tglx@linutronix.de, mchehab@kernel.org, 
	linux-arm-kernel@lists.infradead.org, granquet@baylibre.com, 
	sam.shih@mediatek.com, mathieu.poirier@linaro.org, fparent@baylibre.com, 
	andersson@kernel.org, sean.wang@kernel.org, linux-sound@vger.kernel.org, 
	lgirdwood@gmail.com, vkoul@kernel.org, linux-crypto@vger.kernel.org, 
	tzimmermann@suse.de, atenart@kernel.org, krzk+dt@kernel.org, 
	linux-media@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 24, 2025 at 5:50=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> There is no need to specify #address-cells and #size-cells in a
> node that has only one non-addressable subnode, and this is the
> case of the flash@0 node in this devicetree, as it has only one
> "partitions" subnode.
>
> Remove those to suppress an avoid_unnecessary_addr_size warning.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Fei Shao <fshao@chromium.org>

> ---
>  arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts =
b/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
> index 08b3b0827436..30805a610262 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
> @@ -98,8 +98,6 @@ &spi0 {
>         flash@0 {
>                 compatible =3D "spi-nand";
>                 reg =3D <0>;
> -               #address-cells =3D <1>;
> -               #size-cells =3D <1>;
>                 spi-max-frequency =3D <52000000>;
>                 spi-rx-bus-width =3D <4>;
>                 spi-tx-bus-width =3D <4>;
> --
> 2.50.1
>
>

