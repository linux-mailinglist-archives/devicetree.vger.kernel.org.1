Return-Path: <devicetree+bounces-13280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A122A7DD48C
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 18:20:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 41283B20E97
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 17:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18249208A0;
	Tue, 31 Oct 2023 17:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818632033C
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 17:20:45 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 805099F;
	Tue, 31 Oct 2023 10:20:44 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3b566ee5f1dso485619b6e.0;
        Tue, 31 Oct 2023 10:20:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698772844; x=1699377644;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s8+3OvEfjQ1ZOh8i5uNro/eWl301+Vobeupuf3v4yaM=;
        b=Rn8XQx4NK7qNQ4nYKtee6IqTLGMMJSXLEJWb1Xq4qqSRft2ePJ4nOhVvyLIAPOUiV+
         ne5z8dPzRxQdMTOM3nPpvIXRNOWbiZF/q+kgvZvqHGmrqDvzQplIdF8dHdl9r8NA1/kl
         kSF2WCeUQ8X7p8T0zYQ6M5y7Nj1+WirzwIjBgk9bWZ2bPmy1Gkmq/T04eN8XxsQhqvp+
         hzOyILmSgxfDBslfHuD2nOl6AfX8KAn+cY0wMVpXGFDjXzPLpaU3frHQR6T+JF2U3Wir
         Fo4boRRmyhQSmsvxzbVE5/3ePUMW4PFGW18l5Wb5L6j5MmPIiLRDijWClIjRCqKdcqiH
         OGzw==
X-Gm-Message-State: AOJu0YwuExXQ7n8HriRXESs86kOrJ3T/ptQZeJXwIqIN8g3sfRGqpX6c
	M4Oz1a+gpsWwML7R2dIB9A==
X-Google-Smtp-Source: AGHT+IGz/RjS0dxuITvu3VVAWhlbRHi/yN8c+EsRazfPmzlB0JHyujRyURQ9PYb8VuqE36ZzsnxseQ==
X-Received: by 2002:a05:6808:218b:b0:3ae:16b6:6346 with SMTP id be11-20020a056808218b00b003ae16b66346mr16940183oib.7.1698772843765;
        Tue, 31 Oct 2023 10:20:43 -0700 (PDT)
Received: from herring.priv ([4.31.143.193])
        by smtp.gmail.com with ESMTPSA id dn3-20020a056808618300b003b274008e46sm331948oib.0.2023.10.31.10.20.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 10:20:43 -0700 (PDT)
Received: (nullmailer pid 1762172 invoked by uid 1000);
	Tue, 31 Oct 2023 17:20:42 -0000
Date: Tue, 31 Oct 2023 12:20:42 -0500
From: Rob Herring <robh@kernel.org>
To: Moudy Ho <moudy.ho@mediatek.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, linux-arm-kernel@lists.infradead.org, David Airlie <airlied@gmail.com>, devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v9 16/16] dt-bindings: display: mediatek: padding: add
 compatible for MT8195
Message-ID: <169877278691.1760720.771717804140685552.robh@kernel.org>
References: <20231031083357.13775-1-moudy.ho@mediatek.com>
 <20231031083357.13775-17-moudy.ho@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231031083357.13775-17-moudy.ho@mediatek.com>


On Tue, 31 Oct 2023 16:33:57 +0800, Moudy Ho wrote:
> Add a compatible string for the PADDING block in MediaTek MT8195 that
> is controlled by MDP3.
> 
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,padding.yaml           | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

Missing tags:

Acked-by: Rob Herring <robh@kernel.org>




