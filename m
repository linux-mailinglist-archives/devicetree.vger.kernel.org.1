Return-Path: <devicetree+bounces-21537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F438040E0
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 22:14:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E7362B20AEB
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 21:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A002D364B3;
	Mon,  4 Dec 2023 21:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="K/VeEOHw"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 682CB101;
	Mon,  4 Dec 2023 13:14:11 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B4LE2CY106908;
	Mon, 4 Dec 2023 15:14:02 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701724442;
	bh=nPLqYnS7vBUdE8EzSBL/tDd/t5iTBqfoOqPZSis+MuI=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=K/VeEOHwnOnnnVpd1edTV07zTfwhKJ6Yse6l1FovlHAQ/WT6Un/YcbcOiQntOyP6f
	 dwNVaJ6Bw9k1vzt2Ly8NrcYKfvEBj+0VGlGO64LZt80qOOVYG1YSTfF+QGtFgdvYn6
	 glB6x+wOA5TAlIzRlAvcqL65lc8U/CQ6qqG+4b60=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B4LE2Xk053245
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Dec 2023 15:14:02 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 4
 Dec 2023 15:14:01 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 4 Dec 2023 15:14:01 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B4LE1Jq004599;
	Mon, 4 Dec 2023 15:14:01 -0600
From: Nishanth Menon <nm@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Bryan Brattlof <bb@ti.com>, Ronald Wahl
	<rwahl@gmx.de>
CC: Nishanth Menon <nm@ti.com>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Ronald
 Wahl <ronald.wahl@raritan.com>
Subject: Re: [PATCH RESEND] arm64: dts: ti: k3-am62-main: Add gpio-ranges properties
Date: Mon, 4 Dec 2023 15:13:59 -0600
Message-ID: <170172443707.2631414.6661290587601995031.b4-ty@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231127112657.2692103-1-rwahl@gmx.de>
References: <20231127112657.2692103-1-rwahl@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Ronald Wahl,

On Mon, 27 Nov 2023 12:26:57 +0100, Ronald Wahl wrote:
> On the AM62 platform we have no single 1:1 relation regarding index of
> gpio and pin controller. Actually there are some linear ranges with
> small holes inbetween. These ranges can be represented with the
> gpio-ranges device tree property. They have been extracted manually
> from the AM62x datasheet (Table 6-1. Pin Attributes).
> 
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am62-main: Add gpio-ranges properties
      commit: ba78573abba7eb20190b2bb55e5cb5b55a8854fc

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
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D


