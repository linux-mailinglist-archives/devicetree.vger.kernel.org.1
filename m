Return-Path: <devicetree+bounces-108675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8409935E3
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 20:18:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3765A285CEF
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 18:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CA601DDC1F;
	Mon,  7 Oct 2024 18:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2bncuH3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575E81C173C
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 18:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728325078; cv=none; b=SzQlfMehdDbrCtN+SsjTRtOxaWpoX/r79gl8Gk5GrELVY9GGLuTITmZXgq061OUWvi+j7LfNvTD1DSeUB+KwNHjFEzSGjFGZk18wuqKxQwwtno/QEaJbDItRiNg8Xws4tVDvaSjlk9sU2xJ0hVm6qU98FPFkyxYwy0jygknnN/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728325078; c=relaxed/simple;
	bh=EgD85lVP1+jkagIKQHvW1N409g0GPa++moRMACPtH1E=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=SmFvngr8nH84mfbW5Q155zpjvXJ6X9+83r077S7QexiCJF+/Or0gEGsU3LYUZOZRmOES9bJ8ZgbffRxygV5/Q2XV/SwepjQVTwNCdJu6l+K7265fDcheLWRv4oOD5nKAXb+KX/whViRqWdEClaXNChAmJ/jm+zYobyXG4WhjdRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2bncuH3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C73C3C4CEC6;
	Mon,  7 Oct 2024 18:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728325077;
	bh=EgD85lVP1+jkagIKQHvW1N409g0GPa++moRMACPtH1E=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=b2bncuH3CEhR5A4aAlSCGzGL24XMgO7tWXcQ1HAXbebpTXo7L5PmZ03y5eObc22ec
	 1ox+7omiwLbIlY3Ec7zsKYCT4j9T9OU6s42sM8XVwR0ykgh/rALOfXZmT9p4b8YU2v
	 hmC71A9k9DiSnXGmnnwRpUMNn/tVuXl2g0Qv0NIHrIrkZXSBnXrB6//5NftCCesw1a
	 hDgQdAZs89USPi3th0H8j+Rtl/UiJgDNTRBls/pDxDzJe9ihm2mQx+jTW+9oVTkSqQ
	 0orePizyL0glDcuo0WQtVYDI4FGdSEHtzwbyF+mZmNjNqWuPO6V314K1tym9TGnYFW
	 otlCUWu8HvTQw==
Date: Mon, 07 Oct 2024 13:17:57 -0500
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: chris.packham@alliedtelesis.co.nz, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, krzk@kernel.org
In-Reply-To: <20241007163623.3274510-2-markus.stockhausen@gmx.de>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
 <20241007163623.3274510-2-markus.stockhausen@gmx.de>
Message-Id: <172832507719.1884666.16767119996059133324.robh@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY
 binding


On Mon, 07 Oct 2024 12:36:21 -0400, Markus Stockhausen wrote:
> Add bindings for the SerDes of the Realtek Otto platform. These are
> network Switch SoCs with up to 52 ports divided into four different
> model lines.
> 
> Changes in v2:
> - new subject
> - removed patch command sequences
> - renamed parameter controlled-ports to realtek,controlled-ports
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
>  .../bindings/phy/realtek,otto-serdes.yaml     | 95 +++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml: 'reguired' is not one of ['$id', '$schema', 'title', 'description', 'examples', 'required', 'allOf', 'anyOf', 'oneOf', 'definitions', '$defs', 'additionalProperties', 'dependencies', 'dependentRequired', 'dependentSchemas', 'patternProperties', 'properties', 'not', 'if', 'then', 'else', 'unevaluatedProperties', 'deprecated', 'maintainers', 'select', '$ref']
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
Documentation/devicetree/bindings/phy/realtek,otto-serdes.example.dts:41.33-46.11: ERROR (duplicate_label): /example-1/serdes@1b00a000: Duplicate label 'serdes' on /example-1/serdes@1b00a000 and /example-0/serdes@1b00e780
Documentation/devicetree/bindings/phy/realtek,otto-serdes.example.dts:64.33-69.11: ERROR (duplicate_label): /example-2/serdes@1b0003b0: Duplicate label 'serdes' on /example-2/serdes@1b0003b0 and /example-0/serdes@1b00e780
Documentation/devicetree/bindings/phy/realtek,otto-serdes.example.dts:87.33-92.11: ERROR (duplicate_label): /example-3/serdes@1b005638: Duplicate label 'serdes' on /example-3/serdes@1b005638 and /example-0/serdes@1b00e780
ERROR: Input tree has errors, aborting (use -f to force output)
make[2]: *** [scripts/Makefile.dtbs:129: Documentation/devicetree/bindings/phy/realtek,otto-serdes.example.dtb] Error 2
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1442: dt_binding_check] Error 2
make: *** [Makefile:224: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20241007163623.3274510-2-markus.stockhausen@gmx.de

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


