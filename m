Return-Path: <devicetree+bounces-12280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C107D8A52
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 23:29:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B68A0B2100D
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FCC43D96C;
	Thu, 26 Oct 2023 21:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YigZCOfa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801C64426
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 21:29:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E515EC433C8;
	Thu, 26 Oct 2023 21:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698355787;
	bh=+YN2wOtRkIWdM84iVFF3QLRFT0RlayTMutqyrR645Ug=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=YigZCOfaYFjhOlTe0VXDV9sMkkTwtrgGZL7mV5vejHxUIMuz7sG3CWmWA1b05pFQM
	 ZAzBHz2izg0P8TKDSS2cZxc6b7orMYYCnbIHdnquWwKa0UmlkiKBXixkaS7V0B7QpC
	 7GhrTOMQekPtI3WMy8bTUSRfuPeVkqLmBoGfpBaeJ+qWR3S/6OKX7oEwbtAbv6fzie
	 cd8/hr5kQhkEep5DEZURwbDz6AoVCtpVjbYSSqNUow8ThN8PK+VkR5Vmh0KnhNx5ZC
	 dDIm0lna8pups1MNtMevU0uuhlDhvf7qn9S0pV3BSwCTX0ghs+v23tZHzXjOPlXqVG
	 1aP6DsTkSXvYQ==
Message-ID: <c7508360d19fd20d398a43b62fbc2d93.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ac6f04ef-97b1-3dd9-a086-772a10f0a66b@rock-chips.com>
References: <20231018070144.8512-1-zhangqing@rock-chips.com> <b0af9e04bafb07e8a73e8f242a4ff556.sboyd@kernel.org> <20231025194849.4esjw4w2trgalp55@mercury.elektranox.org> <dc96dc36c6df1d3bfa3006298e353f39.sboyd@kernel.org> <ac6f04ef-97b1-3dd9-a086-772a10f0a66b@rock-chips.com>
Subject: Re: [PATCH v4 0/4] rockchip: add GATE_LINK
From: Stephen Boyd <sboyd@kernel.org>
Cc: conor+dt@kernel.org, heiko@sntech.de, kever.yang@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, huangtao@rock-chips.com, andy.yan@rock-chips.com
To: Sebastian Reichel <sebastian.reichel@collabora.com>, zhangqing <zhangqing@rock-chips.com>
Date: Thu, 26 Oct 2023 14:29:44 -0700
User-Agent: alot/0.10

Quoting zhangqing (2023-10-25 19:25:43)
>=20
> =E5=9C=A8 2023/10/26 5:40, Stephen Boyd =E5=86=99=E9=81=93:
> > Quoting Sebastian Reichel (2023-10-25 12:48:49)
> >> Hello Stephen,
> >>
> >> On Mon, Oct 23, 2023 at 06:47:17PM -0700, Stephen Boyd wrote:
> >>> Quoting Elaine Zhang (2023-10-18 00:01:40)
> >>>> Recent Rockchip SoCs have a new hardware block called Native Interfa=
ce
> >>>> Unit (NIU), which gates clocks to devices behind them. These effecti=
vely
> >>>> need two parent clocks.
> >>>> Use GATE_LINK to handle this.
> >>> Why can't pm clks be used here? The qcom clk driver has been doing th=
at
> >>> for some time now.
> >>>
> >>>   $ git grep pm_clk_add -- drivers/clk/qcom/
> >> Maybe I'm mistaken, but as far as I can tell this is adding the
> >> dependency on controller level and only works because Qualcomm
> >> has multiple separate clock controllers. In the Rockchip design
> >> there is only one platform device.
> >>
> >> Note, that the original downstream code from Rockchip actually used
> >> pm_clk infrastructure by moving these clocks to separate platform
> >> devices. I changed this when upstreaming the code, since that leaks
> >> into DT and from DT point of view there should be only one clock
> >> controller.
> >>
> > Why can't the rockchip driver bind to a single device node and make
> > sub-devices for each clk domain and register clks for those? Maybe it
> > can use the auxiliary driver infrastructure to do that?
>=20
> Option 1:
>=20
> Use the current patch to adapt the GATE_LINK type upstream.
>=20
> The real function of GATE_LINK is implemented=E3=80=82
>=20
> Just to improve and adapt the existing features on upstream.
>=20
>=20
> Option 2:
>=20
> What we use on our internal branches are:

Does this require DT changes? If so, it's a non-starter. Why can't
auxiliary devices be used?

