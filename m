Return-Path: <devicetree+bounces-265704-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIdkG0X7kmlx0gEAu9opvQ
	(envelope-from <devicetree+bounces-265704-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:11:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF609142B90
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:11:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E99C63037D57
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 11:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C590C2D2397;
	Mon, 16 Feb 2026 11:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="cScbLoDs"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C76302165;
	Mon, 16 Feb 2026 11:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771240205; cv=none; b=dPXK80eBH/hu2xPp1EJK4aUroNLrEI/nUXkU5nm3/qwo1RSJUuWEDGYARyPWImSRGouKZJUj8qtOvJEXGacOyu81cbfmamnfu70Cm8vO5MOr2u03Yvl6TiBTLmgtm3JLVHt1+Q1Qe9dIxQbEbxqDlpxUFq66PYln4+m9TKUrGPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771240205; c=relaxed/simple;
	bh=IntVyqmcKxwafdHrksd0syn7OEBN/YV17IIzQF/SDJU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AlVZ5BvXjtD4w+b21HSc+STHCZYTBa76d/gZVu9UzTfCq+hq2ywVdw21a6xih5msEszNMf9hOVs/38LRIjgoZbHiZrKdxtbQsmJkzVN42FDn3/JccXpJxIZpS4B/onvhUBXnSxuOax4i6PVSaKqfFv3QDEmPkatUHYxYRKbaCCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=cScbLoDs; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771240202;
	bh=IntVyqmcKxwafdHrksd0syn7OEBN/YV17IIzQF/SDJU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cScbLoDsYQ16Gwar4SVipw6ik0PXKTC4YzaM2tjFrkkO9ugwNyYHt0Z/yNcPdyqRP
	 BIc8iw3yvxQDe5be6Z1Y8ITFWYqSnPtOoxQxAE6jMtoe2VgxNbUiWObWa87ekYSTdB
	 25Cd0d+q2IdQF2GcBX+et365e3PcENQUpBB0K0fhvEe4fR1DKMGr60mn/7Tp8FH1XJ
	 clUUkQeEFV7yu4vd/cyD+vajyz5paKptYFc+AKbBrij1lesbMKZR2jKCCgsw+EOS29
	 FoiEW+4gs/tKdNJHVI/xjO2KDNr741Q+oG6gtql5TQSjHirxU+yoYt5fnYmwBtIjmw
	 oEBWT5ZKruE7Q==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C89F017E1517;
	Mon, 16 Feb 2026 12:10:01 +0100 (CET)
Message-ID: <5718e8aa-a9a0-41d4-af15-37441909efc2@collabora.com>
Date: Mon, 16 Feb 2026 12:10:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: mediatek: mt8167: Add DRM nodes
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
 linux-mediatek@lists.infradead.org
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jitao Shi
 <jitao.shi@mediatek.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <cover.1771144723.git.l.scorcia@gmail.com>
 <efed7184f27f7f85e9b811070a072b81e134e57e.1771144723.git.l.scorcia@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <efed7184f27f7f85e9b811070a072b81e134e57e.1771144723.git.l.scorcia@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265704-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,linux.intel.com,suse.de,gmail.com,ffwll.ch,mediatek.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BF609142B90
X-Rspamd-Action: no action

Il 15/02/26 09:53, Luca Leonardo Scorcia ha scritto:
> Add all the DRM nodes required to get DSI to work on MT8167 SoC.
> 
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> ---
>   arch/arm64/boot/dts/mediatek/mt8167.dtsi | 386 +++++++++++++++++++++++
>   1 file changed, 386 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8167.dtsi b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
> index 27cf32d7ae35..c6306234e592 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8167.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
> @@ -16,6 +16,20 @@
>   / {
>   	compatible = "mediatek,mt8167";
>   
> +	aliases {
> +		aal0 = &aal;
> +		ccorr0 = &ccorr;
> +		color0 = &color;
> +		dither0 = &dither;
> +		dsi0 = &dsi;
> +		gamma0 = &gamma;
> +		ovl0 = &ovl0;
> +		pwm0 = &disp_pwm;
> +		rdma0 = &rdma0;
> +		rdma1 = &rdma1;
> +		wdma0 = &wdma;
> +	};
> +
>   	soc {
>   		topckgen: topckgen@10000000 {
>   			compatible = "mediatek,mt8167-topckgen", "syscon";
> @@ -120,10 +134,371 @@ iommu: m4u@10203000 {
>   			#iommu-cells = <1>;
>   		};
>   
> +		disp_pwm: pwm@1100f000 {
> +			compatible = "mediatek,mt8167-disp-pwm",
> +				     "mediatek,mt8173-disp-pwm";

The compatible strings fit in a single line. Up to 100 columns it's fine: for every
node additions that you're doing, please use a single line wherever you can.

> +			reg = <0 0x1100f000 0 0x1000>;
> +			clocks = <&mmsys CLK_MM_DISP_PWM_26M>,
> +				 <&mmsys CLK_MM_DISP_PWM_MM>;
> +			clock-names = "main",
> +				      "mm";

That also includes clock-names and, where possible, also clocks and anything
else really.

> +			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
> +			#pwm-cells = <2>;
> +			status = "disabled";
> +		};
> +
>   		mmsys: syscon@14000000 {
>   			compatible = "mediatek,mt8167-mmsys", "syscon";
>   			reg = <0 0x14000000 0 0x1000>;
> +			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
>   			#clock-cells = <1>;
> +
> +			port {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				mmsys_main: endpoint@0 {
> +					reg = <0>;
> +					remote-endpoint = <&ovl0_in>;
> +				};
> +
> +				mmsys_ext: endpoint@1 {
> +					reg = <1>;
> +					remote-endpoint = <&rdma1_in>;
> +				};

Nice! Thanks for expressing those connections with an OF Graph. That makes things
simpler for other devices based on the same SoC.

> +			};
> +		};
> +
> +		ovl0: ovl0@14007000 {
> +			compatible = "mediatek,mt8167-disp-ovl";
> +			reg = <0 0x14007000 0 0x1000>;
> +			clocks = <&mmsys CLK_MM_DISP_OVL0>;
> +			interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_LOW>;
> +			iommus = <&iommu M4U_PORT_DISP_OVL0>;
> +			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +					reg = <0>;

For OVL, RDMA, COLOR, CCORR, and others, you have only one endpoint.

Since there is only one, you can compress the nodes and avoid the text bloat
(and please do), by declaring the nodes like:

			ports {
				#address-cells = <1>;
				#size-cells = <0>;

				port@0 {
					reg = <0>;
					ovl0_in: endpoint {
						remote-endpoint = <&mmsys_main>;
					};
				};

				port@1 {
					reg = <1>;
					ovl0_out: endpoint {
						remote-endpoint = <&color_in>;
					};
				};
			};

Please do this for all nodes where you have only a single endpoint (so, for
everything but mmsys).


> +					ovl0_in: endpoint@0 {
> +						reg = <0>;
> +						remote-endpoint = <&mmsys_main>;
> +					};
> +				};
> +
> +				port@1 {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +					reg = <1>;
> +					ovl0_out: endpoint@0 {
> +						reg = <0>;
> +						remote-endpoint = <&color_in>;
> +					};
> +				};
> +			};
> +		};

...snip...

> +
> +		dsi: dsi@14012000 {
> +			compatible = "mediatek,mt8167-dsi",
> +				     "mediatek,mt2701-dsi";
> +			reg = <0 0x14012000 0 0x1000>;
> +			clocks = <&mmsys CLK_MM_DSI_ENGINE>,
> +				 <&mmsys CLK_MM_DSI_DIGITAL>,
> +				 <&mipi_tx>;
> +			clock-names = "engine", "digital", "hs";
> +			interrupts = <GIC_SPI 171 IRQ_TYPE_LEVEL_LOW>;
> +			phys = <&mipi_tx>;
> +			phy-names = "dphy";
> +			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
> +			status = "disabled";
> +
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;

..snip..

> +
> +				port@1 {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +					reg = <1>;
> +					dsi_out: endpoint@0 {
> +						reg = <0>;
> +					};
> +				};

That's shorter, and simpler:
				port@1 {
					reg = <1>;
					dsi_out: endpoint { };
				};

> +			};
> +		};
> +
> +		mutex: mutex@14015000 {
> +			compatible = "mediatek,mt8167-disp-mutex";
> +			reg = <0 0x14015000 0 0x1000>;
> +			interrupts = <GIC_SPI 153 IRQ_TYPE_LEVEL_LOW>;
> +			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
>   		};
>   
>   		larb0: larb@14016000 {
> @@ -145,6 +520,17 @@ smi_common: smi@14017000 {
>   			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
>   		};
>   
> +		mipi_tx: dsi-phy@14018000 {
> +			compatible = "mediatek,mt8167-mipi-tx",
> +				     "mediatek,mt2701-mipi-tx";

Fits in a single line :-)

> +			reg = <0 0x14018000 0 0x90>;
> +			clocks = <&topckgen CLK_TOP_MIPI_26M_DBG>;
> +			clock-output-names = "mipi_tx0_pll";
> +			#clock-cells = <0>;
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
>   		imgsys: syscon@15000000 {
>   			compatible = "mediatek,mt8167-imgsys", "syscon";
>   			reg = <0 0x15000000 0 0x1000>;
Nice job, btw.

Cheers,
Angelo


