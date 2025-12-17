Return-Path: <devicetree+bounces-247435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C44CC7EEE
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:45:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9659A301E3ED
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F96D3242BA;
	Wed, 17 Dec 2025 12:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NChF4twP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE5C1A01C6;
	Wed, 17 Dec 2025 12:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765976271; cv=none; b=tlAM3U2IuARtOMfubI2tAXqk4WiLgWQRuQrNWeo3JZShVCfbneWSkeBSqrnbmp5CpyMCX3CcPrFgB/gUYgLHetDK8kA70IG+8ghQfbrl44wyFrX/pj/hIm811mTEhh8FQU6caanvtJFYfbQwa8nyclSOYS1iI3QYvZhcfjgtOt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765976271; c=relaxed/simple;
	bh=0GWSqBewhyyuHqjxSx7mEobdDpCUaq4D2Ofg1L0eEOg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ER+ZpLLIrdRYCr4d4B5HexI16Qp9wzGkW40IGwcnpToM9q2GXf63UKEwFXm45a9GgSVTgY5V5elRaqH+v3ykDizO78CWHzQNieMMNJWU9JtjzY6kKp1tioao/217c8QfPI66xc0LPdEUMznR1g4e8nHrhD0kBP3qChEikOCxOaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NChF4twP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FCE5C4CEF5;
	Wed, 17 Dec 2025 12:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765976270;
	bh=0GWSqBewhyyuHqjxSx7mEobdDpCUaq4D2Ofg1L0eEOg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NChF4twPixIMjvFN3bzM0j/aTM2OTezt3o6R9cDltERyapZnTlcVmw6OurSzWNfNj
	 93NFCULHMxoN7QZiiY9KGLWdPGDf6fCUnPrTAXH17/c+EWF6F8DbqEc3j9L5/8KY5o
	 eI2xuDcThpwA4JY6zK88hY4zb/tp7SS3NplFQoV93I9loMXTbUVRWnhLk/lb+0B2tA
	 OhtYjBBWzSLRCGJD8iwjXAQ9qrfnPKd9p4+7u08xMRCOuETU0bDWwNSgSGVt72Juub
	 KDfgBHMx9Dnm98o7AvOExHIwDTu/QX5NBT+XXSjK1DV1vmimyKOlGIdJCksyovaxkM
	 l20lpHHG8EyBA==
Date: Wed, 17 Dec 2025 06:57:47 -0600
From: Rob Herring <robh@kernel.org>
To: Nishanth Menon <nm@ti.com>
Cc: Anshul Dalal <anshuld@ti.com>, Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v5] dt-bindings: arm: keystone: add boot_* mboxes to
 ti,sci
Message-ID: <20251217125747.GA689283-robh@kernel.org>
References: <20251215-k3_syscon_add_boot_mailboxes-v5-1-5a8fe567fd31@ti.com>
 <20251215135708.ij5e7jr3binzmlbf@panda>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215135708.ij5e7jr3binzmlbf@panda>

