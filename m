Return-Path: <devicetree+bounces-141683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 089D5A21F56
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 15:38:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61D9A16499D
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 14:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BAC01ACED2;
	Wed, 29 Jan 2025 14:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTxGkEiW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AC71474A7;
	Wed, 29 Jan 2025 14:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738161528; cv=none; b=PwBqxeyfF//KJZp8gGq/Mv018Yph8pbc0HCrPHgh3jCvoNdCnjx8eIIlHGerS7IrXoqqaOWeGhkjcdIrSfjndcIRp064zjAyw98G0cW9bY+RMING1IAmf+FJqQWXnTHGnhfTZHk31VR2ifEAslGJo6qfTu/C5dmHNhZ57LjM72s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738161528; c=relaxed/simple;
	bh=OkCNQkU+YeRWADPSOxaPGMR7ew+ooErLA1y3kpUQjsU=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=d+wJfxxiMD08+y/Et4X651sqeqi2aJQdqiS91ytpptM7WFVMg/zKLas2amOnhFbge9oS+YRRMGUz2z+uqPHzcsyFfXnJvDl4ujtzbGydNqSojGnIAgMviJ5ijJudcIVZjV8gqMDU/zGMyvkQ6zRymSiYLoLE5PUXgwHnVJC5Onk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTxGkEiW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8323BC4CED1;
	Wed, 29 Jan 2025 14:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738161528;
	bh=OkCNQkU+YeRWADPSOxaPGMR7ew+ooErLA1y3kpUQjsU=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=kTxGkEiWjGvG8nn7UZEVujOkbYJKjBW9KEENtD9+tYn/LFofSyKGhsX6vh2Xsxtvf
	 37PaVhsKBijrxaaujhpVYyL7jkKygQaX8yl4RoRLlltZjmht0IfmM+gvgN8BV+QRAt
	 AC/LtIZkoAAjdAgFrPbsFDVg2ZLn/Mjc9wbWey7vQQ3njivCJzc669zDawXM94Hjku
	 Xs0U6rCpoD/l9yP+DA2SNkgPDxvJhEW3vZ0d/69M8ehPVEmUYifJwdArtJKPk4kPfT
	 pR5q2/pxfO88QeApw3+ywuMxtTTzw/Hchr7eg3CeE4oHbEt9RL81UMVeMA0jCJt+2J
	 +CbA4n+QsTzAw==
Date: Wed, 29 Jan 2025 08:38:47 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, imx@lists.linux.dev, 
 devicetree@vger.kernel.org, hongxing.zhu@nxp.com, 
 Conor Dooley <conor+dt@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
In-Reply-To: <20250128211559.1582598-1-Frank.Li@nxp.com>
References: <20250128211559.1582598-1-Frank.Li@nxp.com>
Message-Id: <173816122537.2059289.17775029103516660947.robh@kernel.org>
Subject: Re: [PATCH 1/5] arm64: dts: imx8-ss-hsio: fix indentation in pcie
 node


On Tue, 28 Jan 2025 16:15:55 -0500, Frank Li wrote:
> Fix indentation in pcie node.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8-ss-hsio.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
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


New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/freescale/' for 20250128211559.1582598-1-Frank.Li@nxp.com:

arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8dx-colibri-iris-v2.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qxp-tqma8xqp-mba8xx.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8dx-colibri-aster.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qxp-colibri-iris.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8dx-colibri-eval-v3.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-v1.1-eval.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-v1.1-eval.dtb: /bus@5f000000/pcie-ep@5f000000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8dx-colibri-iris.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-v1.1-ixora-v1.2.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-v1.1-ixora-v1.2.dtb: /bus@5f000000/pcie-ep@5f000000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx95-19x19-evk.dtb: pcie@4c300000: clocks: [[27, 87], [27, 36], [27, 35], [27, 88], [61, 0]] is too long
	from schema $id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie.yaml#
