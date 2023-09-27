Return-Path: <devicetree+bounces-3921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E787B0816
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:23:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C8E2428163E
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A30423FB29;
	Wed, 27 Sep 2023 15:23:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A121C6AE
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:23:31 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDC8B126;
	Wed, 27 Sep 2023 08:23:27 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38RFNMFt122403;
	Wed, 27 Sep 2023 10:23:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695828202;
	bh=9wsox5h/ZjHzgWkJJhcbLZ74uYArY52DiJ3BPfSTAqE=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=IWpU3Uv7gN2c/ZwCgShZlniggXQfVSriu8WSic4jcUQTufuHYS+5UlqXGK9n18PHa
	 nDbn9fp0nfyTGhXNOXwp/R78pfJrrjp2mOYGMRmVITIOGYoI2XrNeqizC8KccvWe3/
	 NuUNVK77aWLxpELgqkpdXEXNslBQ8iCX6s/ZvibU=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38RFNMiO003317
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 Sep 2023 10:23:22 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 27
 Sep 2023 10:23:22 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 27 Sep 2023 10:23:22 -0500
Received: from [10.249.141.75] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38RFNINi012235;
	Wed, 27 Sep 2023 10:23:19 -0500
Message-ID: <2e0698a1-fd00-7441-797e-97415a01fa1d@ti.com>
Date: Wed, 27 Sep 2023 20:53:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 9/9] arm64: dts : ti: k3-am69-sk: Add DDR carveout
 memory nodes for C71x DSP
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
 <20230906112422.2846151-10-a-nandan@ti.com>
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20230906112422.2846151-10-a-nandan@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On 9/6/2023 4:54 PM, Apurva Nandan wrote:
> Two carveout reserved memory nodes each have been added for each of the
> C71x DSP for the TI K3 AM69 SK boards. These nodes are assigned to the
> respective rproc device nodes as well. The first region will be used as
> the DMA pool for the rproc device, and the second region will furnish
> the static carveout regions for the firmware memory.
>
> The current carveout addresses and sizes are defined statically for each
> device. The C71x DSP processor supports a MMU called CMMU, but is not
> currently supported and as such requires the exact memory used by the
> firmware to be set-aside.
>
> Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> Signed-off-by: Apurva Nandan <a-nandan@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am69-sk.dts | 104 ++++++++++++++++++++++++++
>   1 file changed, 104 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
> index d5a39caf15af..1e6fb082d3d2 100644
> --- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
> @@ -143,6 +143,54 @@ main_r5fss2_core1_memory_region: r5f-memory@a7100000 {
>   			reg = <0x00 0xa7100000 0x00 0xf00000>;
>   			no-map;
>   		};

Reviewed by: Udit Kumar<u-kumar1@ti.com>

> [...]

