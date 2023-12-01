Return-Path: <devicetree+bounces-20639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3AF80064D
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:54:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A1E12816B0
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 08:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A12991C680;
	Fri,  1 Dec 2023 08:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="tlVT2q6O"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 020C01735;
	Fri,  1 Dec 2023 00:54:11 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B18rvON109275;
	Fri, 1 Dec 2023 02:53:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701420837;
	bh=bQAKdQBO4j60zJgcuCEAI1mNejYUux2ae47ggYHnYwo=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=tlVT2q6OvDD4OHdyh1X3yeHBZ45UATUdwrk6bS3fn05ahkcAeqmN3UUJFBYDT/Mml
	 hu6tD9twDBV/nDtWmBVBl291Xz2FYOZ++2Lnaf/ippkOc7y6CK6QALYXJYzTIH0+5u
	 0NPBhgAdC3zR1tEbAkL8TbwaWDVrbzvjPicMGt8A=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B18rvT5117923
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 1 Dec 2023 02:53:57 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 1
 Dec 2023 02:53:56 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 1 Dec 2023 02:53:56 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B18rutZ107391;
	Fri, 1 Dec 2023 02:53:56 -0600
From: Nishanth Menon <nm@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Jan Kiszka <jan.kiszka@siemens.com>
CC: Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Bao Cheng Su
	<baocheng.su@siemens.com>,
        Benedikt Niedermayr
	<benedikt.niedermayr@siemens.com>
Subject: Re: [PATCH v4 0/5] arm64: dts: iot2050: DT fixes, cleanups and enhancements
Date: Fri, 1 Dec 2023 02:53:55 -0600
Message-ID: <170142082012.923433.9902299258818951121.b4-ty@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1699087938.git.jan.kiszka@siemens.com>
References: <cover.1699087938.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Jan Kiszka,

On Sat, 04 Nov 2023 09:52:14 +0100, Jan Kiszka wrote:
> This fixes the lost aliases for the IOT2050 series, fixes mini PCIe card
> hangs, drops an unused device node, brings runtime pinmuxing for the
> Arduino connector via debugfs. Finally, it enables PRU-based Ethernet on
> PG2/M.2 device variants. PG1 devices still need changes to the TI driver
> to enable them as well (work in progress).
> 
> Changes in v4:
>  - fix dtbs_check findings
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/5] arm64: dts: ti: iot2050: Re-add aliases
      commit: ad8edf4ff37ab157f6547da173aedc9f4e5c4015
[2/5] arm64: dts: ti: iot2050: Drop unused ecap0 PWM
      commit: 95fd0767ef961d906f0722b5848276e566a46a4c
[3/5] arm64: dts: ti: iot2050: Definitions for runtime pinmuxing
      commit: e6a53facc8ade138089a64adb4980a1622e7f75f
[4/5] arm64: dts: ti: iot2050: Refactor the m.2 and minipcie power pin
      commit: 6c183a881100144e990f23fbd0f3262e93e8191d
[5/5] arm64: dts: ti: iot2050: Add icssg-prueth nodes for PG2 devices
      commit: 73b4e471cd573e7597cfbd59b882a6cf6408791a

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


