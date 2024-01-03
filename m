Return-Path: <devicetree+bounces-29399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 87122822C70
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 12:57:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B76A1F22341
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 11:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 484CA18EA2;
	Wed,  3 Jan 2024 11:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="JRClat5I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D2118E3F
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 11:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a28ab7ae504so24786966b.3
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 03:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1704282984; x=1704887784; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j1w+ahe+6fF4Xvq18aSfd3iw7WLNztkXwapqNFYwZps=;
        b=JRClat5I01zaKJRs95C5+udQnXjsCeCNtGMhxqzPmLv0vh1mTsCmfGDLF/Su3p1B+z
         YcosjB6bo5UZLnfYti8sUyjRNH39ppfE0sWNZJGr6aCzLHGaQ67vfcTzC0M8QVHC4Znk
         wg3D2EsMJ9bfjPHDRpX6DPLsUzznv1u2heeKEKvTs3FYrRAOP2a93K68uhzBDJMndFOV
         xJJ88PU3c6crELxVYGmfPsNt3DWZDeREHvdEzRzz3rRXwUNztf6XHNgTZJgI1IH8MvxE
         V/8JoBBVvUru8fIAe+/XgJfECYrq9IIYxOF0rt3CXVgFOxWKbZOnwSh/fGSgV0PxKKOT
         zdPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704282984; x=1704887784;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j1w+ahe+6fF4Xvq18aSfd3iw7WLNztkXwapqNFYwZps=;
        b=Xrb4x474naEQyP8Tz+2ja/pFfyFm0nMFXt6Onvq5/pIzcFoBGRJjPWgp+Emo/zJaXH
         WKpU9TcfjrMDyN/wcyX9Q0RoEmwMmRe7c1haZsSgUUZ7VWWuVw/RNjrJsA1JNB2KoASh
         EcAjzSw/t/AJOUdkeMaGDU8cGNAje2GHG/bf/PXJp+8eAtKq3p9MA9hKSvKBU9ZjX+n8
         nF+cOXot8ow0k00ONkbPEU4N7ohwDzUStG7q02/whGQJ+PRBVThsDQkpDZcE8srlaqWM
         iXwj2pqc5Z997KFguCsE+BMkQodM9N2pFflFQv/OKZN7mWh+TFOstn0Apa9oJQ8CTIgX
         nzBQ==
X-Gm-Message-State: AOJu0YynU84UmU/3hSI+h9djDzO4hmp2As3WKjA33LyToJ2ihtCkYFAp
	029S8HzKExEs761Hk/JegD1v+VmrNoE+EQ==
X-Google-Smtp-Source: AGHT+IEPAlnfVbxd2sMR5+JjHkBK2BsKlvHArDwIl4WKQpiz0gmnfSPLQnxPoi85XwjZ/1LIjPAtEw==
X-Received: by 2002:a17:906:fe09:b0:a26:e292:394b with SMTP id wy9-20020a170906fe0900b00a26e292394bmr9258905ejb.67.1704282983328;
        Wed, 03 Jan 2024 03:56:23 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id wb1-20020a170907d50100b00a2300127f26sm12709680ejc.185.2024.01.03.03.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 03:56:22 -0800 (PST)
Date: Wed, 3 Jan 2024 12:56:21 +0100
From: Andrew Jones <ajones@ventanamicro.com>
To: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, apatel@ventanamicro.com, 
	palmer@dabbelt.com, devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH] dt-bindings: riscv: Document cbop-block-size
Message-ID: <20240103-ff49d0645e36f2822e755f4d@orel>
References: <20231029123500.739409-1-dbarboza@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231029123500.739409-1-dbarboza@ventanamicro.com>

On Sun, Oct 29, 2023 at 09:35:00AM -0300, Daniel Henrique Barboza wrote:
> Following the examples of cbom-block-size and cboz-block-size,
> cbop-block-size is the cache size of Zicbop (cbo.prefetch) operations.
> The most common case is to have all cache block sizes to be the same
> size (e.g. profiles such as rva22u64 mandates a 64 bytes size for all
> cache operations), but there's no specification requirement for that,
> and an implementation can have different cache sizes for each operation.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index 97e8441eda1c..1660b296f7de 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -78,6 +78,11 @@ properties:
>      description:
>        The blocksize in bytes for the Zicbom cache operations.
>  
> +  riscv,cbop-block-size:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      The blocksize in bytes for the Zicbop cache operations.
> +
>    riscv,cboz-block-size:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      description:
> -- 
> 2.41.0
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

