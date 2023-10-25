Return-Path: <devicetree+bounces-12008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C51F07D76E9
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:40:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E77D281CF3
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59536341BF;
	Wed, 25 Oct 2023 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeJhxYPb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319A0848B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:40:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F36DC433C7;
	Wed, 25 Oct 2023 21:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698270032;
	bh=ObgKYH0fS2mj/mvGmpx0d95XPn9BwP7C8YrKDWzCovk=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=OeJhxYPboBK9ff7+ZjAslTD2fIqdeh0FrTxfSIPime7vzUJU/fooEUtZSFrjba7m1
	 2kV+6SB9OXWRiwWJId/Ufw8gFs7dSeo4T9a8IoB/FKWTv4f7r8V3Pf/q+ggoD6l7xG
	 /lDRH8qUW7a0/9ALY0UYkKK/mCqCrgO5wfYuETCef92QYbtd9pSjUWOYDUEAncfSrd
	 yraO/WFH1lJC1TYbeasVWZrfjTKy5bYbOHoc1NwRNwnRjgbftW9WB9iUwDX9/0ZEsh
	 4fb+bFJrq4WNZZmiD8meyc90OC1TPxTaxt355RZH+l7+sZnzGaNiVXkNR8ZpWViiPT
	 IFFTM3zuxWGlA==
Message-ID: <dc96dc36c6df1d3bfa3006298e353f39.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231025194849.4esjw4w2trgalp55@mercury.elektranox.org>
References: <20231018070144.8512-1-zhangqing@rock-chips.com> <b0af9e04bafb07e8a73e8f242a4ff556.sboyd@kernel.org> <20231025194849.4esjw4w2trgalp55@mercury.elektranox.org>
Subject: Re: [PATCH v4 0/4] rockchip: add GATE_LINK
From: Stephen Boyd <sboyd@kernel.org>
Cc: conor+dt@kernel.org, heiko@sntech.de, kever.yang@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, robh+dt@kernel.org, zhangqing@rock-chips.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, huangtao@rock-chips.com, andy.yan@rock-chips.com
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Wed, 25 Oct 2023 14:40:30 -0700
User-Agent: alot/0.10

Quoting Sebastian Reichel (2023-10-25 12:48:49)
> Hello Stephen,
>=20
> On Mon, Oct 23, 2023 at 06:47:17PM -0700, Stephen Boyd wrote:
> > Quoting Elaine Zhang (2023-10-18 00:01:40)
> > > Recent Rockchip SoCs have a new hardware block called Native Interface
> > > Unit (NIU), which gates clocks to devices behind them. These effectiv=
ely
> > > need two parent clocks.
> > > Use GATE_LINK to handle this.
> >=20
> > Why can't pm clks be used here? The qcom clk driver has been doing that
> > for some time now.=20
> >=20
> >  $ git grep pm_clk_add -- drivers/clk/qcom/
>=20
> Maybe I'm mistaken, but as far as I can tell this is adding the
> dependency on controller level and only works because Qualcomm
> has multiple separate clock controllers. In the Rockchip design
> there is only one platform device.
>=20
> Note, that the original downstream code from Rockchip actually used
> pm_clk infrastructure by moving these clocks to separate platform
> devices. I changed this when upstreaming the code, since that leaks
> into DT and from DT point of view there should be only one clock
> controller.
>=20

Why can't the rockchip driver bind to a single device node and make
sub-devices for each clk domain and register clks for those? Maybe it
can use the auxiliary driver infrastructure to do that?

