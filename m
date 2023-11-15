Return-Path: <devicetree+bounces-15809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0637EBE8C
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 09:25:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49FEB280E4A
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 08:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0F1E4691;
	Wed, 15 Nov 2023 08:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B7E4419
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:25:19 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8699F7;
	Wed, 15 Nov 2023 00:25:15 -0800 (PST)
Received: from i5e861935.versanet.de ([94.134.25.53] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r3BCi-0003VS-FZ; Wed, 15 Nov 2023 09:24:56 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>, Andy Yan <andy.yan@rock-chips.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com, s.hauer@pengutronix.de
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
Date: Wed, 15 Nov 2023 09:24:55 +0100
Message-ID: <4720010.k3LOHGUjKi@diego>
In-Reply-To: <b8605ecb-0244-4ff7-8338-759011dee1b3@rock-chips.com>
References:
 <20231114112534.1770731-1-andyshrk@163.com> <7034316.0VBMTVartN@diego>
 <b8605ecb-0244-4ff7-8338-759011dee1b3@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Mittwoch, 15. November 2023, 03:02:42 CET schrieb Andy Yan:
> Hi Heiko:
>=20
> On 11/15/23 07:34, Heiko St=FCbner wrote:
> > Hi Andy,
> >
> > Am Dienstag, 14. November 2023, 12:28:55 CET schrieb Andy Yan:
> >> From: Andy Yan <andy.yan@rock-chips.com>
> >>
> >> VOP2 on rk3588:
> >>
> >> Four video ports:
> >> VP0 Max 4096x2160
> >> VP1 Max 4096x2160
> >> VP2 Max 4096x2160
> >> VP3 Max 2048x1080
> >>
> >> 4 4K Cluster windows with AFBC/line RGB and AFBC-only YUV support
> >> 4 4K Esmart windows with line RGB/YUV support
> >>
> >> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> > not a review yet, but when testing and the display sets a mode,
> > I always get a bunch of
> >
> > 	rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq err a=
t vp0
> >
> > messages in the log (initial mode to console, starting glmark2 from con=
sole,
> > stopping glmark2 to the console).
> >
> > I'm not sure what is up with that, have you seen these messages as well
> > at some point?
>=20
> Yes, it will raise POST_BUF_EMPTY when set a mode,  it needs some fix=20
> like [0]:
>=20
>=20
> I still trying to find a appropriate way to do it with the upstream=20
> code, as it doesn't affect the
>=20
> real display function(I must admit that the POST_BUF_EMPTY irq is very=20
> annoying), so l let  it as
>=20
> it is in the current version.

okay, so this is a known thing. So no worries and I'm confident that
you'll figure out a way to do this :-)


> By the way, can you see the glmark2 rending on your HDMI monitor now?

Yes :-D . I do have glmark2 (both es2 and full-gl) running with Boris'
panthor patches [0] merged into my dev-kernel and mesa build
from one his branches [1] .

Heiko


[0] https://gitlab.freedesktop.org/bbrezillon/linux/-/tree/panthor-v3
[1] https://gitlab.freedesktop.org/bbrezillon/mesa/-/tree/v10+panthor-v3+32=
b+g310+egl15+afrc+afbc?ref_type=3Dheads



