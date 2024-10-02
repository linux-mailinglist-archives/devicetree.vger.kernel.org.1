Return-Path: <devicetree+bounces-107322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F1D98E354
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 21:08:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D3F21C222AF
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 19:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 855E51D173A;
	Wed,  2 Oct 2024 19:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="KelVhCVr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF27F12E1E9
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 19:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727896087; cv=none; b=pH2hIxW61GgU9CGZ/PxHJrsTm0OMl5CpmBK279osBA/KUOm4vwAdHItFz/A4oIefA7DrmniKJysqx5zWyK5ukFZYkLZdm2xvGBl/w8/z2/fpM6+kAB6brdTcAdSHdu+0/L2BJpcsXYkmhjpkPqeiAdqziJ+fUaj+3jkoNa9bNZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727896087; c=relaxed/simple;
	bh=WWrvxwqKjME3DnRoyBJATTPiGliDxSPAEFn+fW0xTTg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qtXOpJ+mPoktPSYN+yRhzWhRkM/ab9vH0+3o5P9+zcSu7N+BnvCBhei0adJRbkdwN/h8s5Kc5o1rk46EgiGGtZH1AvosBz17nzmfxo6o4e7OSyG70MQeK1T6KSXDKxbgD9ZzLeHu/HYXEaYcz3wsrEZbFawkx43GkiK7kkDQsGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=KelVhCVr; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-719b17b2da1so153351b3a.0
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 12:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1727896085; x=1728500885; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tbzyW+sDRRpK6lllKWMpnmvz5XjrJna/bWot+7sx8DY=;
        b=KelVhCVreIlHn+ETqIcHP63dHo3zMGnpDqZsAj7uV76QBLb+W8KDVLSEJtwbAlNAI5
         +IiQqGfMRf2Oq2PfwZGhLqX/PIipZj26yphl0R6desDGMk5Zv2I4fjQgYgByMC8Tp1Nd
         4aEa2BscTRpA0X7/mNY10vRD39PYjGBGYJbSpuvCdZmEzT44nH+VwIXhZDgvuW6HbZmf
         LSCEQaDgEqrLsX/EDbbsCtXairQo0n5ij7xjeLowRO8GHQmaIXETDMWsuGDdMKVU1EMz
         zbsyaOzCmbfp85DrNDBABzinGP7BeY/cWaC3KG7fKRPjGPnP5QfaWCQ2mYIj+sqaRCQz
         Yy5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727896085; x=1728500885;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tbzyW+sDRRpK6lllKWMpnmvz5XjrJna/bWot+7sx8DY=;
        b=eUYMdPs0/REVrFFnWJDlHQNF9OWWRraoYa2Cm1cYLhdYX+bUgw0MtvOOMjxfIzbEu6
         /BKMiHhxgYKQ5KdJlcsaGKVH2lgTYCzRIEoI8rThVblsecX/WQmInwSftP4GHIbgZPn6
         oMoAT9RmYdVaX036IxJJiuqm9+D8A0xFg8RJLVQ461YXj8g/qI0kq/G+Eom1FTzFTlKD
         e0p6i3ypcXOQ+yO8OxQBYemEsF5YgX9P7f8p27GSX65b7WyB7/tgzghLA050rk47X6eV
         yNGO3r6PsngPISOUt5fFOLPV0xtI3pbmj1LmrM1mi3dizJR/30uv7jbu0hD3ZASjzAv1
         yxcA==
X-Forwarded-Encrypted: i=1; AJvYcCUPO+VY6VKTKj+MTgCEhlHtzPdbAZV64H26k1IaZWh4/CGwhGkTC/UaNN5XfDGIaYfwVfvrJSRqeSbS@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx7u7huq9TXyuBToPxhljfDpuxPcDe8jLWjlTeLm5/Gj2yevk1
	wIYNFhi+7tJnqRPj3JzDbZFQ3K3fxghuuBg/SOoeFlmhqambS2uAumPrdWcAXqM=
X-Google-Smtp-Source: AGHT+IH49FhVG/FdEKe1agvTPQLbvm7ADyJ5gNkLx0OIeHvevotL/dXZ9AxuAJmFkwusxbmdI1wPKg==
X-Received: by 2002:a05:6a00:c84:b0:718:e162:7374 with SMTP id d2e1a72fcca58-71dc5c4dc5emr6364786b3a.5.1727896085209;
        Wed, 02 Oct 2024 12:08:05 -0700 (PDT)
Received: from x1 (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b265388besm10120808b3a.209.2024.10.02.12.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 12:08:04 -0700 (PDT)
Date: Wed, 2 Oct 2024 12:08:03 -0700
From: Drew Fustini <dfustini@tenstorrent.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 1/3] dt-bindings: net: Add T-HEAD dwmac support
Message-ID: <Zv2aE7jmE2awLwcl@x1>
References: <20240930-th1520-dwmac-v3-0-ae3e03c225ab@tenstorrent.com>
 <20240930-th1520-dwmac-v3-1-ae3e03c225ab@tenstorrent.com>
 <wtknsih2yrbylqzanp6k753kklk4myf6iezjz6swnp4nsqr2hl@7mmm6lxhqemu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <wtknsih2yrbylqzanp6k753kklk4myf6iezjz6swnp4nsqr2hl@7mmm6lxhqemu>

