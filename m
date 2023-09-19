Return-Path: <devicetree+bounces-1427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F1B7A633E
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:40:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD19028243C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82CDB37C87;
	Tue, 19 Sep 2023 12:40:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0F6180
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:40:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAD88C433C8;
	Tue, 19 Sep 2023 12:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695127214;
	bh=ruaomOsVSPAGgslF/yr7z7NtxZAHZH6/puP8bh0Ggi8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JNjCUw/8qkpApUTCB5VzsXkVhtVx0qCu7Tlf0SZKjNdvfhJu1ru700hGzrvA9TXDc
	 LqYti3gGwtrsDXJlDiO+15GqJsBIDQhIjKpoxxmOIsy+kxhIvHEGltCWKbHanU8X3s
	 UWMnLyVCJX260FN+by2l35LTfLGbROOWnofDBUabL+P/E8QNyG5/IlOiiXRDyY1F9o
	 dV7wNtf9ankEPgR/f1Q7DYV1v/iCjKcezSGlW2ob1y9Iig879geHPd9LwH+bvcN+qh
	 j14n49BMl/CNzAnC5yUT16ADitd3tcWpUiY5U5zKdqklrCKFAquQYm/3R1HE8KLTTA
	 yGqwfzGfg7Seg==
Received: (nullmailer pid 3475446 invoked by uid 1000);
	Tue, 19 Sep 2023 12:40:11 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-kernel@vger.kernel.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Zhiyong Tao <zhiyong.tao@mediatek.com>, Mark Brown <broonie@kernel.org>, Lee Jones <lee@kernel.org>, linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20230919104357.3971512-3-wenst@chromium.org>
References: <20230919104357.3971512-1-wenst@chromium.org>
 <20230919104357.3971512-3-wenst@chromium.org>
Message-Id: <169512721150.3475200.12254070677030713993.robh@kernel.org>
Subject: Re: [PATCH v3 02/12] regulator: dt-bindings: mt6358: Convert to DT
 schema
Date: Tue, 19 Sep 2023 07:40:11 -0500


On Tue, 19 Sep 2023 18:43:45 +0800, Chen-Yu Tsai wrote:
> Convert this from the old style text based binding to the new DT schema
> style. This will make adding the MT6366 portion easier.
> 
> The examples have been trimmed down considerably, and the remaining
> entries now match what is seen in actual device trees, minus some
> properties that aren't covered by the bindings yet, or don't make
> sense on their own.
> 
> The original submitter seems to have left MediaTek, so instead the
> submitter and maintainer for the MT6366 binding is listed.
> 
> Cc: Zhiyong Tao <zhiyong.tao@mediatek.com>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
> Changes since v2:
> - Added missing end-of-string match to regulator names
> - regulator-coupled-* properties in example dropped
> - #include and regulator-allowed-modes moved to new patch
> 
>  .../regulator/mediatek,mt6358-regulator.yaml  |  97 +++++
>  .../bindings/regulator/mt6358-regulator.txt   | 350 ------------------
>  2 files changed, 97 insertions(+), 350 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mediatek,mt6358-regulator.yaml
>  delete mode 100644 Documentation/devicetree/bindings/regulator/mt6358-regulator.txt
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/regulator/mediatek,mt6358-regulator.yaml: patternProperties: '^ldo_vxo22$' should not be valid under {'pattern': '^\\^[a-zA-Z0-9,\\-._#]+\\$$'}
	hint: Fixed strings belong in 'properties', not 'patternProperties'
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/regulator/mediatek,mt6358-regulator.yaml: patternProperties: '^ldo_vusb$' should not be valid under {'pattern': '^\\^[a-zA-Z0-9,\\-._#]+\\$$'}
	hint: Fixed strings belong in 'properties', not 'patternProperties'
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230919104357.3971512-3-wenst@chromium.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


