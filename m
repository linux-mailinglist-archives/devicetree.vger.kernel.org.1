Return-Path: <devicetree+bounces-140648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C568FA1ABDF
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 22:29:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5FE0188A277
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 21:29:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 187DD1C5F20;
	Thu, 23 Jan 2025 21:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbwi+ctq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20E919D067;
	Thu, 23 Jan 2025 21:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737667781; cv=none; b=FixkjladkBin62ZuOAQGZOag4kTK0qj5Aecz8TU5UC6EyVmZowaQUCJep59RmGQj9I6qsR1VPWV+zMDFZQIizQ8UpD8QLQSqd0PM/rXkYgBS9WGTiTikO4akfEa5X32AayAqXaOa7Eam/FNzeEW/oxVBdVegXn8W4CgqQV30aSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737667781; c=relaxed/simple;
	bh=FEs7jQ869xS1Q7igMZTQDDuVl1J0onigxN6VNDB8Jow=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n8Ak8O04J1QI3wf9NTo96TNUJqmH2qw4SebTbTBOcAke7KlgQLS/KrVWSwC1B2+5pdQk6D1ETZhCSUwn5I3MrTPENdwsdH0rbTl1LNEzWzvVVfyf6xrAohEUdxL1wrPdXTQ/XWBsW74rMR+S0108B/h5Dl3E5WnpdZEfR5QE24A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbwi+ctq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D1F9C4CED3;
	Thu, 23 Jan 2025 21:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737667780;
	bh=FEs7jQ869xS1Q7igMZTQDDuVl1J0onigxN6VNDB8Jow=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jbwi+ctq44Dg0Y4cj9ZrNxVPLEKbRBScbEi43bABcv+nEooXfABtGgi4RotLU7Ch4
	 7YcHD9nzVmDEHWpGsTep7UtFer7VG2v3CfA6Qog3eO2QB1NPeNS1AiP8FA5A/qwEWx
	 Z4a98jwlH+6YdolG2+CzqQXsCJg/MS3Lq33GFywyQ63T5PCZLCJSAKobhF8LQm0D9V
	 BWbxNTcsqybGgWFiTBMPes+8CEgOIda9NtlKXZpxW33Kto1Lp3rx695qyTNfHGPyhf
	 69HOkH5PTmphh1tQoqVXmaFuwBzTP4LKV7+fDkmqULV0lQdjbkd1EblLAc3iplK1D2
	 GRATt+p71dLog==
Date: Thu, 23 Jan 2025 15:29:38 -0600
From: Rob Herring <robh@kernel.org>
To: Chen Wang <unicornxw@gmail.com>
Cc: u.kleine-koenig@baylibre.com, aou@eecs.berkeley.edu, arnd@arndb.de,
	unicorn_wang@outlook.com, conor+dt@kernel.org, guoren@kernel.org,
	inochiama@outlook.com, krzk+dt@kernel.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, tglx@linutronix.de,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com, fengchun.li@sophgo.com,
	samuel.holland@sifive.com, christophe.jaillet@wanadoo.fr
Subject: Re: [PATCH v3 1/3] dt-bindings: interrupt-controller: Add Sophgo
 SG2042 MSI
Message-ID: <20250123212938.GA390972-robh@kernel.org>
References: <cover.1736921549.git.unicorn_wang@outlook.com>
 <c9dd12c3ad77b13dcdfbf4accd51e92e6ea2a4a9.1736921549.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c9dd12c3ad77b13dcdfbf4accd51e92e6ea2a4a9.1736921549.git.unicorn_wang@outlook.com>

On Wed, Jan 15, 2025 at 02:33:23PM +0800, Chen Wang wrote:
> From: Chen Wang <unicorn_wang@outlook.com>
> 
> Add binding for Sophgo SG2042 MSI controller.
> 
> Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
> ---
>  .../sophgo,sg2042-msi.yaml                    | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-msi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-msi.yaml b/Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-msi.yaml
> new file mode 100644
> index 000000000000..f641df191787
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-msi.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/sophgo,sg2042-msi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sophgo SG2042 MSI Controller
> +
> +maintainers:
> +  - Chen Wang <unicorn_wang@outlook.com>
> +
> +description:
> +  This interrupt controller is in Sophgo SG2042 for transforming interrupts from
> +  PCIe MSI to PLIC interrupts.
> +
> +allOf:
> +  - $ref: /schemas/interrupts.yaml#

Drop this.

> +  - $ref: /schemas/interrupt-controller/msi-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: sophgo,sg2042-msi
> +
> +  reg:
> +    items:
> +      - description: msi doorbell address
> +      - description: clear register
> +
> +  reg-names:
> +    items:
> +      - const: doorbell
> +      - const: clr
> +
> +  msi-controller: true
> +
> +  msi-ranges:
> +    maxItems: 1

You need #msi-cells.

> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - msi-controller
> +  - msi-ranges
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    msi-controller@30000000 {
> +      compatible = "sophgo,sg2042-msi";
> +      reg = <0x30000000 0x4>, <0x30000008 0x4>;
> +      reg-names = "doorbell", "clr";
> +      msi-controller;
> +      msi-ranges = <&plic 64 IRQ_TYPE_LEVEL_HIGH 32>;
> +      interrupt-parent = <&plic>;
> +    };
> -- 
> 2.34.1
> 