On Tue, Oct 01, 2024 at 08:58:34AM +0200, Krzysztof Kozlowski wrote:
> On Mon, Sep 30, 2024 at 11:23:24PM -0700, Drew Fustini wrote:
> > From: Jisheng Zhang <jszhang@kernel.org>
> > 
> > Add documentation to describe the DesginWare-based GMAC controllers in
> > the T-HEAD TH1520 SoC.
> > 
> > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> > Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> > [drew: rename compatible, add apb registers as second reg of gmac node]
> > Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
> > ---
> >  .../devicetree/bindings/net/snps,dwmac.yaml        |  1 +
> >  .../devicetree/bindings/net/thead,th1520-gmac.yaml | 97 ++++++++++++++++++++++
> >  MAINTAINERS                                        |  1 +
> >  3 files changed, 99 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> > index 4e2ba1bf788c..474ade185033 100644
> > --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> > +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
> > @@ -99,6 +99,7 @@ properties:
> >          - snps,dwxgmac-2.10
> >          - starfive,jh7100-dwmac
> >          - starfive,jh7110-dwmac
> > +        - thead,th1520-gmac
> >  
> >    reg:
> >      minItems: 1
> > diff --git a/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml b/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
> > new file mode 100644
> > index 000000000000..fef1810b10c4
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
> > @@ -0,0 +1,97 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/net/thead,th1520-gmac.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: T-HEAD TH1520 GMAC Ethernet controller
> > +
> > +maintainers:
> > +  - Drew Fustini <dfustini@tenstorrent.com>
> > +
> > +description: |
> > +  The TH1520 GMAC is described in the TH1520 Peripheral Interface User Manual
> > +  https://git.beagleboard.org/beaglev-ahead/beaglev-ahead/-/tree/main/docs
> > +
> > +  Features include
> > +    - Compliant with IEEE802.3 Specification
> > +    - IEEE 1588-2008 standard for precision networked clock synchronization
> > +    - Supports 10/100/1000Mbps data transfer rate
> > +    - Supports RGMII/MII interface
> > +    - Preamble and start of frame data (SFD) insertion in Transmit path
> > +    - Preamble and SFD deletion in the Receive path
> > +    - Automatic CRC and pad generation options for receive frames
> > +    - MDIO master interface for PHY device configuration and management
> > +
> > +  The GMAC Registers consists of two parts
> > +    - APB registers are used to configure clock frequency/clock enable/clock
> > +      direction/PHY interface type.
> > +    - AHB registers are use to configure GMAC core (DesignWare Core part).
> > +      GMAC core register consists of DMA registers and GMAC registers.
> > +
> > +select:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        enum:
> > +          - thead,th1520-gmac
> > +  required:
> > +    - compatible
> > +
> > +allOf:
> > +  - $ref: snps,dwmac.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - thead,th1520-gmac
> > +      - const: snps,dwmac-3.70a
> > +
> > +  reg:
> > +    items:
> > +      - description: DesignWare GMAC IP core registers
> > +      - description: GMAC APB registers
> > +
> > +  reg-names:
> > +    items:
> > +      - const: dwmac
> > +      - const: apb
> 
> I don't get why none of snps,dwmac properties are restricted. How many
> interrupts do you have here? How many clocks? resets?

Thanks for pointing this out. Yes, I forgot to document the clocks,
interrupts and resets.

There needs to be 2 clocks (stmmaceth and pclk). There also needs to be
2 resets: each GMAC has a reset plus a seperate reset for the GMAC AXI
interface. There is 1 interrupt (macirq) but it is optional. The BeagleV
Ahead uses it but the LicheePi 4A does not use the interrupt.

However, I'm uncertain about how to restrict the snps,dwmac properties.

I see that starfive,jh7110-dwmac.yaml has the following logic. Should I
be adding something like this to restrict the snps,dwmac properties?

---------------------------------------------------------------------
allOf:
  - $ref: snps,dwmac.yaml#

  - if:
      properties:
        compatible:
          contains:
            const: starfive,jh7100-dwmac
    then:
      properties:
        interrupts:
          minItems: 2
          maxItems: 2

        interrupt-names:
          minItems: 2
          maxItems: 2

        resets:
          maxItems: 1

        reset-names:
          const: ahb
<snip>
---------------------------------------------------------------------
> 
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - interrupts
> 
> Drop

Will do.

> 
> > +  - interrupt-names
> 
> Drop

Will do.

> 
> > +  - phy-mode
> > +
> > +unevaluatedProperties: false
> 
> Best regards,
> Krzysztof

Thanks for your review,
Drew

