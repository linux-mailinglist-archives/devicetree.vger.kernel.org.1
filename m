Return-Path: <devicetree+bounces-2436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E332C7AAC9C
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 10:29:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9537628371C
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BD9E1DDE7;
	Fri, 22 Sep 2023 08:29:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114A0EAC6
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 08:29:40 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70A291A8;
	Fri, 22 Sep 2023 01:29:39 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9124F6603102;
	Fri, 22 Sep 2023 09:29:37 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695371378;
	bh=5R8v6wvd1MpFZX3AbIVOvcY34E23OlIoFUwytGVOO7A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Z0+Yh0shm7ykovp53zYib/YCrUbjUxWqtXNUEczVVlnDvIsI9DpCZ8UHU477vqYh0
	 oAGQI9GStmrmL3MzLw1WI+3ZNysgViuZq3xHPjM+0kkCFWHKIMC4PONLHWqTfcSpd1
	 UQh/gmJ3uqOqcSrO03/KYThE9GtcqG4R0UVXtnDpIGqzMI8t6UlU9B/8bYMXtTVQiQ
	 nEFKLyZD+UEGAFdBx/SLI4KpDdtvys3YoT7lJWA1lfVKVtLr8WRVNFVBuqpYpJTEkh
	 0XSsDGU/Cnzv+CStYCs8r2U3+CtOhNjWGgKNEo0exDGqg8k3lflP7eZbZP90IoQjn2
	 QIJluJHBjs7nQ==
Message-ID: <a41148b8-295a-58ad-7c72-2713d89e4f83@collabora.com>
Date: Fri, 22 Sep 2023 10:29:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v6 2/2] arm64: dts: mediatek: mt8195: add MDP3 nodes
Content-Language: en-US
To: Moudy Ho <moudy.ho@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20230922065017.10357-1-moudy.ho@mediatek.com>
 <20230922065017.10357-3-moudy.ho@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230922065017.10357-3-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 22/09/23 08:50, Moudy Ho ha scritto:
> Add device nodes for Media Data Path 3 (MDP3) modules.
> 
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> ---
>   arch/arm64/boot/dts/mediatek/mt8195.dtsi | 388 +++++++++++++++++++++++
>   1 file changed, 388 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> index 4dbbf8fdab75..cf61ba7b8956 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -1960,6 +1960,114 @@
>   			#clock-cells = <1>;
>   		};
>   

..snip..

> +
> +		display@14006000 {
> +			compatible = "mediatek,mt8183-mdp3-rsz";

Please always add a SoC-specific compatible (both here and in bindings).

compatible = "medaitek,mt8195-mdp3-rsz", "mediatek,mt8183-mdp3-rsz";

> +			reg = <0 0x14006000 0 0x1000>;
> +			mediatek,gce-client-reg = <&gce1 SUBSYS_1400XXXX 0x6000 0x1000>;
> +			mediatek,gce-events = <CMDQ_EVENT_VPP0_MDP_RSZ_IN_RSZ_SOF>,
> +					      <CMDQ_EVENT_VPP0_MDP_RSZ_FRAME_DONE>;
> +			clocks = <&vppsys0 CLK_VPP0_MDP_RSZ>;
> +		};
> +

..snip..

> +
> +		dma-controller@1400c000 {
> +			compatible = "mediatek,mt8183-mdp3-wrot";

same here

> +			reg = <0 0x1400c000 0 0x1000>;
> +			mediatek,gce-client-reg = <&gce1 SUBSYS_1400XXXX 0xc000 0x1000>;
> +			mediatek,gce-events = <CMDQ_EVENT_VPP0_MDP_WROT_SOF>,
> +					      <CMDQ_EVENT_VPP0_MDP_WROT_VIDO_WDONE>;
> +			clocks = <&vppsys0 CLK_VPP0_MDP_WROT>;
> +			iommus = <&iommu_vpp M4U_PORT_L4_MDP_WROT>;
> +			power-domains = <&spm MT8195_POWER_DOMAIN_VPPSYS0>;
> +			#dma-cells = <1>;
> +		};
> +
>   		mutex@1400f000 {
>   			compatible = "mediatek,mt8195-vpp-mutex";
>   			reg = <0 0x1400f000 0 0x1000>;
> @@ -2107,6 +2215,286 @@
>   			power-domains = <&spm MT8195_POWER_DOMAIN_VPPSYS1>;
>   		};
>   

..snip..

