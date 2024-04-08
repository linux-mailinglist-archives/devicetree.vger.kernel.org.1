Return-Path: <devicetree+bounces-57019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F53589B65D
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 05:20:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D03E7B224B9
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 03:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F8BA1C0DEE;
	Mon,  8 Apr 2024 03:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Jgvbo77O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A104A1D
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 03:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712546444; cv=none; b=qniFjqHq+YO/xmYBNtDHkaJmwWkaCp53yvQzIIFenlxfBVarQ0I8V6XuyEsqNElWiRrR8tOiLZEFIwBJeF0wlbMTqIHmmHCj1yoGLkZHz0ykTd1Y51hG/nTAlYvQY8sGq5ZEthhhlLh0dwUDFB5IcgSDpyss07NRNofg7w5l/EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712546444; c=relaxed/simple;
	bh=ojK6SlOHB17tCQIV04NpYZqymOAkU5cXNzX5Jd0mImg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EGpTxycjqSymOL8EnP6dENDF1kQ/8wGIDWHpJadQ8/FBUn88Lq7+NKZ6d4PR9k69DcWj+TeqiI7tbKKVOBl0EZVvpbOt+J7lG0uvdMKnB/VeP9y72I4dQ8ipZuHH5gc1ySqruJ0YzjnSqTyovY1ihgPOGhgiurwkutQgHLIxGT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Jgvbo77O; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-516cdb21b34so4974338e87.1
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 20:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1712546440; x=1713151240; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=98HjqpVnhziiB+tCaWwhwMYDm4sqJVU4VjSmJrU5jEA=;
        b=Jgvbo77OgskNj717YL/OH8Zzr+IFirQN6aNdcMrDZiJKlxRKcuLAClsIAIHEzls4IQ
         TSiwigGNwvjB+X105/9mjnrYFI5w8xsMv7wy4sVc8E3F7svn6vnFf5sa9xfuKrU1jgO2
         aB700zL/5TeLFkkstALTt9IyncZqI58Z6ku1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712546440; x=1713151240;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=98HjqpVnhziiB+tCaWwhwMYDm4sqJVU4VjSmJrU5jEA=;
        b=XqL4MTZBC4QYaia9pVEzcDTs63j8M/56MSJJHnxw8iOk27yB3opA8TY5JJTd424pkV
         7sib00Y6uMGQOPRBaK+XEvDdwMVIWbsgFYAtUKy6eMdmitnY7vf8BdsDZOlAK/jdqqvN
         UOLU40LplQolRFIbWnw512lDSS8UgevOXakZDY4LMOCKziUiepQ/yiVXJZFAEnwBhEhq
         sHF2Ldpfx/s0n3yoIdaP4t9SlnmRh3SCelFPf1vH72BU2g2swwTmLxjwWFdVI0vZuN8p
         RgaAGbhBVaOSAhx1ZcYwa/hK8J0+eH6jImzubghMRVR7ii9+I7x6rZhgRksYB7WzBCFw
         qWqA==
X-Forwarded-Encrypted: i=1; AJvYcCXQXQGcwWXL96ixXKbfPSx8cIJFwpra+/l8mZjPSuENCKa3koPhy23Qx2oQgahetyE2tmGITwGlyNkbbxfOxVtIdgTvigTLgE58DA==
X-Gm-Message-State: AOJu0YzJF+FISo/DzpmEwvYhSTOX/8mER9JA/4Kjr3JPs0O6uvSuAqRU
	oEeMvWIFIUu8b7xel2BiKoHXyXaJRL8NU5aFWHHBULYi5F94xhYHQHtwzhqHRNz1czBxjG8boUP
	39FRavUE5UoOnoC+V1j5T9oEiLwu1q4xiMB+S
X-Google-Smtp-Source: AGHT+IHuBtoFanL6B/nTcj9Kemw5PgQtwvNM2fnCIIxrkvDK6Jp2siBTaJuK5OcN28aTlKvZ82j9f5EXF+Ms0ZDwh3M=
X-Received: by 2002:ac2:4c13:0:b0:513:d71e:eeab with SMTP id
 t19-20020ac24c13000000b00513d71eeeabmr5343840lfq.45.1712546440562; Sun, 07
 Apr 2024 20:20:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240404081635.91412-1-angelogioacchino.delregno@collabora.com> <20240404081635.91412-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240404081635.91412-3-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 8 Apr 2024 11:20:29 +0800
Message-ID: <CAGXv+5F9rfTVDExKSCF7fBKwR+HijNzFYE6+4aHKw3ZP81DG9w@mail.gmail.com>
Subject: Re: [PATCH v1 2/3] dt-bindings: arm: mediatek: mmsys: Add OF graph
 support for board path
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunkuang.hu@kernel.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	matthias.bgg@gmail.com, shawn.sung@mediatek.com, yu-chang.lee@mediatek.com, 
	ck.hu@mediatek.com, jitao.shi@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 4, 2024 at 4:16=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Document OF graph on MMSYS/VDOSYS: this supports up to three DDP paths
> per HW instance (so potentially up to six displays for multi-vdo SoCs).
>
> The MMSYS or VDOSYS is always the first component in the DDP pipeline,
> so it only supports an output port with multiple endpoints - where each
> endpoint defines the starting point for one of the (currently three)
> possible hardware paths.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  .../bindings/arm/mediatek/mediatek,mmsys.yaml | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsy=
s.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
> index b3c6888c1457..90758bb5bcb1 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
> @@ -93,6 +93,29 @@ properties:
>    '#reset-cells':
>      const: 1
>
> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port
> +    description:
> +      Output port node. This port connects the MMSYS/VDOSYS output to
> +      the first component of one display pipeline, for example one of
> +      the available OVL or RDMA blocks.
> +      Some MediaTek SoCs support up to three display outputs per MMSYS.
> +    properties:
> +      endpoint@0:
> +        $ref: /schemas/graph.yaml#/properties/endpoint
> +        description: Output to the primary display pipeline
> +
> +      endpoint@1:
> +        $ref: /schemas/graph.yaml#/properties/endpoint
> +        description: Output to the secondary display pipeline
> +
> +      endpoint@2:
> +        $ref: /schemas/graph.yaml#/properties/endpoint
> +        description: Output to the tertiary display pipeline
> +
> +      required:
> +        - endpoint@0
> +

Technically the mmsys device serves as an glue layer for the display
pipeline, providing things like clock control and signal routing; the
device itself is not part of the pipeline, and probably shouldn't be
part of the graph?

ChenYu

>  required:
>    - compatible
>    - reg
> --
> 2.44.0
>

