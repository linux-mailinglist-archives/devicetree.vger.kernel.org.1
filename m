Return-Path: <devicetree+bounces-136796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC44FA0633F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 18:23:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C1C2E1606DB
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 17:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C52D200106;
	Wed,  8 Jan 2025 17:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDRWwEs0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7BB11FFC70;
	Wed,  8 Jan 2025 17:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736356978; cv=none; b=Przt530xGLKrfqnTrd2y7zs7R7PmNwFOiigpkqyN0XeHKQRm7E0oAEuFTFl2Px1MzNs0dGZG2W2DzTw9EuT+PxFE0CL2ohBj0bR+t5X36K1HoUw/cTOmh2XNeBfa07Wnc50+bS5J2hA5e3r0YnVX+ApVu9A9VJf7DwUx4UUpfM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736356978; c=relaxed/simple;
	bh=4Ydr7yi76iazvT8hxdJ9xbcASYnOkd7PlygWZLznx94=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=XsJEX+/0AcHGAG6zqLWcGZQCEr2DXiZm/5S6p5styAazGwypZJUoeCPvpMqbnyy695eGHAWgmsR/8VJl0gs/C/OOUbpSC081OOMRPJeeFSxA7xzIuArLlKjxG8FzBwr/hgiY+zS8aQ5pjkL16yDIgw01IAKcNHvkqzeDXvatInc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDRWwEs0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 263CFC4CEDF;
	Wed,  8 Jan 2025 17:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736356977;
	bh=4Ydr7yi76iazvT8hxdJ9xbcASYnOkd7PlygWZLznx94=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=GDRWwEs0sFFQZz5pukUgBa5/qHIharZsVrjp1Szv1XZIYq0mcJXwXDunw7TSdJy7C
	 EWSuURzoOEzEgNYnzZCYUCbwLRVi9nR128FbshAobTXsy+1mu5xKEmPFIolpIbgC/x
	 c691CtShFY4nzDQoiNjEjgMKpFqPFZlsF0nPzQ8UQKsCSZR0rmpPP7m4qhgOFz7/tV
	 uIyKvHIV6GWw01qEuTgzpGeZxLIPZPZV8jgUMi8n++Ojqf9wm6Sgug/nZqzzEJoG2n
	 toK05X/FADFN4YwW92OsYHJp5ib0Va06sfG+pGr15t4gtkJHA1gZA0fwb8zWeasZ+1
	 jJEYP31wh0oNw==
Date: Wed, 08 Jan 2025 11:22:55 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 Maxime Ripard <mripard@kernel.org>, Fabien Parent <fparent@baylibre.com>, 
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Simona Vetter <simona.vetter@ffwll.ch>, CK Hu <ck.hu@mediatek.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 linux-kernel@vger.kernel.org, Jitao Shi <jitao.shi@mediatek.com>, 
 Conor Dooley <conor+dt@kernel.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: amergnat@baylibre.com
In-Reply-To: <20231023-display-support-v5-1-3905f1e4b835@baylibre.com>
References: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
 <20231023-display-support-v5-1-3905f1e4b835@baylibre.com>
Message-Id: <173635697547.725897.5297567835361998238.robh@kernel.org>
Subject: Re: [PATCH v5 1/7] dt-bindings: display: mediatek: dpi: add
 power-domains property


On Wed, 08 Jan 2025 17:15:43 +0100, amergnat@baylibre.com wrote:
> From: Fabien Parent <fparent@baylibre.com>
> 
> DPI is part of the display / multimedia block in MediaTek SoCs, and
> always have a power-domain (at least in the upstream device-trees).
> Add the power-domains property to the binding documentation.
> 
> Fixes: 9273cf7d3942 ("dt-bindings: display: mediatek: convert the dpi bindings to yaml")
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml:100:3: [error] duplication of key "power-domains" in mapping (key-duplicates)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml: ignoring, error parsing file
./Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml:100:3: found duplicate key "power-domains" with value "{}" (original value: "{}")
make[2]: *** Deleting file 'Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.example.dts'
Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml:100:3: found duplicate key "power-domains" with value "{}" (original value: "{}")
make[2]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.example.dts] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1506: dt_binding_check] Error 2
make: *** [Makefile:251: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231023-display-support-v5-1-3905f1e4b835@baylibre.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


