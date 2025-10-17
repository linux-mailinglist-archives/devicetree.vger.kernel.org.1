Return-Path: <devicetree+bounces-228097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DA3BE7D96
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 11:43:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AE652580B23
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 09:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4722E173D;
	Fri, 17 Oct 2025 09:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PLdYpYAG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97002DF14C
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 09:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760693706; cv=none; b=g7kfXSpfBnCzAgu9s8OPDh6n/0FtKuwQn/Cjem3k4vY1OasPuAurM93/UtFAzh9eyIq9fMozXU7sVs+Et3E6tzdB02bmclJDWxxBrLOzAVlHZkqpzvoIph4PQGkpqfZ0orL4kTK4AD0yQyfxN3s5FBWOCbwbgTe9RdJ0mzLCcbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760693706; c=relaxed/simple;
	bh=xlVdMJZGBR8dYzgKO/sqP1AR71zVHST1qP49gR6hPGk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r6HzAbVhmXTBvhqFEpJpn+VGUlMHl0i5hOgcNen1P6CfK6JfsVkIUUmmJF8623gu9U9lDJ14ymR1Qcfh+EyUuLhJ9UU2Wg4Fo87J5XbBlzHH2CgzoIOygu15LQUyvgljTCp6QHWy+SBL2UiibQ8M9xbxnct1mDRist6/aGZkfc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PLdYpYAG; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-27c369f898fso24008615ad.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 02:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760693704; x=1761298504; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6sefhtiMhuuPq8nFOLwvYqf8fe7o6Hmrgpdt61rNn/I=;
        b=PLdYpYAGee76YNXTPXZxX46HxWhPj3fnKPlhf0zBvEPnLQ7+KQXXK42+YX0xiJ3WiO
         AsOb0eCM9Jmoy9vCxMy4RyThVjB3gIqgTwI0of0sQ+aVCmk5GL75MGmhkUHh6FMzKaX5
         GJQwPTku1Wjwv9KJaZy0w/y7Zd+6pp3/DiklJYpORlSch6ivOhz26zBZlBTsr8u1sntv
         Ay6tEpdfnoXF62c/E+d6I9RkpmnpurQ+57N1GqK31d183brPcC5HdXa/8e2dB+UbHFSr
         xYkXMyYHtxW7JYgtzHSvKxxoFGTwb0aK1dL2yZld47pDN8l/njllZDFgbuM/oJnBIVVq
         /8oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760693704; x=1761298504;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6sefhtiMhuuPq8nFOLwvYqf8fe7o6Hmrgpdt61rNn/I=;
        b=M0nJKv3DzAIo0yzowXIB0CW4+l4PL9CG7SQYfWKWatMDIju34WP5A8IXfKoW28ZAmn
         tUX+o0kXdnHlvlDIL0NZmaX9s3qfKKUlgfwMRYq+STctD4ZnVGBbZpB9vQ64JqSXmaT9
         ITak3nRsq6mEi8W9wq825V4YwtBrFjm81pPbbB8gDYRJgoqKzW9+OfJ4SHk4Up9H13pQ
         BYEKp+4W5a4XWWYRm0P9F90fn+jcZuj5NbVV/zJxLILvqOTmQy5iDvf0UHj1R1KSKMlc
         UVjLRRRaHG0n0qLK4XNeeWY5VdG4VNKMZj7C0lErEk3EOex+Wv/E10v7sQ0T5ti9tKqg
         ykQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVljvXgmJ14rSKS3/68kIT9ss/GRRLnTSrtL1+lwXtY5bBFoY93NpmtDTGsTNuwJVK5yyWhz7WbdCTV@vger.kernel.org
X-Gm-Message-State: AOJu0YwT9G1Gpo8ISlDEbihRPUBx9lSJRrtCjLXFPA8XmVOkygoo+0kD
	7aVPQqmjbs5M3+acU5PEE+v1Y+Xrj9e7Y+dlEn2f63GP4NoZnQpWp8X0
