Return-Path: <devicetree+bounces-9985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FFA7CF409
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:27:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C260E281EEA
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 09:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAE03171C7;
	Thu, 19 Oct 2023 09:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cY6eHllk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F09417723
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 09:27:05 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 084D2189
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 02:27:03 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-53db360294fso13525753a12.3
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 02:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697707621; x=1698312421; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Oz0CrCWpEFv7X1wnxM+8TRRbLdRXVk3t64umKMM+ndM=;
        b=cY6eHllk3Kk4BezELCIWLGgexZ8/H95MPiF3Y37/q0KVtdy83voykW/fBEwYJNE1N/
         xYiF1pIKOo2RXf1UJzKAvs59luCz18ygIM6wqXewnFxU29wS8ZDF+rvQ/yt8DbaI7Afa
         u6gjawdipG9r75iiFMfpKfYqq5xGa7nPpRp+JIyEYCA/NWuPbzqdmbDuJ34u2tNfSsVs
         /SfpUHH5Q3e46mn6c3n4dcItODSgF5q29+n1AFqPIjcU9+GuxuCFhiXMaKcUrImd3ex4
         /XTYkJ+sGps+MVRwTBBZeJQCCt4EtoLqq+ILK1ec09iChKZ9ppYhUUe9TFGUUXgEd34/
         9FjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697707621; x=1698312421;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Oz0CrCWpEFv7X1wnxM+8TRRbLdRXVk3t64umKMM+ndM=;
        b=kIfY4CTeDboVv9yzs8Zq3JIxsIb+lOhsrvrT+gCKDA2vkS76ibk1NSeirmS6ufEUVP
         wq118eRlqbrAGZGc/yI8u4mQLstgBP+LkEZybQsTCNMYWPKclmSIzaaujxDqaF+K5M8y
         J4/DwutOLhCqFHDPqurELE56xXZz87DajivurqJO8ed2A0+s6OgV/e9A7qEF4GnojO2S
         nqchEDL/AZbtmrGJMAktApTvON/oWfhWm5cEWdR+phukNOlRqGK8QSaT8BuAPqtKSMbt
         1NSy/I+FuAKsJzq5KLL0LDCA1X8hQsnhSlX2MRgEdvvAKAm6iAt3ebN+LGuhzQEDYcsO
         ehhw==
X-Gm-Message-State: AOJu0YytSuQBjKauXWBFw5yudTE7je9Y45gDjfVbDPiXY6nfDvqzwBZR
	5l4lQoj4l8NxUkwRHV93e0Y5Lw==
X-Google-Smtp-Source: AGHT+IERlZM9uDgTZNxcnj+tHgxqq19iz4dKwsnDpGSHoSiTQHWkXEBrAssm9zXxNxuiU3mRIBw8Ig==
X-Received: by 2002:a17:907:96a2:b0:9b2:c583:cd71 with SMTP id hd34-20020a17090796a200b009b2c583cd71mr1593721ejc.50.1697707621440;
        Thu, 19 Oct 2023 02:27:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id l24-20020a170906231800b009c764341f74sm94223eja.71.2023.10.19.02.27.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 02:27:01 -0700 (PDT)
Message-ID: <aac1b716-c4f6-46e8-88f6-e5aad5bca870@linaro.org>
Date: Thu, 19 Oct 2023 11:26:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/5] dt-bindings: nvmem: Convert xlnx,zynqmp-nvmem.txt
 to yaml
Content-Language: en-US
To: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>,
 srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 michal.simek@amd.com, praveent@amd.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
References: <20231019060651.23341-1-praveen.teja.kundanala@amd.com>
 <20231019060651.23341-3-praveen.teja.kundanala@amd.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231019060651.23341-3-praveen.teja.kundanala@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/10/2023 08:06, Praveen Teja Kundanala wrote:
> Convert the xlnx,zynqmp-nvmem.txt to yaml.
> 
> Signed-off-by: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
> ---
>  .../bindings/nvmem/xlnx,zynqmp-nvmem.txt      | 46 -------------------
>  .../bindings/nvmem/xlnx,zynqmp-nvmem.yaml     | 40 ++++++++++++++++
>  2 files changed, 40 insertions(+), 46 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.txt
>  create mode 100644 Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.txt b/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.txt
> deleted file mode 100644
> index 4881561b3a02..000000000000
> --- a/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.txt
> +++ /dev/null
> @@ -1,46 +0,0 @@
> ---------------------------------------------------------------------------
> -=  Zynq UltraScale+ MPSoC nvmem firmware driver binding =
> ---------------------------------------------------------------------------
> -The nvmem_firmware node provides access to the hardware related data
> -like soc revision, IDCODE... etc, By using the firmware interface.
> -
> -Required properties:
> -- compatible: should be "xlnx,zynqmp-nvmem-fw"
> -
> -= Data cells =
> -Are child nodes of silicon id, bindings of which as described in
> -bindings/nvmem/nvmem.txt
> -
> --------
> - Example
> --------
> -firmware {
> -	zynqmp_firmware: zynqmp-firmware {
> -		compatible = "xlnx,zynqmp-firmware";
> -		method = "smc";
> -
> -		nvmem_firmware {
> -			compatible = "xlnx,zynqmp-nvmem-fw";
> -			#address-cells = <1>;
> -			#size-cells = <1>;
> -
> -			/* Data cells */
> -			soc_revision: soc_revision {
> -				reg = <0x0 0x4>;
> -			};
> -		};
> -	};
> -};
> -
> -= Data consumers =
> -Are device nodes which consume nvmem data cells.
> -
> -For example:
> -	pcap {
> -		...
> -
> -		nvmem-cells = <&soc_revision>;
> -		nvmem-cell-names = "soc_revision";
> -
> -		...
> -	};
> diff --git a/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml b/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml
> new file mode 100644
> index 000000000000..5d20362a0615
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml
> @@ -0,0 +1,40 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/xlnx,zynqmp-nvmem.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Zynq UltraScale+ MPSoC Non Volatile Memory interface
> +
> +description: |
> +    The ZynqMP MPSoC provides access to the hardware related data
> +    like SOC revision, IDCODE and specific purpose efuses.
> +
> +maintainers:
> +  - Kalyani Akula <kalyani.akula@amd.com>
> +  - Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
> +
> +allOf:
> +  - $ref: nvmem.yaml#
> +
> +properties:
> +  compatible:
> +    const: xlnx,zynqmp-nvmem-fw
> +
> +required:
> +  - compatible

Test your bindings before sending. I am not a free tester of your
code... It's your duty.

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    nvmem-firmware {

Node names should be generic, so "nvmem". See also an explanation and
list of examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

I already asked for this.

Best regards,
Krzysztof


