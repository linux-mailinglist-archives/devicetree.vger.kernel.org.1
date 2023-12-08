Return-Path: <devicetree+bounces-23324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 151B880AD22
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 20:34:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B536D1F20FC7
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 19:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D15464CB51;
	Fri,  8 Dec 2023 19:33:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86C8F1706
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 11:33:54 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6d9d84019c5so1476327a34.3
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 11:33:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702064034; x=1702668834;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oqo9icAaSlVtxrUGZjVxMOlk/ymN9rKIb4gZCsRpiFA=;
        b=wBBgLw6+PYj2SmeSnllFOIuBab84r66jaiiXLb8sU4pqmAEVjjyfAPNoTZ1mXYZV/6
         g6rtxItQ94AYXr0PPR6gVUbDRtEyHR+Mtrp8kQ9t6IVHrH201RDx6dY6wU8+J0indgaS
         gbYkSufZ3mbm4gmLCWt8UB+aPKd6k5vUCZTj+PlPDs7A+UXSgVSAjDUP8c3XLlwsRgU0
         /4DQDZOtRzCTS27F7+X1LE784bQH8pgEZdpcnPl+CUcCefElc4qvHaSMThFocZ5Slk9O
         vTlE18dYxbI/peDMZ1/io7DWolQ7WV+hB+JaXdRfMfsbbKbX29CguVv1pOQw1+HX8Roy
         tThQ==
X-Gm-Message-State: AOJu0YxSHSan9jmxJOw2uPM+JVE2phhugkDDNjxGtMQxZ2dHzP3fMqi8
	P0StvUqAIQuVi5+itPePsA==
X-Google-Smtp-Source: AGHT+IE/dDxFubN4E3N7zuWpM+y2vsjkv2WsE66ZKs5e6R2qn67dewWBtrS7VxeyLz0+wJuta0yWVA==
X-Received: by 2002:a9d:7518:0:b0:6d9:ebaf:a5fa with SMTP id r24-20020a9d7518000000b006d9ebafa5famr552624otk.54.1702064033829;
        Fri, 08 Dec 2023 11:33:53 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id eu25-20020a0568303d1900b006d99d4ad6d1sm409451otb.59.2023.12.08.11.33.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 11:33:53 -0800 (PST)
Received: (nullmailer pid 2572104 invoked by uid 1000);
	Fri, 08 Dec 2023 19:33:52 -0000
Date: Fri, 8 Dec 2023 13:33:52 -0600
From: Rob Herring <robh@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: will@kernel.org, mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, suzuki.poulose@arm.com, ilkka@os.amperecomputing.com, bwicaksono@nvidia.com, YWan@nvidia.com, rwiley@nvidia.com, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 4/5] dt-bindings/perf: Add Arm CoreSight PMU
Message-ID: <20231208193352.GA1865260-robh@kernel.org>
References: <cover.1701793996.git.robin.murphy@arm.com>
 <bbb4262065cfc906f98165cac074e86dce19599e.1701793996.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bbb4262065cfc906f98165cac074e86dce19599e.1701793996.git.robin.murphy@arm.com>

On Tue, Dec 05, 2023 at 04:51:57PM +0000, Robin Murphy wrote:
> Add a binding for implementations of the Arm CoreSight Performance
> Monitoring Unit Architecture. Not to be confused with CoreSight debug
> and trace, the PMU architecture defines a standard MMIO interface for
> event counters similar to the CPU PMU architecture, where the
> implementation and most of its features are discoverable through ID
> registers.

The implementation is separate from the CPU PMU rather than an MMIO view 
of it. Not really clear in my quick read of the spec.

> CC: Rob Herring <robh+dt@kernel.org>
> CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> CC: Conor Dooley <conor+dt@kernel.org>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  .../bindings/perf/arm,coresight-pmu.yaml      | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml
> 
> diff --git a/Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml b/Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml
> new file mode 100644
> index 000000000000..12c7b28eee35
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml
> @@ -0,0 +1,39 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/perf/arm,coresight-pmu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Arm Coresight Performance Monitoring Unit Architecture
> +
> +maintainers:
> +  - Robin Murphy <robin.murphy@arm.com>
> +
> +properties:
> +  compatible:
> +    const: arm,coresight-pmu
> +
> +  reg:
> +    items:
> +      - description: Register page 0
> +      - description: Register page 1 (if dual-page extension implemented)
> +    minItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: Overflow interrupt
> +
> +  cpus:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array

Don't need a type. Already defined.

> +    minItems: 1

1 is always the minimum.

> +    description: List of CPUs with which the PMU is associated, if applicable

When is it applicable? Presumably when it is associated with only a 
subset of CPUs?

> +
> +  arm,64-bit-atomic:
> +    type: boolean
> +    description: Register accesses are single-copy atomic at doubleword granularity

As this is recommended, shouldn't the property be the inverse.

Maybe the standard 'reg-io-width = <4>' would be sufficient here?

Rob

