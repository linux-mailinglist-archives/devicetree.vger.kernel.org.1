Return-Path: <devicetree+bounces-5483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC597B671B
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:03:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 59B3128166F
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:03:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D9CF20B3C;
	Tue,  3 Oct 2023 11:03:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B6D20B36
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 11:03:13 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AA9DAD;
	Tue,  3 Oct 2023 04:03:12 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 393B37bW047965;
	Tue, 3 Oct 2023 06:03:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696330987;
	bh=dVSOtarwSKuMqEl24CC2N5aB61RAvBmmSqr2vURC+CA=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=go3ngZ4I/Aw79meAzCj5nxcHttdGWyhOH7LnE6krMll7LKtAGlat2J6n8oU7DmBJi
	 JBC7P7P7IIqTt1IS7qZLvYSmKD1WNgEgI6zu4rd0mIzgs0dniioohzSQeSR/H8AXtP
	 cBk7e9qL9EbtAflaHxsQ1tLdooJ98IZGvZpKIVVs=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 393B37Ne001420
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 3 Oct 2023 06:03:07 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 3
 Oct 2023 06:03:06 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 3 Oct 2023 06:03:06 -0500
Received: from uda0132425.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 393B1Dvl129223;
	Tue, 3 Oct 2023 06:03:03 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: <nm@ti.com>, Ravi Gunasekaran <r-gunasekaran@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, <kristo@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <sinthu.raja@ti.com>
Subject: Re: [PATCH 0/3] AM68 SK: Add support for PCIe and USB
Date: Tue, 3 Oct 2023 16:30:48 +0530
Message-ID: <169633065057.2221719.8622080260354356937.b4-ty@ti.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230921100039.19897-1-r-gunasekaran@ti.com>
References: <20230921100039.19897-1-r-gunasekaran@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Ravi Gunasekaran,

On Thu, 21 Sep 2023 15:30:36 +0530, Ravi Gunasekaran wrote:
> This series adds support for PCIe and USB interfaces.
> 
> Sinthu Raja (3):
>   arm64: dts: ti: Add USB Type C swap defines for J721S2 SoC
>   arm64: dts: ti: k3-am68-sk: Add DT node for PCIe
>   arm64: dts: ti: k3-am68-sk: Add DT node for USB
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/3] arm64: dts: ti: Add USB Type C swap defines for J721S2 SoC
      commit: 97bc20997109590bb17f96f00dbde15cfda9a4b0
[2/3] arm64: dts: ti: k3-am68-sk: Add DT node for PCIe
      commit: 70beb4c1ab8613356ea3d6ae9f7e8a143e1474f0
[3/3] arm64: dts: ti: k3-am68-sk: Add DT node for USB
      commit: 562fc2b011e213b5a127cda523110f0698770606

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


