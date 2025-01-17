Return-Path: <devicetree+bounces-139380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF8AA157FD
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 20:13:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF6EC188C549
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 19:13:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D38AC1A83E4;
	Fri, 17 Jan 2025 19:13:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="CGp94e1c"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE99819F495;
	Fri, 17 Jan 2025 19:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737141211; cv=none; b=ekOA6UWM1qgZktiiND2oIss/nZ71g76FFuALrl7BtENxq1QI3odE7GefoT1Ee3YcwqtgI1tEfnrzKNRdTxLf981cWbd3ksm1wRRo40ltMxDz7mQURdbg47T4jRKcS4e/cSyNFBj/kOj4SlUDdXPMHv4Pr8m3QRbPc6RNPxmMRLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737141211; c=relaxed/simple;
	bh=IVx04P16a8VBM7frrOrJEoiyj3hWwd1YvsLhDdRoNgQ=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Oy4Pb+8Nr1mFShALbtdef+ng5NcJQTM63U0868unmOjiwZT0pcZ8jhLgN3U+dlzotxGvlz4jz4HF2cUZmxaSJ4uuIzfPSJN77cES+MlSHgTWWuqz5HThqsFYBTEh9ERVqbtuY0U9XGBfFPOy752JqrmmHqnoWLnEdtOPxlHORp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=CGp94e1c; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50HJDKJ7384543
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 17 Jan 2025 13:13:21 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1737141201;
	bh=yEpWTe61+74cG3pFHph2f6+09AGJuOKbyS7idiq4FNc=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=CGp94e1cs3cgvhf6lwgHy7XvzJOmk/cpzZL1khkihQgnCKfdEQwTIqNtlu/u6lFO6
	 Q/WBfmixX0uj/5uYZt/7s9nborg9ENoNDbb3W175UmIhfENLOltKmNkri9ZS9RILSb
	 4hech46b6vf0RA0LU34xddoYFQQ5u0aEkOD4I12A=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50HJDK57074495
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Jan 2025 13:13:20 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Jan 2025 13:13:20 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Jan 2025 13:13:20 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50HJDK3H036702;
	Fri, 17 Jan 2025 13:13:20 -0600
Date: Fri, 17 Jan 2025 13:13:20 -0600
From: Nishanth Menon <nm@ti.com>
To: Judith Mendez <jm@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Bryan Brattlof
	<bb@ti.com>
Subject: Re: [PATCH 0/3] Misc MMC updates
Message-ID: <20250117191320.dr6ls5iwryk7752v@crushed>
References: <20241014194722.358444-1-jm@ti.com>
 <e7c34c5f-b039-4ead-bb50-13a98efdb0c4@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e7c34c5f-b039-4ead-bb50-13a98efdb0c4@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On 09:11-20250117, Judith Mendez wrote:
> Hi all,
> 
> Is there any issue with these patches?
> 
> Thanks (:
> 
> ~ Judith
> 
> On 10/14/24 2:47 PM, Judith Mendez wrote:
> > In this patch series we remove/add MMC DT
> > properties:
> > 
> > - disable-wp
> > - non-removable
> > - ti,itap-del-sel-legacy
> > - ti,itap-del-sel-mmc-hs
> > 
> > for am62x, am62ax, am64x, and/or am65x family devices.
> > 
> > Patches 1/3 and 3/3 have only been built tested.
> > Patch 2/3 has been boot tested on am64x IDK board.
> > 
> > Judith Mendez (3):
> >    arm64: dts: ti: k3-am6*: Remove disable-wp for eMMC
> >    arm64: dts: ti: k3-am65-main: Add missing itapdly to sdhci0
> >    arm64: dts: ti: k3-am62*: Add non-removable flag for eMMC
> > 
> >   arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts | 2 +-
> >   arch/arm64/boot/dts/ti/k3-am62a7-sk.dts        | 1 -
> >   arch/arm64/boot/dts/ti/k3-am62p5-sk.dts        | 2 +-
> >   arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 2 +-
> >   arch/arm64/boot/dts/ti/k3-am642-evm.dts        | 1 -
> >   arch/arm64/boot/dts/ti/k3-am65-main.dtsi       | 2 ++
> >   arch/arm64/boot/dts/ti/k3-am654-base-board.dts | 1 -
> >   7 files changed, 5 insertions(+), 6 deletions(-)


Test logs will be helpful, also please rebase once 6.14-rc1 is
tagged and resubmit. looks like it fell through the cracks.

Will be good to get additional reviews on the patches.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

