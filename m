Return-Path: <devicetree+bounces-21533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D115B8040D6
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 22:13:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D2011C20ADD
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 21:13:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AF82364A5;
	Mon,  4 Dec 2023 21:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="WVpWhvDA"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92993B6;
	Mon,  4 Dec 2023 13:12:58 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B4LCr4F100462;
	Mon, 4 Dec 2023 15:12:53 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701724373;
	bh=GCAlqRs92aifqS39Ep3zKENTJ3ftc7FHnWc5xULdwow=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=WVpWhvDAfLTjSEZMSodQ50gR7NyC1RJrsb3uCz2dEsc++iE+Rb+EIHLBoWwDl5hXq
	 SypNSZoTcBVZL7B8ObiBwGI6nivNVFz491tkHHTxDOdGiM2nXIQ8foZor4PGJyuLVv
	 0gLVSa/B+MXGtxCMIXYcwAKccCBUSB14BNHFwNpo=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B4LCriQ061258
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Dec 2023 15:12:53 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 4
 Dec 2023 15:12:53 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 4 Dec 2023 15:12:52 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B4LCqvE063147;
	Mon, 4 Dec 2023 15:12:52 -0600
From: Nishanth Menon <nm@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Andrew Davis <afd@ti.com>
CC: Nishanth Menon <nm@ti.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/5] arm64: dts: ti: k3-j7200: Add chipid node to wkup_conf bus
Date: Mon, 4 Dec 2023 15:12:51 -0600
Message-ID: <170172436341.2630814.4304040849762838946.b4-ty@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231117140910.8747-1-afd@ti.com>
References: <20231117140910.8747-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Andrew Davis,

On Fri, 17 Nov 2023 08:09:06 -0600, Andrew Davis wrote:
> Like in other K3 SoCs the chipid register is inside the wakeup
> configuration space. Move the chipid node under a new bus to
> better represent this topology and match other similar SoCs.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/5] arm64: dts: ti: k3-j7200: Add chipid node to wkup_conf bus
      commit: 82277ed7db29296a2907eab91934c26c405db604
[2/5] arm64: dts: ti: k3-j784s4: Add chipid node to wkup_conf bus
      commit: 3dc5bd24181af7eb90ad764c3b303f697ebf5e87
[3/5] arm64: dts: ti: k3-j721s2: Add chipid node to wkup_conf bus
      commit: 1026355c21ebe9f7af3bb0a9422bc572c9f4ac91
[4/5] arm64: dts: ti: k3-am65: Add chipid node to wkup_conf bus
      commit: 8121e93102b0e09ff1d9589659a823b2271acf62
[5/5] arm64: dts: ti: k3-j721e: Add chipid node to wkup_conf bus
      commit: 27e5b7330fe31d0aae196f26cf251254f2b923bb

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