On Mon, Dec 15, 2025 at 07:57:08AM -0600, Nishanth Menon wrote:
> On 11:38-20251215, Anshul Dalal wrote:
> > The bootloader on K3 devices makes use of mailboxes as per the ROM spec
> > which might be different than one's available to the kernel (firmware
> > spec).
> > 
> > Therefore, this patch adds the missing mailbox entries to the DT binding
> > if the matching compatible is ti,am654-sci to represent the mailboxes
> > exposed by the hardware during boot for the purpose of loading the
> > firmware. The newly added mboxes are made optional by keeping minItems
> > as 2 to remain compliant with existing device-trees.
> > 
> > Signed-off-by: Anshul Dalal <anshuld@ti.com>
> > ---
> > Changes in v5:
> > - Added commit description for the optional mailboxes
> > - Link to v4: https://lore.kernel.org/r/20251205-k3_syscon_add_boot_mailboxes-v4-1-8e216fb88941@ti.com
> > 
> > Changes in v4:
> > - Make new boot_* mboxes conditional on ti,am654-sci compatible
> > - Link to v3: https://lore.kernel.org/r/20251112-k3_syscon_add_boot_mailboxes-v3-1-66155a4236dc@ti.com
> > 
> > Changes in v3:
> > - Drop [1/2] of the last patch series
> > - Update existing example with boot_* mailboxes instead of adding a new one
> > - Link to v2: https://lore.kernel.org/r/20251112-k3_syscon_add_boot_mailboxes-v2-0-aebc1e47b391@ti.com
> > 
> > Changes in v2:
> > - Remove maxItems entry
> > - Remove RFC tag from patch (added by mistake in v1)
> > - Document the new mailboxes in mboxes instead of mbox-names
> > - Provide example with all the mailboxes set
> > - Update commit title to have "ti,sci"
> > - Split into two patches
> > - Link to v1: https://lore.kernel.org/r/20251111-k3_syscon_add_boot_mailboxes-v1-1-529a27f21076@ti.com
> > ---
> >  .../devicetree/bindings/arm/keystone/ti,sci.yaml   | 50 +++++++++++++++++++---
> >  1 file changed, 43 insertions(+), 7 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
> > index 25a2b42105e5..d9eb2a81e539 100644
> > --- a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
> > +++ b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
> > @@ -51,15 +51,15 @@ properties:
> >      minItems: 1
> >  
> >    mbox-names:
> > +    minItems: 2
> > +    maxItems: 6
> >      description: |
> >        Specifies the mailboxes used to communicate with TI-SCI Controller
> >        made available from TI-SCI controller.
> > -    items:
> > -      - const: rx
> > -      - const: tx
> >  
> >    mboxes:
> >      minItems: 2
> > +    maxItems: 6
> >  
> >    ti,host-id:
> >      $ref: /schemas/types.yaml#/definitions/uint32
> > @@ -79,6 +79,42 @@ properties:
> >      type: object
> >      $ref: /schemas/reset/ti,sci-reset.yaml#
> >  
> > +if:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        const: ti,am654-sci
> > +then:
> > +  properties:
> > +    mbox-names:
> > +      minItems: 2
> > +      items:
> > +        - const: rx
> > +        - const: tx
> > +        - const: notify
> > +        - const: boot_rx
> > +        - const: boot_tx
> > +        - const: boot_notify
> > +    mboxes:
> > +      minItems: 2
> > +      items:
> > +        - description: RX thread
> > +        - description: TX thread
> > +        - description: Notify thread
> > +        - description: boot stage RX thread
> > +        - description: boot stage TX thread
> > +        - description: boot stage Notify thread
> > +else:
> > +  properties:
> > +    mbox-names:
> > +      items:
> > +        - const: rx
> > +        - const: tx
> > +    mboxes:
> > +      items:
> > +        - description: RX thread
> > +        - description: TX thread
> > +
> >  required:
> >    - compatible
> >    - mbox-names
> > @@ -99,11 +135,11 @@ examples:
> >  
> >    - |
> >      dmsc: system-controller@44083000 {
> > -      compatible = "ti,k2g-sci";
> > +      compatible = "ti,am654-sci";
> >        ti,host-id = <12>;
> > -      mbox-names = "rx", "tx";
> > -      mboxes = <&secure_proxy_main 11>,
> > -               <&secure_proxy_main 13>;
> > +      mbox-names = "rx", "tx", "notify", "boot_rx", "boot_tx";
> > +      mboxes= <&secure_proxy_mcu 6>, <&secure_proxy_mcu 8>,
> > +        <&secure_proxy_mcu 5>, <&secure_proxy_mcu 5>, <&secure_proxy_mcu 4>;
> >        reg-names = "debug_messages";
> >        reg = <0x44083000 0x1000>;
> 
> Please add a different example for am654, i want to make sure k2g still
> continues to be checked.
> 
> That said, AM62 series of devices do not use notification pipe for
> standard communication. So, the schema will break for those.
> 
> in summary:
> k2g: rx, tx
> am654, j721e, j721s2, j7200, j784s4, .. : rx, tx, notify, boot_rx,
> boot_tx, boot_notify
> am625, am62p ..: rx, tx, boot_rx, boot_tx, boot_notify
> 
> we will need three examples, and will need to add am62x series as one
> additional compatible.

Do we really? We have a whole tree of examples in .dts files.

Rob

