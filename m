Return-Path: <devicetree+bounces-230860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2E5C0697F
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 15:58:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7996F348A96
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 13:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB7573218DD;
	Fri, 24 Oct 2025 13:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NBIitdKf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31B3321441
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 13:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761314292; cv=none; b=uWRdnpRRCMRFDhu0b3EoxFiM3OADRbGlYy1TZeLuApH9ChU575ufQzgrL/afc2oD6FKC1KX8nVsOlqtg1nTuJvLBJecjQ/5ISRxts1WY2WSDjaLRjlbyET4vkJOdFH4EYevRhsl1XtrTFeSd1Ek4iwjPM8MWuENCbJQX8nsaQbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761314292; c=relaxed/simple;
	bh=z+fQtC+1wx8ghPHlu/2QYx5ZhpkDUVCQujm2862ExG0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UyFhb+tr5ltP1y0amGwLv0F/ulinAJDBQpyA+Ogm7PlRZTlTalReqs6AQYRvppYkjvLbCplSFuJSWveXWlEkdNYW0aojdccUg9lBcobO9bZrZYYthtUF7ykjTk2cWrZRwGZQ+ay+9XQWg0EeG+VPyKrhJekn2wDbhkRHdW+uObg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NBIitdKf; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-78378cb66d6so17328357b3.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 06:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761314290; x=1761919090; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0u/3MhNCQxWCDE2z3WewSOJUpvfbLTtkzf4B0cDusUU=;
        b=NBIitdKf5n47CKsiN1t34onk+QoJtKTZ6PgokeZdXeAiO8jZbl8ZL02a9N6gZAhbZ9
         aOpPC9w5TkQkm1UzuASqUrYyLW0CuP+nqbXA9QMrmI5XsVjTe96HHPSbX9OFVHwzhMJv
         sagU1mioQTBmJ3rKV89bZTDrSsXGdmhVaXoCzfi2+XbPaJyfOCAbCJhs+3thnZHYVAlM
         AfHkD8pZeDSDwmX3h7kDbgsqWkjv57vjqXtaS95XHVjgQH5i0/xTBaX/HVXhdl8ezJE5
         OLeNozNP19PMKOYhO1mjMyDWKP87z2Ntupe0roawQKlTkoEMGecgjhJw3h59zsUIeX+q
         v0kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761314290; x=1761919090;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0u/3MhNCQxWCDE2z3WewSOJUpvfbLTtkzf4B0cDusUU=;
        b=v/yTmQZKPPrmgPNFESbwSWfpoB7In+BqtZbgS3EaiVHOShiE+q/22g1WY/MfjWwhLt
         S43bh5Rx0cqz44R9I0yYvSKNrkbW/AdPGMP8rPDOg3lXSHGA5VTeM6QVQOdkmkANOVWv
         cHeKF+dAcrB/KetFJCF8/ilSONwaJBkHigSYTwkCByuwqqiVdESYX78uWy2pVqy9OEUc
         HTK+7/eDBUmW4Yj0rOC1WSasrQwUAp8sbd3cbNN6+j7lWGpJ/DeVFg0loDf4KgTLWLf0
         x5/uXIQcxqBiCWxwq35IYIbhY6Jk0ScFaajLI+I4JwcKJqqMWavMQ/ijIMuGHfz6tubV
         sWwg==
X-Forwarded-Encrypted: i=1; AJvYcCWBFtlOo8zUf3NU1m4OK6bMHNHHlw2FlPMptJNWmiHE+E5xkDdDwnrwhuYB5YkZazW6kPatk+PH8xz+@vger.kernel.org
X-Gm-Message-State: AOJu0YwT+GZxr5eLnab9ws27wmchcqjWvppR0CT1b68jVEUMEYJJ5bIr
	gTHT3cIMySw82C4aCyA2lb47h2Qs1tuw9uduhY6DPnC31NTpDRbYUE9dUD+DctFiDnHDpo0PHkg
	8Ky0t7V/Y5M7wP8qXMsOohqE9r2KilMRTyXGKCf+LCA==
X-Gm-Gg: ASbGnctfJBlbR+jKmNTEFtt7mH93FfqDWeDq3BB0103FpDrjBZPc9FF4kPps1JcwHzT
	RI+ddhsSFpbWyJm8T+zZ+d72D9QTJVZNc8icQTWJOVC874duE1GJ6R8vXMiMiITjmpytXMObgaY
	z9LAeigv3jI8Se3Kvud4VIvsKjTElyXlspQamsHfBzEPxHCRHem9PfT2BKApgJ7qUMS8dJqo2TQ
	VL4TAjToycuEJJPALQMToChTMlaDzUr/0J3i6sgY+T0zodq5J830Mh+063A0doTNd4VBJtN
