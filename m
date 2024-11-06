Return-Path: <devicetree+bounces-119542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B069BF0B5
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 15:51:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A00FE28299F
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 14:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB8702040B9;
	Wed,  6 Nov 2024 14:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V/BqDV60"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0295204090
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 14:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730904629; cv=none; b=DLcjyRS6SKCps7RgnwDp3wfWxAEl/Hc30OxIt1WxCBX20YwV7CV3wIPOkIjwH6nlNFXq8F9R8YQQQ1OTjKKy+Ncn3y1PGN4mhzI2yKK4mWBl6KaxYTyN0Oa+Sm62EsZjDHVPiWZ3WIRVZpdcFGL9O3kPLojLzHfIc9DVqaYzNWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730904629; c=relaxed/simple;
	bh=wKKUc7i/o/J3dK4s3TBncBtkY4xwAtMizLy4cIuTzAs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oKe0cgIukAGS2kH9wnMpVOoa7+SpzJ8hB+J6CtzmhVECx4Hx5ZuwZ0KcF++E4FZSn4221uvobvLaBmi/cD9wXJXYoYhgEf86uL6KoyVaaAsJyQQx0JXLtxeXi6697PGw7QsAExDPgrF6j2U9C1WcwI2CGpPFokTpj7vluAHY6bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V/BqDV60; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a9ec86a67feso137986766b.1
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 06:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730904625; x=1731509425; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YMLPbUdK9AywBAADioyII9I9KRIUBTgFkntThVZZvAQ=;
        b=V/BqDV60Rep/oFbGgp7rdPscpQnGD3FyCqQ6kqj3gKgR/uY9QeUiQs4AVhS4/qtBO/
         XN0NaYDxpVuGW58i+bYeINS3mWNJlw+ubPmwvGghWldXLFiZxhZ9bRpXTjHeHnwCc5do
         a3lnDWwBCdRSddx2dwaYlaEom8nkg90JyTGlpGybit8aFosUXlKgJpj6KQgN3WLPcVuc
         2hhtLy1u+dGYFx//auTXERvsqYAKA6IqfLXUX/zshW39dD70++BEH2sEUZ5xoqT3CYZM
         N4Z+RyFTa2IK32bE8iJWJjKTYx7SWMQmNGWuwQFn0BVk8PAMqlMWQ5U99SDQp7TPJD0q
         mXOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730904625; x=1731509425;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YMLPbUdK9AywBAADioyII9I9KRIUBTgFkntThVZZvAQ=;
        b=OteAxZP2gaceghDk8DD1wZvAqd236hDLihDLZcqt0yz/K05ic0M0DhI3TmqTvRWdhU
         Er+1eVYndCYToqfMQFrLmuBhPKvBLZ+4DqiFh6Fwn1U8kOvDfpW8JevrA6EkLhBPZNVf
         zAyCZ8JP9a4R8knW3xCE/ZIrDh0rcLw8n+dE4WrgKGp2LDW2Yh9vf26G+/0KMiX85fRD
         zHj7h6lf9vm4/haj2xa+bnmnX3TaWqhx/PPVphcmLI3+9GNj6qAHXESCets53A4sg13H
         BbwscJEegTTOmWW5BUzpk3mZw9SWt/tuIBACWtLbe3M0XjnSTsQqTltXJU+2LB/PMqdR
         mznw==
X-Forwarded-Encrypted: i=1; AJvYcCV9lgwistJmCutyYJ3sVbVJMvSIfqsUzGlgaBWp5eYu91pnNxInaWQ2La6BiFR3R/qEzqE3xSftl3Pj@vger.kernel.org
X-Gm-Message-State: AOJu0YxaKMj6mRcBSnwLP6RBY58xk9eTnXIszBIkgAngmrn1WjIHqhcL
	5fIzQ/FbUOvDaCESEz98eIqBSC9gMnAcob4qav8hSS7SJhhn0qrIzcESxJ7QGQ==
X-Google-Smtp-Source: AGHT+IHeThKtOkHeL5FWKZz5ZM2mmxjVWGrW0423WOvwhMrPUysvQLsevJdmI+OQ69yHH6kYAZaq6w==
X-Received: by 2002:a17:907:9495:b0:a9a:161:8da4 with SMTP id a640c23a62f3a-a9de619f1b6mr3822800366b.55.1730904625169;
        Wed, 06 Nov 2024 06:50:25 -0800 (PST)
