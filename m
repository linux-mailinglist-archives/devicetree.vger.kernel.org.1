Return-Path: <devicetree+bounces-21217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2444A802D5E
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:38:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B91C5B2090F
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 08:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 843D653AA;
	Mon,  4 Dec 2023 08:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="pHwWJBl2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8009585
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 00:38:38 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 630AC6049B;
	Mon,  4 Dec 2023 08:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701679118;
	bh=IkM9amobUQLS2B0D7QdT5IQB8+/1mMy+f5Kyb8/2lHo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pHwWJBl26dGE15n0dk9i/LdRHxg+Ck9g9wUABD5/nHSN3ugSfYPV+j/FCMU3n85HK
	 +k9gnW4CfRivapDu86VOAIrqSPc/yO3XQ+5TH7jGDo+cVaeOqPG11wf0+1P8/VWhBL
	 RY9LQWZdZnPwwqa4ivlz3SBxR72ZJykFepp34rgR4rwQQvz2+/bWTyyey+hSm6SA8B
	 I/oaH/meoErUMdIXB0nt+X3kb5w92hUcOon/Ol1oD/AI+mqpoMyYQLJrOhfxNYCvaI
	 SQvNOU+UAlULBZmeArJueNgJyFgldfgiu1dCphaUFQ7NutVcHPeUCKXwBQaHQeiaQg
	 RoQ5sGQOxuRdA==
Date: Mon, 4 Dec 2023 10:38:25 +0200
From: Tony Lindgren <tony@atomide.com>
To: Nishanth Menon <nm@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	sukrut bellary <sukrut.bellary@gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am625-sk: Add support for WL1837
 module onboard
Message-ID: <20231204083825.GL5169@atomide.com>
References: <20231121122441.64385-1-tony@atomide.com>
 <20231123071015.is4sffvdkunko5ws@radar>
 <20231129083433.GT5169@atomide.com>
 <20231203140710.irc7mmwff2b5voak@observant>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231203140710.irc7mmwff2b5voak@observant>

* Nishanth Menon <nm@ti.com> [231203 14:07]:
> dts can remain common, the m2 is a dtso, we generate a dtbo and the
> original will be an additional dtb? I think this can work out without
> dts/dtsi duplication.

That sounds good to me, I'll take a look.

> arch/arm64/boot/dts/ti/Makefile has previous examples of the form.

OK

> I believe the issue was around the wlan firmware load itself, but i
> think the mmc-pwrseq will probably help resolve it.

Yes mmc-pwrseq makes sense.

Regards,

Tony

