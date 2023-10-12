Return-Path: <devicetree+bounces-7971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CD47C65DC
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:48:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BA382826FD
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 06:48:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E55C7DDA9;
	Thu, 12 Oct 2023 06:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="mMttUBWM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F20ADDA8
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 06:48:22 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AC2290;
	Wed, 11 Oct 2023 23:48:21 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39C6mEL0080383;
	Thu, 12 Oct 2023 01:48:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1697093294;
	bh=f/GKLbNYiwbaBZ6v2j+Uv0UUXj1gBI43Yx2GQqQ4JpU=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=mMttUBWMv297n5kOYagVfreuqZ+EaDbyBsO4lzZAs+DByaSmU4AzkO3EAsoXOIXop
	 UIPcFzsQaPzviL5KGrbAlu6iQi4EpgsUJ8m4qkHkKk5X4n0bkkpjn176Sgoo+q4FbB
	 +0hyEXkxowJG1Hc3zT2k9/Ux1EIKvxAnkQwBqldA=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39C6mEcn124887
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 12 Oct 2023 01:48:14 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 12
 Oct 2023 01:48:14 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 12 Oct 2023 01:48:14 -0500
Received: from uda0132425.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39C6mAX5018007;
	Thu, 12 Oct 2023 01:48:10 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Aradhya Bhatia <a-bhatia1@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>,
        Devicetree List
	<devicetree@vger.kernel.org>,
        Linux Kernel List
	<linux-kernel@vger.kernel.org>,
        Linux ARM Kernel List
	<linux-arm-kernel@lists.infradead.org>,
        Devarsh Thakkar <devarsht@ti.com>, Jai Luthra <j-luthra@ti.com>
Subject: Re: [PATCH v2] arm64: dts: ti: Fix HDMI Audio overlay in Makefile
Date: Thu, 12 Oct 2023 12:18:06 +0530
Message-ID: <169709313769.2957749.15010210583101957923.b4-ty@ti.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231003092259.28103-1-a-bhatia1@ti.com>
References: <20231003092259.28103-1-a-bhatia1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Aradhya Bhatia,

On Tue, 03 Oct 2023 14:52:59 +0530, Aradhya Bhatia wrote:
> Apply HDMI audio overlay to AM625 and AM62-LP SK-EVMs DT binaries,
> instead of leaving it in a floating state.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: Fix HDMI Audio overlay in Makefile
      commit: 69c570ebc3964534c19dc4438d3b96f55d489fc3

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


