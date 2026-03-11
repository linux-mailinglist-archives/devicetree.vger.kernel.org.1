Return-Path: <devicetree+bounces-273878-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FwIMEMQsWmYqQIAu9opvQ
	(envelope-from <devicetree+bounces-273878-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:48:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7706C25D03B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 07:48:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E2553094F8D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5AD837648D;
	Wed, 11 Mar 2026 06:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U8lnAOpQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ADE30DD3C
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773211589; cv=pass; b=FH80hvExKbBwHdXSWE1xHeQxHRdWNwQFyZoT0de9vUqc12wjrbXddvXdAsDAxbz4cr9urR1LnLl5TeFwEm/zffy7VLuK2ArtKKaCfLgVZZ8QnYKXTYeahzSpc9xXaQlSBWv8zlGpzo2ARPuXmCkU4h/uJHCIGvfiBJ9rqT3Wz2g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773211589; c=relaxed/simple;
	bh=LkW8aNJ2+N/qPgMrXjRIQ2Omn4bJonn/dBA+P8cWsww=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KGLIIboK1431YNc3/9sMbmR6ERPVOcjl5i3FF/eMSROEF9GqquDYCu4s77F+h6bQz+yRCgcmJZWDmfPTntiAr8cg5r9BKyXv+oWhDXiLsOhDWeRoERV2CZcwVvEPZ5o1YbkyxAK75L9IvUvM8nh5bA6PDCzNzr8zzyinMNPljns=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U8lnAOpQ; arc=pass smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-661568ce781so9092240a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 23:46:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773211585; cv=none;
        d=google.com; s=arc-20240605;
        b=Bbahjpe8bs/IMXn1xU7o4WKXbDCgO3EbSW8nGkDwErz/uKyKrmXt/GyCfu/7Keg3h7
         HH+hc5LPtMWj9XQjt9328aBwdeNqDkg2kL0cuDgfGI8VOZzFt2OqbW4AGzHAZvjWRJYn
         bjrD77VsHUhNaz6mCWnJlOufQ+Z0rBcLv9m6oUYP1tOqsFXhb3mRM0hbgMeuLqHTKg3v
         tHimcl2tJfDVH6caHGUGHSuZ/L2F4jZQK5T+joZ3iN68mtAdVrrBCoPU+MBT0tznNIqp
         Bv291ncTf2x7IV/3JULHQrjt2LQAvDZeO+g2EyGlQS5n9xd9c4Grzyt59X+6kpBoWkoz
         3vjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=baZMbuJRCD7J4EDCgJhUtwmHw4BySP0mKp1E9krNdQU=;
        fh=pyHNfqxPCSjNdnWmJindSkX7z03PIxBmdccfgPMsDbw=;
        b=fb/p0+nZt6shAv7ptAHkEDi397eA/brINxQO43O5DOqKtpjqd4mHh/HkSbY8EYlb1v
         Dvpq5VjXHGFfzqViPLRaw/GeyrDHjh33bu9HIfrBfy0zsqjMD4dEmTkfcUiX919VCnC5
         n2SQl85wjFB+v9VH37huY0ICuRZ6NKtgs1oZZW5ZMZikB49LjzIz7YD37BQx8wEyU3/1
         W/EVmYeBYkCWkiKMx96jxFaeCEwqEKZfv60t8+FUM1a3yF/j+pVZKnNyaTNGXrBAKfQZ
         qnEj6gnUlJ3ZHFyZ4JbcrXyOfkG0RwAZQHxcONXrF19gcwZ71bMCuRoDEjrKHoPDxzcw
         hvBg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773211585; x=1773816385; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=baZMbuJRCD7J4EDCgJhUtwmHw4BySP0mKp1E9krNdQU=;
        b=U8lnAOpQccIcP86Wmi5MI5KI8/X6sbwMHWkrHcAfKSg8qxlp/Kup9uZuYNimasRCFv
         knordMhno7ePInCeMmCnS64bLOTLGTFxdF7qxcS8hcZTGOtF/h/BF40L/4noTwmfDkko
         OEbFVzpwPHLQi/5MWoYZ2b9FqFdiBzwiykOIg3oUOYY2nDV6fceKpTbY2gh6xw4IW+Qe
         pUoecOjIcNFetNyZHhPPXNwAPvKo/ZEnbUrN0HoOeDThRphRk5YVAqgvWDew7HAjAEFG
         T15yJpNVC2DxeYTr+lBkb5UaThAFaD5v6QZoGsbWKFMlrYPqIz9gtgOuyVFD4zB9Y9SN
         +eGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773211585; x=1773816385;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=baZMbuJRCD7J4EDCgJhUtwmHw4BySP0mKp1E9krNdQU=;
        b=T9YwAeJptk4yHIo3t0IzMQUBAxoLYPBX+EXoPaIy6swDOTLNhmZBzBxU/7mCZMG9D+
         9E2AKHCIitNDgJ5g5MwrvPLYj6lOE0It4foFlq6cFN7MlpQDwdvm93wd1+fmUrSRpN3h
         osS6+KVQAUKQ4D1D45Q4zIu2BWpgAmO63XzZS9u4NPPaXG9c03tddDuEB/4nD5ymkZk3
         gTGEPyrZIRxuJrc7XAgBMHpw3i8nzOU+kD3JbOWpnsqawVvhBw5AecrOLwL+ViKf3tis
         YPa8J87LFn3gYiKSzA0IxivbqAIRpZkjyX0iZIeZhBvNMx1cY8B3XOfzXD3Gv7wfxSIZ
         MOWA==
X-Forwarded-Encrypted: i=1; AJvYcCX1fbKpMWytdMpFrvs0ND47FxbkuS3ga+E+rVsKa1RwBr+2jM+Iyf/CPmL0oS4v8cYIPparza3hhViq@vger.kernel.org
X-Gm-Message-State: AOJu0YyLSi/Fz3F1+JRDaNHIB2zPWsN8KECa/ayI8NATTcJ6bVwrOYmo
	6S0kNF5vhLRYer6mHjhTAQX5WQfS26A3fLHmp5QMrS3dp5qzsxf5t5uPv1Wv606SzFjNcgxnxn/
	J3VF8AMy9ph5SCfgaE4RZ73PupY2QZWc=
X-Gm-Gg: ATEYQzwycgcwYUxp6j4m6OgFiiojmxUBY1T4OJ+NfHRDFYquR4qxB/ZzH5p8VCsmN9v
	cMx4p3r+vlj0JuFqWV8mg012qvpBWdK5ACQdM1pKrR/jp9vkSCC+AfFjZXCnYG3+vQJsxnamVdE
	KikdQcgQTsu/n9GTNRXJKnOTC5hxUz1xsiwHUGHdc+jm/NZGxIRV3dM+Jjn+8SfvaWoNs4bfMB7
	D0ftG5LSsjT4w4uZ7D9TiegChOXuAdZyf9g4WfZbyYi6T1dTivH17xwsoPHKJCiRMB7MryOQgHW
	5UvjCQ==
X-Received: by 2002:a17:907:d20:b0:b96:dd1c:9408 with SMTP id
 a640c23a62f3a-b972e5a7e72mr66861466b.54.1773211585130; Tue, 10 Mar 2026
 23:46:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260224121948.25218-1-linux.amoon@gmail.com> <20260224121948.25218-2-linux.amoon@gmail.com>
 <20260306004333.GA863798-robh@kernel.org>
In-Reply-To: <20260306004333.GA863798-robh@kernel.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 11 Mar 2026 12:16:08 +0530
X-Gm-Features: AaiRm50BSR-A9EzoSJRmZ4OfsKGsGf90EKdlcvFqkSo-zZd_l9GtX7eOstz-4x8
Message-ID: <CANAwSgS7RhZ1D-zPR8LpvrQJVp+1be9ALC5HcE1XhouyNOS6Jg@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: PCI: Convert nvidia,tegra-pcie to DT schema
To: Rob Herring <robh@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Aaron Kling <webgeek1234@gmail.com>, 
	"open list:PCI DRIVER FOR NVIDIA TEGRA" <linux-tegra@vger.kernel.org>, 
	"open list:PCI DRIVER FOR NVIDIA TEGRA" <linux-pci@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 7706C25D03B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,google.com,kernel.org,nvidia.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-273878-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_PROHIBIT(0.00)[0.15.77.248:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linuxamoon@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.2:email]
X-Rspamd-Action: no action

Hi Rob,

Thanks for your review comments. Sorry for the late reply.

On Fri, 6 Mar 2026 at 06:13, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Feb 24, 2026 at 05:48:57PM +0530, Anand Moon wrote:
> > Convert the existing text-based DT bindings documentation for the
> > NVIDIA Tegra PCIe host controller to a DT schema format.
>
> I just reviewed the same thing from Thierry... This one looks a bit
> better for overall structure (fewer if/then schemas), but I think misses
> some things like deprecated supplies. Please resolve the differences
> between the 2 and coordinate who is going to send the next version.
>
Ok, I checked this, but couldn't find the deprecated supplies.

The drive code maps SoC-supplied regulators to an array for the buck regulators.
[1] https://github.com/torvalds/linux/blob/master/drivers/pci/controller/pci-tegra.c#L1929-L2078

I will fix it if I need to.
> >
> > Also update the MAINTAINERS file to reflect this change.
> >
> > Cc: Jon Hunter <jonathanh@nvidia.com>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > v3: Tried to address the issues Krzysztof pointed out.
> >    Added missing regulator binding as suggeested by Jon.
> > v2: Tried to address the isssue Rob pointed
> > [1] https://lkml.org/lkml/2025/9/26/704
> > improve the $suject and commit message
> > drop few examples only nvidia,tegra20-pcie and nvidia,tegra210-pcie
> >
> > $ make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.yaml
> > ---
> >  .../bindings/pci/nvidia,tegra-pcie.yaml       | 528 ++++++++++++++
> >  .../bindings/pci/nvidia,tegra20-pcie.txt      | 670 ------------------
> >  MAINTAINERS                                   |   2 +-
> >  3 files changed, 529 insertions(+), 671 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra20-pcie.txt
> >
> > diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.yaml b/Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.yaml
> > new file mode 100644
> > index 000000000000..0675bec205e8
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.yaml
> > @@ -0,0 +1,528 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pci/nvidia,tegra-pcie.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: NVIDIA Tegra PCIe Controller
> > +
> > +maintainers:
> > +  - Jon Hunter <jonathanh@nvidia.com>
> > +  - Thierry Reding <treding@nvidia.com>
> > +
> > +description:
> > +  PCIe controller found on NVIDIA Tegra SoCs which supports multiple
> > +  root ports and platform-specific clock, reset, and power supply
> > +  configurations.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - nvidia,tegra20-pcie
> > +      - nvidia,tegra30-pcie
> > +      - nvidia,tegra124-pcie
> > +      - nvidia,tegra210-pcie
> > +      - nvidia,tegra186-pcie
> > +
> > +  reg:
> > +    items:
> > +      - description: PADS registers
> > +      - description: AFI registers
> > +      - description: Configuration space region
> > +
> > +  reg-names:
> > +    items:
> > +      - const: pads
> > +      - const: afi
> > +      - const: cs
> > +
> > +  interrupts:
> > +    items:
> > +      - description: Controller interrupt
> > +      - description: MSI interrupt
> > +
> > +  interrupt-names:
> > +    items:
> > +      - const: intr
> > +      - const: msi
> > +
> > +  clocks:
> > +    minItems: 3
> > +    items:
> > +      - description: PCIe clock
> > +      - description: AFI clock
> > +      - description: PLL_E clock
> > +      - description: Optional CML clock
> > +
> > +  clock-names:
> > +    description: Names of clocks used by the PCIe controller
> > +    minItems: 3
> > +    items:
> > +      - const: pex
> > +      - const: afi
> > +      - const: pll_e
> > +      - const: cml
> > +
> > +  resets:
> > +    items:
> > +      - description: PCIe reset
> > +      - description: AFI reset
> > +      - description: PCIe-X reset
> > +
> > +  reset-names:
> > +    items:
> > +      - const: pex
> > +      - const: afi
> > +      - const: pcie_x
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  interconnects:
> > +    minItems: 1
> > +    maxItems: 2
> > +
> > +  interconnect-names:
> > +    items:
> > +      - const: dma-mem
> > +      - const: write
> > +
> > +  pinctrl-names:
> > +    items:
> > +      - const: default
> > +      - const: idle
> > +
> > +  pinctrl-0: true
> > +  pinctrl-1: true
> > +
> > +  operating-points-v2:
> > +    description:
> > +      Defines operating points with required frequency and voltage values,
> > +      and the opp-supported-hw property.
> > +
> > +  iommus:
> > +    maxItems: 1
> > +
> > +  avdd-pex-supply:
> > +    description: Power supply for analog PCIe logic. Must supply 1.05 V.
> > +
> > +  vdd-pex-supply:
> > +    description: Power supply for digital PCIe I/O. Must supply 1.05 V.
> > +
> > +  avdd-pex-pll-supply:
> > +    description: Power supply for dedicated (internal) PCIe PLL. Must supply 1.05 V.
> > +
> > +  avdd-plle-supply:
> > +    description: Power supply for PLLE, which is shared with SATA. Must supply 1.05 V.
> > +
> > +  vddio-pex-clk-supply:
> > +    description: Power supply for PCIe clock. Must supply 3.3 V.
> > +
> > +  vddio-pex-ctl-supply:
> > +    description: Power supply for PCIe control I/O partition. Must supply 1.8 V.
> > +
> > +  hvdd-pex-supply:
> > +    description: High-voltage supply for PCIe I/O and PCIe output clocks. Must supply 3.3 V.
> > +
> > +  avdd-pexa-supply:
> > +    description: Power supply for analog PCIe logic. Must supply 1.05 V.
> > +
> > +  vdd-pexa-supply:
> > +    description: Power supply for digital PCIe I/O. Must supply 1.05 V.
> > +
> > +  avdd-pexb-supply:
> > +    description: Power supply for analog PCIe logic. Must supply 1.05 V.
> > +
> > +  vdd-pexb-supply:
> > +    description: Power supply for digital PCIe I/O. Must supply 1.05 V.
> > +
> > +  avddio-pex-supply:
> > +    description: Power supply for analog PCIe logic. Must supply 1.05 V.
> > +
> > +  dvddio-pex-supply:
> > +    description: Power supply for digital PCIe I/O. Must supply 1.05 V.
> > +
> > +  hvddio-pex-supply:
> > +    description: High-voltage supply for PCIe I/O and PCIe output clocks. Must supply 1.8 V.
> > +
> > +  dvdd-pex-supply:
> > +    description: Power supply for digital PCIe I/O. Must supply 1.05 V.
> > +
> > +  hvdd-pex-pll-supply:
> > +    description: High-voltage supply for PLLE (shared with USB3). Must supply 1.8 V.
> > +
> > +  vddio-pexctl-aud-supply:
> > +    description: Power supply for PCIe side band signals. Must supply 1.8 V.
> > +
> > +patternProperties:
> > +  "^pci@[0-9a-f]+(,[0-9a-f]+)?$":
> > +    type: object
> > +    allOf:
>
> Don't need allOf.
Ok.
>
> > +      - $ref: /schemas/pci/pci-pci-bridge.yaml#
> > +    properties:
> > +      reg:
> > +        maxItems: 1
> > +
> > +      nvidia,num-lanes:
> > +        description: Number of lanes used by this PCIe port
> > +        $ref: /schemas/types.yaml#/definitions/uint32
> > +        enum: [1, 2, 4]
> > +
> > +      phys:
> > +        description: Phandles to PCIe PHYs
> > +        items:
> > +          maxItems: 1
>
> How many cells a phy entry has depends on the provider, which is outside
> the scope of this binding.
Ok, actually, phys and phys-name are not part of patternProperties.

phys and phy-name are required properties for Tegra124 and later.

[2] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/pci/nvidia%2Ctegra20-pcie.txt#L153-L158

And the board's example is as follows.

[3] https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts#L11-L32

[4] https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts#L36-L63
>
> > +        minItems: 1
> > +        maxItems: 4
>
So I have modified the device tree binding as follows.
-----8<----------8<----------8<----------8<----------8<----------8<-----

$ git diff .
diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.yaml
b/Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.yaml
index 0675bec205e8..73af8d2895a8 100644
--- a/Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.yaml
@@ -103,6 +103,18 @@ properties:
   iommus:
     maxItems: 1

+  phys:
+    description: Phandles to PCIe PHYs
+    minItems: 1
+    maxItems: 4
+
+  phy-names:
+    description: Names of PCIe PHYs
+    items:
+      pattern: "^pcie(-[0-3])?$"
+    minItems: 1
+    maxItems: 4
+
   avdd-pex-supply:
     description: Power supply for analog PCIe logic. Must supply 1.05 V.

@@ -157,8 +169,8 @@ properties:
 patternProperties:
   "^pci@[0-9a-f]+(,[0-9a-f]+)?$":
     type: object
-    allOf:
-      - $ref: /schemas/pci/pci-pci-bridge.yaml#
+    $ref: /schemas/pci/pci-pci-bridge.yaml#
+
     properties:
       reg:
         maxItems: 1
@@ -168,20 +180,6 @@ patternProperties:
         $ref: /schemas/types.yaml#/definitions/uint32
         enum: [1, 2, 4]

-      phys:
-        description: Phandles to PCIe PHYs
-        items:
-          maxItems: 1
-        minItems: 1
-        maxItems: 4
-
-      phy-names:
-        description: Names of PCIe PHYs
-        items:
-          pattern: "^pcie(-[0-3])?$"
-        minItems: 1
-        maxItems: 4
-
     required:
       - nvidia,num-lanes

@@ -274,6 +272,33 @@ allOf:
         - pinctrl-0
         - pinctrl-1

+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - nvidia,tegra124-pcie
+              - nvidia,tegra210-pcie
+    then:
+      required:
+        - phys
+        - phy-names
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - nvidia,tegra20-pcie
+              - nvidia,tegra30-pcie
+              - nvidia,tegra186-pcie
+    then:
+      properties:
+        phys:
+          deprecated: true
+        phy-names:
+          deprecated: true
+
   - if:
       properties:
         compatible:
@@ -495,34 +520,19 @@ examples:
             dvddio-pex-supply = <&reg_pex_1v05>;
             vddio-pex-ctl-supply = <&reg_pexctl_1v8>;

-            status = "okay";
-
             pci@1,0 {
-                device_type = "pci";
-                assigned-addresses = <0x82000800 0 0x01000000 0 0x1000>;
-                reg = <0x000800 0 0 0 0>;
-                bus-range = <0x00 0xff>;
+                phys = <&{/padctl@7009f000/pads/pcie/lanes/pcie-0}>,
+                    <&{/padctl@7009f000/pads/pcie/lanes/pcie-1}>,
+                    <&{/padctl@7009f000/pads/pcie/lanes/pcie-2}>,
+                    <&{/padctl@7009f000/pads/pcie/lanes/pcie-3}>;
+                phy-names = "pcie-0", "pcie-1", "pcie-2", "pcie-3";
                 status = "okay";
-
-                #address-cells = <3>;
-                #size-cells = <2>;
-                ranges;
-
-                nvidia,num-lanes = <4>;
             };

             pci@2,0 {
-                device_type = "pci";
-                assigned-addresses = <0x82001000 0 0x01001000 0 0x1000>;
-                reg = <0x001000 0 0 0 0>;
-                bus-range = <0x00 0xff>;
+                phys = <&{/padctl@7009f000/pads/pcie/lanes/pcie-4}>;
+                phy-names = "pcie-0";
                 status = "okay";
-
-                #address-cells = <3>;
-                #size-cells = <2>;
-                ranges;
-
-                nvidia,num-lanes = <1>;
             };
         };
     };

-----8<----------8<----------8<----------8<----------8<----------8<-----

But I am not able to resolve the build error

$ make -j$(nproc) dt_binding_check DT_SCHEMA_FILES=nvidia,tegra-pcie.yaml
  DTC [C] Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.example.dtb
Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.example.dts:179.25-186.19:
Warning (unit_address_vs_reg): /example-1/bus/pcie@1003000/pci@1,0:
node has a unit name, but no reg or ranges property
Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.example.dts:188.25-192.19:
Warning (unit_address_vs_reg): /example-1/bus/pcie@1003000/pci@2,0:
node has a unit name, but no reg or ranges property
FATAL ERROR: Can't generate fixup for reference to path
&{/padctl@7009f000/pads/pcie/lanes/pcie-0}
make[2]: *** [scripts/Makefile.dtbs:140:
Documentation/devicetree/bindings/pci/nvidia,tegra-pcie.example.dtb]
Error 1
make[1]: *** [/media/nvme0/mainline/linux-tegra-6.y-devel/Makefile:1597:
dt_binding_check] Error 2
make: *** [Makefile:248: __sub-make] Error 2

Thanks
-Anand

