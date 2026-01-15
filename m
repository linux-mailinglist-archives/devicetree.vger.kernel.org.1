Return-Path: <devicetree+bounces-255343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FC2D225F5
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 05:41:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8155A302BA4D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 04:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D90D5274FE3;
	Thu, 15 Jan 2026 04:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDCJMgAd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C322417D1;
	Thu, 15 Jan 2026 04:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768452072; cv=none; b=X1I9sm/5ML3oUIbvA7SI0AdAQ8ysa8O3vuMvbZfnq59LcPdsg9vfS3j/Pt/7B0tz60o3MQ9lsurThSvobwDzM3QpIwrjSeOs2pRBSgY2gIKU2wOjAD0u3KPVDdcujI7rzSMQlzQJeMDJdLIf445NP0iif0YemRzS7cNFY1wrLos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768452072; c=relaxed/simple;
	bh=UHjpx22YuJnHJqWtXfiObY3dVQjR1JqwODWSHMIZ4LY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=seS9ogNY3rIpx4i/1cZFokYtDtxV06AVq6vOt038v1mEFbkMf5TiKPTSk+R5yZBrB9+Cjv1Q3JmaxYDJkmt0RjI6OgBln3ztmtiLam7OqprTP47fo0AXjru2OA5eS+EZ6KIzXh8omizJANU0ww5wHfkJ4pOFtYrnh9CYhQVIEns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDCJMgAd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91134C116D0;
	Thu, 15 Jan 2026 04:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768452072;
	bh=UHjpx22YuJnHJqWtXfiObY3dVQjR1JqwODWSHMIZ4LY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DDCJMgAdEqBM+yeGhiaIkOF1MpOCbkjrUcoa8nswVmnxj7KyFV+wDhrIpdyo6nHyJ
	 eZ8EBPPsrpCmasWZ2LZKOM+qOFvd546Ye3WNggXzV13MM+9Ypy55oxK9oAe3UE4/QA
	 eN6cGRYrqLlCOmsU5mvsspdn5ABG4GjHoaemTIKRR8aCqrZT9qTpeGBTVXkPV9k8tP
	 dpNl/+/an9sji6wqrZP+4k4cb42KW+YSG/XQHgAmzVunbnOUSaRZ7LVsomvMiL5KDu
	 vgAUsdyAj+SozFdXEwGktwAheMEX3jRd2Zmy0Mhl15HMwXikp1W/52kRUSgni0mTuu
	 vixbBd9GbbgaA==
Date: Thu, 15 Jan 2026 10:11:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: convert to DT
 schema
Message-ID: <aWhv5IDnSqqCFoNE@vaman>
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
 <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com>
 <aWelQ7P1kjKrQMG9@vaman>
 <b86695e3-9d61-4e9b-aed2-d2585d8646b5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b86695e3-9d61-4e9b-aed2-d2585d8646b5@gmail.com>

On 14-01-26, 20:16, Charan Pedumuru wrote:
> 
> 
> On 14-01-2026 19:46, Vinod Koul wrote:
> > On 07-01-26, 16:11, Charan Pedumuru wrote:
> >> Convert TI PIPE3 PHY binding to DT schema.
> >> Changes during conversion:
> >> - Define a new pattern 'pciephy' to match nodes defined in DT.
> >> - Drop obsolete "id" property from the schema.
> >>
> >> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> >> ---
> >>  .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 127 +++++++++++++++++++++
> >>  1 file changed, 127 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> >> new file mode 100644
> >> index 000000000000..41b3828723ae
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> >> @@ -0,0 +1,127 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/phy/ti,phy-usb3.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: TI PIPE3 PHY Module
> >> +
> >> +maintainers:
> >> +  - Kishon Vijay Abraham I <kishon@ti.com>
> > 
> > That is not correct, please check the current people on TI for this.
> 
> I checked the driver author and MAINTAINERS, I couldn't find anyone.
> No one seems to have updated the MAINTAINER.

Please chekc in git log about recent contributions from TI people

-- 
~Vinod

