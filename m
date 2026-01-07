Return-Path: <devicetree+bounces-252426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C7973CFEB30
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 16:52:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCE1A310D14A
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 15:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57F3839C62C;
	Wed,  7 Jan 2026 15:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ifWwwKe8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8251E39C62D
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 15:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767800143; cv=none; b=PGdkWn4dAIyVSTmYlaiv1rsWw22NkegSBl/eAuD7aBE3ZILuT2Ig2PWSZugelALGPQeE0DXHbNNjZ7iWqNGZMSUF1V/TlcyBb9vXRA3pXWydpxYDgshB8XBG12/Y2aw7DJrU/Zd0VCO5t7paUYV4Imvj6211PS8TEIXwKiYAaLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767800143; c=relaxed/simple;
	bh=mGN3GgnNdoOqT5ttldrfgrxqNaE1p+uWyAokSQ+Gslc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cazU2lDAN4LEq8NGczvtoLuFRSqYzN07yITLIZWI1Rn+6BA4EUEQqxOjpm4Qwv7eaAWp5Jsi/gDOpZmEQaakqWRqQXnWC39qvBeIii7eVf+9MxanBZ5mMvpWUuSiZNhGiR2mHRM+dkaqVXNDkCj6Pa3CE/heJI0RYW3t3djZ0A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ifWwwKe8; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a0bb2f093aso18084095ad.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 07:35:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767800141; x=1768404941; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/SR2gLuU1H5541mPq9C4V04vstpLOPeBOnMkn3dWO/g=;
        b=ifWwwKe8Smrr+FnksjcqI7m3i0DzMT42h55P22D+IGaBM9R4AkK2fH4dCWaF0NwVFU
         o8m8nLX1z3yDt//AXNOqZRzBgcfDg6JYhrORAJNGpQEDAdd2hRocNBjWfRCCPAeofP2G
         YEopQMIRkGx51d8JBfRkC6f6e619oFDLCtUbNlBYuVQ+G/JNRZ0SS+cbTfmyIy7k4PiF
         TaNiZcm7ZF/vRlTbaPgvnf8vhZah+UzfRJ99ryZRsMfzzn6K/HoI3G+vKethHRnxFbFN
         p9a5Z45Nx7KlhDWQz9lCA8594yQ/tipXAYNMaEiUEaXnuDevULIvw9/tATwzw8lCw8iy
         nxKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767800141; x=1768404941;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/SR2gLuU1H5541mPq9C4V04vstpLOPeBOnMkn3dWO/g=;
        b=VQbg1323x64kFoEPR2hioThMHpfojo0eExAwUlE26diHzJE46chVlkdLzjc3WezWgO
         ejwMUsx/vFfrQ9uYVEG4zffcVrnXmqb2N0ibPGWE40tCHpeT6eeyK5yvetCggDZlTfBz
         ArtoHnKmEhm87KxxtTpa++nerfpZE1mr3sSS7MbS7Ns0eo1upWkjZDnG/qGmNYNDOO/J
         E2WYkYxEAeWv3VlZprASHOoMYCf2spKSwYFPw/yeSuwiZZUDXWDJYS/q8vjse9xBzEbu
         J6nMLA7Iel7OEBg0nXAAOCT8+n769inuvu9j2IPDFCpbEcb+XnK3ZlbFZCLYjxVyuepr
         knWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXht4OYmOd3pO/1yjhWz8WozuAxXxF0GzluABkdcEI+4bvwmOWUf3afgReLhC4Z+Q/6Hd2oQtBMDrEg@vger.kernel.org
X-Gm-Message-State: AOJu0YzujWOQN85dmzXjHILYb2HMCF7NQlnmHM6m2uhVJWrtWcLcPmRx
	0bXFJ/4wfTrXPU0rvSXLohoMEd4W2Dg5TCfx/iDbdjGgaEbSlADlEk0IPxd13FmsSWs=
X-Gm-Gg: AY/fxX6iOcl1zEs3Z6Syz+T0DNIb8bTi77BqU8koNgaFCR29vmxMkIbMvajAiIvLhbg
	aoNU0bB2NWF+zWKvIpxpQLTnT6Lc8wtptouKaWaVHTSo3ubRacAiRaN7r0Q8HDywkEPp+lfybxD
	jSWertOw8FKhzworTbiZPI4Ci0CQhKzU/pPSZv04FbCoBJyuPTGIJht+yL0BZKUi9TFOXkUWySI
	JBBX2eYNGW0I9MYaIZa2xS3v2gt+ZsSNz8UI/ON1gd7CozidCF/myOGD5EdwMqIXFQUzJWyS2C8
	aGIddVQ2TrbDh7QWq0JdkyZMl2K1nSdRho7FCVZzMB+EdCn+xqrvPICJ2BEVSLL+oAzdK22Uqx/
	By/14kK2O+4PX67MeTkM4/ncrrwNFBTbuiUV6R/D+a2beqcleFmn17tlH2b63w0iK471djdxV6b
	ta7snf/0RpAOl2Uw==
