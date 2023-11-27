Return-Path: <devicetree+bounces-19208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA3A7FA057
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:08:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E1E24B20E8E
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D03FE2C86C;
	Mon, 27 Nov 2023 13:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="cFvblgh1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC831C1
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 05:08:37 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id B09F1604AC;
	Mon, 27 Nov 2023 13:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701090517;
	bh=cgT3yGEsBF6QOKQZf/lmHN1DxtY/WoY3R7KwVz7L6Cc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cFvblgh1AjwkswjQyhQqYHOCXtRVsYR6TKEZW1dcSX8lQZ3F4h1W7+9+5EIpKbcb3
	 Uh2TEI2YD5yVkFY6SjZE0UcwzK+04yUYq3FFSuMo+vnRBOx/NmhddUNLZ5v8jGYBx2
	 5vnngIgzCK1veFjC1rc7qxPZBLZxac6xPgNkzATgr61LaYoPB3pnCi5dy9mC2IK0WO
	 0bJ8XHfDQJcgeOl7OpTWwuYH26sK3bSN5I25YbEtgNeqGXsEBiRSc0rBHTpQA/kn+1
	 hgqOiDKxZcM/jxWeiejkwM8w3o653t6/o1o8qdtbDDnNx6FGHJGZWKUzel+72eYJVR
	 KAeOLdQ6TxUpA==
Date: Mon, 27 Nov 2023 15:07:46 +0200
From: Tony Lindgren <tony@atomide.com>
To: Michael Walle <mwalle@kernel.org>,
	Andreas Kemnade <andreas@kemnade.info>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
	andrzej.hajda@intel.com, conor+dt@kernel.org, daniel@ffwll.ch,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	ivo.g.dimitrov.75@gmail.com, jernej.skrabec@gmail.com,
	jonas@kwiboo.se, krzysztof.kozlowski+dt@linaro.org,
	maarten.lankhorst@linux.intel.com, merlijn@wizzup.org,
	mripard@kernel.org, neil.armstrong@linaro.org, pavel@ucw.cz,
	philipp@uvos.xyz, rfoss@kernel.org, robh+dt@kernel.org,
	simhavcs@gmail.com, sre@kernel.org, tzimmermann@suse.de
Subject: Re: [PATCH 1/6] dt-bindings: tc358775: Add support for tc358765
Message-ID: <20231127130746.GD5166@atomide.com>
References: <20231126163247.10131-1-tony@atomide.com>
 <20231127124430.2153227-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127124430.2153227-1-mwalle@kernel.org>

* Michael Walle <mwalle@kernel.org> [231127 12:44]:
> Hi,
> 
> > The tc358765 is similar to tc358775 except for the stdby-gpios.
> 
> Bad timing (for me). I'm about to send a bigger patch series for the
> tc358775 which fixes the (completely) broken initialialization. And also
> contains some of your fixes.

OK cool, let's merge patches as needed then. Maybe ack the patches that
can already be merged, and put together some merged set for the rest of
the patches? Or let me know what you prefer, I'll be glad to test and
tweak as needed for tc358765.

> That being said, I intend to make the standby gpio optional also for the
> tc358755, because it might just be hardwired on the board.

OK that sounds good to me.

> But second, I'm really curious if this bridge is working for you correctly
> as it is at the moment. One particular thing I've noticed is that you must
> release the reset while both the clock and the data lanes are in LP11 mode.
> Otherwise, the bridge won't work properly (i.e. horizontally shifted
> picture, or no picture at all).

Yes things are working for me. But then again the bridge is initialized
by the bootloader, and then Android kernel, and then I kexec to the
mainline kernel. And this is with a tc358765 if that might make a
difference.

So I have not seen your reset issue. Andreas may be seeing it on another
tc bridge variant though, so adding Andreas to the loop also.

> What DSI host controller are you using?

This is an old motorola mz617 tablet with a tc358765 bridge, so omapdrm.
I do have one pending patch for omapdrm dsi to change the init order a
bit so tc358765 probes reliably. But seems that's a separate issue from
your reset issue, I'll post that to the lists too to discuss.

What's the dsi host you have? Do you also have some separate i2c eeprom
that's needed for initializing something or is that lcd panel specific?
No idea what the eeprom is really doing here..

Regards,

Tony