> +
> +		display@14f14000 {
> +			compatible = "mediatek,mt8183-mdp3-rsz";

and here

> +			reg = <0 0x14f14000 0 0x1000>;
> +			mediatek,gce-client-reg = <&gce1 SUBSYS_14f1XXXX 0x4000 0x1000>;
> +			mediatek,gce-events = <CMDQ_EVENT_VPP1_SVPP1_MDP_RSZ_SOF>,
> +					      <CMDQ_EVENT_VPP1_SVPP1_MDP_RSZ_FRAME_DONE>;
> +			clocks = <&vppsys1 CLK_VPP1_SVPP1_MDP_RSZ>;
> +		};
> +
> +		display@14f15000 {
> +			compatible = "mediatek,mt8183-mdp3-rsz";

...and here

> +			reg = <0 0x14f15000 0 0x1000>;
> +			mediatek,gce-client-reg = <&gce1 SUBSYS_14f1XXXX 0x5000 0x1000>;
> +			mediatek,gce-events = <CMDQ_EVENT_VPP1_SVPP2_MDP_RSZ_SOF>,
> +					      <CMDQ_EVENT_VPP1_SVPP2_MDP_RSZ_FRAME_DONE>;
> +			clocks = <&vppsys1 CLK_VPP1_SVPP2_MDP_RSZ>;
> +		};
> +
> +		display@14f16000 {
> +			compatible = "mediatek,mt8183-mdp3-rsz";

......and here.

> +			reg = <0 0x14f16000 0 0x1000>;
> +			mediatek,gce-client-reg = <&gce1 SUBSYS_14f1XXXX 0x6000 0x1000>;
> +			mediatek,gce-events = <CMDQ_EVENT_VPP1_SVPP3_MDP_RSZ_SOF>,
> +					      <CMDQ_EVENT_VPP1_SVPP3_MDP_RSZ_FRAME_DONE>;
> +			clocks = <&vppsys1 CLK_VPP1_SVPP3_MDP_RSZ>;
> +		};
> +

..snip..

> +
> +		dma-controller@14f23000 {
> +			compatible = "mediatek,mt8183-mdp3-wrot";

...again... and for the other two occurrences of wrot as well.

Apart from that, looks good.

Regards,
Angelo

> +			reg = <0 0x14f23000 0 0x1000>;
> +			mediatek,gce-client-reg = <&gce1 SUBSYS_14f2XXXX 0x3000 0x1000>;
> +			mediatek,gce-events = <CMDQ_EVENT_VPP1_SVPP1_MDP_WROT_SOF>,
> +					      <CMDQ_EVENT_VPP1_SVPP1_MDP_WROT_FRAME_DONE>;
> +			clocks = <&vppsys1 CLK_VPP1_SVPP1_MDP_WROT>;
> +			iommus = <&iommu_vdo M4U_PORT_L5_SVPP1_MDP_WROT>;
> +			power-domains = <&spm MT8195_POWER_DOMAIN_VPPSYS1>;
> +			#dma-cells = <1>;
> +		};
> +
> +		dma-controller@14f24000 {
> +			compatible = "mediatek,mt8183-mdp3-wrot";
> +			reg = <0 0x14f24000 0 0x1000>;
> +			mediatek,gce-client-reg = <&gce1 SUBSYS_14f2XXXX 0x4000 0x1000>;
> +			mediatek,gce-events = <CMDQ_EVENT_VPP1_SVPP2_MDP_WROT_SOF>,
> +					<CMDQ_EVENT_VPP1_SVPP2_MDP_WROT_FRAME_DONE>;
> +			clocks = <&vppsys1 CLK_VPP1_SVPP2_MDP_WROT>;
> +			iommus = <&iommu_vdo M4U_PORT_L5_SVPP2_MDP_WROT>;
> +			power-domains = <&spm MT8195_POWER_DOMAIN_VPPSYS1>;
> +			#dma-cells = <1>;
> +		};
> +
> +		dma-controller@14f25000 {
> +			compatible = "mediatek,mt8183-mdp3-wrot";
> +			reg = <0 0x14f25000 0 0x1000>;
> +			mediatek,gce-client-reg = <&gce1 SUBSYS_14f2XXXX 0x5000 0x1000>;
> +			mediatek,gce-events = <CMDQ_EVENT_VPP1_SVPP3_MDP_WROT_SOF>,
> +					<CMDQ_EVENT_VPP1_SVPP3_MDP_WROT_FRAME_DONE>;
> +			clocks = <&vppsys1 CLK_VPP1_SVPP3_MDP_WROT>;
> +			iommus = <&iommu_vpp M4U_PORT_L6_SVPP3_MDP_WROT>;
> +			power-domains = <&spm MT8195_POWER_DOMAIN_VPPSYS1>;
> +			#dma-cells = <1>;
> +		};
> +
>   		imgsys: clock-controller@15000000 {
>   			compatible = "mediatek,mt8195-imgsys";
>   			reg = <0 0x15000000 0 0x1000>;


