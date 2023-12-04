Return-Path: <devicetree+bounces-21532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 349818040D4
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 22:12:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65CD8B207E7
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 21:12:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 466C335F1E;
	Mon,  4 Dec 2023 21:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="dwG2p3HD"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11BEFA9;
	Mon,  4 Dec 2023 13:12:44 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B4LCbPi082561;
	Mon, 4 Dec 2023 15:12:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701724357;
	bh=n88QlGMyUiZIPDsEGYAIi1jzStNOlfN63QMIZklw1Kk=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=dwG2p3HDmSN3Dx/OouNOpVfnfzKLyDKs1uvoCIXD1p9bNMXkImcpWj42IQTmYxI3C
	 +JzqeOtAlIyM6iqPEHq/UxBRbzJyH4Jfv+Zz2OFiIuqnsF5Jnegjqdcbh4r1oZgHVY
	 ITRHi5tlWRctbfLVdWdcqyNIyOHk7CkAqcwgob+M=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B4LCb10021029
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Dec 2023 15:12:37 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 4
 Dec 2023 15:12:37 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 4 Dec 2023 15:12:37 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B4LCa2w106762;
	Mon, 4 Dec 2023 15:12:36 -0600
From: Nishanth Menon <nm@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Aradhya Bhatia <a-bhatia1@ti.com>
CC: Nishanth Menon <nm@ti.com>, Devicetree List <devicetree@vger.kernel.org>,
        Linux Kernel List <linux-kernel@vger.kernel.org>,
        Linux ARM Kernel List
	<linux-arm-kernel@lists.infradead.org>,
        Devarsh Thakkar <devarsht@ti.com>, Jai Luthra <j-luthra@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Add interrupt support for IO Expander
Date: Mon, 4 Dec 2023 15:12:35 -0600
Message-ID: <170172434163.2630706.1317896620817721868.b4-ty@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231108191652.1118155-1-a-bhatia1@ti.com>
References: <20231108191652.1118155-1-a-bhatia1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Aradhya Bhatia,

On Thu, 09 Nov 2023 00:46:52 +0530, Aradhya Bhatia wrote:
> The Hot Plug Detect (HPD) signal for the HDMI display travels from the
> on-board HDMI connector, through the IO Expander 1, and finally to the
> main_gpio1 line #23, of the SoC.
> 
> Add interrupt information for the IO Expander 1 (exp1).
> Also add pinmux info of main gpio 1, line #23.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am62a7-sk: Add interrupt support for IO Expander
      commit: e57ba268254bda25a3ddca8b7971d6ad8277e2d8

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


