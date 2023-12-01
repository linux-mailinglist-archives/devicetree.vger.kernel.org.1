Return-Path: <devicetree+bounces-20635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D823B80063B
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:52:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B584B20D59
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 08:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C3021C2B6;
	Fri,  1 Dec 2023 08:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="w39ELqPU"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83C6A84;
	Fri,  1 Dec 2023 00:51:52 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B18phUd126451;
	Fri, 1 Dec 2023 02:51:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701420703;
	bh=9ui1d+7rj/ZHYz3ASmxCksLX8kM2w9ENRHHVaVCL4+c=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=w39ELqPUB81jTG9vLOo3Yuo7wAdCxJ5bmttriBzTVnrneARIozJGf7QEL6Wd+JLCb
	 rSvhwgfLEfpDf5p3Y6JlHN1E9z5+FPqmWUI2Uji8zsFKWpGcCAs+VZXB57IjAUkfvt
	 ylY6H3KXwvQvuuman+78ozkToEOzEIn9MW56ur3k=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B18phZL030228
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 1 Dec 2023 02:51:43 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 1
 Dec 2023 02:51:43 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 1 Dec 2023 02:51:43 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B18pgEo015363;
	Fri, 1 Dec 2023 02:51:42 -0600
From: Nishanth Menon <nm@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tomi
 Valkeinen <tomi.valkeinen@ideasonboard.com>
CC: Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Aradhya Bhatia
	<a-bhatia1@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am65-main: Fix DSS irq trigger type
Date: Fri, 1 Dec 2023 02:51:40 -0600
Message-ID: <170142068081.922136.12853419416211333002.b4-ty@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231106-am65-dss-clk-edge-v1-1-4a959fec0e1e@ideasonboard.com>
References: <20231106-am65-dss-clk-edge-v1-1-4a959fec0e1e@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Tomi Valkeinen,

On Mon, 06 Nov 2023 11:57:48 +0200, Tomi Valkeinen wrote:
> DSS irq trigger type is set to IRQ_TYPE_EDGE_RISING in the DT file, but
> the TRM says it is level triggered.
> 
> For some reason triggering on rising edge results in double the amount
> of expected interrupts, e.g. for normal page flipping test the number of
> interrupts per second is 2 * fps. It is as if the IRQ triggers on both
> edges. There are no other side effects to this issue than slightly
> increased CPU & power consumption due to the extra interrupt.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am65-main: Fix DSS irq trigger type
      commit: b57160859263c083c49482b0d083a586b1517f78

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


