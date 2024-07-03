Return-Path: <devicetree+bounces-82675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5ADA92554B
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 10:22:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1649283B39
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 08:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE5CA13AA2C;
	Wed,  3 Jul 2024 08:22:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552FC13A25B
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 08:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719994955; cv=none; b=Pop8+sMIK7WQA9l6nZ5rnridhvBaetpoTreKFO1mBkGXlnaTkxskm4lCcLRX5sYWZPUxVoaGZIw7KfiXQbemQ2+F5YBG7w4uj3L0I/brq+aDyEk+mAjeF0Qq1VCiB3EDJsu595U5TwxhM2oXmWHwoMAhsQy2gNhEDFUwfRjWj30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719994955; c=relaxed/simple;
	bh=4eAlsekMG6A1pCjBTJ46cEPVnl3bYRMDGf5PzxW86yc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=YAtNXAUoYHavuOjjOlaHXxg+CqzcFDSyKYXs+gkX3zsvm6ikXQXWf3Et9naTCJieBe19bMBUj6ULkM8edYLmjvZCxZ9K2Xv0VVDSrxaREya1TAi0D42aCh/NXAa6iVRkc14UcE/fgJSVbI9AnJAFno3Gdv8EsVCShrKzEful0a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sOvFl-0005sZ-Jz; Wed, 03 Jul 2024 10:22:13 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sOvFj-006o3e-V6; Wed, 03 Jul 2024 10:22:11 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sOvFj-0002nV-2x;
	Wed, 03 Jul 2024 10:22:11 +0200
Message-ID: <b3648e9e81d32e7f492765a5e5275be3bbf4415e.camel@pengutronix.de>
Subject: Re: [PATCH v5 0/4] Add USB VBUS regulator for RZ/G2L
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Biju Das <biju.das.jz@bp.renesas.com>, Liam Girdwood
 <lgirdwood@gmail.com>,  Mark Brown <broonie@kernel.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,  Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>,  Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Biju
 Das <biju.das.au@gmail.com>, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
Date: Wed, 03 Jul 2024 10:22:11 +0200
In-Reply-To: <20240702180032.207275-1-biju.das.jz@bp.renesas.com>
References: <20240702180032.207275-1-biju.das.jz@bp.renesas.com>
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

On Di, 2024-07-02 at 19:00 +0100, Biju Das wrote:
> As per RZ/G2L HW manual, VBUS enable can be controlled by the VBOUT bit o=
f
> the VBUS Control Register(VBENCTL) register in the USBPHY Control. But
> this IP is in the Reset block.
>=20
> Reset driver exposes this register as regmap and instantiate the USB VBUS
> regulator device. Consumers(phy device) can use regulator APIs to control
> VBUS as controlling is done in the atomic context.
>=20
> Looks like this patch series can be taken via reset tree, once Geeert
> provides Ack for board dtsi patch??

I can pull in

  https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git tag=
s/regulator-hw-enable-helper

and apply the whole series with Geert's ack on patch 4.

regards
Philipp


