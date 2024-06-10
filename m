Return-Path: <devicetree+bounces-74260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5F99027BB
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 19:26:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 155D91C21C5A
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 17:26:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDF68147C60;
	Mon, 10 Jun 2024 17:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qlUCcM8P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A428145B09
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 17:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718040385; cv=none; b=Vllj8Yc/LwA9hYafmWV7UlMFfD+Wlsn9PtJsLxflzWdekUdXzXW4cvpodJC51liDhs/KVIA5/+M1CaNvk/YztDgEPXnxrcjsVtpkFyOq76Ld/3K/P57Bg2X53alSgSKcK4Daut7JZxc7vIuNEUWw/xhCMyPK1t4lro6fO17bVSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718040385; c=relaxed/simple;
	bh=Q/MZThhTl0D4X3vzKFJNi7/NHlOmG0Lu7+ra8XkSC8M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HXiQmNzeoRzBms6PZsV70XjKCBvfS26S/1MBofBFOCCRqKD3wlkClu3EE+qhgZ6W0e8ooV9h+0ukkzQn4HjrjM8TW3UvBWmsinP3SVD58GIA7A003Pd9PCTvpR56Xx+r+/fdlpIWowfUjsfD4o/FUWfU3s5/dnVZWZVt9CTm49E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qlUCcM8P; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1f44b594deeso38631875ad.2
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 10:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718040383; x=1718645183; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z/kTTkUUgstNH0kO/w/zYM9NQPPa4QuRLLbk/mR4trg=;
        b=qlUCcM8PZqanmM5+PHgvuW/bmNqqHiiv5Eel9/9v5McLAdeBqxcVEAY/hzLEOLmsKJ
         JtdPGLRxa69c+FHGAB3U+64ZIJZMnvCAV0UOFWm6m+k9/pemCSHvAbLUbilmJo0zKP2N
         nVqacfecU75kSSV9NSPcBGjladRxTeczkXwbwBaK0w4Yn6ndu64GnaAq2ike9n+vN9+6
         Z/WaAxuBth6/s1LQEjKFAjXmH+kviynTB6MbPD9J0Bq+8OLYWVPB+oYgGD6yv5YzSIwC
         apAEeRhXVQv+H3bEu0Hud4ON4SM54mt4z2h2ozJjy96AOFZeJmIkWc66MI2yjUzm4Mvc
         rCFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718040383; x=1718645183;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z/kTTkUUgstNH0kO/w/zYM9NQPPa4QuRLLbk/mR4trg=;
        b=nC8K20/1dXSEagvkC5QNFTavkBjGLrwEek76/Ktkk+yF1B+HgLV88H6jUhJp+T4aHN
         K58TlaKsiQfMNELDBg6IGZl8mjrZGXsUXbBS2Q24GrcGIznjiHkS6BFf9Z7l0K6BWsV5
         RoDB9xsdeiPxEORJqo3dJ6xCn7QrbX7ZpdB261MWeGDAJvPJKbM/4cWmUa3MnsvegBCZ
         ZjOYpATuRNzrYb3Mys5iJSQ9GHUsQzOgV4KNZ0iDaGdePyfVlwPJiyRGEbLbudGM1pjJ
         zxNVt+jENMWtjIWjhlDFRoz6TVEtyRJoy76ZfbRpuqQX/bvLuuN1Yuvqz1vXrRD40Hfo
         zjqg==
X-Forwarded-Encrypted: i=1; AJvYcCVxTwCvAH8GD6bEOu5Rh5ey6wedbJYDRzK1Gjjc9iHZuKqNwElUZV4q1LS/hk1rJqD+FtSfCeQZAJeennKRTpBGM+1/BoerdyrgnA==
X-Gm-Message-State: AOJu0Yyx9h6LpCb83W3WSK54fkshakbbu2jYzS34+Q2AhgCmCVRCSA6S
	YI4vNcB7GSLquOsSIw+ku67bjmPrx5GuSy2LkPoGRUpZjK/2JJD2c77rjviDBHE=