arch/arm64/boot/dts/freescale/imx95-19x19-evk.dtb: pcie@4c300000: clock-names: ['pcie', 'pcie_bus', 'pcie_phy', 'pcie_aux', 'ref'] is too long
	from schema $id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie.yaml#
arch/arm64/boot/dts/freescale/imx95-19x19-evk.dtb: pcie@4c300000: clocks: [[27, 87], [27, 36], [27, 35], [27, 88], [61, 0]] is too long
	from schema $id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie.yaml#
arch/arm64/boot/dts/freescale/imx95-19x19-evk.dtb: pcie@4c300000: clock-names: ['pcie', 'pcie_bus', 'pcie_phy', 'pcie_aux', 'ref'] is too long
	from schema $id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie.yaml#
arch/arm64/boot/dts/freescale/imx95-19x19-evk.dtb: pcie@4c300000: clock-names: ['pcie', 'pcie_bus', 'pcie_phy', 'pcie_aux', 'ref'] is too long
	from schema $id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie.yaml#
arch/arm64/boot/dts/freescale/imx95-19x19-evk.dtb: pcie@4c300000: Unevaluated properties are not allowed ('fsl,max-link-speed', 'power-domains', 'vpcie-supply' were unexpected)
	from schema $id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie.yaml#
arch/arm64/boot/dts/freescale/imx95-19x19-evk.dtb: pcie@4c380000: clocks: [[27, 87], [27, 36], [27, 35], [27, 88], [61, 0]] is too long
	from schema $id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie.yaml#
arch/arm64/boot/dts/freescale/imx95-19x19-evk.dtb: pcie@4c380000: clock-names: ['pcie', 'pcie_bus', 'pcie_phy', 'pcie_aux', 'ref'] is too long
	from schema $id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie.yaml#
arch/arm64/boot/dts/freescale/imx95-19x19-evk.dtb: pcie@4c380000: clocks: [[27, 87], [27, 36], [27, 35], [27, 88], [61, 0]] is too long
	from schema $id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie.yaml#
arch/arm64/boot/dts/freescale/imx95-19x19-evk.dtb: pcie@4c380000: clock-names: ['pcie', 'pcie_bus', 'pcie_phy', 'pcie_aux', 'ref'] is too long
	from schema $id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie.yaml#
arch/arm64/boot/dts/freescale/imx95-19x19-evk.dtb: pcie@4c380000: clock-names: ['pcie', 'pcie_bus', 'pcie_phy', 'pcie_aux', 'ref'] is too long
	from schema $id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie.yaml#
arch/arm64/boot/dts/freescale/imx95-19x19-evk.dtb: pcie@4c380000: Unevaluated properties are not allowed ('fsl,max-link-speed', 'power-domains', 'vpcie-supply' were unexpected)
	from schema $id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie.yaml#
arch/arm64/boot/dts/freescale/imx8qm-mek.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-v1.1-eval-v1.2.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-v1.1-eval-v1.2.dtb: /bus@5f000000/pcie-ep@5f000000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-mek.dtb: /bus@5f000000/pcie-ep@5f000000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-eval.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-eval.dtb: /bus@5f000000/pcie-ep@5f000000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-v1.1-ixora-v1.1.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-v1.1-ixora-v1.1.dtb: /bus@5f000000/pcie-ep@5f000000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-ixora-v1.1.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-ixora-v1.1.dtb: /bus@5f000000/pcie-ep@5f000000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qxp-colibri-iris-v2.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8dxp-tqma8xdp-mba8xx.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-eval-v1.2.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qm-apalis-eval-v1.2.dtb: /bus@5f000000/pcie-ep@5f000000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qxp-colibri-aster.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']
arch/arm64/boot/dts/freescale/imx8qxp-mek.dtb: /bus@5f000000/pcie-ep@5f010000: failed to match any schema with compatible: ['fsl,imx8q-pcie-ep']






