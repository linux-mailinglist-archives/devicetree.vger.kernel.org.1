Return-Path: <devicetree+bounces-91127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 968EE947F67
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 18:34:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D9471F21238
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 16:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 968B215C149;
	Mon,  5 Aug 2024 16:34:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0166F131BDF
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 16:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722875650; cv=none; b=rv3wP48lwlDghKd/bTKW8r3vf/syWSNcT4NPSMgeyI5sAMYu5ImqIX3l9kA7AqjaDpB6MD8sSFvwNl12LU8r7Bfxo7eN+Sn8mIuKx8fzy1xy9oG+jlHuKT7Ziazk0NDgLjIYQKBGYXIF8+8hoEfoMBLA4GdjG2zFIGls3z0kBFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722875650; c=relaxed/simple;
	bh=XyTszS1PUqgYbzYSG771d1pZjAoEn6AsTIcfTzUKdQw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=E76QW5QnckB+26aAUeJISPOiDAno6kY6Njlm4lw61DeyXQg5/FApaeD+B8j/Hu0jvaLFIcOmw8Gkdzjcdu/tN3S35qXSeYSmbLmY9fbIxmUT1pyQosugh46IZ5YKhwwkzwVxnMSSMrX5Mtn5vS9lXkwTj2i7v99q3BestAwlRr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sb0ef-0003iO-Ao; Mon, 05 Aug 2024 18:33:53 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-rockchip@lists.infradead.org,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>
Subject:
 Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon, 05 Aug 2024 18:33:52 +0200
Message-ID: <3723411.CpGBqz00pN@diego>
In-Reply-To: <1805269.IgJLvJe6uz@bagend>
References:
 <20240304084612.711678-2-ukleinek@debian.org>
 <688bf5d2-153f-4be2-814f-245b8eeba911@kwiboo.se> <1805269.IgJLvJe6uz@bagend>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Montag, 4. M=E4rz 2024, 17:47:22 CEST schrieb Diederik de Haas:
> On Monday, 4 March 2024 16:46:59 CET Jonas Karlman wrote:
> > Sorry for not getting back to you sooner, but yes I would check with
> > phy-mode =3D "rgmii-id". There is also a possible issue with rk gmac
> > driver in both U-Boot and linux, it always set enable tx/rx delay bit.
> >=20
> > Please, try with following in U-Boot:
>=20
> No worries :)
> Will try your suggestions soon, but it's probably better to take that=20
> discussion somewhere else to not further clutter up this patch/thread.

did you get somewhere with your testing?

Just as a datapoint, I also had a lot of "fun" with the gmac0 on my qnap
ts433 today.

Cable connection was detected but dhcp did not get an IP address.

In the end I realized that the vccio4 supply was 1.8V but the
pmu-io-domains were not enabled, so the soc thought it got 3.3V

After enabling pmu-io-domains [0], I now get networking on that port.


Heiko


[0] https://lore.kernel.org/linux-rockchip/20240805162052.3345768-1-heiko@s=
ntech.de/T/#u




