Return-Path: <devicetree+bounces-128052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D933A9E7518
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 17:04:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8087618878D0
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D712920D508;
	Fri,  6 Dec 2024 16:04:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8ADE20D4E5
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 16:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733501051; cv=none; b=cooc+OSwNRW4/mlVO2/616q0iLjl2ARz90BQchhoRzkG6rT1vqFAacK5aePE9gR1PQ00cka+vljhp6+70ZKz7YBsmY8a7IEGRbK4klNYbme7hDk8wTQSlpxbqXOJfcoIoD3MtN8O08n3ft615MaDMORxXG3rpAnxIOriHB5v/kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733501051; c=relaxed/simple;
	bh=jFa8lz7HpDNkCvte/qT/L5nUfXf9VL6uNXwtCXRfWHE=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=I8aB2XVFlM5wy9tBlEblOVzaP4/a5dr9KzN5VQytud8W3NZQ3VpJRQKpkr4SVYs3ctyftkHwq/EoxznUirUf/I7dJ1NQEk9eyNwKyTD0FTA/QF4HPkwnEwHJuH9dFvBtTCYalX82ju6s6RSmiTvDf+OFyre3JykC/tYf42Kiq0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tJaoE-0005lP-Ai; Fri, 06 Dec 2024 17:04:02 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tJaoB-0021SN-0o;
	Fri, 06 Dec 2024 17:04:00 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tJaoB-000Bg5-32;
	Fri, 06 Dec 2024 17:03:59 +0100
Message-ID: <036d3c0e721947002dc598aef2b65d48967ab52e.camel@pengutronix.de>
Subject: Re: [PATCH 0/2] Add support for A1 SoC in auxiliary reset driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jan Dakinevich <jan.dakinevich@salutedevices.com>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org, Jerome Brunet
 <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>
Date: Fri, 06 Dec 2024 17:03:59 +0100
In-Reply-To: <20241112230056.1406222-1-jan.dakinevich@salutedevices.com>
References: <20241112230056.1406222-1-jan.dakinevich@salutedevices.com>
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

On Mi, 2024-11-13 at 02:00 +0300, Jan Dakinevich wrote:
> This was a part of series [1]. Comparing to original series, reset functi=
onality
> on top of 'audio-vad' clock controller also is added.
>=20
> Links:
>   [1] https://lore.kernel.org/all/20240913121152.817575-1-jan.dakinevich@=
salutedevices.com/
>=20
> Jan Dakinevich (2):
>   dt-bindings: reset: add bindings for A1 SoC audio reset controller
>   reset: amlogic: add support for A1 SoC in auxiliary reset driver
[...]

Applied to reset/next, thanks!

[1/2] dt-bindings: reset: add bindings for A1 SoC audio reset
controller
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3D3465a696bd93
[2/2] reset: amlogic: add support for A1 SoC in auxiliary reset driver
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3D3d99f9231bed

regards
Philipp

