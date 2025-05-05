Return-Path: <devicetree+bounces-173697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CA0AA9489
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 15:29:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E2C17189B7C0
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 13:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2067B243954;
	Mon,  5 May 2025 13:29:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99400259C87
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 13:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746451765; cv=none; b=Pr5bCJVfuQIt7IEIObUeLmGLsFoCfchJnJ76AtgbrouRLO1Ti29M3NA9cn3uoIU7H7a4SIf0auzI9qzVpVUowl6wUlQBTKfQQL3xf655MFDh8EnojwRanV5MCYw5F+tVEeys/A83Ys2DQwh96ZA8E3rC3M1hLfUATl516hC/2Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746451765; c=relaxed/simple;
	bh=RM1YNgtWQNh30K9B+gpcOMJnVXiz9nQLfcXaJ7/YZDo=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=NXdSExRCBgyfJcsNBuHNxSsYnZW0Wi3WjX2FKGQsfEC15hH2Ok4k7/ZyJ5hXK2zyiXj8J5BBqXKT7QWcbORSIlhG539wlN8CYyUlSfOA1QD/VDOq84a+frXwsVORgTFtTW/196mCUN05EcEOAAdllIF0zqi2jiL5Slo75APz9zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uBvsh-0001hh-Ou; Mon, 05 May 2025 15:29:15 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uBvsg-001EmA-2s;
	Mon, 05 May 2025 15:29:14 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uBvsg-000KmT-2b;
	Mon, 05 May 2025 15:29:14 +0200
Message-ID: <cae83f59fb846b0a7b2365c996fe375a94f5f946.camel@pengutronix.de>
Subject: Re: [PATCH v5 0/3] Add USB2PHY Port Reset Control driver for
 Renesas RZ/V2H(P) SoC
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Prabhakar <prabhakar.csengg@gmail.com>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Magnus
 Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Lad Prabhakar
 <prabhakar.mahadev-lad.rj@bp.renesas.com>
Date: Mon, 05 May 2025 15:29:14 +0200
In-Reply-To: <20250415195131.281060-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: 
	<20250415195131.281060-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Di, 2025-04-15 at 20:51 +0100, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>=20
> Hi All,
>=20
> This patch series adds support for the USB2PHY Port Reset control driver
> for the Renesas RZ/V2H(P) SoC. The changes include documenting the USB2PH=
Y
> Port Reset control bindings and adding the driver.
>=20
> v4->v5
> - Added Reviewed-by tag from Biju Das for patch 2/3
> - Dropped NULL check for of_device_get_match_data() in probe()
> - Dropped dev_set_drvdata() in probe()
[...]

Applied to reset/next, thanks!

[1/3] dt-bindings: reset: Document RZ/V2H(P) USB2PHY reset
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3D261f3ff29a2b
[2/3] reset: Add USB2PHY port reset driver for Renesas RZ/V2H(P)
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3De3911d7f865b
[3/3] MAINTAINERS: Add entry for Renesas RZ/V2H(P) USB2PHY Port Reset drive=
r
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3D57dfdfbe1a03

regards
Philipp


