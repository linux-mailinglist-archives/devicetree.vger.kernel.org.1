Return-Path: <devicetree+bounces-17266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DABC57F1D56
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 20:33:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93C582813F7
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 19:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA1A234568;
	Mon, 20 Nov 2023 19:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="wRLyBYTA"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7627B9;
	Mon, 20 Nov 2023 11:33:01 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AKJWY00015071;
	Mon, 20 Nov 2023 13:32:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700508754;
	bh=NaSduCC8F48yNFMnQUY1Op9WzyeayFXuOV0NjmX62wE=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=wRLyBYTA+hD2/psTsWP2vu75k72/cGmfMTFMaSDDZOeGkNa/tv12CkhA+zfLFL0WK
	 iPruHRhUPEuot0PDLz643qzxbH3EvOGB+YoIJD6O+o8jqTG8ZKblmeQ7ikAl9rh5uN
	 UVHInamoI1ena00OWMsbgOZcyJ1WCPPtntDq2/pc=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AKJWY1h024909
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 20 Nov 2023 13:32:34 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 20
 Nov 2023 13:32:34 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 20 Nov 2023 13:32:34 -0600
Received: from [10.250.36.5] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AKJWX0A082105;
	Mon, 20 Nov 2023 13:32:33 -0600
Message-ID: <33a4a072-a915-4994-8d5e-6032a769475e@ti.com>
Date: Mon, 20 Nov 2023 13:32:33 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/9] arm64: dts: ti: k3-am62x-sk: Enable camera
 peripherals
Content-Language: en-US
To: Jai Luthra <j-luthra@ti.com>, Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Nishanth Menon <nm@ti.com>,
        Vignesh
 Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Aradhya Bhatia <a-bhatia1@ti.com>,
        Devarsh
 Thakkar <devarsht@ti.com>,
        Vaishnav Achath <vaishnav.a@ti.com>,
        Julien Massot
	<julien.massot@collabora.com>,
        Martyn Welch <martyn.welch@collabora.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
References: <20231117-csi_dts-v2-0-bf4312194a6b@ti.com>
 <20231117-csi_dts-v2-5-bf4312194a6b@ti.com>
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20231117-csi_dts-v2-5-bf4312194a6b@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 11/17/23 3:28 AM, Jai Luthra wrote:
> CSI cameras are controlled using I2C, on SK-AM62 and derivative boards
> this is routed to I2C-2, so enable that bus. Also enable the nodes for
> CSI-RX and DPHY-RX IPs.
> 
> Specific sensor connected to this bus will be described in the DT
> overlay for each sensor.
> 
> Tested-by: Martyn Welch <martyn.welch@collabora.com>
> Signed-off-by: Jai Luthra <j-luthra@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
> index 19f57ead4ebd..21658f811307 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
> @@ -399,6 +399,13 @@ sii9022_out: endpoint {
>   	};
>   };
>   
> +&main_i2c2 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&main_i2c2_pins_default>;
> +	clock-frequency = <400000>;
> +};
> +
>   &sdhci0 {
>   	bootph-all;
>   	status = "okay";
> @@ -517,3 +524,11 @@ dpi1_out: endpoint {
>   		};
>   	};
>   };
> +
> +&ti_csi2rx0 {
> +	status = "okay";
> +};
> +
> +&dphy0 {
> +	status = "okay";
> +};
> 

Why do this in the common file? These should go in the overlays
that actually make use of these nodes, same as you did for BeaglePlay
in patch [4/9].

Andrew

