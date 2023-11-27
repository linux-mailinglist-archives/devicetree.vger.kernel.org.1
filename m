Return-Path: <devicetree+bounces-19215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7513A7FA0CD
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:21:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6D891C20DF8
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E72842D7BE;
	Mon, 27 Nov 2023 13:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="lLy47fo9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D296AA
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 05:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1701091271; x=1732627271;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=3f3W/zCExRpERTrtvRVhd6LxhDLUKOt67dv+M4QmBRw=;
  b=lLy47fo9lpHIVy3EYY0NIlouCAeG0SwE30IRij0baGrW57V9ufNQCxGk
   QM7cTG911iWC5VjgyMIJ+p7kJGZEqCw0U69Q2IdFpbq6GvfesPXJjUQ6S
   91VO33M7bTshHJk9XYzdlSKAYzrBtYQywVjmqEtRG23jGISpQce0Mw3DZ
   IRUfEUWHDjIhnxwL/q1RUfZCk/33gxdNOKT87qunZKsXXWcKTiHDOjLYt
   FMLSAkhBAflO8PSfaRIJcmM2KoxHN0QeyKesyMHkCcYheA2XnAOsImthj
   bjoOd4rBD7zCswmggAU2uBliqjdKa7kDRUskO5xq5dKIF8yL9lQ8Kp7bl
   w==;
X-IronPort-AV: E=Sophos;i="6.04,230,1695679200"; 
   d="scan'208";a="34192151"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 27 Nov 2023 14:21:08 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 98ECC280075;
	Mon, 27 Nov 2023 14:21:08 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: tony@atomide.com, dri-devel@lists.freedesktop.org, Michael Walle <mwalle@kernel.org>
Cc: Michael Walle <mwalle@kernel.org>, krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, ivo.g.dimitrov.75@gmail.com, rfoss@kernel.org, jernej.skrabec@gmail.com, simhavcs@gmail.com, merlijn@wizzup.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, pavel@ucw.cz, mripard@kernel.org, robh+dt@kernel.org, philipp@uvos.xyz, neil.armstrong@linaro.org, sre@kernel.org, tzimmermann@suse.de
Subject: Re: [PATCH 1/6] dt-bindings: tc358775: Add support for tc358765
Date: Mon, 27 Nov 2023 14:21:08 +0100
Message-ID: <5735396.DvuYhMxLoT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20231127124430.2153227-1-mwalle@kernel.org>
References: <20231126163247.10131-1-tony@atomide.com> <20231127124430.2153227-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,

Am Montag, 27. November 2023, 13:44:30 CET schrieb Michael Walle:
> Hi,
>=20
> > The tc358765 is similar to tc358775 except for the stdby-gpios.
>=20
> Bad timing (for me). I'm about to send a bigger patch series for the
> tc358775 which fixes the (completely) broken initialialization. And also
> contains some of your fixes.
>=20
> That being said, I intend to make the standby gpio optional also for the
> tc358755, because it might just be hardwired on the board.
>=20
> But second, I'm really curious if this bridge is working for you correctly
> as it is at the moment. One particular thing I've noticed is that you must
> release the reset while both the clock and the data lanes are in LP11 mod=
e.
> Otherwise, the bridge won't work properly (i.e. horizontally shifted
> picture, or no picture at all).

Apparently this seems to be true for all Toshiba DSI bridges. The power on=
=20
sequence for TC9595 (TC358767) also requires LP-11 before releasing the res=
et=20
signal RESX. Additionally LP-11 is requires for using the DP AUX channel.
This also relates to the patch set from Dmitry [1].

Best regards,
Alexander

[1] https://lore.kernel.org/dri-devel/20231016165355.1327217-1-dmitry.barys=
hkov@linaro.org/

> What DSI host controller are you using?
>=20
> -michael


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



