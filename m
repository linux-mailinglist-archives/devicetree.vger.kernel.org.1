Return-Path: <devicetree+bounces-11388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4A77D58EB
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:42:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E5281C20C6F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:42:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEBF13588B;
	Tue, 24 Oct 2023 16:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B493AC3A
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 16:41:56 +0000 (UTC)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24B81AC;
	Tue, 24 Oct 2023 09:41:54 -0700 (PDT)
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-57d086365f7so2783873eaf.0;
        Tue, 24 Oct 2023 09:41:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698165713; x=1698770513;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m4xcdNfgUB8A/3KrK/pkTkDn6tlFzVt2oKgvssbhENc=;
        b=eY5E0So5vkWcHYAS246RbwYeqNQ0S5OMia4ymLq4Hk+jtlS9ddnwYomBAgC4Kdm7pH
         8Mq04KogbYJvbZn3U+UXaAohRqAio/CdlhQ4u7TGFdlnuiqg+4Q5jpA3TA96lTDBTBeq
         rJ9Fm4Sp/34ILfLLVTWRF3Qx/3E9kqxBAiMkUZj6LILwb7ZUBCOUqC7WfXLYi27e5HMt
         RtYr60PX17IRVljEEf0q6iTpHxsi6X4+ptvur/PzeGumQrW63SdZw4Pr1aP9R4xsNef/
         us4R2BIbsrU4XjrQV0d4V580WTzf0n3bRbfaHxfJ3dSUnIeQs4LUsV8W20X3IcQhLecB
         PeyQ==
X-Gm-Message-State: AOJu0Yzd7LmOLpBx+wbbkWF2qgPt70h++OGhk1NuERUMsUk6/Dd2F91b
	Y52fNjt6RNRUIp4tLHem+w==
X-Google-Smtp-Source: AGHT+IHYKyO3ogdUGL4R4E9sBhKDQ/3y/62tY8hPLoGpOKOm3RsZpCwkW+zvRJrXop02dDrQyVwNzw==
X-Received: by 2002:a4a:a581:0:b0:57b:469d:8af6 with SMTP id d1-20020a4aa581000000b0057b469d8af6mr13049788oom.4.1698165713249;
        Tue, 24 Oct 2023 09:41:53 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z10-20020a4ad1aa000000b00581daa5c5fdsm1993792oor.29.2023.10.24.09.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 09:41:52 -0700 (PDT)
Received: (nullmailer pid 4065610 invoked by uid 1000);
	Tue, 24 Oct 2023 16:41:51 -0000
Date: Tue, 24 Oct 2023 11:41:51 -0500
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, linux-arm-kernel@lists.infradead.org, Mark Brown <broonie@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Liam Girdwood <lgirdwood@gmail.com>, Simon Glass <sjg@chromium.org>, linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, Mathieu Poirier <mathieu.poirier@linaro.org>, Trevor Wu <trevor.wu@mediatek.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, alsa-devel@alsa-project.org, Julien Massot <julien.massot@iot.bzh>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: Drop kernel copy of common reserved-memory
 bindings
Message-ID: <169816568976.4065099.2725442642169549559.robh@kernel.org>
References: <20231013200851.347042-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013200851.347042-1-robh@kernel.org>


On Fri, 13 Oct 2023 15:08:49 -0500, Rob Herring wrote:
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

Applied, thanks!


