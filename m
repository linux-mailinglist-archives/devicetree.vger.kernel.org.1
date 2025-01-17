Return-Path: <devicetree+bounces-139330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A68A15290
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 16:15:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BEA5316B750
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 15:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 442F8198E76;
	Fri, 17 Jan 2025 15:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="WUg4+z2/"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85381547E0;
	Fri, 17 Jan 2025 15:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737126732; cv=none; b=AtPXlJ2FtZ2csm4qzLCBrCYpSYJBGgz/rqkaS/64Ywrmi+VltcMSoOvwjYqNvvVEtQEzQsLYd5rpjseEYnRnFpUkM7eD25KuvTzZgMknteDoSOWN8imNHfYMqDHsBpGKKspyHbNXg0xa56TXVHGluL9gCql/k2FSaiUp9yoNx54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737126732; c=relaxed/simple;
	bh=B/q9Zyfet4d0rjC4kWSwq+PkLNV+8eTpYHQP07AwiP0=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=Etm1O5y1D0wQXMSbe3UGlVy6WIOBhHkk+hrcC/jppZeAl4Iq7lPaLJ3Nf5pJ2q+aSN8gr3x6lwCAkhQw9/uFcGbVJnEkxdeSVb1t0tLSBs3NBByJMhlEOwfGjGb7jf54vA4psybOtV3MTcTsftQceithhCelGDx6T22akM0y89Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=WUg4+z2/; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50HFBlFr215662
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 17 Jan 2025 09:11:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1737126707;
	bh=pEr1Xvs22RlddhDsHQA3msHd0/qV9WQzcPROpxvZXpg=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=WUg4+z2/nk/gpXgsskTFGneUyFN+wXG7BauEHiIJMiAuo6BLBF8F3F2sTJoiStvti
	 5+pVjC0DOzxPMYKUEXVB2h0xIDK3nUn33DcH2p0k+aWqUWbm6kE+ohKg/T0A6gW3Dh
	 KfKzJ9XY9OymR7DfJbEeGTE3dZsC5Qp3PakzpwA8=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50HFBlte024293
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Jan 2025 09:11:47 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Jan 2025 09:11:47 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Jan 2025 09:11:47 -0600
Received: from [128.247.81.105] (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50HFBlEC031669;
	Fri, 17 Jan 2025 09:11:47 -0600
Message-ID: <e7c34c5f-b039-4ead-bb50-13a98efdb0c4@ti.com>
Date: Fri, 17 Jan 2025 09:11:47 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Misc MMC updates
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
CC: Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Bryan Brattlof <bb@ti.com>
References: <20241014194722.358444-1-jm@ti.com>
Content-Language: en-US
From: Judith Mendez <jm@ti.com>
In-Reply-To: <20241014194722.358444-1-jm@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi all,

Is there any issue with these patches?

Thanks (:

~ Judith

On 10/14/24 2:47 PM, Judith Mendez wrote:
> In this patch series we remove/add MMC DT
> properties:
> 
> - disable-wp
> - non-removable
> - ti,itap-del-sel-legacy
> - ti,itap-del-sel-mmc-hs
> 
> for am62x, am62ax, am64x, and/or am65x family devices.
> 
> Patches 1/3 and 3/3 have only been built tested.
> Patch 2/3 has been boot tested on am64x IDK board.
> 
> Judith Mendez (3):
>    arm64: dts: ti: k3-am6*: Remove disable-wp for eMMC
>    arm64: dts: ti: k3-am65-main: Add missing itapdly to sdhci0
>    arm64: dts: ti: k3-am62*: Add non-removable flag for eMMC
> 
>   arch/arm64/boot/dts/ti/k3-am625-beagleplay.dts | 2 +-
>   arch/arm64/boot/dts/ti/k3-am62a7-sk.dts        | 1 -
>   arch/arm64/boot/dts/ti/k3-am62p5-sk.dts        | 2 +-
>   arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 2 +-
>   arch/arm64/boot/dts/ti/k3-am642-evm.dts        | 1 -
>   arch/arm64/boot/dts/ti/k3-am65-main.dtsi       | 2 ++
>   arch/arm64/boot/dts/ti/k3-am654-base-board.dts | 1 -
>   7 files changed, 5 insertions(+), 6 deletions(-)
> 
> 
> base-commit: 5b035d14a508efd065895607ae7a6f913b26fef8


