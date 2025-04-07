Return-Path: <devicetree+bounces-163650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A37A7DB3E
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 12:30:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D60EF178592
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 10:30:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85DFD229B18;
	Mon,  7 Apr 2025 10:30:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF186227BAD
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 10:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744021832; cv=none; b=ipAGz9iBDax0BhGTFUCCLDqobHw33DBTbYst3sTaCpNrVzoIx86xftLG8iVdDkdO8iw0Hp9b9pfoLb24HCriBAFGzmAfaD7mR0IWNe7aYWgl+ybbzCqSYnYhKUOfHtDbWWo1PPBsXo1w4AQuyPdJpIEKzLj/aytL2z8MUAgvEoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744021832; c=relaxed/simple;
	bh=4MmmsNnJmBCtjihgTEtAM1RiophjAm0ItwyqsGtZZ14=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=tsej35YfRGcsBX1CzJsu7nbpAvzCyLf/dl4cf4x/AvZw3WPL+Eo/DNVt5RQzg7eNZE7heOn0vEx07HBpbVDUCXAsjhZj1zh/R6yoDO4bo8SUod3tTIZNkaUO96ZEtXaB9UhglHi8iVnaeAIvvaiKf2rVo2xUWg4ztBFyWClOTng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1u1jkB-0003Ep-7A; Mon, 07 Apr 2025 12:30:19 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1u1jkA-003k9z-2v;
	Mon, 07 Apr 2025 12:30:18 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1u1jkA-0008q2-2f;
	Mon, 07 Apr 2025 12:30:18 +0200
Message-ID: <7af15c80a6b0f99f0bd1a67252e0403804d39691.camel@pengutronix.de>
Subject: Re: [PATCH v1 0/2] TH1520 SoC: Add Reset Controller Support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Michal Wilczynski <m.wilczynski@samsung.com>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, drew@pdp7.com, guoren@kernel.org, 
	wefu@redhat.com, m.szyprowski@samsung.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 07 Apr 2025 12:30:18 +0200
In-Reply-To: <20250303152511.494405-1-m.wilczynski@samsung.com>
References: 
	<CGME20250303152520eucas1p250f2e6d8eaf1172d8813b04ceb88679c@eucas1p2.samsung.com>
	 <20250303152511.494405-1-m.wilczynski@samsung.com>
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

On Mo, 2025-03-03 at 16:25 +0100, Michal Wilczynski wrote:
> This patch series adds reset controller support for the T-Head TH1520 SoC=
,
> which is used in boards like the LicheePi 4A. While part of a broader eff=
ort to
> enable the Imagination BXM-4-64 GPU upstream, these patches focus on prov=
iding
> a dedicated reset controller driver and the corresponding Device Tree
> nodes/bindings.
>=20
> Bigger series cover letter:
> https://lore.kernel.org/all/20250219140239.1378758-1-m.wilczynski@samsung=
.com/
>=20
> Michal Wilczynski (2):
>   dt-bindings: reset: Add T-HEAD TH1520 SoC Reset Controller
>   reset: thead: Add TH1520 reset controller driver
>=20
>  .../bindings/reset/thead,th1520-reset.yaml    |  44 ++++++
>  MAINTAINERS                                   |   3 +
>  drivers/reset/Kconfig                         |  10 ++
>  drivers/reset/Makefile                        |   1 +
>  drivers/reset/reset-th1520.c                  | 135 ++++++++++++++++++
>  .../dt-bindings/reset/thead,th1520-reset.h    |  16 +++
>  6 files changed, 209 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/thead,th1520-=
reset.yaml
>  create mode 100644 drivers/reset/reset-th1520.c
>  create mode 100644 include/dt-bindings/reset/thead,th1520-reset.h

Applied to reset/next, thanks!

[1/2] dt-bindings: reset: Add T-HEAD TH1520 SoC Reset Controller
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3D30e7573babdc
[2/2] reset: thead: Add TH1520 reset controller driver
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3D4a65326311ab

regards
Philipp


