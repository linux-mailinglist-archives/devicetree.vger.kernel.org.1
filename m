Return-Path: <devicetree+bounces-4967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAF67B4863
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 17:21:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AE69228223C
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 15:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AF8F182B5;
	Sun,  1 Oct 2023 15:21:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A75C171CE
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 15:21:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 143A1C433C8;
	Sun,  1 Oct 2023 15:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696173707;
	bh=Pcid93qlZOziU6QAuWsUqgL3T/hz96UA6NSdFcYv2gA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WFRc6ICXH9pmMNC90RDePARwjYzjp/5Ph4dMMzp4HRjMOtXqMoAELm4sAEfBTDmzM
	 rYAq29O9nxcaLwIyEeu2VtOGd/KN7CEb0Yk9E3MtL0sFkYgAuYr4MGqY7sG/KBZdcb
	 9bSWd5Zu5NwH+PlKkmCNLF/7HzLOtxZeSQCxvkxzloVoAM1XacHvPVW43eK0XaqzOQ
	 VrJ7XuszE3Mwo0+ReEm7WSOIQvquuGRzcC09OvId6JUW3WZpRrX5TehaelTjx/+dd3
	 IOkizea1pa3ET+FmZHCPXTixP/th2w4OUSP5i7CoQ6g6nlHJjqKy1EPvn9NJXjMWye
	 EYm4R6TZbeuSw==
Received: (nullmailer pid 4073099 invoked by uid 1000);
	Sun, 01 Oct 2023 15:21:45 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org
In-Reply-To: <20231001-pxa1928-usb-yaml-v1-1-9309a8c0c03f@skole.hr>
References: <20231001-pxa1928-usb-yaml-v1-1-9309a8c0c03f@skole.hr>
Message-Id: <169617370596.4073083.7671485602396327173.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: Convert PXA1928 USB/HSIC PHY to DT
 schema
Date: Sun, 01 Oct 2023 10:21:45 -0500


On Sun, 01 Oct 2023 15:05:43 +0200, Duje Mihanović wrote:
> Convert the binding for the Marvell PXA1928 USB and HSIC PHYs from TXT
> to DT schema.
> 
> Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>
> ---
>  .../bindings/phy/marvell,pxa1928-hsic-phy.yaml     | 37 +++++++++++++++++
>  .../bindings/phy/marvell,pxa1928-usb-phy.yaml      | 46 ++++++++++++++++++++++
>  .../devicetree/bindings/phy/pxa1928-usb-phy.txt    | 18 ---------
>  3 files changed, 83 insertions(+), 18 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/phy/marvell,pxa1928-usb-phy.example.dts:21.34-35 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/phy/marvell,pxa1928-usb-phy.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231001-pxa1928-usb-yaml-v1-1-9309a8c0c03f@skole.hr

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


