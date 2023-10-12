Return-Path: <devicetree+bounces-8209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEB67C7274
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 18:25:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 097881C20A1D
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:25:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE328328AA;
	Thu, 12 Oct 2023 16:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmifaNqV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF3126288
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 16:25:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CCC2C433C8;
	Thu, 12 Oct 2023 16:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697127924;
	bh=9feK3ItMeeWwJ7VIPlyWwFyXf9aBwpQbldW6FpaCPok=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MmifaNqVW0KF2jEk/QREfOeHUJJUTjUuR3z0Y7YzK/2lxDPf9rHQGgKgaHY65EXWd
	 6A37+tC0FyDH0IMKT7Ape4MnoBEOrVGKvU4RIsui53qz7heLWtCnPICUmj+yprUCuc
	 y/lmrDPTmwebPd65iJ+2z2dEr03L1Hpcz3dlzsPShupRgJsA9uNtbI5kUJgFNBtn7d
	 dghuOJvsMkZXBhaHMk6fu7dC8hFFs0XdZmdQ5Bb22ZpEtUP8bd6Zg/l9lpQXRVsRPB
	 8aRf5Ww2EVmOdoQ2W1uN02GQAhG+B8FMklmXGFFe2AFvS9TU9Ce270JNi0ElWgr3vt
	 sYha2tz+uzW0Q==
Received: (nullmailer pid 1188735 invoked by uid 1000);
	Thu, 12 Oct 2023 16:25:22 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Eugen Hristev <eugen.hristev@collabora.com>
Cc: angelogioacchino.delregno@collabora.com, devicetree@vger.kernel.org, kernel@collabora.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com, conor+dt@kernel.org, linux-kernel@vger.kernel.org, broonie@kernel.org, alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org, lgirdwood@gmail.com, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20231012151538.468893-1-eugen.hristev@collabora.com>
References: <20231012151538.468893-1-eugen.hristev@collabora.com>
Message-Id: <169712792200.1188719.6103742227495646067.robh@kernel.org>
Subject: Re: [PATCH v3] dt-bindings: arm: mediatek: convert audsys and
 mt2701-afe-pcm to yaml
Date: Thu, 12 Oct 2023 11:25:22 -0500


On Thu, 12 Oct 2023 18:15:38 +0300, Eugen Hristev wrote:
> Convert the mediatek,audsys binding to YAML, together with the associated
> binding bindings/sound/mt2701-afe-pcm.yaml .
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
> ---
> Changes in v3:
> - not added Rb Conor Dooley since the patch was changed in a big essence
> - As per review by Krzysztof, also convert the mt2701-afe-pcm and reference
> the correct schema in the audsys binding.
> 
> Changes in v2:
> - remove comment reference to inexistent binding
> 
> 
>  .../bindings/arm/mediatek/mediatek,audsys.txt |  39 ---
>  .../arm/mediatek/mediatek,audsys.yaml         | 153 ++++++++++++
>  .../bindings/sound/mt2701-afe-pcm.txt         | 146 -----------
>  .../bindings/sound/mt2701-afe-pcm.yaml        | 229 ++++++++++++++++++
>  4 files changed, 382 insertions(+), 185 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/mt2701-afe-pcm.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/mt2701-afe-pcm.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/sound/mt2701-afe-pcm.yaml:11:4: [error] missing starting space in comment (comments)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231012151538.468893-1-eugen.hristev@collabora.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


