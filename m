Return-Path: <devicetree+bounces-21441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B25803A52
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 17:31:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 041D7B20B17
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 16:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DFFA2420B;
	Mon,  4 Dec 2023 16:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="AoFOC6aH"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7491899;
	Mon,  4 Dec 2023 08:31:37 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B4GVOk9042651;
	Mon, 4 Dec 2023 10:31:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701707484;
	bh=k3LEjvcnqvIrdVoOmJEjrECGvCvokbApdvFaMgWiBbc=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=AoFOC6aHGhcxyO1e6wZwVx0piPlk2a4GNP908pdLAlatnbxBx+toSQY2lnEcqHsKK
	 J2+cSqOvHPU0ocLVkeHl656H5zHpHrPaHZdTOCFGVkCQ948z+SyypQD3gjAcQ0hteN
	 uqzUDjMjjHjZP7F6vBjEl1x2ltP3yGdGogtG2U48=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B4GVORI011231
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Dec 2023 10:31:24 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 4
 Dec 2023 10:31:24 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 4 Dec 2023 10:31:24 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B4GVOlZ114206;
	Mon, 4 Dec 2023 10:31:24 -0600
Date: Mon, 4 Dec 2023 10:31:24 -0600
From: Bryan Brattlof <bb@ti.com>
To: Andrew Davis <afd@ti.com>
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Jan Kiszka <jan.kiszka@siemens.com>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: Add AM652 DTSI file
Message-ID: <20231204163124.efdhd3mxmgwfcn3s@bryanbrattlof.com>
X-PGP-Fingerprint: D3D1 77E4 0A38 DF4D 1853 FEEF 41B9 0D5D 71D5 6CE0
References: <20231117165330.98472-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20231117165330.98472-1-afd@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Andrew!

On November 17, 2023 thus sayeth Andrew Davis:
> The AM652 is basically a AM654 but with 2 cores instead of 4. Add
> a DTSI file for AM652 matching AM654 except this core difference.
> 
> This removes the need to remove the extra cores from AM654 manually
> in DT files for boards that use the AM652 variant. Do that for
> the IOT2050 boards here.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>

Reviewed-by: Bryan Brattlof <bb@ti.com>

> ---
>  .../boot/dts/ti/k3-am65-iot2050-common.dtsi   |  1 -
>  arch/arm64/boot/dts/ti/k3-am652.dtsi          | 74 +++++++++++++++++++
>  .../ti/k3-am6528-iot2050-basic-common.dtsi    | 11 +--
>  .../ti/k3-am6548-iot2050-advanced-common.dtsi |  1 +
>  4 files changed, 76 insertions(+), 11 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am652.dtsi

Yeah this is a much cleaner approach than adding or deleting cores in 
the board files

~Bryan


