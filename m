Return-Path: <devicetree+bounces-3919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E536C7B080D
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:22:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 944D228162A
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6999C3B2B1;
	Wed, 27 Sep 2023 15:22:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20921C6AE
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:22:19 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 631D9136;
	Wed, 27 Sep 2023 08:22:18 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38RFM6KZ041525;
	Wed, 27 Sep 2023 10:22:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695828126;
	bh=7RWl/7nLo78tgWYqwfylXzmBDhX2D8OKUnnzBKvnRZw=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=QHTs2OnwzvwFqdzBpCfASeevJD/F+oSVLmniLWhszOwIhgz7rZad5Vmc+/papL/p9
	 KLTcqlRwpKtcDo0k3i1Rv9lGYbAKrHd7n5Jag7RMoQ5EqEGBHBEvH+6Dzx9FkfHgY6
	 flVrsyfjZ3pAtG40SFJHbGLXhxkjq5PwiHvNQgQc=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38RFM6UQ018595
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 Sep 2023 10:22:06 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 27
 Sep 2023 10:22:05 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 27 Sep 2023 10:22:06 -0500
Received: from [10.249.141.75] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38RFM2er011376;
	Wed, 27 Sep 2023 10:22:02 -0500
Message-ID: <3e15e05f-7c4e-5460-d9ec-9b68f2828c79@ti.com>
Date: Wed, 27 Sep 2023 20:52:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 7/9] arm64: dts : ti: k3-am68-sk-som: Add DDR carveout
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
 <20230906112422.2846151-8-a-nandan@ti.com>
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20230906112422.2846151-8-a-nandan@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On 9/6/2023 4:54 PM, Apurva Nandan wrote:
> Two carveout reserved memory nodes each have been added for each of the
> C71x DSP for the TI K3 AM68 SK boards. These nodes are assigned to the
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
>   arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi | 52 ++++++++++++++++++++++
>   1 file changed, 52 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
> index beab405274ab..20861a0a46b0 100644
> --- a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
> @@ -98,6 +98,30 @@ main_r5fss1_core1_memory_region: r5f-memory@a5100000 {
>   			no-map;
>   		};


Reviewed by: Udit Kumar<u-kumar1@ti.com>

> [...]

