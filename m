Return-Path: <devicetree+bounces-180409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02984AC3874
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 06:13:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFBA81712A5
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 04:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 986E719E971;
	Mon, 26 May 2025 04:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="PaXTo1Vb"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8057BA32
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 04:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748232784; cv=none; b=VEDG6KB9OsXh9olnsMq7dB5VA9MIOf6mTCiH3xl/01twxPId8l5MqKUJTzSF8HTIdHjuXQz68FCV7WOJQL0hhOIeH6QPIgS0u4OcQq9aediWKufI9FRq3qDiMaEWnE/f4Zcmd+RcoLrlyPoCpATiNDd/YfdsObAB5c6735E6uG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748232784; c=relaxed/simple;
	bh=FxJTXC6yHaSy/pdprbc0Gduj2LAyHtsHTWViSB764z8=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=AWWAfo/y1KfD3cKLhWnGAi4XfM2YCgeANFiNP7B5WfgahK/toVq1VwVz1wK/V2Ak+Zwr/zJET1m3tZMQG1MZhEUumzgTGUcM+TKbdQ41sgmecQYc05NVcFnAi+IpuL0gHMqmVsnRIyhJhHY7LYOdnCN8hAhNwc7QAMnowCXEUvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=PaXTo1Vb; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 54Q4CdHY1441725;
	Sun, 25 May 2025 23:12:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1748232759;
	bh=Uid9l3t86hTNki59z/q03Aog88KQ1lyZOwD3aGlJdRk=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=PaXTo1Vbtq010JdueoPYeo+TqsP01X2Sgnc+k6ZVpshPeciXVmx3YU7j12ePDu34R
	 wLr2SXghNsT2rd51CsGTJfPcZrH0qiJEHVjnIvNtjdkRkIAqLjL5g/1wGEZYGTBrUK
	 tD5OcnhqjJDw+SlZNPT0zESFNIHZxt9niRy+8JMc=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 54Q4CdPx1571692
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Sun, 25 May 2025 23:12:39 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Sun, 25
 May 2025 23:12:39 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Sun, 25 May 2025 23:12:39 -0500
Received: from [10.24.69.37] (a0497641-hp-z2-tower-g9-workstation-desktop-pc.dhcp.ti.com [10.24.69.37] (may be forged))
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 54Q4CanR2535335;
	Sun, 25 May 2025 23:12:36 -0500
Message-ID: <a9402f5b-d7fe-4e49-a18c-a93ccec0ea39@ti.com>
Date: Mon, 26 May 2025 09:42:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: Modify J784S4 SoC SERDES lane controller
 register length
To: Gokul Praveen <g-praveen@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
CC: <u-kumar1@ti.com>
References: <20250523134946.144461-1-g-praveen@ti.com>
Content-Language: en-US
From: Neha Malcom Francis <n-francis@ti.com>
In-Reply-To: <20250523134946.144461-1-g-praveen@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Gokul

On 23/05/25 19:19, Gokul Praveen wrote:
> Modify the J784S4 SoC SERDES lane controller register length from 0x30 to 0x50 
> to enable SERDES4 registers.
> 
> 'Fixes:9cc161a4509c2("arm64: dts: ti: Refactor J784s4 SoC files to a common
> file")'

There's no need to put it within ''

> Signed-off-by: Gokul Praveen <g-praveen@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> index 1944616ab357..1fc0a11c5ab4 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> @@ -77,7 +77,7 @@ pcie1_ctrl: pcie1-ctrl@4074 {
>  
>  		serdes_ln_ctrl: mux-controller@4080 {
>  			compatible = "reg-mux";
> -			reg = <0x00004080 0x30>;
> +			reg = <0x00004080 0x50>;
>  			#mux-control-cells = <1>;
>  			mux-reg-masks = <0x0 0x3>, <0x4 0x3>, /* SERDES0 lane0/1 select */
>  					<0x8 0x3>, <0xc 0x3>, /* SERDES0 lane2/3 select */

-- 
Thanking You
Neha Malcom Francis

