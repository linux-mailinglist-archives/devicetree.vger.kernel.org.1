Return-Path: <devicetree+bounces-12235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D74C47D882A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 20:20:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 914B02820A1
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 18:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C8273A26D;
	Thu, 26 Oct 2023 18:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E121A5B9
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 18:20:37 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18283192;
	Thu, 26 Oct 2023 11:20:34 -0700 (PDT)
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6ce2eaf7c2bso787187a34.0;
        Thu, 26 Oct 2023 11:20:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698344433; x=1698949233;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ood2wjAFr9c2YYzIF56zDlRuErbteiBNJ4oHI3QTnvI=;
        b=EajuxDPk2gVBK8S+UYaNz8rQmMga/cJoeTwAPEwNGaWMJdK+I+mgLJLs7k6ksxjFAK
         SeZSsCK28VSGhgCpEex01yI3KserPB5tC5BbX/uKeZt7jSp9NzSaA8C1X/YVS16ijQ0k
         hiQkNdbvRQEVTeLouacSIfzibmUhXW5DbN6zZhBP1Xuq6MbHG/8hGg34lznwRXXftj0u
         KFVP+bTRDLxS7RSz0HCLY9okxB+n/nsW24TeES9NSDI6AtFHRhOOAUV4NEzwsdPoYsNq
         nxjy3gvs0qg8BhXJH5zktuspbk7qZ1HldEnH3F+VbM+qDIOFGKfHH5RZjZmN7LKi1TKF
         rUeg==
X-Gm-Message-State: AOJu0Yz69iBYhYUds5RelZQyeyjVoShO7WcqseeQwvqiRg/kXAEEmqeD
	04j4+Xl+NFVanvyhkH9U3g==
X-Google-Smtp-Source: AGHT+IFilH+8BNmVOEr0Rff4h4fNbwordTsCWo+2TOP8WEVPgauyDgRPInCa2nkoy6QxT5B2QVDx6w==
X-Received: by 2002:a05:6830:270b:b0:6c9:efe0:261f with SMTP id j11-20020a056830270b00b006c9efe0261fmr176796otu.12.1698344433307;
        Thu, 26 Oct 2023 11:20:33 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g1-20020a9d6481000000b006ce4612fef0sm2184819otl.16.2023.10.26.11.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 11:20:32 -0700 (PDT)
Received: (nullmailer pid 4138902 invoked by uid 1000);
	Thu, 26 Oct 2023 18:20:31 -0000
Date: Thu, 26 Oct 2023 13:20:31 -0500
From: Rob Herring <robh@kernel.org>
To: Niklas Cassel <nks@flawful.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Niklas Cassel <niklas.cassel@wdc.com>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: PCI: dwc: rockchip: Add atu property
Message-ID: <20231026182031.GA4122054-robh@kernel.org>
References: <20231024151014.240695-1-nks@flawful.org>
 <20231024151014.240695-2-nks@flawful.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024151014.240695-2-nks@flawful.org>

On Tue, Oct 24, 2023 at 05:10:08PM +0200, Niklas Cassel wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>

The subject says 'atu property', but 'atu' is not a property.

> 
> Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
> using:
> 
> allOf:
>   - $ref: /schemas/pci/snps,dw-pcie.yaml#
> 
> and snps,dw-pcie.yaml does have the atu property defined, in order to be
> able to use this property, while still making sure 'make CHECK_DTBS=y'
> pass, we need to add this property to rockchip-dw-pcie.yaml.
> 
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---
>  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index 1ae8dcfa072c..229f8608c535 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -29,16 +29,20 @@ properties:
>            - const: rockchip,rk3568-pcie
>  
>    reg:
> +    minItems: 3
>      items:
>        - description: Data Bus Interface (DBI) registers
>        - description: Rockchip designed configuration registers
>        - description: Config registers
> +      - description: iATU registers
>  
>    reg-names:
> +    minItems: 3
>      items:
>        - const: dbi
>        - const: apb
>        - const: config
> +      - const: atu
>  
>    clocks:
>      minItems: 5
> -- 
> 2.41.0
> 

