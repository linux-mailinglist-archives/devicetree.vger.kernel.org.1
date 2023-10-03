Return-Path: <devicetree+bounces-5485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A397B6720
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:03:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 97C5E281660
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6266A20B3C;
	Tue,  3 Oct 2023 11:03:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D50210E6
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 11:03:51 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5857FB0;
	Tue,  3 Oct 2023 04:03:49 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 393B3gaR059014;
	Tue, 3 Oct 2023 06:03:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696331022;
	bh=dPofiJ+IdtbsGt9VOmNF6gy5xD9Yz7NjPnSVk/RE86I=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=pIudeaWoFrurmUM0C7tl8BdA4knqL+ocSYMsokyUL2wAEtfCBhQvZUBRSWK9Bmy75
	 aCYjPc5M+hQXAP/uGl8aP31WGwFFCInQiS2RhvJHz0qzmreUJ1oylObARe5iB/hR7d
	 gY3omOQfERh6bgpawpdj+KGJqVxo393MfTTqWsSo=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 393B3g0C010710
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 3 Oct 2023 06:03:42 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 3
 Oct 2023 06:03:41 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 3 Oct 2023 06:03:41 -0500
Received: from uda0132425.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 393B1Dvn129223;
	Tue, 3 Oct 2023 06:03:38 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: <nm@ti.com>, <afd@ti.com>, <robh+dt@kernel.org>,
        Roger Quadros
	<rogerq@kernel.org>
CC: Vignesh Raghavendra <vigneshr@ti.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <srk@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/2] arm64: dts: ti: Add overlay for AM642-EVM NAND expansion card
Date: Tue, 3 Oct 2023 16:30:50 +0530
Message-ID: <169633065055.2221719.1027083613762487403.b4-ty@ti.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230923080046.5373-1-rogerq@kernel.org>
References: <20230923080046.5373-1-rogerq@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Roger Quadros,

On Sat, 23 Sep 2023 11:00:44 +0300, Roger Quadros wrote:
> This series adds device tree overlay for NAND expansion card for AM642-EVM.
> 
> cheers,
> -roger
> 
> Changelog:
> ---------
> v2:
> - Drop patch "arm64: dts: ti: Enable support for overlays for relevant boards"
> - Don't leave k3-am642-evm-nand.dtbo as an orphan. Make k3-am642-evm-nand.dtb
>   with the overlay applied on the base board.
> - Add patch "arm64: dts: ti: k3-am64: Add GPIO expander on I2C0"
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/2] arm64: dts: ti: am642-evm: Add overlay for NAND expansion card
      commit: 45a0c06571e1388f8cd3e0e0b1db9927db06cf2a
[2/2] arm64: dts: ti: k3-am64: Add GPIO expander on I2C0
      commit: 0ce486452bf216d502017b1db066a80b546d0f87

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