X-Google-Smtp-Source: AGHT+IHAtMdFdzjUMPEcWhwlt0XfIP2B8ytoxybgdO8VmLh5rX4O8N34cUmaZMrTQvHZg0MCTi/uHrPSX7TkZruGAsY=
X-Received: by 2002:a05:690c:6a83:b0:77f:949a:d08e with SMTP id
 00721157ae682-7836d229b9cmr247455557b3.26.1761314289702; Fri, 24 Oct 2025
 06:58:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251019115133.300-1-hehuan1@eswincomputing.com> <20251019115238.320-1-hehuan1@eswincomputing.com>
In-Reply-To: <20251019115238.320-1-hehuan1@eswincomputing.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 24 Oct 2025 15:57:33 +0200
X-Gm-Features: AS18NWBO3I3oVDfetqXk2mnL6Klqs5h9HjkCIbnWmmqY_wBoqF2fbAi5SSDQ4wQ
Message-ID: <CAPDyKFqGwTF2w2JfqOuxMt6m_YJOYhqoUaQXyZALRu94W3fGkQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mmc: sdhci-of-dwcmshc: Add Eswin EIC7700
To: hehuan1@eswincomputing.com, robh@kernel.org, krzk+dt@kernel.org
Cc: conor+dt@kernel.org, jszhang@kernel.org, adrian.hunter@intel.com, 
	p.zabel@pengutronix.de, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, ningyu@eswincomputing.com, 
	linmin@eswincomputing.com, pinkesh.vaghela@einfochips.com, 
	xuxiang@eswincomputing.com, luyulin@eswincomputing.com, 
	dongxuyang@eswincomputing.com, zhangsenchuan@eswincomputing.com, 
	weishangjuan@eswincomputing.com, lizhi2@eswincomputing.com, 
	caohang@eswincomputing.com, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

On Sun, 19 Oct 2025 at 13:52, <hehuan1@eswincomputing.com> wrote:
>
> From: Huan He <hehuan1@eswincomputing.com>
>
> EIC7700 use Synopsys dwcmshc IP for SD/eMMC controllers.
> Add Eswin EIC7700 support in sdhci-of-dwcmshc.yaml.
>
> Signed-off-by: Huan He <hehuan1@eswincomputing.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml      | 57 +++++++++++++++++--
>  1 file changed, 51 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index f882219a0a26..7e7c55dc2440 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -30,6 +30,7 @@ properties:
>            - sophgo,sg2002-dwcmshc
>            - sophgo,sg2042-dwcmshc
>            - thead,th1520-dwcmshc
> +          - eswin,eic7700-dwcmshc
>
>    reg:
>      maxItems: 1
> @@ -52,17 +53,30 @@ properties:
>      maxItems: 5
>
>    reset-names:
> -    items:
> -      - const: core
> -      - const: bus
> -      - const: axi
> -      - const: block
> -      - const: timer
> +    maxItems: 5
>
>    rockchip,txclk-tapnum:
>      description: Specify the number of delay for tx sampling.
>      $ref: /schemas/types.yaml#/definitions/uint8
>
> +  eswin,hsp-sp-csr:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: Phandle to HSP(High-Speed Peripheral) device
> +          - description: Offset of the stability status register for internal
> +                         clock.
> +          - description: Offset of the stability register for host regulator
> +                         voltage.
> +    description:
> +      HSP CSR is to control and get status of different high-speed peripherals
> +      (such as Ethernet, USB, SATA, etc.) via register, which can tune
> +      board-level's parameters of PHY, etc.

I would like second confirmation from DT maintainers, to make sure
it's reasonable to model the HW like this.

In principle the phandle above gets translated into a regmap via a
call to syscon_node_to_regmap() in the driver, to allow some registers
to be written that are outside the controllers address space.

> +
> +  eswin,drive-impedance-ohms:
> +    description: Specifies the drive impedance in Ohm.
> +    enum: [33, 40, 50, 66, 100]
> +
>  required:
>    - compatible
>    - reg
> @@ -110,6 +124,37 @@ allOf:
>              - const: block
>              - const: timer
>
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: eswin,eic7700-dwcmshc
> +    then:
> +      properties:
> +        resets:
> +          minItems: 4
> +          maxItems: 4
> +        reset-names:
> +          items:
> +            - const: axi
> +            - const: phy
> +            - const: prstn
> +            - const: txrx
> +      required:
> +        - eswin,hsp-sp-csr
> +        - eswin,drive-impedance-ohms
> +    else:
> +      properties:
> +        resets:
> +          maxItems: 5
> +        reset-names:
> +          items:
> +            - const: core
> +            - const: bus
> +            - const: axi
> +            - const: block
> +            - const: timer
> +
>    - if:
>        properties:
>          compatible:
> --
> 2.25.1
>

Kind regards
Uffe

