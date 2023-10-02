Return-Path: <devicetree+bounces-5289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 925967B5DBE
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 01:33:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id C4DBFB20920
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 23:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3297E208CB;
	Mon,  2 Oct 2023 23:33:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEF81E521
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 23:33:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92BE1C433C7;
	Mon,  2 Oct 2023 23:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696289604;
	bh=x7E5rRwIO9QzR2zAUVHOPZNxzyfVQczJI3WiJU6auLM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=M4d6wjuAVuXg/vxLhw6h0arwR2nr6kVBjfBVz4C3044a8Erf3OEPA7H5iELfe1hQ6
	 xsKXNMEchKBjug/iYewoGySgyoWCjhQYCAE3YPcfzb+GEu59RvZgAr6As+UkmiF68Q
	 JisCP5stZBK8fwmU6Hjg1tilrjC4oKDASSzQp9MuQhlRIl8VVc6pJgvQjlxE/cfao7
	 E1FAYmDmvXO2JgAYBqIDpeXgtgqS0BrKrapLGsrH4nOJmZc7cqbgRfytYNGq4rMVk6
	 YyxwC7cLRsx3lm3ItR6y7UNXQgDaBTreHEem4p8Bdtn60E7g7F6Xmw97HxGJohH2bg
	 fyEbZILG86HIg==
Received: (nullmailer pid 2855035 invoked by uid 1000);
	Mon, 02 Oct 2023 23:33:21 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Shawn Anastasio <sanastasio@raptorengineering.com>
Cc: Timothy Pearson <tpearson@raptorengineering.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, lee@kernel.org, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <8b014f8b302f8b41c45c4f6fb114cf18e84a76fa.1696285339.git.sanastasio@raptorengineering.com>
References: <cover.1696285339.git.sanastasio@raptorengineering.com>
 <8b014f8b302f8b41c45c4f6fb114cf18e84a76fa.1696285339.git.sanastasio@raptorengineering.com>
Message-Id: <169628960125.2855019.8844044849290949450.robh@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: mfd: sie,cronos-cpld: Add initial DT
 binding
Date: Mon, 02 Oct 2023 18:33:21 -0500


On Mon, 02 Oct 2023 17:32:21 -0500, Shawn Anastasio wrote:
> The SIE Cronos Platform Controller CPLD is a multi-purpose platform
> controller that provides both a watchdog timer and an LED controller. As
> both functions are provided by the same CPLD, a multi-function device is
> exposed as the parent of both functions.
> 
> Add a DT binding for this device.
> 
> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
> ---
>  .../bindings/mfd/sie,cronos-cpld.yaml         | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/sie,cronos-cpld.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/mfd/sie,cronos-cpld.example.dts:20.11-24: Warning (reg_format): /example-0/cpld@3f:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
Documentation/devicetree/bindings/mfd/sie,cronos-cpld.example.dtb: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/mfd/sie,cronos-cpld.example.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/mfd/sie,cronos-cpld.example.dtb: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/mfd/sie,cronos-cpld.example.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/mfd/sie,cronos-cpld.example.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/8b014f8b302f8b41c45c4f6fb114cf18e84a76fa.1696285339.git.sanastasio@raptorengineering.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


