Return-Path: <devicetree+bounces-53715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B03288D394
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 02:02:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98B8DB233F6
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 01:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 159AE171AA;
	Wed, 27 Mar 2024 01:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="m+uYAlU9"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73FE91CD2B
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 01:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711501328; cv=none; b=Pno8dcpLc7YCrBXkLHU1H1JQZavPkH0aVCH6J+tOSzxEk6XJdQDvbHAqLOUgtEO9URSTyRl3CzQKXcs86eKX9Kj6WHaoQ8loEsRR2ZZ8mjEt4xtLE2axKJk2PkWf0q15cKgOwFPN+AL6xuDrQmUIMQa4igl2urtHs4xu5pza66A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711501328; c=relaxed/simple;
	bh=aZdhrcqzRljiIshV2UIRO5p76sa/HVm1n3ssqrX/4oU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=giCWeeeNfwWB8abefEAWXLwO53NqIquyEUnJLstCdOqeL0qbQWG18wTPNZVth8fmlPcbPHhTL+sxH2udzKfBvYn16d6YfuAPRk7XbB0TNZ3/WgyJ7Q+1SRo1PxwgpDj1dpQI7svBL4V3XQeNjl1WD3Zefm1zn45dfyjCem4Azb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=m+uYAlU9; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B1F8CB3;
	Wed, 27 Mar 2024 02:01:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1711501292;
	bh=aZdhrcqzRljiIshV2UIRO5p76sa/HVm1n3ssqrX/4oU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m+uYAlU9X8MNK93mLvtA1jH2yValjTKKeaG2fpwttSUklnVZGR+4lLGcQo+HRnIiz
	 z8cR+o/QtWKKS/0pOj2lcdf71yF19wnT4W3HtZ4styFdcHkd1W0PDoiiKLTVBbTgoI
	 k+4EKU5ONzzTcGQCNrPfF9jmktddBtU92p6/VK4o=
Date: Wed, 27 Mar 2024 03:01:56 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Trevor Zaharichuk <trevor@au-zone.com>,
	Greg Lytle <greg@au-zone.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH 4/5] dt-bindings: arm: Add Au-Zone Maivin AI Vision
 Starter Kit
Message-ID: <20240327010156.GD14986@pendragon.ideasonboard.com>
References: <20240325203245.31660-1-laurent.pinchart@ideasonboard.com>
 <20240325203245.31660-5-laurent.pinchart@ideasonboard.com>
 <75218bd1-0d88-4986-90a6-35f7bdc53918@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <75218bd1-0d88-4986-90a6-35f7bdc53918@linaro.org>

Hi Krzysztof,

On Tue, Mar 26, 2024 at 08:11:34AM +0100, Krzysztof Kozlowski wrote:
> On 25/03/2024 21:32, Laurent Pinchart wrote:
> > The Maivin board is an AI vision starter kit sold by Au-Zone
> > Technologies, developed in collaboration with Toradex and Vision
> > Components. It is based on a Toradex Verdin i.MX8MP SoM.
> > 
> > Add a corresponding compatible string.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index 0027201e19f8..d892c4f9fda3 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -1064,6 +1064,13 @@ properties:
> >                - toradex,verdin-imx8mp-wifi  # Verdin iMX8M Plus Wi-Fi / BT Modules
> >            - const: fsl,imx8mp
> >  
> > +      - description: Au-Zone Technologies i.MX8MP-based boards
> > +        items:
> > +          - const: au-zone,maivin-starter-kit        # Au-Zone Maivin AI Vision Starter Kit
> > +          - const: toradex,verdin-imx8mp-nonwifi     # Verdin iMX8M Plus Module without Wi-Fi / BT
> > +          - const: toradex,verdin-imx8mp             # Verdin iMX8M Plus Module
> 
> I think this should be part of existing "Toradex Boards with Verdin
> iMX8M Plus Modules)", just renamed to "boards using Toradex Verdin ...".

Is this what you have in mind ?

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index d892c4f9fda3..df5a04ab83a0 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1106,9 +1106,10 @@ properties:
           - const: polyhex,imx8mp-debix-som-a       # Polyhex Debix SOM A
           - const: fsl,imx8mp

-      - description: Toradex Boards with Verdin iMX8M Plus Modules
+      - description: Boards using Toradex Verdin iMX8M Plus Modules
         items:
           - enum:
+              - au-zone,maivin-starter-kit           # Au-Zone Maivin AI Vision Starter Kit
               - toradex,verdin-imx8mp-nonwifi-dahlia # Verdin iMX8M Plus Module on Dahlia
               - toradex,verdin-imx8mp-nonwifi-dev    # Verdin iMX8M Plus Module on Verdin Development Board
               - toradex,verdin-imx8mp-nonwifi-mallow # Verdin iMX8M Plus Module on Mallow

-- 
Regards,

Laurent Pinchart