Received: from thinkpad ([154.14.63.34])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb1813123sm287511966b.174.2024.11.06.06.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 06:50:24 -0800 (PST)
Date: Wed, 6 Nov 2024 14:50:22 +0000
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v3 04/12] dt-bindings: misc: Add device specific bindings
 for RaspberryPi RP1
Message-ID: <20241106145022.t7w2762t7zxpefc3@thinkpad>
References: <cover.1730123575.git.andrea.porta@suse.com>
 <768d2307342e1054c58324a9d51957456dc82cbf.1730123575.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <768d2307342e1054c58324a9d51957456dc82cbf.1730123575.git.andrea.porta@suse.com>

On Mon, Oct 28, 2024 at 03:07:21PM +0100, Andrea della Porta wrote:
> The RP1 is a MFD that exposes its peripherals through PCI BARs. This
> schema is intended as minimal support for the clock generator and
> gpio controller peripherals which are accessible through BAR1.
> 
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> ---
>  .../devicetree/bindings/misc/pci1de4,1.yaml   | 80 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 81 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/misc/pci1de4,1.yaml
> 
> diff --git a/Documentation/devicetree/bindings/misc/pci1de4,1.yaml b/Documentation/devicetree/bindings/misc/pci1de4,1.yaml
> new file mode 100644
> index 000000000000..d66b2fc130d1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/pci1de4,1.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/misc/pci1de4,1.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RaspberryPi RP1 MFD PCI device
> +
> +maintainers:
> +  - Andrea della Porta <andrea.porta@suse.com>
> +
> +description:
> +  The RaspberryPi RP1 is a PCI multi function device containing
> +  peripherals ranging from Ethernet to USB controller, I2C, SPI
> +  and others.
> +  The peripherals are accessed by addressing the PCI BAR1 region.
> +
> +allOf:
> +  - $ref: /schemas/pci/pci-ep-bus.yaml
> +
> +properties:
> +  compatible:
> +    additionalItems: true
> +    maxItems: 3
> +    items:
> +      - const: pci1de4,1
> +
> +  '#interrupt-cells':
> +    const: 2
> +    description:
> +      Specifies respectively the interrupt number and flags as defined
> +      in include/dt-bindings/interrupt-controller/irq.h.
> +
> +  interrupt-controller: true
> +
> +unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - '#interrupt-cells'
> +  - interrupt-controller
> +  - pci-ep-bus@1
> +
> +examples:
> +  - |
> +    pci {
> +        #address-cells = <3>;
> +        #size-cells = <2>;
> +
> +        rp1@0,0 {
> +            compatible = "pci1de4,1";
> +            ranges = <0x01 0x00 0x00000000
> +                      0x82010000 0x00 0x00
> +                      0x00 0x400000>;

Could you please have the 'ranges' in a single line as used everywhere?

- Mani

> +            #address-cells = <3>;
> +            #size-cells = <2>;
> +            interrupt-controller;
> +            #interrupt-cells = <2>;
> +
> +            pci_ep_bus: pci-ep-bus@1 {
> +                compatible = "simple-bus";
> +                ranges = <0xc0 0x40000000
> +                          0x01 0x00 0x00000000
> +                          0x00 0x00400000>;
> +                dma-ranges = <0x10 0x00000000
> +                              0x43000000 0x10 0x00000000
> +                              0x10 0x00000000>;
> +                #address-cells = <2>;
> +                #size-cells = <2>;
> +
> +                rp1_clocks: clocks@c040018000 {
> +                    compatible = "raspberrypi,rp1-clocks";
> +                    reg = <0xc0 0x40018000 0x0 0x10038>;
> +                    #clock-cells = <1>;
> +                    clocks = <&clk_rp1_xosc>;
> +                    clock-names =  "xosc";
> +                };
> +            };
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index ccf123b805c8..2aea5a6166bd 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19384,6 +19384,7 @@ RASPBERRY PI RP1 PCI DRIVER
>  M:	Andrea della Porta <andrea.porta@suse.com>
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
> +F:	Documentation/devicetree/bindings/misc/pci1de4,1.yaml
>  F:	Documentation/devicetree/bindings/pci/pci-ep-bus.yaml
>  F:	Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml
>  F:	include/dt-bindings/clock/rp1.h
> -- 
> 2.35.3
> 

-- 
மணிவண்ணன் சதாசிவம்

