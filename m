Return-Path: <devicetree+bounces-12899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2657DBCD1
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 16:40:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7850B20CA0
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 15:40:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3CF518AFB;
	Mon, 30 Oct 2023 15:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC5718AF0
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 15:40:20 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FFC7C0;
	Mon, 30 Oct 2023 08:40:19 -0700 (PDT)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-5af5b532d8fso37584467b3.2;
        Mon, 30 Oct 2023 08:40:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698680418; x=1699285218;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ctUQ70dL2nfKDAD/9h13qPTwlZYHO3/BEchYSvO+piw=;
        b=UgSUOVj9aFKFkWgXvCw9D9f5/kaK3mqlT8H6sc+mdIVpmu7AK2NowMqL7dwni6hMYq
         VrM+aNDSpd7+PVh6UZrRPyWDMAfKpRFK4TpaHA5QXI57W1x/xPulDffLtq5iW2jznzxh
         CxOkVBY/bpo5ja86A88zJlAG00zHtq05Np+ijF0yCkrBfozifrDFIgwXYIuKsQY2e8Bw
         6UWFJYV7zIyo07eq33q5nKJSLq13M/KGcNgZ48Zb27VnJWB/vHsXjXl2sqD61aKoHnmI
         k5yv2mxO5J02mhRmtvOE2WCMP8FC/W/mMhqrRa6im2h2ziiv6hSWv2AOGY11wjzlTFwU
         2ACw==
X-Gm-Message-State: AOJu0YwmUggs5joV6K96CGzqeVZ0epEGT0srBpM6T2oTU3hcBz73FsHM
	P0wpIwecGnTm1jBj9g0YKQ==
X-Google-Smtp-Source: AGHT+IG0zS+bMaRUhSpaQgHQpj40k5FR//hsEw1r1BXBvhbGVG+LbCn8N81eiIeTDiBI7oUWWAS7Gg==
X-Received: by 2002:a81:8d52:0:b0:5ad:c699:f21d with SMTP id w18-20020a818d52000000b005adc699f21dmr9722263ywj.32.1698680418010;
        Mon, 30 Oct 2023 08:40:18 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6c7:c3eb:a6fd:69b4:aba3:6929])
        by smtp.gmail.com with ESMTPSA id e67-20020a816946000000b0059b24bd4f2asm4461686ywc.57.2023.10.30.08.40.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 08:40:17 -0700 (PDT)
Received: (nullmailer pid 1188730 invoked by uid 1000);
	Mon, 30 Oct 2023 15:40:15 -0000
Date: Mon, 30 Oct 2023 10:40:15 -0500
From: Rob Herring <robh@kernel.org>
To: Kris Chaplin <kris.chaplin@amd.com>
Cc: thomas.delev@amd.com, michal.simek@amd.com, krzysztof.kozlowski@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, git@amd.com
Subject: Re: [RESEND v2 1/2] dt-bindings: w1: Add YAML DT schema for AMD AXI
 w1 host and MAINTAINERS entry
Message-ID: <20231030154015.GA1141490-robh@kernel.org>
References: <20231026093029.3122573-1-kris.chaplin@amd.com>
 <20231026093029.3122573-2-kris.chaplin@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026093029.3122573-2-kris.chaplin@amd.com>

On Thu, Oct 26, 2023 at 02:28:41AM -0700, Kris Chaplin wrote:
> Add YAML DT schema for the AMD AXI w1 host IP.
> 
> This hardware guarantees protocol timing for driving off-board devices such
> as thermal sensors, proms, etc using the 1wire protocol.
> 
> Add MAINTAINERS entry for DT schema.
> 
> Co-developed-by: Thomas Delev <thomas.delev@amd.com>
> Signed-off-by: Thomas Delev <thomas.delev@amd.com>
> Signed-off-by: Kris Chaplin <kris.chaplin@amd.com>
> ---
>  .../bindings/w1/amd,axi-1wire-host.yaml       | 44 +++++++++++++++++++
>  MAINTAINERS                                   |  7 +++
>  2 files changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/w1/amd,axi-1wire-host.yaml
> 
> diff --git a/Documentation/devicetree/bindings/w1/amd,axi-1wire-host.yaml b/Documentation/devicetree/bindings/w1/amd,axi-1wire-host.yaml
> new file mode 100644
> index 000000000000..ef70fa2c0c5d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/w1/amd,axi-1wire-host.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/w1/amd,axi-1wire-host.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AMD AXI 1-wire bus host for programmable logic
> +
> +maintainers:
> +  - Kris Chaplin <kris.chaplin@amd.com>
> +
> +properties:
> +  compatible:
> +    const: amd,axi-1wire-host

Is there a device side implementation? I can't really imagine that 
1-wire would ever be implemented as firmware on the device side given 
its limited nature. So adding 'host' doesn't make this any more 
specific.

Rob

