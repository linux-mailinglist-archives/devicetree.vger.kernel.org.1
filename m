Return-Path: <devicetree+bounces-21477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0E4803C87
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 19:14:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 696E92810F0
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 18:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64D9B2EAF3;
	Mon,  4 Dec 2023 18:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="bcUBzEZy"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3954AAA;
	Mon,  4 Dec 2023 10:14:00 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B4IDbCW030984;
	Mon, 4 Dec 2023 12:13:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701713617;
	bh=gBm0LfcmnjffiadImNafTIQvyRQvPbA+iykRWhDjM1M=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=bcUBzEZyT7Gk+HMhgnsKD6Xr9HroCug1xxq6sHkrBDG5WtBONkkwyVsMyn4b8Zv6H
	 QRe/fNmjjZR6JJILFXCkOagZGJ6MxOXmST0fbLDr35+uiaJoa2/1evXDYOS3DMQovV
	 zJn8csvQ0P+6CDj0LrjosO23sXJn/6hI6Dh2GAiU=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B4IDbjk086570
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Dec 2023 12:13:37 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 4
 Dec 2023 12:13:36 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 4 Dec 2023 12:13:36 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B4IDaLh080036;
	Mon, 4 Dec 2023 12:13:36 -0600
Date: Mon, 4 Dec 2023 12:13:36 -0600
From: Nishanth Menon <nm@ti.com>
To: Francesco Dolcini <francesco@dolcini.it>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Joao
 Paulo Goncalves <joao.goncalves@toradex.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        Francesco Dolcini
	<francesco.dolcini@toradex.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: ti: add verdin am62 mallow board
Message-ID: <20231204181336.scm2fgfyyzpr2u7t@dimmer>
References: <20231201145551.23337-1-francesco@dolcini.it>
 <20231201145551.23337-4-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231201145551.23337-4-francesco@dolcini.it>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 15:55-20231201, Francesco Dolcini wrote:
> From: Joao Paulo Goncalves <joao.goncalves@toradex.com>

[...]

> +
> +	tpm@1 {
> +		compatible = "infineon,slb9670", "tcg,tpm_tis-spi";

arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-mallow.dtb: /bus@f0000/spi@20110000/tpm@1: failed to match any schema with compatible: ['infineon,slb9670', 'tcg,tpm_tis-spi']
arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-mallow.dtb: /bus@f0000/spi@20110000/tpm@1: failed to match any schema with compatible: ['infineon,slb9670', 'tcg,tpm_tis-spi']

We should either drop this node OR introduce bindings and later
introduce this series.

Yes, I know there are other places where the compatible is already used
arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
etc.. But, unfortunately, I'd rather see the binding
Documentation/devicetree/bindings/security/tpm/tpm_tis_spi.txt
transition over to yaml prior to picking things up. (NOTE: the same
rules apply to TI devs as well..)

> +		reg = <1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_qspi1_dqs_gpio>;
> +		interrupt-parent = <&main_gpio1>;
> +		interrupts = <18 IRQ_TYPE_EDGE_FALLING>;
> +		spi-max-frequency = <18500000>;

[...]
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

