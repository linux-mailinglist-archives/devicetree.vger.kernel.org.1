Return-Path: <devicetree+bounces-8597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 491167C8ECA
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 23:12:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83C931C20A83
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 21:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B33241E5;
	Fri, 13 Oct 2023 21:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dO1GIqem"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33826219FC
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 21:12:05 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 634FAC9
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 14:12:03 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-53406799540so4429550a12.1
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 14:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697231522; x=1697836322; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UHVs5ZMbCMnK4OZxIw3w4X3jAnHxQSIJjis2sL1D3HI=;
        b=dO1GIqemepXjKGmg3lbpqPOar2nZH1kZ3q1HZ8PumN652eubsrxfpovlesXbIiWea0
         TzSK2tE9GRnVgJeuN20VbS+sZHfKhw3w+DFLwOQnJunWnKtmFzcEQYy4h7I6unhWhjTC
         DXnucm7AwN6816jyQ1rZ9l7EM9k0vKpfyUaio=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697231522; x=1697836322;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UHVs5ZMbCMnK4OZxIw3w4X3jAnHxQSIJjis2sL1D3HI=;
        b=DmvQNhkPoXPmqWzqVSFrIHooR4r1/ecyGlluo2nmJBHYrAtskXyE66ne9OjdfZT6V4
         IBXrLUmd3RgUrBua7RgJkK20levZv2j9FFAbJxtAvh1U0dqESzOxYv3SXA/rRzF9/3M0
         ezSrlfYhAsb9m6WczLvgwzxqH9IOlEu6NxTmvSoj2PWqRmypaIlMJNFt/85RU0Iyx5nn
         PFVdmjT4cMEM1vy7hI54M+Xf1qPhGSg888CgmnEztgcHgsuComuAWZ4S2H/nFpd+2aS4
         wc99xd0SDJZfqtd2Cz+h6fTrbBYuYSsA7Ra15U67c+Nd/MB+vTGY3uKZNCEfD5zR2UN9
         AnRQ==
X-Gm-Message-State: AOJu0YxVc/oVdZId+Mh6wQIMUA2+ywXJxyDLglghgzCPRu6dN5sPSb/B
	+NpG560fWHwmnjSY0f/DuJSH8VI5OrNYB7kY4sIOpw==
X-Google-Smtp-Source: AGHT+IEuNA+Q2Yxxws7amOJuXWe3ey6jbnUkGbWIJda+AVzB6s8jOrXT89FhBxT8kIo26PoR154bP2xzv0Ano/B3pdA=
X-Received: by 2002:a17:907:60cb:b0:9be:7b67:1673 with SMTP id
 hv11-20020a17090760cb00b009be7b671673mr337821ejc.1.1697231521525; Fri, 13 Oct
 2023 14:12:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231013200851.347042-1-robh@kernel.org>
In-Reply-To: <20231013200851.347042-1-robh@kernel.org>
From: Simon Glass <sjg@chromium.org>
Date: Fri, 13 Oct 2023 14:11:50 -0700
Message-ID: <CAPnjgZ0Uh7RTvYfLjEL7g1NjC1pO8-xJuj9RBSVVnwviAwzF0Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Drop kernel copy of common reserved-memory bindings
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Julien Massot <julien.massot@iot.bzh>, Trevor Wu <trevor.wu@mediatek.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 13 Oct 2023 at 13:45, Rob Herring <robh@kernel.org> wrote:
>
> The common reserved-memory bindings have recently been copied from the
> kernel tree into dtschema. The preference is to host common, stable
> bindings in dtschema. As reserved-memory is documented in the DT Spec,
> it meets the criteria.
>
> The v2023.09 version of dtschema is what contains the reserved-memory
> schemas we depend on, so bump the minimum version to that. Otherwise,
> references to these schemas will generate errors.
>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/Makefile    |   2 +-
>  .../remoteproc/renesas,rcar-rproc.yaml        |   2 +-
>  .../bindings/reserved-memory/framebuffer.yaml |  52 -----
>  .../reserved-memory/memory-region.yaml        |  40 ----
>  .../reserved-memory/reserved-memory.txt       |   2 +-
>  .../reserved-memory/reserved-memory.yaml      | 181 ------------------
>  .../reserved-memory/shared-dma-pool.yaml      |  97 ----------
>  .../bindings/sound/mediatek,mt8188-afe.yaml   |   2 +-
>  8 files changed, 4 insertions(+), 374 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/reserved-memory/framebuffer.yaml
>  delete mode 100644 Documentation/devicetree/bindings/reserved-memory/memory-region.yaml
>  delete mode 100644 Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
>  delete mode 100644 Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
>

Reviewed-by: Simon Glass <sjg@chromium.org>

