Return-Path: <devicetree+bounces-240785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCEDC75697
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 17:39:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 545422ABCB
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC7AA35CBB5;
	Thu, 20 Nov 2025 16:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipcbas6X"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89F8D35BDD3;
	Thu, 20 Nov 2025 16:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763656747; cv=none; b=QpH9ydhKulDRP7MxAp3rNDFapp3kDGOxGFuxHWDQK4toyNXkjgLbcs57yIqO7Ww77zCkgm7ywS1RLWUwSkHPjFM0UsxHeCYioJCEmlJCQ3HqqhS/I3BmrfxQe7x2mf6EoxJlP9zlFLi9f8bzz1aXhU6vFc5JtSOHOv/NtP8CZjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763656747; c=relaxed/simple;
	bh=COJO4v5tFTz3670qo4kY/0Bq7kiQnVNdaNbifP4mjAE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qQzhA64ascVH+H4yNYWpLJggPM/Sdkk67EnW6hB3wQSbozgRReJlYUFPEcoQvR/tqKw739Sw8lnA2NHXoNYQGAtI8fGsr7tldUFlGb1FvWj3MLFlIUWdzAQ8+woUEdTTFdrw4KCTT46TEHGdfLIbocGUfiuKdv3fOm86RAgTFD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipcbas6X; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF4BFC4CEF1;
	Thu, 20 Nov 2025 16:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763656747;
	bh=COJO4v5tFTz3670qo4kY/0Bq7kiQnVNdaNbifP4mjAE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ipcbas6XQM+tdQa5OOSBUiBqyniuHbwSnjjS7zJ5MxFzJXiETXtTkV7oe2t4VoTOG
	 85mMSVnhRKgJEVUSKSwGTyh9RI+XuRcyU9e+euAYNyepAjWsN6WSAVfvdkRLE5hSjd
	 lY30zV0xIQQLrnXNq4bsCzqZHYrxRevXsBtdBzDZpReHzmPE41YOTyTrLN7XLBOO7j
	 RmW/Z1g53zec9DQ9MKWmW+dKlWJPck8/ymRdKdglGudd8fxCF/tapu+BOed0He1Ptx
	 5e1Dt7fWNlU/0Q9V0XsjXge3b+6mF8yv+fCplMa56hDnNLXSZClc8bNRuJ47YTcAe0
	 sUQ38K/3hBWUA==
Date: Thu, 20 Nov 2025 10:39:05 -0600
From: Rob Herring <robh@kernel.org>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Ian Rogers <irogers@google.com>, Alexandre Ghiti <alex@ghiti.fr>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Jiri Olsa <jolsa@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Liang Kan <kan.liang@linux.intel.com>,
	Mayuresh Chitale <mchitale@gmail.com>,
	Anup Patel <anup@brainfault.org>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 01/12] dt-bindings: Add RISC-V trace component bindings
Message-ID: <20251120163905.GA1484818-robh@kernel.org>
References: <20251101154245.162492-1-apatel@ventanamicro.com>
 <20251101154245.162492-2-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251101154245.162492-2-apatel@ventanamicro.com>

On Sat, Nov 01, 2025 at 09:12:34PM +0530, Anup Patel wrote:
> Add device tree bindings for the memory mapped RISC-V trace components
> which support both the RISC-V efficient trace (E-trace) protocol and
> the RISC-V Nexus-based trace (N-trace) protocol.
> 
> The RISC-V trace components are defined by the RISC-V trace control
> interface specification.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  .../bindings/riscv/riscv,trace-component.yaml | 112 ++++++++++++++++++
>  1 file changed, 112 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml
> 
> diff --git a/Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml b/Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml
> new file mode 100644
> index 000000000000..7979af3d4174
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml
> @@ -0,0 +1,112 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/riscv/riscv,trace-component.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RISC-V Trace Component
> +
> +maintainers:
> +  - Anup Patel <anup@brainfault.org>
> +
> +description:
> +  The RISC-V trace control interface specification standard memory mapped
> +  components (or devices) which support both the RISC-V efficient trace
> +  (E-trace) protocol and the RISC-V Nexus-based trace (N-trace) protocol.
> +  The RISC-V trace components have implementation specific directed acyclic
> +  graph style interdependency where output of one component serves as input
> +  to another component and certain components (such as funnel) can take inputs
> +  from multiple components. The type and version of a RISC-V trace component
> +  can be discovered from it's IMPL memory mapped register hence component
> +  specific compatible strings are not needed.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - qemu,trace-component
> +      - const: riscv,trace-component

'component' seems a bit redundant.

> +
> +  reg:
> +    maxItems: 1
> +
> +  cpus:
> +    maxItems: 1
> +    description:
> +      phandle to the cpu to which the RISC-V trace component is bound.
> +
> +  in-ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    patternProperties:
> +      '^port(@[0-7])?$':
> +        description: Input connections from RISC-V trace component
> +        $ref: /schemas/graph.yaml#/properties/port
> +
> +  out-ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    patternProperties:
> +      '^port(@[0-7])?$':
> +        description: Output connections from RISC-V trace component
> +        $ref: /schemas/graph.yaml#/properties/port
> +
> +required:
> +  - compatible
> +  - reg

Is no in or out ports valid? If not, you need:

anyOf:
  - required: [ in-ports ]
  - required: [ out-ports ]

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    // Example 1 (Per-hart encoder and ramsink components):
> +
> +    encoder@c000000 {

trace@...?

Node names should be generic and a given compatible should only have 1 
possible node name. (Yes, we failed to do this on Arm coresight stuff.)

> +      compatible = "qemu,trace-component", "riscv,trace-component";
> +      reg = <0xc000000 0x1000>;
> +      cpus = <&CPU0>;

blank line between properties and child nodes.

> +      out-ports {
> +        port {
> +          CPU0_ENCODER_OUTPUT: endpoint {
> +            remote-endpoint = <&CPU0_RAMSINK_INPUT>;
> +          };
> +        };
> +      };
> +    };
> +
> +    ramsink@c001000 {
> +      compatible = "qemu,trace-component", "riscv,trace-component";
> +      reg = <0xc001000 0x1000>;
> +      cpus = <&CPU0>;
> +      in-ports {
> +        port {
> +          CPU0_RAMSINK_INPUT: endpoint {
> +          };
> +        };
> +      };
> +    };
> +
> +    encoder@c002000 {
> +      compatible = "qemu,trace-component", "riscv,trace-component";
> +      reg = <0xc002000 0x1000>;
> +      cpus = <&CPU1>;
> +      out-ports {
> +        port {
> +          CPU1_ENCODER_OUTPUT: endpoint {
> +            remote-endpoint = <&CPU1_RAMSINK_INPUT>;
> +          };
> +        };
> +      };
> +    };
> +
> +    ramsink@c003000 {
> +      compatible = "qemu,trace-component", "riscv,trace-component";
> +      reg = <0xc003000 0x1000>;
> +      cpus = <&CPU1>;
> +      in-ports {
> +        port {
> +          CPU1_RAMSINK_INPUT: endpoint {
> +          };
> +        };
> +      };
> +    };
> +
> +...
> -- 
> 2.43.0
> 

