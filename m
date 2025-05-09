Return-Path: <devicetree+bounces-175661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C753AB171B
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 16:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F60D1B649A7
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 14:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24B6D21A453;
	Fri,  9 May 2025 14:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJHrbdPR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F390521A43D
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 14:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746800223; cv=none; b=ham464KDJz+6HPWbkZIwy9KLK53NFOAtMlUVLRsAu9rIQxJOCtLPA65IiaLGDHsypas41hou6HFAgQlfbaDNccHWbZPxuhT2ddstNlbjchHoYQ+vstTE2rnYXMs0YhGGQ6NUfrxXaHQcQfZr7CDPoB3q7dCBrI19qIAsA4nuO1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746800223; c=relaxed/simple;
	bh=kFuKGQ5an19i2JENb5lALSPRYzO6h5w5ui0WYcZmv8A=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=l43XyEYW1POrooG+w+IFUUJ2hCjWQEn4VRlcFyCcp2ZJqAKNoiLrRR9fQn1uMvznUakXa8zr4j5dgc5KMnzt9BJC+joQQ0TKL7Xvy5/3ft2Yv7EuhF0+ZCQE2cQhCxkBRMTsv7vytEp63OrQaeaC7PARxhWi/A8PZ4Kx32LvFG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJHrbdPR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C02AC4CEEF;
	Fri,  9 May 2025 14:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746800222;
	bh=kFuKGQ5an19i2JENb5lALSPRYzO6h5w5ui0WYcZmv8A=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=iJHrbdPR8UWZAqLmiv7hRO6vG2NXFVUdvVIdB9xoZCRFaAghhDanhQlqLL5Xq9iqA
	 aCm3My/J6HR2Si0UxIf0AhBizihOsfQg0pzwy3384v4hG5CSBu7no0SSNmYAxcjQ1c
	 59GNK2MJXL6yXA+XLTSz9MlieK6p8QuwXJcdKQGRGwtd7ZT+O15ZBGK3C7XoEbBpsA
	 ZBJLd9J5RYAqOJe9YvpE2Ij8vN4wxripauTm7WTQKe+a0eaAH9nVCXFbGLu+SY5jiV
	 sPiVcU+1m3NRHIv4hZy+a8IQPN8+EogveuPGd6bv4K0rJNi1NgPPOJm2pNW/ZnWquO
	 nqGxKACQp+h2A==
Date: Fri, 09 May 2025 09:17:00 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org
To: Leo Yan <leo.yan@arm.com>
In-Reply-To: <20250508161907.1152054-1-leo.yan@arm.com>
References: <20250508161907.1152054-1-leo.yan@arm.com>
Message-Id: <174679984987.3368571.16872352739655196662.robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: fvp: Add ETE and TRBE nodes for Rev C
 model


On Thu, 08 May 2025 17:19:07 +0100, Leo Yan wrote:
> The FVP Rev C model includes CoreSight ETE and TRBE support.  These
> features can be enabled by specifying parameters when launching the
> model:
> 
>   -C cluster0.has_ete: 1
>   -C cluster1.has_ete: 1
>   -C cluster0.has_trbe: 1
>   -C cluster1.has_trbe: 1
> 
> This change adds device tree bindings for the ETE and TRBE nodes.  They
> are disabled by default to prevent kernel warnings from failed driver
> probes, as the model does not enable the features unless explicitly
> specified.
> 
> Signed-off-by: Leo Yan <leo.yan@arm.com>
> ---
>  arch/arm64/boot/dts/arm/fvp-base-revc.dts | 62 +++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


This patch series was applied (using b4) to base:
 Base: attempting to guess base-commit...
 Base: failed to guess base

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/arm/' for 20250508161907.1152054-1-leo.yan@arm.com:

arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete0 (arm,embedded-trace-extension): 'arm,coresight-loses-context-with-cpu' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete0 (arm,embedded-trace-extension): $nodename:0: 'ete0' does not match '^ete(-[0-9]+)?$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete1 (arm,embedded-trace-extension): 'arm,coresight-loses-context-with-cpu' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete1 (arm,embedded-trace-extension): $nodename:0: 'ete1' does not match '^ete(-[0-9]+)?$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete2 (arm,embedded-trace-extension): 'arm,coresight-loses-context-with-cpu' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete2 (arm,embedded-trace-extension): $nodename:0: 'ete2' does not match '^ete(-[0-9]+)?$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete3 (arm,embedded-trace-extension): 'arm,coresight-loses-context-with-cpu' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete3 (arm,embedded-trace-extension): $nodename:0: 'ete3' does not match '^ete(-[0-9]+)?$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete4 (arm,embedded-trace-extension): 'arm,coresight-loses-context-with-cpu' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete4 (arm,embedded-trace-extension): $nodename:0: 'ete4' does not match '^ete(-[0-9]+)?$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete5 (arm,embedded-trace-extension): 'arm,coresight-loses-context-with-cpu' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete5 (arm,embedded-trace-extension): $nodename:0: 'ete5' does not match '^ete(-[0-9]+)?$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete6 (arm,embedded-trace-extension): 'arm,coresight-loses-context-with-cpu' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete6 (arm,embedded-trace-extension): $nodename:0: 'ete6' does not match '^ete(-[0-9]+)?$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete7 (arm,embedded-trace-extension): 'arm,coresight-loses-context-with-cpu' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
arch/arm64/boot/dts/arm/fvp-base-revc.dtb: ete7 (arm,embedded-trace-extension): $nodename:0: 'ete7' does not match '^ete(-[0-9]+)?$'
	from schema $id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#






