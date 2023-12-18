Return-Path: <devicetree+bounces-26460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4B3816901
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 10:00:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 086921C2249D
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 09:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AE4810971;
	Mon, 18 Dec 2023 08:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="c6Xlo8Ew"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E176912B61
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 08:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702889962; x=1734425962;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vyUvi4eMLv19jinC5Hb7fDALiHRXT1ejWph8UfeE2SI=;
  b=c6Xlo8EwetFJfK2xpgIjqbSugzhCU4gk+DWG2mcesbDvvGLLqEERrxc6
   73s6lBq4ohxvFtXBGCfhxu0wYxf01OWmCnpKrTKPhjkUmRVKY35tilTTa
   64an4EjNX7o+d/RYdxIQPMC5+LPkb7K26fxjhNnYnFUSbAcE4GnICwwfz
   ZpVzlHqJzvScT+42CczKVp+cYYAouqYc8Xmwr2yeoR0Uv3W8nO45TcJIl
   w9cLGrd59rc1GOfIXHhUCmiak0LWhTW82otvQXH+3K+3FkMMSyaBZKy5h
   R0av8Jl1cLz2tqwr4sp3Q306q+ZUMwQT60Yc3F4A9ageTTYHy+upU/CSE
   g==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34555724"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 09:59:13 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 6106D280075;
	Mon, 18 Dec 2023 09:59:13 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-arm-kernel@lists.infradead.org
Cc: Fabio Estevam <festevam@gmail.com>, Adam Ford <aford173@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jonas Karlman <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>, Sandor Yu <sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, patchwork-lst@pengutronix.de, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Frieder Schrempf <frieder.schrempf@kontron.de>, Andrzej Hajda <andrzej.hajda@intel.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-kernel@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v3 2/2] drm/bridge: imx: add driver for HDMI TX Parallel Video Interface
Date: Mon, 18 Dec 2023 09:59:15 +0100
Message-ID: <12346986.O9o76ZdvQC@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20231218094849.4aa15a97@booty>
References: <20230920171009.3193296-1-l.stach@pengutronix.de> <20231218023655.GG5290@pendragon.ideasonboard.com> <20231218094849.4aa15a97@booty>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi everybody,

Am Montag, 18. Dezember 2023, 09:48:49 CET schrieb Luca Ceresoli:
> Hi,
>=20
> On Mon, 18 Dec 2023 04:36:55 +0200
>=20
> Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
> > On Fri, Dec 15, 2023 at 05:09:41PM -0300, Fabio Estevam wrote:
> > > On Fri, Dec 15, 2023 at 4:01=E2=80=AFPM Adam Ford <aford173@gmail.com=
> wrote:
> > > > Thanks for the list.  I was able to successfully build the stable 6=
=2E6
> > > > branch with those patches applied and I have the HDMI working.
> > > > Unfortunately, I get build errors on the linux-next, so it's going =
to
> > > > take me a little time to sort through all of this.
> > >=20
> > > If you need help to figure this problem out, please let me know.
> > >=20
> > > I haven't tried it against linux-next.
> > >=20
> > > > I am thinking that it would be better to consolidate all these
> > > > together into one series instead of piecemealing it.  However, there
> > > > are some items that can be submitted right away without significant=
ly
> > > > reworking them against linux-next.  Do people have a preference?
> > >=20
> > > I think it makes sense to re-submit the "easy ones" right away.
> >=20
> > Agreed. The more we can merge quickly, the easier it will become to
> > rebase and upstream the rest.
>=20
> I agree as well, "release early, release often". These patches are
> around since a long time and lots of people are using them already, and
> tracking all of them from different threads is time-consuming. I will
> happily test them early as soon as they are sent.

I lost track of the series well, but I do remember I had to adjust the=20
original series to get it running on linux-next.
Please keep me on CC so I can add my local changes if necessary.
I have a proof of concept for HDMI audio, which is based on the base HDMI=20
support. I can continue on that after merge, but I'm lacking an idea how to=
=20
add some kind of "bridge" into the audio pipeline.

Best regards
Alexander
=2D-=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
http://www.tq-group.com/



