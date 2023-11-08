Return-Path: <devicetree+bounces-14628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF3B7E5C0F
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 18:12:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A771628133B
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 17:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71C8530349;
	Wed,  8 Nov 2023 17:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0277631A6F
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 17:12:05 +0000 (UTC)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ED4E1FFB;
	Wed,  8 Nov 2023 09:12:05 -0800 (PST)
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5875e24c749so3366866eaf.1;
        Wed, 08 Nov 2023 09:12:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699463525; x=1700068325;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WoqEuJK3L2jvBHVX0Mpw971ft0z0hhSp7nlVmckWjlI=;
        b=fBmCxu7ysdvSQqqeh9Ytg5g1/l2DKkRlxOpotUdjUNjCC8lfDcv7u8IbFzA7COEvif
         Ir8kOaVBWF4Kb40dujeyvNdROyrX3BS3DchGEbcKAx3/VMUChlG+R+4FdmA0JdL88MK9
         +vK6+cdWeKWS2N70KKen3MfCep/sSrVhCBkQf5GNSTNMTMhggiQflVJy+HQL3/O1psGI
         HRZ+sXPjJvYx0+LlyqM8mGU4tJa/cQoD0tZyfZ2dSBsx+LgCtZ/cyRN5bVaXNro4+DLp
         aZCMCm3yKIf7hG8qEyqIJmL5itBdA70i8nTmyT4tNY+xjf/pI4hjjlRKKbdOIRk6gFSO
         vRwA==
X-Gm-Message-State: AOJu0YzDs4RaRxOpKhnjI1flmAat9wAjpN50FFLFPpJkLFNZ2KG9tChu
	GIlWj2oOitnUhza7CZOI5A==
X-Google-Smtp-Source: AGHT+IFzRRe3+ULoXVKLekkDLT2E46OQ2R4s9QZ1ENZ+UvEE3WkT/0Ga2EKu7UWArEUdcFOI9ofQAQ==
X-Received: by 2002:a05:6820:1c83:b0:589:db63:bfd1 with SMTP id ct3-20020a0568201c8300b00589db63bfd1mr2676269oob.8.1699463524765;
        Wed, 08 Nov 2023 09:12:04 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x16-20020a4a97d0000000b0057327cecdd8sm2535510ooi.10.2023.11.08.09.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 09:12:04 -0800 (PST)
Received: (nullmailer pid 2492952 invoked by uid 1000);
	Wed, 08 Nov 2023 17:12:03 -0000
Date: Wed, 8 Nov 2023 11:12:03 -0600
From: Rob Herring <robh@kernel.org>
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com, Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: riscv: cpus: Add AMD MicroBlaze V compatible
Message-ID: <20231108171203.GA2434548-robh@kernel.org>
References: <d442d916204d26f82c1c3a924a4cdfb117960e1b.1699270661.git.michal.simek@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d442d916204d26f82c1c3a924a4cdfb117960e1b.1699270661.git.michal.simek@amd.com>

On Mon, Nov 06, 2023 at 12:37:47PM +0100, Michal Simek wrote:
> MicroBlaze V is new AMD/Xilinx soft-core 32bit RISC-V processor IP.
> It is hardware compatible with classic MicroBlaze processor.

How is that possible? It's a different instruction set, right? I suppose 
the IP interfaces (signals) are the same/compatible.

> 
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
> 
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)

Anyways,

Acked-by: Rob Herring <robh@kernel.org>

> 
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index 97e8441eda1c..7b077af62b27 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -32,6 +32,7 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - amd,mbv32
>                - andestech,ax45mp
>                - canaan,k210
>                - sifive,bullet0
> -- 
> 2.36.1
> 

