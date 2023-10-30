Return-Path: <devicetree+bounces-12956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E62167DC06D
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 20:27:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6A6F3B20C2F
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 19:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16A4D19BDF;
	Mon, 30 Oct 2023 19:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C814F33F9
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 19:26:55 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CDE1E4;
	Mon, 30 Oct 2023 12:26:54 -0700 (PDT)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1e9c42fc0c9so2103436fac.1;
        Mon, 30 Oct 2023 12:26:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698694013; x=1699298813;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iMNn8gw95Mi9aB89F2PItspCe/uKw0JKgKBsspi+cN0=;
        b=H3hYl9/5AEmeDUWeqUCd4Aji/6RvVBo1bPiikl/cDWVI5gF5hseDW99QdecsIwpN39
         Vg3ZcixOnbZxBFOmngZdlAyTg5cuswLQdIe/qnJeYe2/bJm6GlDNCCtWaHQVQrVBtm12
         7wsy3UEc6L0/mPsXR+6snAv+rtyO404qoqkKMAkCDSz32qXkNFfgSB2XVZZeHpoGweah
         Hp8FRot0M5AgBl5LmPzJzHkNwL/VCuGxxmX6XgS93F4ls3rjOdD4aqNnljiR7Gt29NXk
         UQ/NquTd5nDA27/rs7n49CVX4U6ijusoDxoU+lB362mGgLwLoKY9OQK/xcI+xG1jr8K0
         R3Gg==
X-Gm-Message-State: AOJu0Yzq5WBv4AovSkQGKcDOARbQYNjAsAg117Y58g2EvhCv+Sz9pmGq
	7iBlR2b6BFHz2Aby9bseIA==
X-Google-Smtp-Source: AGHT+IFqVwsmxx+ch82fJSmqPqoTwRaa9+WOEzKyddP42zM17GUxUkOuZQ+88pjFz/wQkY8Sp+ZVPw==
X-Received: by 2002:a05:6870:d8c8:b0:1ea:ce71:dd13 with SMTP id of8-20020a056870d8c800b001eace71dd13mr10661464oac.28.1698694013252;
        Mon, 30 Oct 2023 12:26:53 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6c7:c3eb:a6fd:69b4:aba3:6929])
        by smtp.gmail.com with ESMTPSA id bh9-20020a056871948900b001cc9bc7b569sm1702946oac.27.2023.10.30.12.26.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 12:26:52 -0700 (PDT)
Received: (nullmailer pid 1994506 invoked by uid 1000);
	Mon, 30 Oct 2023 19:26:50 -0000
Date: Mon, 30 Oct 2023 14:26:50 -0500
From: Rob Herring <robh@kernel.org>
To: Moudy Ho <moudy.ho@mediatek.com>
Cc: David Airlie <airlied@gmail.com>, Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Chun-Kuang Hu <chunkuang.hu@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-mediatek@lists.infradead.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v8 16/16] dt-bindings: display: mediatek: padding: add
 compatible for MT8195
Message-ID: <169869400953.1994265.3434527810955780048.robh@kernel.org>
References: <20231030100022.9262-1-moudy.ho@mediatek.com>
 <20231030100022.9262-17-moudy.ho@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231030100022.9262-17-moudy.ho@mediatek.com>


On Mon, 30 Oct 2023 18:00:22 +0800, Moudy Ho wrote:
> Add a compatible string for the PADDING block in MediaTek MT8195 that
> is controlled by MDP3.
> 
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,padding.yaml           | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