X-Google-Smtp-Source: AGHT+IGBvG5WmQSIVwy8pD5KbvRQIOMKna1wirHJXxpWkWLnZtjO89ZkOS60V0d1bqeYUMlW/GSgnw==
X-Received: by 2002:a17:903:1105:b0:2a0:cb8d:2ed6 with SMTP id d9443c01a7336-2a3ee4d9b4bmr18514405ad.51.1767800140725;
        Wed, 07 Jan 2026 07:35:40 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:9510:cc09:7589:5527])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52f88casm5317448b3a.34.2026.01.07.07.35.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 07:35:40 -0800 (PST)
Date: Wed, 7 Jan 2026 08:35:37 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Beleswar Padhi <b-padhi@ti.com>
Cc: andersson@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, nm@ti.com, vigneshr@ti.com, kristo@kernel.org,
	afd@ti.com, u-kumar1@ti.com, hnagalla@ti.com,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: remoteproc: Add HSM M4F core on TI
 K3 SoCs
Message-ID: <aV59SdFU15HpLHeO@p14s>
References: <20260106104755.948086-1-b-padhi@ti.com>
 <20260106104755.948086-2-b-padhi@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260106104755.948086-2-b-padhi@ti.com>

On Tue, Jan 06, 2026 at 04:17:53PM +0530, Beleswar Padhi wrote:
> Some of the TI K3 family of SoCs have a HSM (High Security Module) M4F
> core in the Wakeup Voltage Domain which could be used to run secure
> services like Authentication. Add the device tree bindings document for
> this HSM M4F core.
> 
> The added example illustrates the DT node for the HSM core present on K3
> J722S SoC.
> 
> Signed-off-by: Beleswar Padhi <b-padhi@ti.com>
> ---
> v2: Changelog:
> [Krzysztof Kozlowski]:
>  1. Update commit msg to remove redundant "bindings".
>  2. Update filename to match compatible.
>  3. Remove "address-cells" & "size-cells" property. These belong to the
>     device's parent node.
>  4. Drop description from firmware-name property.
>  5. Fix indentation for DT example.
> 
> Link to v1:
> https://lore.kernel.org/all/20251231165102.950644-2-b-padhi@ti.com/
> 
>  .../bindings/remoteproc/ti,hsm-m4fss.yaml     | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,hsm-m4fss.yaml
> 

I have applied this patch- Nishanth and Vignesh should handle the .dsti files.

Thanks,
Mathieu

> diff --git a/Documentation/devicetree/bindings/remoteproc/ti,hsm-m4fss.yaml b/Documentation/devicetree/bindings/remoteproc/ti,hsm-m4fss.yaml
> new file mode 100644
> index 0000000000000..9244e60acee37
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/ti,hsm-m4fss.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/remoteproc/ti,hsm-m4fss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI K3 HSM M4F processor subsystems
> +
> +maintainers:
> +  - Beleswar Padhi <b-padhi@ti.com>
> +
> +description: |
> +  Some K3 family SoCs have a HSM (High Security Module) M4F core in the
> +  Wakeup Voltage Domain which could be used to run secure services like
> +  Authentication. Some of those are J721S2, J784S4, J722S, AM62X.
> +
> +$ref: /schemas/arm/keystone/ti,k3-sci-common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,hsm-m4fss
> +
> +  reg:
> +    items:
> +      - description: SRAM0_0 internal memory region
> +      - description: SRAM0_1 internal memory region
> +      - description: SRAM1 internal memory region
> +
> +  reg-names:
> +    items:
> +      - const: sram0_0
> +      - const: sram0_1
> +      - const: sram1
> +
> +  resets:
> +    maxItems: 1
> +
> +  firmware-name:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - resets
> +  - firmware-name
> +  - ti,sci
> +  - ti,sci-dev-id
> +  - ti,sci-proc-ids
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        remoteproc@43c00000 {
> +            compatible = "ti,hsm-m4fss";
> +            reg = <0x00 0x43c00000 0x00 0x20000>,
> +                  <0x00 0x43c20000 0x00 0x10000>,
> +                  <0x00 0x43c30000 0x00 0x10000>;
> +            reg-names = "sram0_0", "sram0_1", "sram1";
> +            resets = <&k3_reset 225 1>;
> +            firmware-name = "hsm.bin";
> +            ti,sci = <&sms>;
> +            ti,sci-dev-id = <225>;
> +            ti,sci-proc-ids = <0x80 0xff>;
> +        };
> +    };
> -- 
> 2.34.1
> 

