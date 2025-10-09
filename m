Return-Path: <devicetree+bounces-224800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEBFBC8136
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 10:41:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 68B274E6D20
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 08:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4691C285052;
	Thu,  9 Oct 2025 08:41:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FE427A903
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 08:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759999270; cv=none; b=OCWmq9V/cVKr2LDx4qlzYQN6vN+FsXXrUzVpUe9itNq7XSyvESFk+lgCu/3I1YU6ibN5gDEdek0mtkzynyFJMcf/+cPn6FC7Q0Ys75GZ2s3v3kNY5jcb4Zl7mmH/41HJSRh6hkZMaEDyzNIfnbmZ6OXgTrDXEj1C7cpS2piKCTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759999270; c=relaxed/simple;
	bh=W7x+h72s6okMJy3IGI82ingmLsVQ/dT+JfTQPdne0SI=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R/+Sc1aqD5wu7Uts65Kq/Sn+v2RXEgYfsYuuO0Sr1J6+feIQL+ML5F1X6m9NValpRJnYaAGn34RoxegPnGEl03zA/fHAfOLNtw4hi07ZLrVtpEuBSaK12feZmVKJfqbgUIiq95IgtkFZ92uGkgAartO7IHsmHBbAHsGhiVBM/tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 5998eeRF076050
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 9 Oct 2025 16:40:40 +0800 (+08)
	(envelope-from cl634@andestech.com)
Received: from swlinux02 (10.0.15.183) by ATCPCS31.andestech.com (10.0.1.89)
 with Microsoft SMTP Server id 14.3.498.0; Thu, 9 Oct 2025 16:40:40 +0800
Date: Thu, 9 Oct 2025 16:40:40 +0800
From: CL Wang <cl634@andestech.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, <conor@kernel.org>
CC: <vkoul@kernel.org>, <dmaengine@vger.kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <tim609@andestech.com>, <cl634@andestech.com>
Subject: Re: [PATCH V1 1/2] dt-bindings: dmaengine: Add support for
 ATCDMAC300 DMA engine
Message-ID: <aOd1CMMZRGSqkSLH@swlinux02>
References: <20251002131659.973955-1-cl634@andestech.com>
 <20251002131659.973955-2-cl634@andestech.com>
 <20251002-absolute-spinning-f899e75b2c4a@spud>
 <aOUIfaZY7-eUYoOS@swlinux02>
 <734de17e-a712-4eb5-96fa-b7e75f86d880@kernel.org>
 <aOXW7HUMeOyABuUG@swlinux02>
 <dcd14886-f2cc-41ec-8bb5-9cb5ed50c452@kernel.org>
 <aOZokztqpHHX0JPq@swlinux02>
 <aabf395a-eef2-49b2-9938-b7bb8aa838c8@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aabf395a-eef2-49b2-9938-b7bb8aa838c8@kernel.org>
User-Agent: Mutt/2.2.12 (2023-09-09)
X-DKIM-Results: atcpcs31.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 5998eeRF076050

Hi Krzysztof and Conor,

Thanks for the feedback — both comments are very helpful.

After considering the binding guidelines and your points, I will update the
binding to use only the SoC-specific compatible string.

To clarify, the DMA controller used in the Qilai SoC is based on the ATCDMAC300
IP core. Following your suggestion, I plan to use only the SoC-specific
compatible string as shown below:

properties:
  compatible:
    const: andestech,qilai-dma

I can prepare a v2 patch if this SoC-specific compatible string looks fine to you.

Best regards,
CL

On Thu, Oct 09, 2025 at 08:48:00AM +0900, Krzysztof Kozlowski wrote:
> [EXTERNAL MAIL]
> 
> On 08/10/2025 22:35, CL Wang wrote:
> > Hi Krzysztof,
> >
> > Thanks for the clarification, and sorry for the earlier confusion.
> >
> > To elaborate on the rationale:
> > "andestech,atcdmac300" is the IP core name of the DMA controller, which serves
> > as a generic fallback compatible shared across multiple Andes SoCs.
> >
> > Primary compatible (SoC-specific):
> > andestech,qilai-dma refers to the DMA controller instance implemented on the
> > Qilai SoC, following the SoC-specific recommendation.
> >
> > Fallback compatible (IP-core specific):
> > andestech,atcdmac300 represents the reusable IP block used across different
> > Andes SoCs that share the same register map and programming model.
> >
> > Keeping andestech,atcdmac300 as a fallback helps avoid code duplication and
> > allows a single driver to support future SoCs using the same hardware IP.
> 
> No, it helps in nothing.
> 
> 
> >
> > This approach follows the DeviceTree binding guideline:
> >
> > “DO use a SoC-specific compatible for all SoC devices, followed by a fallback
> > if appropriate. SoC-specific compatibles are also preferred for the fallbacks.”
> 
> No, it does not. You just ignored completely last sentence.
> 
> 
> Best regards,
> Krzysztof

