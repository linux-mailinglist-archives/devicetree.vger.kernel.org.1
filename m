Return-Path: <devicetree+bounces-150627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C09A42E75
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 21:58:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 78328189AB43
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 20:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F171263C86;
	Mon, 24 Feb 2025 20:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="lPItqs9C"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF471A5B82
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 20:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740430706; cv=none; b=j5h3HGsY9a3YhaXZf4qfuLdxvBh6cU+jdUCAhyKU4tdvoacSKr6Cz5lq69jpaVyPoPGE87u7Qj/hgy9MyHIvL201nFxX76WboVyoI4ItLrOd99J2kqVDxExdYYVUG+LXP3z3rfkJUaoBedXoreVXXVecorD1zrc1PgBUCQjc+H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740430706; c=relaxed/simple;
	bh=5NTBVZtPucMG0j4onj8D4B3Tzw8Ztr68uizMJjq18iU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HAPaXFRfcDWojNz09mnLVR5vxIkQvazvimvdCK7LBCjeLK+/NiX1WXw7nrf9OW1lr0rXh15zBsY4L3gAs4ojXj4NIFsOYY/x7iYQSQ/V4pqC0swJj/BwTsgw/ZFHs3Pew4M/QBG8SALYdZ0nV2EWDMqkI7PWBVNY5Wup4vHwDac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=lPItqs9C; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 32A53240101
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 21:58:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1740430701; bh=5NTBVZtPucMG0j4onj8D4B3Tzw8Ztr68uizMJjq18iU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=lPItqs9CzEX3MHXDUteuWzg/eh47rC4iOuc0Nm5GK65+l2ZAsJ8ft7ZoO8yMutuwx
	 a7ne/OwJHenS0lA6f0UYTpoGv1sKQCNbpyTamlYIsfoP9kzAXteH9o+oEeF+9MrIET
	 3d9nnVEKTYM5M9wMFP1Bliy4QS/+FKrHwYQJBjRUjTbteQuqF7GTsKxPqjOyr01nnb
	 IP4cuiktw+YifxM8GGgqDbleIUbE4OBVgFxqjvU+UPcuPpUd5rsCKk7jQbCFZmnhET
	 nsZPdYZlionomJXwguYa/TmkvcsDt0X9LRmZshn5E2yv0PWIxRRBqlzfZ4SEeHrkIQ
	 XM2loQdI6DGYw==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4Z1tP74dwRz9rxD;
	Mon, 24 Feb 2025 21:58:19 +0100 (CET)
Date: Mon, 24 Feb 2025 20:58:19 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Rob Herring <robh@kernel.org>
Cc: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Claudiu Manoil <claudiu.manoil@nxp.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: net: Convert fsl,gianfar-{mdio,tbi} to
 YAML
Message-ID: <Z7zdawaVsQbBML95@probook>
References: <20250220-gianfar-yaml-v1-0-0ba97fd1ef92@posteo.net>
 <20250220-gianfar-yaml-v1-1-0ba97fd1ef92@posteo.net>
 <20250221163651.GA4130188-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250221163651.GA4130188-robh@kernel.org>

On Fri, Feb 21, 2025 at 10:36:51AM -0600, Rob Herring wrote:
> On Thu, Feb 20, 2025 at 06:29:21PM +0100, J. Neuschäfer wrote:
> > Move the information related to the Freescale Gianfar (TSEC) MDIO bus
> > and the Ten-Bit Interface (TBI) from fsl-tsec-phy.txt to a new binding
> > file in YAML format, fsl,gianfar-mdio.yaml.
> > 
> > Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
> > ---
[...]
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - fsl,gianfar-tbi
> > +      - fsl,gianfar-mdio
> > +      - fsl,etsec2-tbi
> > +      - fsl,etsec2-mdio
> > +      - fsl,ucc-mdio
> > +      - gianfar
> 
> Can you just comment out this to avoid the duplicate issue.
> 
> Though I think if you write a custom 'select' which looks for 
> 'device_type = "mdio"' with gianfar compatible and similar in the other 
> binding, then the warning will go away. 

I'm not sure how the 'select' syntax works, is there a reference
document I could read?

> 
> > +      - ucc_geth_phy
> > +
> > +  reg:
> > +    minItems: 1
> > +    items:
> > +      - description:
> > +          Offset and length of the register set for the device
> > +
> > +      - description:
> > +          Optionally, the offset and length of the TBIPA register (TBI PHY
> > +          address register). If TBIPA register is not specified, the driver
> > +          will attempt to infer it from the register set specified (your
> > +          mileage may vary).
> > +
> > +  device_type:
> > +    const: mdio
> > +
> 
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 0
> 
> These are defined in mdio.yaml, so drop them here.

Will do.

> 
> > +
> > +required:
> > +  - reg
> > +  - "#address-cells"
> > +  - "#size-cells"
> > +
> > +allOf:
> > +  - $ref: mdio.yaml#
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - gianfar
> > +              - ucc_geth_phy
> > +    then:
> > +      required:
> > +        - device_type
> 
> Essentially, move this to the 'select' schema and add that property 
> device_type must be 'mdio'. You won't need it here anymore because it 
> had to be true for the schema to be applied.

I'll have to read up on how select works.


Best Regards,
J. Neuschäfer

