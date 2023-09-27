Return-Path: <devicetree+bounces-3711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 396307AFF04
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:54:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D2AE228381C
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:54:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 690F71C6BE;
	Wed, 27 Sep 2023 08:54:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4AE9111A1
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:54:35 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C081A95;
	Wed, 27 Sep 2023 01:54:33 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38R8sMXc116464;
	Wed, 27 Sep 2023 03:54:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695804862;
	bh=VmA/PS4HPt0PCjWjuQfAuuwpiPkKOA4BYC6vRd0Kyls=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=ktxxWZQuH2cHsBPIVsKdppo4ZWAf3ZQNTD06Vf/u6ourk8NpVADOrOn6LZHQjVD7r
	 vgSasogBM+7hM7ZsTOSAhLCr8hkCLYP1v13Qe2vehBif0qbcXFblxS7hKnl0/K8q9T
	 qu6MB4T0BrHFGm75t/Zl/+98/+aEfwDGganMfnJU=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38R8sMj3039172
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 Sep 2023 03:54:22 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 27
 Sep 2023 03:54:21 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 27 Sep 2023 03:54:21 -0500
Received: from [172.24.20.156] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38R8sHVQ015924;
	Wed, 27 Sep 2023 03:54:18 -0500
Message-ID: <ff0fabf8-8f55-4d91-04ee-7581efc465d6@ti.com>
Date: Wed, 27 Sep 2023 14:24:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 0/9] Add R5F and C7x DSP node for K3 J721S2, AM68 and
 AM69 SoCs
Content-Language: en-US
To: Apurva Nandan <a-nandan@ti.com>, Nishanth Menon <nm@ti.com>,
        Vignesh
 Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Hari Nagalla <hnagalla@ti.com>
References: <20230906112422.2846151-1-a-nandan@ti.com>
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20230906112422.2846151-1-a-nandan@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On 9/6/2023 4:54 PM, Apurva Nandan wrote:
> This series adds the R5F processor nodes and C7x DSP nodes for
> J721S2, AM68 and AM69 SoCs to align these nodes with other K3 SOC's node.
>
> The first three patches adds the remote proc nodes to the SoC device
> tree, remaining patches reserves the memory for remote proc IPCs
> on K3 J721S2 EVM, AM68 SK, AM69 boards.
>
> Note, K3 AM69 SoC derives from K3 J784S4 SoC, but is included in this
> series as it was originally missed in the K3 J784S4 EVM rproc series.
> (https://lore.kernel.org/all/20230502231527.25879-4-hnagalla@ti.com/).
>
> kpv log: https://gist.githubusercontent.com/apurvanandan1997/57fcf127c118a48bd174ce36d8840329/raw/
> Test log: https://gist.githubusercontent.com/apurvanandan1997/556b4148651ae74b50dda993ad07f1e5/raw/

You need to rebase the series

For patches 6/9, 7/9, 8/9 and 9/9

Reviewed by: Udit Kumar <u-kumar1@ti.com>

>
> v4: Changelog:
> 1) Added R5F and C7x nodes for K3 AM68 and AM69 SoCs
>
> Link to v3:
> https://lore.kernel.org/linux-arm-kernel/20230811202252.3586926-1-a-nandan@ti.com/
>
> v3: Changelog:
> 1) Disabled c7x in k3-j721s2-main.dtsi and enabled in k3-j721s2-som-p0.dtsi
>     which fixes the following dtbs_check for k3-am69-sk.dts
>     - dsp@64800000: 'mboxes' is a required property
>     - dsp@64800000: 'memory-region' is a required property
> 2) Split into separate patches for C7x and R5F
>
> Link to v2:
> https://lore.kernel.org/lkml/20230808201842.292911-1-a-nandan@ti.com/
>
> v2:Changelog:
> 1) Added status = "disabled"; in soc dtsi files, and removed it from som dts
> 2) Fixed mboxes property in for all cores in som dts
>
> Link to v1:
> https://lore.kernel.org/all/20230529220941.10801-1-hnagalla@ti.com/
>
>
> Apurva Nandan (9):
>    arm64: dts: ti: k3-j721s2-mcu: Add MCU R5F cluster nodes
>    arm64: dts: ti: k3-j721s2-main: Add MAIN R5F remote processsor nodes
>    arm64: dts: ti: k3-j721s2-main: Add C7x remote processsor nodes
>    arm64: dts : ti: k3-j721s2-som-p0: Add DDR carveout memory nodes for
>      R5F
>    arm64: dts : ti: k3-j721s2-som-p0: Add DDR carveout memory nodes for
>      C71x DSPs
>    arm64: dts : ti: k3-am68-sk-som: Add DDR carveout memory nodes for R5F
>    arm64: dts : ti: k3-am68-sk-som: Add DDR carveout memory nodes for
>      C71x DSP
>    arm64: dts : ti: k3-am69-sk: Add DDR carveout memory nodes for R5F
>    arm64: dts : ti: k3-am69-sk: Add DDR carveout memory nodes for C71x
>      DSP
>
>   arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi    | 208 ++++++++++++
>   arch/arm64/boot/dts/ti/k3-am69-sk.dts         | 304 ++++++++++++++++++
>   arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi    | 106 ++++++
>   .../boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi     |  40 +++
>   arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi  | 208 ++++++++++++
>   5 files changed, 866 insertions(+)
>

