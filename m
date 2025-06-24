Return-Path: <devicetree+bounces-189154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E1018AE6ECE
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 20:44:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43EA217534D
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 18:44:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15DA82DFA37;
	Tue, 24 Jun 2025 18:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="faZ0PKke"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D180566A
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 18:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750790692; cv=none; b=oGm5NbqZmo49VUvQPbw8Qf2H0p/or5yrB1WF04UVl6/pOnGnsd7Qvv2EHpuOcUajAY6wONTuSZNenwTvU/kT1LucsHjQC+AwRI6ktBR/hjaCFq0Ge2gyDsHIhtSOHnKNrH5bwTuUWvVdk4NHJjmgS4FRaB4m37F+6kpeMjEikAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750790692; c=relaxed/simple;
	bh=QI1/c97Se4udVwFfa+moKEjOBW1p+MVT/68NbLaN4wg=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GuGHR9mWAVBf9xKsFuIOqvsXD5cXKoT28dDOxhug/tuhC7EV4DkvB3cw8qucA2+/ibVzReEoA5XyzAA+U8pu5ebtqxw4+u1YO8KQdaKiCW27k5g2SCnSJhBzewdfDObV2SEI1FjKa0Opcq5BeHu2OrxU0ax62Cu2d+QU00KaXms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=faZ0PKke; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelvem-sh02.itg.ti.com ([10.180.78.226])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTP id 55OIiht91631096;
	Tue, 24 Jun 2025 13:44:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1750790683;
	bh=EOilgMvwC9d4QnH9gG5iBR+nw29he4c68ErHqUs8XVI=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=faZ0PKkefHxzUMhN99WjbqCWG9+AM9QJm6A0oPzc9XD2mcRLMkEPRG7S01uzLHzri
	 sxGsCN0devc+Ss7XJuFlzM5Bhrom6/iPBwtpYoQN33qNu7wqO6hsjyvk9NOaLrxDs4
	 hLArnUjOCwmmB0MkgzkTIoCDF7LF1NHuNZ2r8luI=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by lelvem-sh02.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 55OIihZ31960493
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Tue, 24 Jun 2025 13:44:43 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Tue, 24
 Jun 2025 13:44:42 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Tue, 24 Jun 2025 13:44:42 -0500
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.227.245])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 55OIidis2253858;
	Tue, 24 Jun 2025 13:44:39 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Miquel Raynal
	<miquel.raynal@bootlin.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        Thomas Petazzoni
	<thomas.petazzoni@bootlin.com>,
        Steam Lin <stlin2@winbond.com>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2] arm64: dts: ti: k3-am62a7-sk: Describe the SPI NAND
Date: Wed, 25 Jun 2025 00:14:35 +0530
Message-ID: <175079060336.1874839.4487491018148640150.b4-ty@ti.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250613182356.1272642-1-miquel.raynal@bootlin.com>
References: <20250613182356.1272642-1-miquel.raynal@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Miquel Raynal,

On Fri, 13 Jun 2025 20:23:56 +0200, Miquel Raynal wrote:
> Describe the octal SPI NAND available on the low-power starter kit.
> 
> The pinctrl configuration comes from TI fork.
> 
> With the current mainline tree, we currently get the following
> performances:
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am62a7-sk: Describe the SPI NAND
      commit: 9c1185a99811a173e3c126d664982f6744f80997

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent up the chain during
the next merge window (or sooner if it is a relevant bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/ti/linux.git
--
Vignesh


