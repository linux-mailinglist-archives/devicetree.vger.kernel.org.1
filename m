Return-Path: <devicetree+bounces-231095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C0AC0A5A6
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 10:48:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D2EF84E2B27
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 09:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1D7321FF38;
	Sun, 26 Oct 2025 09:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fv0m7Rsz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799161917CD
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 09:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761472058; cv=none; b=ADCLPPAYs3ykI1wrgejSjORNQUZIzASpVb8TLGnwr6A5DuBz+9lnPxmokfVANGfvv1G2SWHzf2vIJKZs+mISJiORj52Z/yhsgzUtsdRb9pCTm5/lZD/cYPc45pMof/GQL2DyAnZC8UsiC45lK7dvYBahYmigLEPgMmW3GQO0gh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761472058; c=relaxed/simple;
	bh=qcYvH9Ptny0DNh/rzoeTiiivcuo/PRAup2s+HOtuycw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hOzdfTbNtvW72xzQfrEajaX1dwMFv8WAC0Z5re+qdcO4v+PmN4qVwsJ/pDArDRIvxLH5srWB816mpE1Ez/1Covs92XcI5/Zgipc4YdzzVlM9vPAOIlWAlecDFEVpdCJFzazz374B9bHNNTAbcERMrYXjKAUWG7p84lrhuAH/wJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fv0m7Rsz; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-33d463e79ddso4516265a91.0
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 02:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761472057; x=1762076857; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=C91HvAQxwR7B1bhgRZq1EXx7cSrqAYa22OF4JmCWXOg=;
        b=fv0m7RszL/M3uZbs9WgrQon1osn5ugYXFRSH2vxuHsxl5jAxrL/DsmNByNrcjG1tj5
         PytDdt0gtaLAIz5+Frr8qOqvkykMAVSinaSr3UUrvco8u/jZvfRu1MyWaJrMBBQ+xTV9
         FQ/9o6kgiwVWzDXVpu/mO/OmmKRSSBxIc5M2MZmU7DmwSxnRawtYWKYg5negmF8LrF6S
         Y60wRWRx98zLE1tn6HFjbYNjJmBFK+mmYqu70nK3CjyzlNGRbxZOYFqWEJ6AJ80ZICHq
         EVx8WDAK2tR4f6UpMJ5HxTsl11XrvcJGyjr6dkEmwHiCp7BAwXoF66wn2WfW1yPVL81w
         Kigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761472057; x=1762076857;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C91HvAQxwR7B1bhgRZq1EXx7cSrqAYa22OF4JmCWXOg=;
        b=Zlm2LeetBG7+VnkJ0WT2EdweX/SHK4Vfn/j69XaYVNm2AgnRMjjBl6NmfsTzAcjpFX
         /4Ed76eF5OGDGfL1l+DATIpGePinqnjRJ1au/UQ3Y4riFLf6GBskZ+juL5macGk1MjGv
         L0Pd7lznoJVVKJBBDPMNaHeKPFRgZ6aL6hAwM+20P5btsv3/uZzmJFBR2B7wm1YB4iue
         ZoSbE9Z/weH0+KX27bmgSf4Jb2MZ7vZOiwncJpGv79XbF4/6MgCffI9JAx3dm0udYYGI
         9RVXVwB7klZkeV1gADtUvPjym/fG/wPgbkD1s3haiXbcZth85wDQGlBfZP65YgQ6pKyp
         8bfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWm2TxN0zAJ+I7qqlgkc4WWljCYM2vx377eWWxI8hD1eRVRBH/tylZh3wdJtsUX0f+j9AWtbcJmTTii@vger.kernel.org
X-Gm-Message-State: AOJu0YygLZFvoBsVntmXJNLa1vxvTql4Pg5nfPz0CU5ZW57TMZR+GwWC
	ndQsRXblIAfr51EZgVClfbQRnrXcHPqlVZIzJ+XDtapGDK7mMFAzjONr
X-Gm-Gg: ASbGnctH7v7m/VmDg8bUQeVmBBLKYL5GBJRMEBMMVxiWC/qM/075COey8Y7y3gtw5P9
	alXdC72YFptFqhUDZvUwOKGsgqZilOpYCXoDM6cwAeBqEP3zP+8mA8l+85DmYhil42TV30KR/mq
	PtMissulxS5YfVw9LxAYCYVLe/dIXIiti2lxPW2IWFwO6M79aYe+e44VP219MiBzOayz1mf+kpQ
	Qk+rcym9F/pFLslfoquO6ZrVkAf0eYWKtx2Grf5ZX6xODi6u4Wy9EihJ5uIwQkW30AJGgSfe1k6
	ILCYrznEgIHmyFuFS3f54hon7E7uYkVRNzndHtgX9VH+0Hvv3v9+wkA2Uic8MGputHzfJ+qvj7v
	AOs4pxfRWmyVF8huTTpQOcMwt7nXmioUOGkZwqI+wC+GqR+dV4TNunyFADUjhjph3kxOoel3ha+
	WZ
