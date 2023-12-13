Return-Path: <devicetree+bounces-24791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6468113E1
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 14:58:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4EE061C209FC
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 13:58:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 048FA2E417;
	Wed, 13 Dec 2023 13:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="B9pRj2YT"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01FE71AA;
	Wed, 13 Dec 2023 05:58:39 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BDDwXul083864;
	Wed, 13 Dec 2023 07:58:33 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702475913;
	bh=ZPa0O7YiR9CkUahenUG0yZpWNB69T/p2oEzwqmF/fD0=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=B9pRj2YTUMI6k3LvUJjuEwSgAfjJda8UCK1MGrcsrAr4c79r9/+zlnlsTZpcrhU1K
	 1HjxArFTD7tdFNiXX5310ZnpZOMdP+SFGCQVFgYi1KGa+MPvwlhW2VuVOFt2jAL1jF
	 BEACEMsyfIiVAFjRdhMZECLlPHYn62onLNCWugLY=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BDDwXKA046298
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 13 Dec 2023 07:58:33 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 13
 Dec 2023 07:58:33 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 13 Dec 2023 07:58:33 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BDDwXvc042362;
	Wed, 13 Dec 2023 07:58:33 -0600
From: Nishanth Menon <nm@ti.com>
To: <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <afd@ti.com>, Siddharth Vadapalli <s-vadapalli@ti.com>
CC: Nishanth Menon <nm@ti.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <r-gunasekaran@ti.com>, <srk@ti.com>
Subject: Re: [PATCH v3 0/2] Add PCIe Endpoint overlays for J721E and J721S2
Date: Wed, 13 Dec 2023 07:58:31 -0600
Message-ID: <170247588949.2577332.11579176748260902766.b4-ty@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231211115535.1264353-1-s-vadapalli@ti.com>
References: <20231211115535.1264353-1-s-vadapalli@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Siddharth Vadapalli,

On Mon, 11 Dec 2023 17:25:33 +0530, Siddharth Vadapalli wrote:
> This series adds device-tree overlays for enabling PCIe in Endpoint mode
> of operation on J721E-EVM and J721S2-EVM.
> 
> NOTE: This series is based on linux-next tagged next-20231211.
> 
> v2:
> https://lore.kernel.org/r/20231115085204.3578616-1-s-vadapalli@ti.com/
> Changes since v2:
> - Rebased series on linux-next tagged next-20231211.
> - Collected Reviewed-by tag from:
>   Ravi Gunasekaran <r-gunasekaran@ti.com>
> - Updated Makefile based on Andrew's suggestion to build the DTBs
>   corresponding to the overlays only with an OF_ALL_DTBS build config
>   since the generated DTBs are not required except to ensure that the
>   overlays apply on the base DTB.
>   Reference:
>   https://lore.kernel.org/r/20231128-csi_dts-v3-9-0bb11cfa9d43@ti.com
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/2] arm64: dts: ti: k3-j721e-evm: Add overlay for PCIE0 Endpoint Mode
      commit: 3942697901eb5340dc51202352f035ae191c37f2
[2/2] arm64: dts: ti: k3-j721s2-evm: Add overlay for PCIE1 Endpoint Mode
      commit: 729cfcf8ac2447f175eb4b6a0604983618ba07d5

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


