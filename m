Return-Path: <devicetree+bounces-9349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3102E7CCC23
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 21:21:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CE114B21092
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 19:21:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E15B2EB14;
	Tue, 17 Oct 2023 19:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 868E12EB04
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 19:21:35 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41770C6;
	Tue, 17 Oct 2023 12:21:34 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6c67060fdfbso4254373a34.2;
        Tue, 17 Oct 2023 12:21:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697570493; x=1698175293;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=61S20Gbnndc4fqj7tn8AFvCkFIBPPlMvkss+WgUIuOM=;
        b=isCQ3WLsdwBK4tMr42xvN/MvE9MTkf/olUckVe/lIQ3T7uamTEW8U+EeegMwtBZJUt
         lCn9gErEnYpxzWnME9IOmOpslBYYjAFBpL1RGJzzJYxHjqMRA9du668/oGAtgwTf17ka
         aP64B87slA3799pjr9FQmDtyaTho5W925H2ilZ7O/NB60aZyLIC6fZ303A2L+CUiXAfX
         5HNlDm22CLiH5fPYzjAq9Z8hCxMpkhETUd306sT1zqh264uxM2HL0yq13mwZiKjom0nc
         ajaN8cxLKBc6iqH+US0wwPH+7ZALEbKPswcvOS0/1Dc8GjPcBklHZ3ce99GApBlcY7HW
         JS7w==
X-Gm-Message-State: AOJu0YyoJl8NB9UfQ/gNt3Ynd4vWJnxUkb7jXbV+4Jw0foidsAoFQm0G
	hD6y05pH4snmoO2qPxhZnA==
X-Google-Smtp-Source: AGHT+IHJyaSugGG05r+DAoJig+bmPNHXeP74ajH6ozj3mbwxUknjRdWObSCsL8JxU3Kg3JW4VaUWkA==
X-Received: by 2002:a05:6830:2641:b0:6c4:9852:a498 with SMTP id f1-20020a056830264100b006c49852a498mr3533723otu.4.1697570493497;
        Tue, 17 Oct 2023 12:21:33 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a9-20020a9d3e09000000b006c4727812fdsm367616otd.15.2023.10.17.12.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 12:21:32 -0700 (PDT)
Received: (nullmailer pid 2539855 invoked by uid 1000);
	Tue, 17 Oct 2023 19:21:31 -0000
Date: Tue, 17 Oct 2023 14:21:31 -0500
From: Rob Herring <robh@kernel.org>
To: niravkumar.l.rabara@intel.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: soc: altera: convert socfpga-system.txt
 to yaml
Message-ID: <20231017192131.GA2531944-robh@kernel.org>
References: <20231014112905.1512650-1-niravkumar.l.rabara@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231014112905.1512650-1-niravkumar.l.rabara@intel.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
	FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, Oct 14, 2023 at 07:29:05PM +0800, niravkumar.l.rabara@intel.com wrote:
> From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> 
> Convert socfpga-system.txt to altr,socfpga-sys-mgr.yaml and move to
> soc directory.
> 
> Add platform names in description for clarity. ARM(32-bit) platforms
> Cyclone5, Arria5 and Arria10 is using "altr,sys-mgr" compatible,
> while ARM64 is using "altr,sys-mgr-s10" compatible.
> Removed "cpu1-start-addr" for ARM64 as it is not required.
> 
> Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> ---
> 
> Changes in v2:
> - Added detail description of changes in commit message.
> - Moved coverted yaml file to soc folder.  
> 
>  .../bindings/arm/altera/socfpga-system.txt    | 25 ---------
>  .../soc/altera/altr,socfpga-sys-mgr.yaml      | 51 +++++++++++++++++++

altr,sys-mgr.yaml


>  2 files changed, 51 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-system.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/altera/altr,socfpga-sys-mgr.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-system.txt b/Documentation/devicetree/bindings/arm/altera/socfpga-system.txt
> deleted file mode 100644
> index 82edbaaa3f85..000000000000
> --- a/Documentation/devicetree/bindings/arm/altera/socfpga-system.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -Altera SOCFPGA System Manager
> -
> -Required properties:
> -- compatible : "altr,sys-mgr"
> -- reg : Should contain 1 register ranges(address and length)
> -- cpu1-start-addr : CPU1 start address in hex.
> -
> -Example:
> -	 sysmgr@ffd08000 {
> -		compatible = "altr,sys-mgr";
> -		reg = <0xffd08000 0x1000>;
> -		cpu1-start-addr = <0xffd080c4>;
> -	};
> -
> -ARM64 - Stratix10
> -Required properties:
> -- compatible : "altr,sys-mgr-s10"
> -- reg : Should contain 1 register range(address and length)
> -        for system manager register.
> -
> -Example:
> -	 sysmgr@ffd12000 {
> -		compatible = "altr,sys-mgr-s10";
> -		reg = <0xffd12000 0x228>;
> -	};
> diff --git a/Documentation/devicetree/bindings/soc/altera/altr,socfpga-sys-mgr.yaml b/Documentation/devicetree/bindings/soc/altera/altr,socfpga-sys-mgr.yaml
> new file mode 100644
> index 000000000000..b8bf63bba567
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/altera/altr,socfpga-sys-mgr.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/altera/altr,socfpga-sys-mgr.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Altera SOCFPGA System Manager
> +
> +maintainers:
> +  - Dinh Nguyen <dinguyen@kernel.org>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - description: Cyclone5/Arria5/Arria10
> +        const: altr,sys-mgr
> +      - description: Stratix10 SoC
> +        items:
> +          - const: altr,sys-mgr-s10
> +          - const: altr,sys-mgr
> +
> +  reg:
> +    maxItems: 1
> +
> +  cpu1-start-addr:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: CPU1 start address in hex
> +
> +required:
> +  - compatible
> +  - reg
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: altr,sys-mgr-s10
> +    then:
> +      properties:
> +        cpu1-start-addr: false
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sysmgr@ffd08000 {
> +      compatible = "altr,sys-mgr";
> +      reg = <0xffd08000 0x1000>;
> +      cpu1-start-addr = <0xffd080c4>;
> +    };
> -- 
> 2.25.1
> 

