Return-Path: <devicetree+bounces-21095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A0A802463
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 15:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B3091C2083F
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 14:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD9D1173C;
	Sun,  3 Dec 2023 14:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="X94JAORV"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88670F2
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 06:07:19 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B3E7AeS074480;
	Sun, 3 Dec 2023 08:07:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701612430;
	bh=FnhyoYPOhA/cIhDU1jhwIN0RpISFhUA/tAinCGoLxBY=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=X94JAORVRgIrZ3pj3q/qEkUE34SDIbK9bAGq8rWadh8OLnGi3PZqUaHosbC1zZEjo
	 u7b97jx0NH8p3Yxhg+Zd6ZnRQz+iCudar06gFz5iJLGWUwW4RV9zg8IiKnIyhd6oh4
	 Ru1Ke19s/901+FgUmMMjE1Zf6ph+NxEgkj91d1ic=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B3E7ABi068627
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 3 Dec 2023 08:07:10 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Sun, 3
 Dec 2023 08:07:10 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Sun, 3 Dec 2023 08:07:10 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B3E7An6117718;
	Sun, 3 Dec 2023 08:07:10 -0600
Date: Sun, 3 Dec 2023 08:07:10 -0600
From: Nishanth Menon <nm@ti.com>
To: Tony Lindgren <tony@atomide.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        sukrut bellary
	<sukrut.bellary@gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am625-sk: Add support for WL1837
 module onboard
Message-ID: <20231203140710.irc7mmwff2b5voak@observant>
References: <20231121122441.64385-1-tony@atomide.com>
 <20231123071015.is4sffvdkunko5ws@radar>
 <20231129083433.GT5169@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231129083433.GT5169@atomide.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 10:34-20231129, Tony Lindgren wrote:
> * Nishanth Menon <nm@ti.com> [231123 07:10]:
> > On 14:24-20231121, Tony Lindgren wrote:
> > > From: Vignesh Raghavendra <vigneshr@ti.com>
> > > 
> > > WL1837 WLAN card is present on the original AM625 SK board. It
> > > communicates with the SoC using 4 bit SDIO through the second instance of
> > > MMCSD.
> > > 
> > > Starting with SK-AM62B, there is a M.2 WLAN device connector instead of
> > 
> > We support AM62B-SK.
> 
> Is that with k3-am62-lp-sk.dts though? Wondering if they should have separate
> dts files for the M.2.

It has been the same dts. Separating the wlan out of the dts sounds
correct.

> 
> > > the integrated WL1837 WLAN. The M.2 connector should be handled separately
> > > in the k3-am62a.dtsi and k3-am62b.dtsi files as needed.
> > 
> > Should this rather be an overlay instead of integrated dts fixup? M2
> > connector allows for various options including the newer 33xx family[2].
> 
> Not sure if an overlay makes sense for an integrated device.. It sure makes
> sense for plug in boards though.

overlay works for both variant of devices (please see additional comment
below).

> 
> > It makes sense for the regulator etc to be on the main dts file, but I
> > am not convinced about it being integrated as part of the dts.
> 
> Yeah if AM62B-SK is supported with the same dts. My vote would be for
> separate dts files for the integrated variant to keep things simple :)

we can handle it via dtb itself

dts can remain common, the m2 is a dtso, we generate a dtbo and the
original will be an additional dtb? I think this can work out without
dts/dtsi duplication.

arch/arm64/boot/dts/ti/Makefile has previous examples of the form.

> 
> > Should we use mmc-pwrseq ?
> 
> Yes probably, I think there was some issue earlier with that but sounds like
> it's been solved already.
> 
> > Looks like we have run into an issue in BeaglePlay with wlan_en
> > being always on for loading firmware. so is there a need to keep the
> > wlan on while suspended?
> 
> If the wlan irq was on the first gpio bank, wake-up path would work for
> the wlan. But I think it's wired to a gpio bank with no wake-up capability,
> and the padconf wake related patches are still pending. So no need to keep
> the wlan enabled so far AFAIK.

I believe the issue was around the wlan firmware load itself, but i
think the mmc-pwrseq will probably help resolve it.
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