X-Gm-Gg: ASbGncv0jFIoWN1PQDn1XM9ZyA96JmNYU87OAI0nhaB55VczrXCMACM6TvyRaNUD097
	2eWOwTqXsuHA5X125fDy3NnJjNfObQItUQehptDKLT0LEBPdahF3qdYSgW5E42JXjijW2xiEXDq
	cduc5UmrDt6NpR5uo30WScMWZPRPSXk9idLVz/+5gvi1iV+5eWNJIEHXlB+8qOs1Dwv55v7pn2Z
	I+7FtsN14AMKJlzjphaSdAbWQ+Rjbzq2Qu4iAqvCx0Hl6O28uKM04fYPbwHq0Ds4XCHS0zdfsiu
	kyG292VjGb2B8pRZW+cyYaRlM51IGX+7ZbY7+EhuyeeKKNKkcH2NCzeF1zm30PKYbNgkxlCX6B7
	Mv2L9gEAspxinX0hL52jYS4Fmf1bvtR+/l6iRzNHlIb8hTQktceHaDzb36qJEV+GiPBd1xoRAnM
	sF
X-Google-Smtp-Source: AGHT+IFZ4r5YhjGJi2lIzlRtB+okPhBm2JAHvMOho4Si8E/kA0x/N3K19f//5A+MqBicWT22P9DP/g==
X-Received: by 2002:a17:903:244b:b0:24c:7bc6:7ac7 with SMTP id d9443c01a7336-290c9cb77d1mr36187715ad.18.1760693704058;
        Fri, 17 Oct 2025 02:35:04 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29099ab4668sm57316645ad.90.2025.10.17.02.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 02:35:03 -0700 (PDT)
Date: Fri, 17 Oct 2025 17:35:00 +0800
From: Longbin Li <looong.bin@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
	Yixun Lan <dlan@gentoo.org>, Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
	Ze Huang <huangze@whut.edu.cn>, devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v1 1/3] dt-bindings: soc: sophgo: add TOP syscon for
 CV18XX/SG200X series SoC
Message-ID: <ief5lt3mxa4epnlhwgsx7kvi556f3fo3gqff36hmzvitexlphx@ztpueijr5nb6>
References: <20251012022555.6240-1-looong.bin@gmail.com>
 <20251012022555.6240-2-looong.bin@gmail.com>
 <20251015134144.GA3265377-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251015134144.GA3265377-robh@kernel.org>

On Wed, Oct 15, 2025 at 08:41:44AM -0500, Rob Herring wrote:
> On Sun, Oct 12, 2025 at 10:25:52AM +0800, Longbin Li wrote:
> > The Sophgo CV1800/SG2000 SoC top misc system controller provides register
> > access to configure related modules. It includes a usb2 phy and a dma
> > multiplexer.
> > 
> > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> > Signed-off-by: Longbin Li <looong.bin@gmail.com>
> > ---
> >  .../soc/sophgo/sophgo,cv1800b-top-syscon.yaml | 59 +++++++++++++++++++
> >  1 file changed, 59 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml b/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml
> > new file mode 100644
> > index 000000000000..d1993f2156b4
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml
> > @@ -0,0 +1,59 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/soc/sophgo/sophgo,cv1800b-top-syscon.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Sophgo CV18XX/SG200X SoC top system controller
> > +
> > +maintainers:
> > +  - Inochi Amaoto <inochiama@outlook.com>
> > +
> > +description:
> > +  The Sophgo CV18XX/SG200X SoC top misc system controller provides
> > +  register access to configure related modules.
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - const: sophgo,cv1800b-top-syscon
> > +          - const: syscon
> > +          - const: simple-mfd
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 1
> 
> Also need 'ranges'
> 
> > +
> > +patternProperties:
> > +  "dma-router@154":
> 
> This allows 'foodma-router@154bar'. It's not a pattern as-is, but 
> generally we don't put fixed unit-addresses into the schema. So instead, 
> should be "^dma-router@[0-9a-f]+$".
> 
> > +    $ref: /schemas/dma/sophgo,cv1800b-dmamux.yaml#
> > +    unevaluatedProperties: false
> > +
> > +  "phy@48":
> 
> And similar here.
> 
> > +    $ref: /schemas/phy/sophgo,cv1800b-usb2-phy.yaml#
> > +    unevaluatedProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - "#address-cells"
> > +  - "#size-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    syscon@3000000 {
> > +      compatible = "sophgo,cv1800b-top-syscon", "syscon", "simple-mfd";
> > +      reg = <0x03000000 0x1000>;
> > +      #address-cells = <1>;
> > +      #size-cells = <1>;
> 
> Please make the example complete with child nodes.
> 
> > +    };
> > +
> > +...
> > --
> > 2.51.0

Thanks, I will fix it.

longbin li

