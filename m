Return-Path: <devicetree+bounces-60042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E83178A802A
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 11:54:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 251761C216FE
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 09:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4404B1327E0;
	Wed, 17 Apr 2024 09:54:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 020737E590
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 09:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713347686; cv=none; b=j3sQ6m45Mm/DUFnrjfdN1BdEPSuvOTsjgM+IUPIt7s39P/G82o+u+RKnzl45RxEnR2h0jqoJ8FIVW93jX/NTpHxIqGbrPST7LTR17KCmv/dvil8u+DCU2VH7GrtbK8UXjwZG0e62uKpfBjxH0jF00QupEU6WpQ9ENQGbrlQSW1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713347686; c=relaxed/simple;
	bh=wxzAIZCsb6qYmZgvaeV7YE0JgPMqgrPF11FYAWXhCV4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RpbFRYCfKa+cNURkG4L7ZzOLXOeCinnatXRwdbB9EnHO4dNWGZIZ7MKM7ofnn+zHHxNzhRTkSh8sGGSxVW3gJQniVewmyE9TiJgQvWVU+1yD6c9ptLH+yyTzq568b1JIQaeodsu3UWEMNkB/t1rK2XekoQ2Eq0dqlqv6kyq31ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C76C339;
	Wed, 17 Apr 2024 02:55:12 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 251963F64C;
	Wed, 17 Apr 2024 02:54:43 -0700 (PDT)
Date: Wed, 17 Apr 2024 10:54:39 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Ryan Walklin <ryan@testtoast.com>, Chen-Yu Tsai <wens@csie.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland
 <samuel@sholland.org>, Chris Morgan <macromorgan@hotmail.com>,
 devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 1/4] dt-bindings: arm: sunxi: document Anbernic RG35XX
 handheld gaming device variants
Message-ID: <20240417105439.2674be75@donnerap.manchester.arm.com>
In-Reply-To: <78b5de01-150e-4537-b6a6-8ca0067a8359@linaro.org>
References: <20240414083347.131724-2-ryan@testtoast.com>
	<20240414083347.131724-3-ryan@testtoast.com>
	<78b5de01-150e-4537-b6a6-8ca0067a8359@linaro.org>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 14 Apr 2024 11:07:19 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

Hi Krzysztof,

> On 14/04/2024 10:33, Ryan Walklin wrote:
> > From: Ryan Walklin <ryan@testtoast.com>
> > 
> > RG35XX 2024: Base version with Allwinner H700
> > RG35XX Plus: Adds Wifi/BT
> > RG35XX H: Adds second USB port and analog sticks to -Plus in horizontal
> >           altered form factor,
> > 
> > Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> > ---
> >  Documentation/devicetree/bindings/arm/sunxi.yaml | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
> > index 09d835db6db5..fc10f54561c9 100644
> > --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> > +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> > @@ -56,6 +56,21 @@ properties:
> >            - const: anbernic,rg-nano
> >            - const: allwinner,sun8i-v3s
> >  
> > +      - description: Anbernic RG35XX (2024)
> > +      - items:
> > +          - const: anbernic,rg35xx-2024
> > +          - const: allwinner,sun50i-h700
> > +
> > +      - description: Anbernic RG35XX Plus
> > +      - items:
> > +          - const: anbernic,rg35xx-plus
> > +          - const: allwinner,sun50i-h700
> > +
> > +      - description: Anbernic RG35XX H
> > +      - items:
> > +          - const: anbernic,rg35xx-h  
> 
> Any reason these are not just one enum with three entires?

I think the policy in *this* file is one entry for each device, so that we
can attribute a device name ("Anbernic RG35XX H") to the compatible string.
I mean otherwise we could group all H616 boards for instance into one
entry. Don't know if this is what we want?

Cheers,
Andre


