Return-Path: <devicetree+bounces-204637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9248DB262DF
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 12:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97FB0165B78
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 10:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 533CE2EA15E;
	Thu, 14 Aug 2025 10:32:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF51F23A9BB
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 10:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755167565; cv=none; b=kAGZ7GwMllGViol3GDbDFDV8UnhD2f1k1Lff32IiiAWmrLbvpGAF+iRAnY7wH1Yi2qd58iZ3vtkhfxE36zi4Pf07B3mEfoq34L/0UesLcL7Z3gYSpLSnbPR8iU/tB/8kk3f2Yhh7d0Zg8rteSrhXZpedE8ombzQ0SyRsMj/hGq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755167565; c=relaxed/simple;
	bh=QimykCrwB6ZAsWvsWPV6V2st17u9CiEZrkUa85W44qE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=AWMon84OrD+htisBmHYLOGTgpJXfSSFlwKnxMCg5Tweiv6BmHYOISOsFp5x/WyagZ57VrYq5znBLd0vup4mOcNlqY/7nJkaJi5CVItdEycSiQiDOTzJbJXJhJQAyBuicj6nx7X8yl3P2X+/2ld6jA7tvf9BIxG+IV0gwlYVzqmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1umVGA-0007By-LC; Thu, 14 Aug 2025 12:32:38 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1umVGA-000Er8-1T;
	Thu, 14 Aug 2025 12:32:38 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1umVG5-000GML-16;
	Thu, 14 Aug 2025 12:32:33 +0200
Message-ID: <1c6b0262f0043e65592501d88221ec2a69e9d641.camel@pengutronix.de>
Subject: Re: [PATCH v5 2/2] reset: eswin: Add eic7700 reset driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: dongxuyang@eswincomputing.com, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com, 
	huangyifeng@eswincomputing.com, pinkesh.vaghela@einfochips.com
Date: Thu, 14 Aug 2025 12:32:33 +0200
In-Reply-To: <20250725093436.779-1-dongxuyang@eswincomputing.com>
References: <20250725093249.669-1-dongxuyang@eswincomputing.com>
	 <20250725093436.779-1-dongxuyang@eswincomputing.com>
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

On Fr, 2025-07-25 at 17:34 +0800, dongxuyang@eswincomputing.com wrote:
> From: Xuyang Dong <dongxuyang@eswincomputing.com>
>=20
> Add support for reset controller in eic7700 series chips.
> Provide functionality for asserting and deasserting resets
> on the chip.
>=20
> Signed-off-by: Yifeng Huang <huangyifeng@eswincomputing.com>
> Signed-off-by: Xuyang Dong <dongxuyang@eswincomputing.com>
> ---
>  drivers/reset/Kconfig         |  10 +
>  drivers/reset/Makefile        |   1 +
>  drivers/reset/reset-eic7700.c | 432 ++++++++++++++++++++++++++++++++++
>  3 files changed, 443 insertions(+)
>  create mode 100644 drivers/reset/reset-eic7700.c
>=20
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index d85be5899da6..82f829f4c9f0 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -66,6 +66,16 @@ config RESET_BRCMSTB_RESCAL
>  	  This enables the RESCAL reset controller for SATA, PCIe0, or PCIe1 on
>  	  BCM7216.
>=20
> +config RESET_EIC7700
> +	bool "Reset controller driver for ESWIN SoCs"
> +	depends on ARCH_ESWIN || COMPILE_TEST

Undeclared dependency on [1].

[1] https://lore.kernel.org/all/20250616112316.3833343-3-pinkesh.vaghela@ei=
nfochips.com/

regards
Philipp

