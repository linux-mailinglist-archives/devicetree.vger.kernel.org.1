Return-Path: <devicetree+bounces-7972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D44537C65E2
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:49:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E93D2826EC
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 06:49:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB551DDAE;
	Thu, 12 Oct 2023 06:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="unMNsEe+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7070BDDA7
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 06:49:08 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F2A8B8;
	Wed, 11 Oct 2023 23:49:06 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39C6mrkg120908;
	Thu, 12 Oct 2023 01:48:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1697093333;
	bh=2wfn00okckEnAQe34OjpighGIoLtsdqrAMnpGBO3Ozs=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=unMNsEe++yIsEFNDoMA/g+MqH4gfLHwkZFoRnQz8eu3CrmBkCBK1S/gdsCbeJ/Hf2
	 63agHXL8een1mF8XELvsxNAxYs9Hi/3yOZ921o6ooedg8dhn4/aayYZYfnl9SYsCtn
	 CCwIatQTBoFEZQ3SVCxsM5kzp04apnUuYjvoCEeQ=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39C6mrX0113243
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 12 Oct 2023 01:48:53 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 12
 Oct 2023 01:48:53 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 12 Oct 2023 01:48:53 -0500
Received: from uda0132425.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39C6mlUS104376;
	Thu, 12 Oct 2023 01:48:48 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Jai
 Luthra <j-luthra@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <a-bhatia1@ti.com>,
        Jayesh
 Choudhary <j-choudhary@ti.com>,
        Julien Panis <jpanis@baylibre.com>,
        Esteban
 Blanc <eblanc@baylibre.com>
Subject: Re: (subset) [PATCH v3 0/6] arm64: ti: Enable audio on AM62A
Date: Thu, 12 Oct 2023 12:18:45 +0530
Message-ID: <169709313768.2957749.9372706059129778665.b4-ty@ti.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231003-mcasp_am62a-v3-0-2b631ff319ca@ti.com>
References: <20231003-mcasp_am62a-v3-0-2b631ff319ca@ti.com>
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

Hi Jai Luthra,

On Tue, 03 Oct 2023 14:41:29 +0530, Jai Luthra wrote:
> This patch series adds support for audio via headphone jack on
> SK-AM62A-LP. The jack is wired to TLV320AIC3106 (codec), which is
> connected to McASP1 (serializer) on the SoC.
> 
> The TRRS 3.5mm jack can be used for simultaneous playback and recording.
> 
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/6] arm64: dts: ti: k3-am62a-main: Add nodes for McASP
      commit: 1d181c96ef3b6f9b29474fb18eb9f426bb6b16ac
[2/6] arm64: dts: ti: k3-am62a7-sk: Split vcc_3v3 regulators
      commit: 770480e7eb729d49f2a10530d628e9778c1b3bd8
[3/6] arm64: dts: ti: k3-am62a7-sk: Drop i2c-1 to 100Khz
      commit: 63e5aa69b821472a3203a29e17c025329c1b151f
[4/6] arm64: dts: ti: k3-am62a7-sk: Add support for TPS6593 PMIC
      commit: 3a8222080334fd0ffec9a6a563304f77571a1853
[5/6] arm64: dts: ti: k3-am62a7-sk: Enable audio on AM62A
      commit: 4a2c5dddf9e9049bfb3dde18657ee349131b0def

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


