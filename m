Return-Path: <devicetree+bounces-224347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A82BC3309
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 05:14:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 805074E2608
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 03:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67FE929A300;
	Wed,  8 Oct 2025 03:13:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5049134BA44
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 03:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759893238; cv=none; b=FZ05djC3R/CApPwauAPwqYonhioR2DfyZ4JubNJMW91ZDiJ9RqN0f4vDOxouwqqV50JQErSIfK47/2IBnaEQqZl/ivsex8d9G1CoQDPmv+WI3BWQ0e+ThMOiL7ksjhZYw++1OAplDr76qSYGmt9axaMFHLKhVNyFgSJlCLZkUxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759893238; c=relaxed/simple;
	bh=d99t9cp8yN86q1UpKSem+Z3ivj9HMuilHwtcTXGMYkc=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cwo31g2/6d6X0z+bJfTxokrwSmIG61OI/YLO+wndjAhuwMRPEIavK8qhWho519tTsl6arhX8X1aZ/NzivRRpFIgU9ppAiLWVdIxSlO0PHj8v+6R28LcpDH4oRxvK8VKJr2o8jXpHkXVuzak9vTWDUYZD2bg0i2togNiyWq9g0YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 5983DnJu017651
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 8 Oct 2025 11:13:49 +0800 (+08)
	(envelope-from cl634@andestech.com)
Received: from swlinux02 (10.0.15.183) by ATCPCS31.andestech.com (10.0.1.89)
 with Microsoft SMTP Server id 14.3.498.0; Wed, 8 Oct 2025 11:13:48 +0800
Date: Wed, 8 Oct 2025 11:13:48 +0800
From: CL Wang <cl634@andestech.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Conor Dooley <conor@kernel.org>, <vkoul@kernel.org>,
        <dmaengine@vger.kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <tim609@andestech.com>,
        <cl634@andestech.com>
Subject: Re: [PATCH V1 1/2] dt-bindings: dmaengine: Add support for
 ATCDMAC300 DMA engine
Message-ID: <aOXW7HUMeOyABuUG@swlinux02>
References: <20251002131659.973955-1-cl634@andestech.com>
 <20251002131659.973955-2-cl634@andestech.com>
 <20251002-absolute-spinning-f899e75b2c4a@spud>
 <aOUIfaZY7-eUYoOS@swlinux02>
 <734de17e-a712-4eb5-96fa-b7e75f86d880@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <734de17e-a712-4eb5-96fa-b7e75f86d880@kernel.org>
User-Agent: Mutt/2.2.12 (2023-09-09)
X-DKIM-Results: atcpcs31.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 5983DnJu017651

Hi Krzysztof,

Thank you for pointing this out.

"ATCDMAC300" is the IP block name of the DMA controller used in Andes SoC.
According to your suggestion, I have updated the binding to use SoC-specific
compatibles with "andestech,atcdmac300" as a fallback, as shown below:

-  const: andestech,atcdmac300
+  items:
+    - enum:
+        - andestech,qilai-dma
+    - const: andestech,atcdmac300
...
   dma-controller@f0c00000 {
-      compatible = "andestech,atcdmac300";
+      compatible = "andestech,qilai-dma", "andestech,atcdmac300";


Does this look aligned with the recommended DeviceTree binding convention?

Thanks again for your detailed feedback.

Best regards,
CL


On Tue, Oct 07, 2025 at 11:27:12PM +0900, Krzysztof Kozlowski wrote:
> [EXTERNAL MAIL]
> 
> On 07/10/2025 21:33, CL Wang wrote:
> > Hi Conor,
> >
> > Thanks for your review.
> >
> > Yes, the DMA driver supports the Qilai platform. I have updated the DTS binding as shown below.
> > Could you please take a look and let me know if anything still needs to be adjusted?
> >
> >  properties:
> >    compatible:
> > -    const: andestech,atcdmac300
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - andestech,qilai-dma
> > +          - const: andestech,atcdmac300
> > +      - const: andestech,atcdmac300
> > ...
> >          dma-controller@f0c00000 {
> > -            compatible = "andestech,atcdmac300";
> > +            compatible = "andestech,qilai-dma", "andestech,atcdmac300";
> 
> What is "atcdmac300" then? Usually the recommendation is to go only with
> soc-based compatibles, not IP blocks. See also:
> 
> https://elixir.bootlin.com/linux/v6.17.1/source/Documentation/devicetree/bindings/writing-bindings.rst#L42
> 
> Best regards,
> Krzysztof

