Return-Path: <devicetree+bounces-19526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5B47FB41C
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 09:30:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7814B281F35
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 08:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 090D717731;
	Tue, 28 Nov 2023 08:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E7FB10A;
	Tue, 28 Nov 2023 00:30:44 -0800 (PST)
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7tUD-0002DK-Ck; Tue, 28 Nov 2023 09:30:29 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>, Andy Yan <andy.yan@rock-chips.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com, s.hauer@pengutronix.de
Subject:
 Re: [PATCH v2 04/12] drm/rockchip: vop2: clear afbc en and transform bit for
 cluster window at linear mode
Date: Tue, 28 Nov 2023 09:30:28 +0100
Message-ID: <15178289.EVyyLHbfrO@diego>
In-Reply-To: <ebe46d19-954d-4dbb-82ba-a443058e9f4e@rock-chips.com>
References:
 <20231122125316.3454268-1-andyshrk@163.com> <3927498.QCnGb9OGeP@diego>
 <ebe46d19-954d-4dbb-82ba-a443058e9f4e@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Dienstag, 28. November 2023, 09:03:46 CET schrieb Andy Yan:
> Hi Heiko:
>=20
> On 11/27/23 23:02, Heiko St=FCbner wrote:
> > Am Mittwoch, 22. November 2023, 13:54:25 CET schrieb Andy Yan:
> >> From: Andy Yan <andy.yan@rock-chips.com>
> >>
> >> The enable bit and transform offset of cluster windows should be
> >> cleared when it work at linear mode, or we may have a iommu fault
> >> issue.
> >>
> >> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> > I guess same here?
> >
> > Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
>=20
>=20
> I'm not sure if we need a Fixes tag here,  in fact this issue never happe=
ns on
>=20
> rk3566/8 , because the cluster windows of rk356x only support afbc format,
>=20
> they don't have a chance to switch between afbc and linear mode.
>=20
> Of course, the lack support of linear mode of rk356x cluster windows is a=
 thoughtless
>=20
> of IC design, if it really support both afbc and linear format, we indeed=
 need this fix.
>=20
> The situation is the same as patch 03/12.
>=20
> So I hope follow your advice, if it need a Fixes tag here.

ah ok, thanks for the explanation. Then I guess we don't need a fixes tag
when the rk3568 is not affected by this.

Same for the other patch. If you're re-sending you could add this informati=
on
to the commit message though. (existing support for rk3568 only supports
afbc cluster windows and is therefore not affected)


Thanks
Heiko