X-Google-Smtp-Source: AGHT+IGBtA0xQBuD4uogDvjIhQK7Qhr4z8CGsMy+ULWwP1OFvRuXkY87KrHlWUr9Efn6GjJx6fmMdw==
X-Received: by 2002:a17:90b:3e43:b0:32e:7270:9499 with SMTP id 98e67ed59e1d1-33bcec297c9mr40598008a91.0.1761472056734;
        Sun, 26 Oct 2025 02:47:36 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed807dbasm4802556a91.12.2025.10.26.02.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 02:47:36 -0700 (PDT)
Date: Sun, 26 Oct 2025 17:47:32 +0800
From: Longbin Li <looong.bin@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, Yu Yuan <yu.yuan@sjtu.edu.cn>, Ze Huang <huangze@whut.edu.cn>, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v4 1/3] dt-bindings: soc: sophgo: add TOP syscon for
 CV18XX/SG200X series SoC
Message-ID: <ugmphokne6ssc7ou7apvbldxg7xxk24wp5jrzdasjiplnu6gfy@ebbuxnjqlsw4>
References: <20251024030528.25511-1-looong.bin@gmail.com>
 <20251024030528.25511-2-looong.bin@gmail.com>
 <20251024-hangout-designing-33e96c0d35fc@spud>
 <oymxspgopaqja63nipufgzn6kpobkdopemfaw3azhom3ikvk5f@e7cg4lq64j2o>
 <20251025-shakable-jujitsu-3a5e9c8895a5@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251025-shakable-jujitsu-3a5e9c8895a5@spud>

On Sat, Oct 25, 2025 at 01:44:00PM +0100, Conor Dooley wrote:
> On Sat, Oct 25, 2025 at 10:27:13AM +0800, Longbin Li wrote:
> > On Fri, Oct 24, 2025 at 05:46:03PM +0100, Conor Dooley wrote:
> > 
> > > > ...
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    oneOf:
> > > > +      - items:
> > > > +          - const: sophgo,cv1800b-top-syscon
> > > > +          - const: syscon
> > > > +          - const: simple-mfd
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  "#address-cells":
> > > > +    const: 1
> > > > +
> > > > +  "#size-cells":
> > > > +    const: 1
> > > > +
> > > > +  ranges: true
> > > 
> > > Do you actually use ranges?
> > > 

Actually, I do not use it.
I added it following Rob's suggestion in
https://lore.kernel.org/all/20251015134144.GA3265377-robh@kernel.org/.
Should I drop it or not?

> > > > +patternProperties:
> > > > +  "dma-router@[0-9a-f]+$":
> > > 
> > > Do these actually appear at variable addresses, or is it always 48 for
> > > the phy and 53 for the dma router?
> > > 
> > > > +    $ref: /schemas/dma/sophgo,cv1800b-dmamux.yaml#
> > > > +    unevaluatedProperties: false
> > > > +
> > > > +  "phy@[0-9a-f]+$":
> > > > +    $ref: /schemas/phy/sophgo,cv1800b-usb2-phy.yaml#
> > > > +    unevaluatedProperties: false
> > > > +
> > > > +required:
> > > > +  - compatible
> > > > +  - reg
> > > > +  - "#address-cells"
> > > > +  - "#size-cells"
> > > > +
> > > > +additionalProperties: false
> > > > +
> > > > +examples:
> > > > +  - |
> > > > +    #include <dt-bindings/clock/sophgo,cv1800.h>
> > > > +
> > > > +    syscon@3000000 {
> > > > +      compatible = "sophgo,cv1800b-top-syscon", "syscon", "simple-mfd";
> > > > +      reg = <0x03000000 0x1000>;
> > > > +      #address-cells = <1>;
> > > > +      #size-cells = <1>;
> > > > +
> > > > +      usbphy: phy@48 {
> > > 
> > > Drop the labels off of these two, since they're unused in the example.
> > > 
> > 
> > Hi,
> > 
> > Thanks for the review.
> > 
> > There are a couple of different opinions here.
> > Could you please help confirm which approach is preferred here?
> > 
> > This is Rob's reply:
> > https://lore.kernel.org/all/20251015134144.GA3265377-robh@kernel.org/
> 
> I don't think that Rob and I disgree about the example, having child
> nodes is good, having the label on them is what I don't want.
> 
> Re: the child node patterns, I was not looking for a return to what Rob
> didn't like, but rather a move to just making them normal properties
> rather than a pattern, if there's only one possible address.

Thanks!
I will drop the lable and move the child nodes to normal properties.

