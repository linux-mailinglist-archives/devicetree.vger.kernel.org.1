Return-Path: <devicetree+bounces-19865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4F67FD0F9
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 09:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E7301C20BCE
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 08:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 822076D38;
	Wed, 29 Nov 2023 08:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="qKyqMBGA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A054CC1
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 00:34:47 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id C0AEA60A56;
	Wed, 29 Nov 2023 08:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701246886;
	bh=I/lDSuEF8RAPqoQBqt9LY0+dX2L9iBX+fDTbX+I1oV8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qKyqMBGAutt/Tp/O6+AxQDpOM2Ap/2EcglNbIaDaY5yWTqRtqcoW/YP2ELeyWgOJ6
	 QZewlwXy9lqB54C7t3i7/HkHRVbVvgmPHk3l2szXfMe3rxVjTXNFY7l60mhhvpyAe2
	 4ShvGCUyEp6ggoOvDTYTOc4h3czinu259K/C0kjWWWMiNEDavK/f3zReQUIFrj1GHR
	 xLGUUF3ZY6D6NJAUd5KZ/YkB0djcKs8goXpI8PIKKnLB8V3m4FZucarQ0t+MT74ata
	 2qDNksOzHOK/KT9SSv4BcjMB7utJ47QYhWTXkKZfnzzcAXzCbEB0FoSLYsDZeMqD+K
	 qER9N6MH5kRgg==
Date: Wed, 29 Nov 2023 10:34:33 +0200
From: Tony Lindgren <tony@atomide.com>
To: Nishanth Menon <nm@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	sukrut bellary <sukrut.bellary@gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am625-sk: Add support for WL1837
 module onboard
Message-ID: <20231129083433.GT5169@atomide.com>
References: <20231121122441.64385-1-tony@atomide.com>
 <20231123071015.is4sffvdkunko5ws@radar>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231123071015.is4sffvdkunko5ws@radar>

* Nishanth Menon <nm@ti.com> [231123 07:10]:
> On 14:24-20231121, Tony Lindgren wrote:
> > From: Vignesh Raghavendra <vigneshr@ti.com>
> > 
> > WL1837 WLAN card is present on the original AM625 SK board. It
> > communicates with the SoC using 4 bit SDIO through the second instance of
> > MMCSD.
> > 
> > Starting with SK-AM62B, there is a M.2 WLAN device connector instead of
> 
> We support AM62B-SK.

Is that with k3-am62-lp-sk.dts though? Wondering if they should have separate
dts files for the M.2.

> > the integrated WL1837 WLAN. The M.2 connector should be handled separately
> > in the k3-am62a.dtsi and k3-am62b.dtsi files as needed.
> 
> Should this rather be an overlay instead of integrated dts fixup? M2
> connector allows for various options including the newer 33xx family[2].

Not sure if an overlay makes sense for an integrated device.. It sure makes
sense for plug in boards though.

> It makes sense for the regulator etc to be on the main dts file, but I
> am not convinced about it being integrated as part of the dts.

Yeah if AM62B-SK is supported with the same dts. My vote would be for
separate dts files for the integrated variant to keep things simple :)

> Should we use mmc-pwrseq ?

Yes probably, I think there was some issue earlier with that but sounds like
it's been solved already.

> Looks like we have run into an issue in BeaglePlay with wlan_en
> being always on for loading firmware. so is there a need to keep the
> wlan on while suspended?

If the wlan irq was on the first gpio bank, wake-up path would work for
the wlan. But I think it's wired to a gpio bank with no wake-up capability,
and the padconf wake related patches are still pending. So no need to keep
the wlan enabled so far AFAIK.

Regards,

Tony

> [1] https://sukrutb.github.io/s2d_TI_am625-BeaglePlay/ (see towards the
> end)
> [2] https://www.ti.com/tool/M2-CC3301

