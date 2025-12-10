Return-Path: <devicetree+bounces-245556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CACCB223D
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 08:06:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 904C0301E16B
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 07:05:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2C7B2D879F;
	Wed, 10 Dec 2025 07:05:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E49299AAB;
	Wed, 10 Dec 2025 07:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765350349; cv=none; b=Ba1vglqaDzp+ZcrDL9yVOEL+JcuqG7tytCa8hMiC+FCiqKkR3WUKDBBsYFJ8o8vxOQD5HHUXyN97RDZ00l8rJhqhE4jymryPn2TInRdm/yxtzjk4JCewLgZsTEi7LSwp5vzal0GhMcErMjoWPx+9WyIdi0/2ZGqXy6PKfj9Ljow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765350349; c=relaxed/simple;
	bh=YZLcoFMXLBcEYHMmjWWhjoSlxo9d9gn6ZRL7IPhVDn0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OCcsKC03r0he68TT7bm5KjVkkUXL1MLYKVwlhFiG3ixr7P79a90wVo/S+I6thDQiYnJPTPKrN04tNRYdj0ixlTAofQX9ZqcsTFIloOk/xggRJs9//7c72bZR5Rx/znVHokeS91fvVH2GGCl1y27bA0lO7UIdUMBjXF/eh1+EhEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 92077201642;
	Wed, 10 Dec 2025 08:05:46 +0100 (CET)
Received: from usswic1srsp001v.us-swic1.nxp.com (unknown [10.114.8.222])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 60BCC201631;
	Wed, 10 Dec 2025 08:05:46 +0100 (CET)
Received: from lsvm07u0000156.swis.us-west-2.aws.nxp.com (lsvm07u0000156.swis.us-west-2.aws.nxp.com [10.45.140.59])
	by usswic1srsp001v.us-swic1.nxp.com (Postfix) with ESMTP id 4AE51180030F;
	Tue,  9 Dec 2025 23:05:45 -0800 (PST)
Date: Tue, 9 Dec 2025 23:05:44 -0800
From: Lei Xu <lei.xu@nxp.com>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, justin.jiang@nxp.com,
	qijian.guo@nxp.com
Subject: Re: [PATCH 2/2] arm64: dts: freescale: imx95: Add support for i.MX95
 15x15 FRDM board
Message-ID: <aTkbyAHjrwzTsfO8@lsvm07u0000156.swis.us-west-2.aws.nxp.com>
References: <20251207-127-v1-0-5a2eeb69f150@nxp.com>
 <20251207-127-v1-2-5a2eeb69f150@nxp.com>
 <20251208065707.GA15128@francesco-nb>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251208065707.GA15128@francesco-nb>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Dec 08, 2025 at 07:57:07AM +0100, Francesco Dolcini wrote:
> Hello Lei,
> 
> On Sun, Dec 07, 2025 at 05:26:06AM -0800, Lei Xu wrote:
> > The i.MX95 15x15 FRDM board is a compact and cost-effective development
> > platform based on the i.MX95 applications processor.
> 
> ...
> 
> > diff --git a/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts b/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts
> > new file mode 100644
> > index 000000000000..61e815c858b8
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts
> 
> ...
> 
> > +
> > +/* Default settings in i.mx95.dtsi are for i.MX95 19x19 package.
> > + * Override here for the i.MX95 15x15 package.
> > + */
> > +&netc_bus0 {
> > +	msi-map = <0x0 &its 0x60 0x1>,	//ENETC0 PF
> > +		  <0x10 &its 0x61 0x1>, //ENETC0 VF0
> > +		  <0x20 &its 0x62 0x1>, //ENETC0 VF1
> > +		  <0x40 &its 0x63 0x1>, //ENETC1 PF
> > +		  <0x50 &its 0x65 0x1>, //ENETC1 VF0
> > +		  <0x60 &its 0x66 0x1>, //ENETC1 VF1
> > +		  <0x80 &its 0x64 0x1>, //ENETC2 PF
> > +		  <0xc0 &its 0x67 0x1>; //NETC Timer
> > +	iommu-map = <0x0 &smmu 0x20 0x1>,
> > +		    <0x10 &smmu 0x21 0x1>,
> > +		    <0x20 &smmu 0x22 0x1>,
> > +		    <0x40 &smmu 0x23 0x1>,
> > +		    <0x50 &smmu 0x25 0x1>,
> > +		    <0x60 &smmu 0x26 0x1>,
> > +		    <0x80 &smmu 0x24 0x1>,
> > +		    <0xc0 &smmu 0x27 0x1>;
> > +};
> 
> If the 19x19 and 15x15 i.MX95 requires something different you should
> have a different soc dtsi. Probably creating a new imx95-$something
> dtsi, that includes the existing imx95.dtsi and override this property.
> 
> This solution does not scale, please fix it.
> 
> Francesco
>

Hello, Francesco

The original comment is misleading because this configuration applies to the board rather than the SoC.
Therefore, update the comment as follows:
/*
 * Configure PCIe MSI and IOMMU mappings specific
 * to the i.MX95 15x15 FRDM board.
 */

Does this look acceptable to you? Thank you.

Lei

