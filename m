Return-Path: <devicetree+bounces-3834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C268C7B03EB
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:24:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 757C8282596
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C42C8290B;
	Wed, 27 Sep 2023 12:24:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BEE1C39
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 12:24:45 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C441112A;
	Wed, 27 Sep 2023 05:24:43 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38RCOcJQ044556;
	Wed, 27 Sep 2023 07:24:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695817478;
	bh=omWcGU25bqImfMqZN9cTZsR6dAIvmYs84CS37n8fKBY=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=BIlGz6Lod33szZFkMmplYjTR+9We0ETC540sgLvRApmH7N+WiSao9F90d8XJKRNGx
	 nn9qBLLqfGfEHVFtIehAn4Xvjw/ibQsGc3vYysVz2B6zccwNRtLS5HwZKR7a4FsgqQ
	 8b6uHEdWlxNyRxRhC5ui74ZrGXNgDl/xjz9RK8e4=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38RCOcdP031017
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 Sep 2023 07:24:38 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 27
 Sep 2023 07:24:38 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 27 Sep 2023 07:24:37 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38RCObjp049624;
	Wed, 27 Sep 2023 07:24:37 -0500
Date: Wed, 27 Sep 2023 07:24:37 -0500
From: Nishanth Menon <nm@ti.com>
To: Jayesh Choudhary <j-choudhary@ti.com>
CC: <vigneshr@ti.com>, <a-bhatia1@ti.com>, <afd@ti.com>, <rogerq@kernel.org>,
        <s-vadapalli@ti.com>, <conor+dt@kernel.org>, <r-ravikumar@ti.com>,
        <sabiya.d@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v10 3/5] arm64: dts: ti: k3-j784s4-main: Add DSS and
 DP-bridge node
Message-ID: <20230927122437.4a76enao7xqyw7hp@retreat>
References: <20230927121157.278592-1-j-choudhary@ti.com>
 <20230927121157.278592-4-j-choudhary@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230927121157.278592-4-j-choudhary@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 17:41-20230927, Jayesh Choudhary wrote:
> From: Rahul T R <r-ravikumar@ti.com>
> 
> Add DSS and DP-bridge node for J784S4 SoC. DSS IP in J784S4 is
> same as DSS IP in J721E, so same compatible is being used.
> The DP is Cadence MHDP8546.
> 
> Signed-off-by: Rahul T R <r-ravikumar@ti.com>
> [j-choudhary@ti.com: move dss & mhdp node together in main, fix dss node]
> Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
> Reviewed-by: Aradhya Bhatia <a-bhatia1@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi | 61 ++++++++++++++++++++++
>  1 file changed, 61 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> index a0e4d8808693..5ae11b0d5d0a 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> @@ -1772,4 +1772,65 @@ c71_3: dsp@67800000 {
>  		firmware-name = "j784s4-c71_3-fw";
>  		status = "disabled";
>  	};
> +
> +	mhdp: bridge@a000000 {
> +		compatible = "ti,j721e-mhdp8546";
> +		reg = <0x0 0xa000000 0x0 0x30a00>,
> +		      <0x0 0x4f40000 0x0 0x20>;
> +		reg-names = "mhdptx", "j721e-intg";
> +		clocks = <&k3_clks 217 11>;
> +		interrupt-parent = <&gic500>;
> +		interrupts = <GIC_SPI 614 IRQ_TYPE_LEVEL_HIGH>;
> +		power-domains = <&k3_pds 217 TI_SCI_PD_EXCLUSIVE>;
> +		status = "disabled";

Document why disabled.

> +
> +		dp0_ports: ports {
> +		};

Document why empty node

> +	};
> +
> +	dss: dss@4a00000 {
> +		compatible = "ti,j721e-dss";
> +		reg = <0x00 0x04a00000 0x00 0x10000>, /* common_m */
> +		      <0x00 0x04a10000 0x00 0x10000>, /* common_s0*/
> +		      <0x00 0x04b00000 0x00 0x10000>, /* common_s1*/
> +		      <0x00 0x04b10000 0x00 0x10000>, /* common_s2*/
> +		      <0x00 0x04a20000 0x00 0x10000>, /* vidl1 */
> +		      <0x00 0x04a30000 0x00 0x10000>, /* vidl2 */
> +		      <0x00 0x04a50000 0x00 0x10000>, /* vid1 */
> +		      <0x00 0x04a60000 0x00 0x10000>, /* vid2 */
> +		      <0x00 0x04a70000 0x00 0x10000>, /* ovr1 */
> +		      <0x00 0x04a90000 0x00 0x10000>, /* ovr2 */
> +		      <0x00 0x04ab0000 0x00 0x10000>, /* ovr3 */
> +		      <0x00 0x04ad0000 0x00 0x10000>, /* ovr4 */
> +		      <0x00 0x04a80000 0x00 0x10000>, /* vp1 */
> +		      <0x00 0x04aa0000 0x00 0x10000>, /* vp1 */
> +		      <0x00 0x04ac0000 0x00 0x10000>, /* vp1 */
> +		      <0x00 0x04ae0000 0x00 0x10000>, /* vp4 */
> +		      <0x00 0x04af0000 0x00 0x10000>; /* wb */
> +		reg-names = "common_m", "common_s0",
> +			    "common_s1", "common_s2",
> +			    "vidl1", "vidl2","vid1","vid2",
> +			    "ovr1", "ovr2", "ovr3", "ovr4",
> +			    "vp1", "vp2", "vp3", "vp4",
> +			    "wb";
> +		clocks = <&k3_clks 218 0>,
> +			 <&k3_clks 218 2>,
> +			 <&k3_clks 218 5>,
> +			 <&k3_clks 218 14>,
> +			 <&k3_clks 218 18>;
> +		clock-names = "fck", "vp1", "vp2", "vp3", "vp4";
> +		power-domains = <&k3_pds 218 TI_SCI_PD_EXCLUSIVE>;
> +		interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 605 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "common_m",
> +				  "common_s0",
> +				  "common_s1",
> +				  "common_s2";
> +		status = "disabled";

Same

> +
> +		dss_ports: ports {

Same

> +		};
> +	};
>  };
> -- 
> 2.25.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

