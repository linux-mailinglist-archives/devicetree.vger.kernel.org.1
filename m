Return-Path: <devicetree+bounces-253001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2985DD05B4C
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 20:02:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9D7BA30074AD
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 19:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DA4B2882B7;
	Thu,  8 Jan 2026 19:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gds6PdVt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADD917C77;
	Thu,  8 Jan 2026 19:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767898925; cv=none; b=beM8/m2aruXKEqwwIjmmnXnS6efmExghBi0dQOVXoJn/h0maYOYurYe6P2t1niEJN5eeW9+rKPK36aqcpNEMNVWvBk4WZkc81YsiyFiZnV2u0vdMFcuuXrRoOct91OsKBC7BoWYCTOq1b3W7Qd80vd3Yk5NzJ8ngeRN5UY1+ftI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767898925; c=relaxed/simple;
	bh=cGVPGNzS5dackujqgZ6gZ4apORen6+dbC4SXpFIwMX8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cpDR2WGSjyKQZ49RbF6zQ3tdoBzeYmfcPED+ed2lLKvqXid1NatHTfBwsG9XWZSvqLXXQ0ErNmvpSl3BJNdyWdwAyhSD3+BqMCFeex5ziOBfZ8azjF8g7Xu1dsClyZiAny3lAENak/jhuKoRbp6YXSUlDnmfyUoZ2vavNuWeIG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gds6PdVt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4478C116C6;
	Thu,  8 Jan 2026 19:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767898924;
	bh=cGVPGNzS5dackujqgZ6gZ4apORen6+dbC4SXpFIwMX8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gds6PdVtl7nh9hqOKIShu4yNF5qDmklyNOic3poXva+cTt8kxVAIOWhkFHV2Xa5pj
	 bpx1EvHsEoP3H8+Cs9/i7L+ndXn+UEnKbVjOI1V4pCLxRwsc0VdWav/A308DJB3tfJ
	 qluxPbP6gsQX3M0vIW6GTkQ/Ogb3KlROpvCNtc9aDsRfPVs3kgddj5+OimSy9hgu8m
	 OIsykjiXH5OlQp2WNLD9mmY+GGRCtmOgOziJN0g0AX0oVqlgTwf3xwgjgtg6642HRN
	 THiJlE9WyGfKTcj+8NR0M7HkQp2wM3OODPhvGngwmozWB8VsPIC/0pU1VHOvoG6oav
	 CfldgY+DC16Cg==
Date: Thu, 8 Jan 2026 13:02:03 -0600
From: Rob Herring <robh@kernel.org>
To: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: Qiang Zhao <qiang.zhao@nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH 2/2] dt-bindings: soc: fsl: qe: Add an interrupt
 controller for QUICC Engine Ports
Message-ID: <20260108190203.GA780464-robh@kernel.org>
References: <63f19db21a91729d91b3df336a56a7eb4206e561.1767804922.git.chleroy@kernel.org>
 <7708243d6cca21004de8b3da87369c06dbee3848.1767804922.git.chleroy@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7708243d6cca21004de8b3da87369c06dbee3848.1767804922.git.chleroy@kernel.org>

On Wed, Jan 07, 2026 at 05:59:10PM +0100, Christophe Leroy (CS GROUP) wrote:
> The QUICC Engine provides interrupts for a few I/O ports. This is
> handled via a separate interrupt ID and managed via a triplet of
> dedicated registers hosted by the SoC.
> 
> Implement an interrupt driver for it so that those IRQs can then
> be linked to the related GPIOs.
> 
> Signed-off-by: Christophe Leroy (CS GROUP) <chleroy@kernel.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Already? On a v1?

> ---
>  .../soc/fsl/cpm_qe/fsl,qe-ports-ic.yaml       | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe-ports-ic.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe-ports-ic.yaml b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe-ports-ic.yaml
> new file mode 100644
> index 0000000000000..1f3c652b1569d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,qe-ports-ic.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/fsl/cpm_qe/fsl,qe-ports-ic.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale QUICC Engine I/O Ports Interrupt Controller
> +
> +maintainers:
> +  - Christophe Leroy (CS GROUP) <chleroy@kernel.org>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,mpc8323-qe-ports-ic
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupt-controller: true
> +
> +  '#address-cells':
> +    const: 0
> +
> +  '#interrupt-cells':
> +    const: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupt-controller
> +  - '#address-cells'
> +  - '#interrupt-cells'
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    interrupt-controller@c00 {
> +      compatible = "fsl,mpc8323-qe-ports-ic";
> +      reg = <0xc00 0x18>;
> +      interrupt-controller;
> +      #address-cells = <0>;
> +      #interrupt-cells = <1>;
> +      interrupts = <74 0x8>;
> +      interrupt-parent = <&ipic>;

This doesn't look like a separate block, but just part of its parent. So 
just add interrupt-controller/#interrupt-cells to the parent.

Rob

