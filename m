Return-Path: <devicetree+bounces-6141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D067B9EFA
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:17:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id BA1761C2033E
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 14:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6660A28E04;
	Thu,  5 Oct 2023 14:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="YT/XxjEK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9E728DD7
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 14:17:03 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEF1E826D1;
	Thu,  5 Oct 2023 07:16:59 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 395DHZAG123978;
	Thu, 5 Oct 2023 08:17:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696511855;
	bh=KD+7zlq75ALxwrYJZRVC4LR58yxzi4RfU5hU9XkaJsI=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=YT/XxjEKBvqXxNOGvNy1FBjSCwE4u4FJLpUpZ1Y66WgI0xK91X88ZHTYMnPpPCYnu
	 4zee9ETdzOFd7mm7iLXQ1gTAQaa4/rlAQK8wqCHk3uPI6CFIn/PpjTygcEqh9sf8Xs
	 33wZwUD2CAWyd7hiXDsGUTykr1BOXIyKRrC9mzek=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 395DHZUK008994
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 5 Oct 2023 08:17:35 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 5
 Oct 2023 08:17:35 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 5 Oct 2023 08:17:35 -0500
Received: from [10.249.136.52] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 395DHTaj118229;
	Thu, 5 Oct 2023 08:17:30 -0500
Message-ID: <3037051e-9665-4174-b545-5a91d146fb54@ti.com>
Date: Thu, 5 Oct 2023 18:47:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 0/5] Enable Display for J784S4 and AM69-SK platform
To: <nm@ti.com>, <vigneshr@ti.com>, <a-bhatia1@ti.com>
CC: <afd@ti.com>, <rogerq@kernel.org>, <s-vadapalli@ti.com>,
        <conor+dt@kernel.org>, <r-ravikumar@ti.com>, <sabiya.d@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20231005100027.228806-1-j-choudhary@ti.com>
Content-Language: en-US
From: Jayesh Choudhary <j-choudhary@ti.com>
In-Reply-To: <20231005100027.228806-1-j-choudhary@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_NONE,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 05/10/23 15:30, Jayesh Choudhary wrote:
> This series adds support for:
> - DisplayPort for J784S4-EVM
> - Displayport and HDMI for AM69-SK platform
> 


[...]

Oops! I faced some issue with my mailing server while sending these
patches. So had to send 4/5 patches again as '--in-reply-to' but
the hierarchy is off on mailing list. Will RESEND the series.

Please IGNORE this series.

Sorry for the noise!!!

Warm Regards,
Jayesh

> 
> Changelog v10->v11:
> - Added comment for disabling serdes-refclk (according to comments of v5)
> - Update commit message to document why serdes, wiz nodes (2/5) and mhdp-
>    bridge, tidss nodes (3/5) are disabled.
> - Keep only ports in board files and move common properties to main file
>    and document why ports are kept empty.
> 
> v10: https://lore.kernel.org/all/20230927121157.278592-1-j-choudhary@ti.com/
> 


[...]

> 
> Dasnavis Sabiya (1):
>    arm64: dts: ti: k3-am69-sk: Add DP and HDMI support
> 
> Rahul T R (2):
>    arm64: dts: ti: k3-j784s4-main: Add DSS and DP-bridge node
>    arm64: dts: ti: k3-j784s4-evm: Enable DisplayPort-0
> 
> Siddharth Vadapalli (2):
>    arm64: dts: ti: k3-j784s4-main: Add system controller and SERDES lane
>      mux
>    arm64: dts: ti: k3-j784s4-main: Add WIZ and SERDES PHY nodes
> 
>   arch/arm64/boot/dts/ti/k3-am69-sk.dts      | 229 +++++++++++++++++
>   arch/arm64/boot/dts/ti/k3-j784s4-evm.dts   | 119 +++++++++
>   arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi | 276 +++++++++++++++++++++
>   3 files changed, 624 insertions(+)
> 