X-Google-Smtp-Source: AGHT+IH8YAOO/uT7J0A/QVv5pT52XllYU+TIkKyiNkH2Hu0YlR1K/R1KeIL1Bvd96mmeM9shiu/DVQ==
X-Received: by 2002:a17:902:ec87:b0:1f7:234b:4f28 with SMTP id d9443c01a7336-1f7234b9815mr13600575ad.25.1718040383611;
        Mon, 10 Jun 2024 10:26:23 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:9b34:fecc:a6c:e2bc])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c2f8fc6dd0sm3568404a91.22.2024.06.10.10.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 10:26:23 -0700 (PDT)
Date: Mon, 10 Jun 2024 11:26:19 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Hari Nagalla <hnagalla@ti.com>
Cc: andersson@kernel.org, robh+dt@kernel.org, devarsht@ti.com,
	s-anna@ti.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-remoteproc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: remoteproc: k3-dsp: correct optional
 sram properties for AM62A SoCs
Message-ID: <Zmc3O+mAP8v9GVQl@p14s>
References: <20240604171450.2455-1-hnagalla@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604171450.2455-1-hnagalla@ti.com>

On Tue, Jun 04, 2024 at 12:14:50PM -0500, Hari Nagalla wrote:
> The C7xv-dsp on AM62A have 32KB L1 I-cache and a 64KB L1 D-cache. It
> does not have an addressable l1dram . So, remove this optional sram
> property from the bindings to fix device tree build warnings.
> 
> Signed-off-by: Hari Nagalla <hnagalla@ti.com>
> ---
> Changes in v3:
> *) Use allOf keyword with separate ifs for each variant instead 
>    of nested if/else conditions.
> 
> v2: https://lore.kernel.org/all/20240530164816.1051-1-hnagalla@ti.com/
> 
>  .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 89 +++++++++++--------
>  1 file changed, 51 insertions(+), 38 deletions(-)
>

Applied

Thanks,
Mathieu

> diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> index 9768db8663eb..b51bb863d759 100644
> --- a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> @@ -25,9 +25,6 @@ description: |
>    host processor (Arm CorePac) to perform the device management of the remote
>    processor and to communicate with the remote processor.
>  
> -allOf:
> -  - $ref: /schemas/arm/keystone/ti,k3-sci-common.yaml#
> -
>  properties:
>    compatible:
>      enum:
> @@ -89,41 +86,57 @@ properties:
>        should be defined as per the generic bindings in,
>        Documentation/devicetree/bindings/sram/sram.yaml
>  
> -if:
> -  properties:
> -    compatible:
> -      enum:
> -        - ti,j721e-c66-dsp
> -then:
> -  properties:
> -    reg:
> -      items:
> -        - description: Address and Size of the L2 SRAM internal memory region
> -        - description: Address and Size of the L1 PRAM internal memory region
> -        - description: Address and Size of the L1 DRAM internal memory region
> -    reg-names:
> -      items:
> -        - const: l2sram
> -        - const: l1pram
> -        - const: l1dram
> -else:
> -  if:
> -    properties:
> -      compatible:
> -        enum:
> -          - ti,am62a-c7xv-dsp
> -          - ti,j721e-c71-dsp
> -          - ti,j721s2-c71-dsp
> -  then:
> -    properties:
> -      reg:
> -        items:
> -          - description: Address and Size of the L2 SRAM internal memory region
> -          - description: Address and Size of the L1 DRAM internal memory region
> -      reg-names:
> -        items:
> -          - const: l2sram
> -          - const: l1dram
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - ti,j721e-c66-dsp
> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: Address and Size of the L2 SRAM internal memory region
> +            - description: Address and Size of the L1 PRAM internal memory region
> +            - description: Address and Size of the L1 DRAM internal memory region
> +        reg-names:
> +          items:
> +            - const: l2sram
> +            - const: l1pram
> +            - const: l1dram
> +
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - ti,j721e-c71-dsp
> +            - ti,j721s2-c71-dsp
> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: Address and Size of the L2 SRAM internal memory region
> +            - description: Address and Size of the L1 DRAM internal memory region
> +        reg-names:
> +          items:
> +            - const: l2sram
> +            - const: l1dram
> +
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - ti,am62a-c7xv-dsp
> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: Address and Size of the L2 SRAM internal memory region
> +        reg-names:
> +          items:
> +            - const: l2sram
> +
> +  - $ref: /schemas/arm/keystone/ti,k3-sci-common.yaml#
>  
>  required:
>    - compatible
> -- 
> 2.34.1
> 

