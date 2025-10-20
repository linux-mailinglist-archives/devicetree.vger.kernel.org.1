Return-Path: <devicetree+bounces-228901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CC1BF1E6A
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 16:44:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D4F418A6669
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 14:44:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB0F921771B;
	Mon, 20 Oct 2025 14:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="MZzlvL56"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD40DDC5
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 14:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760971468; cv=none; b=h319FwFfSJ+/6WnLXcXlkG+iusT5bqRYyigeRgOkWslp68aF2Zga21E+FsgZgoNAwhBZad3xTHsKzw/zezZd68dp5xaf5yFBkgHZAf68XKgT5g0T3Q3PCv2fWkn2PYk/91smhT2T2cNU4tzWIDwJg7TNBOrycg/tigcB0f4zPtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760971468; c=relaxed/simple;
	bh=AT8kvrM/pmB47OHQy99Ebe3K0Er153ALtlnbPz3lC68=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XUkv8TzsLN2K2qmd2KH5wP6YFxZK1WixXqRqutiffvqu1skvMc6br3lal8HaAsGYv7h6FWJLj5aUVXFJrFnlGgrSZKGCoTtxJBwJIJaNuojP9TH0hc6OmC/3xTAz395aKQXFIvU5unKjYEG1ohJBA0jm6/srvrrPSOcvIZvT+40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=MZzlvL56; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=AT8kvrM/pmB47OHQy99Ebe3K0Er153ALtlnbPz3lC68=; b=MZzlvL561DhtDq2BnjgVNhw48X
	LdAaF8ZhQcfaQgm+NAamiJkMr1WoA4Bu+vWxwcgA8s87SSytjOE920W12HnSzH968gx/MuzEGhHbD
	cxjoHsx9T4BY87bsYn+dVVg21RLcSxSSZbHPwh/7s9VIQwrPjqWLzq1mshNxOI0TOHOscFvu+d8Sq
	F8u1vl5xdWcg4gPAi9uiykIAgMyOVqoUA+jxcMMYASFvKKrhHMPFL0BNMUBxYkBFH+mLSmYOfHq0q
	llao0jVA859vPzpB2Wgb3Sp+Zv9DYtQn369m9EtC0CggdZFfCJK2HoqdkAX5ODls1ZArzmC0j1iiq
	PKgScYYw==;
Received: from [212.111.240.218] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vAr7W-0002MH-Fu; Mon, 20 Oct 2025 16:44:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Alexey Charkov <alchark@gmail.com>, Algea Cao <algea.cao@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Cenk Uluisik <cenk.uluisik@googlemail.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>,
 Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>
Subject:
 Re: [PATCH v2 0/5] arm64: dts: rockchip: Add device tree for the Orange Pi
 CM5 Base board
Date: Mon, 20 Oct 2025 16:44:21 +0200
Message-ID: <2328202.iZASKD2KPV@phil>
In-Reply-To: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Laurent,

Am Montag, 6. Oktober 2025, 01:55:36 Mitteleurop=C3=A4ische Sommerzeit schr=
ieb Laurent Pinchart:
> Hello,
>=20
> This patch series adds a device tree for the Orange Pi CM5 Base board
> from Xunlong. This is a combination of a compute module and a carrier
> board, so the device tree is split in two files.
>=20
> The work is based on a combination of upstream device trees for other
> RK3588-based Orange Pi boards and the downstream device tree, all
> checked against the available schematics for the carrier board. The
> compute module schematics is unfortunately not available.
>=20
> The series starts with three patches that add a new tmds-enable-gpios
> property to the rk3588-dw-hdmi-qp DT binding (1/5) and update the driver
> accordingly (2/5 and 3/5). Those patches have been authored by Cristian
> Ciocaltea as part of a larger series, I have incorporated them here
> as-is.
>=20
> Patch 4/5 then add a new compatible for the board to arm/rockchip.yaml.
> The last patch (5/5) adds the device tree for the board.
>=20
> Patches 2/5 and 3/5 could be merged separately through the DRM tree,
> but patch 1/5 needs to be merged with the device tree in 5/5 to avoid
> introducing DT validation warnings. I'd appreciate advice from the DT
> maintainers regarding how to handle this, as I have been told before
> that DT bindings and DT sources can't be merged through the same tree.

I think we generally only care about binding warnings happening
in linux-next.

I.e. in most cases, the binding is merged with the driver and
the dts then into a separate tree - sort of ignoring the local
binding error, because everything will be fine once stuff comes
together in linux-next.


Speaking of bindings, does your board _need_ the frl-gpio to produce
any hdmi output? Like could we merge the board without the (optional)
gpio and then add it later, once the binding+driver have made it in?

Just me trying to grab the big chunks earlier in the cycle.


Thanks
Heiko



