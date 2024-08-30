Return-Path: <devicetree+bounces-98432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE779661DC
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 14:37:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D9C41F242BB
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 12:37:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EF8F199FDC;
	Fri, 30 Aug 2024 12:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="hNszxOV/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9274818E758
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 12:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725021425; cv=none; b=iw2dDk/55ig2/u6FmmMkG4esbKmjA3qAZMH+5LZvUioI/M2eMShYVgPIVIAJY6Prc9SuGS1QXYoCbp59lbY8EIqlK41yos79R+lPa0p5BCAz60Hq9PHHftNnDvqU6EUWuiq5mRC6Pa5zW3MkFu9JhqntxUPdgSwBZC2c3qnmHJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725021425; c=relaxed/simple;
	bh=9issGMz5c5luHB41e6UzlGKUzT3zn0kqtCxXDVa8Hk8=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=R7ErfqVGyqUZsk8gLUUKt2YcQxv8AdmJqtjbwTNCxFh4mu5Xn1R1dfC42fOX7M3P9YzCLpRsZXDQtPh7PqJQkOdMW38wVrrYVoTEiT1I3YLlK1KK+syrTf8dcfvg2sgec0RUQjfoNkEOsLaL3pAca8tTiv19Sp7fAdkwBtQHndw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=hNszxOV/; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47U9uurr014045;
	Fri, 30 Aug 2024 14:36:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	1l5ZxvhdovPiqIHbATK8bqKnrjjLSFWxdHUsR3Hs+B8=; b=hNszxOV/i8qOld3g
	35GnRut2yQ/cCmK+4aqV5GasWxe3k/TcWPScyNwP+aeXDfiNtC6m16csPEfC0aHp
	fcjY6MMIse7xySKeXbk2bI/FYdxB4blAYAR19pQRCwqjfYvNSLctV9L32+U6wubT
	cihuZm9Hm5DNzgbPEqm0mno8mq8csLG+2l3nBHSZege80Ndrya2dCHLLAiBTKEFB
	s9aR8bTSSaO3HCJmUlJUgMF38jKM+hWijVfB0iB0CqUBbr13GtyiGz3sfSLqaZbm
	qCyl602OO/r7+tkLQvu9Z82pU18SjcROi2EFy40VPDuhpR2tpXLW5oLOM3UU6gp4
	cakczw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41a4y697vw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Aug 2024 14:36:39 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id ECDF94002D;
	Fri, 30 Aug 2024 14:36:34 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F3D3F263D0D;
	Fri, 30 Aug 2024 14:35:57 +0200 (CEST)
Received: from [10.252.31.165] (10.252.31.165) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Fri, 30 Aug
 2024 14:35:57 +0200
Message-ID: <0554042a-5ee1-4c0b-9c80-05bd04396095@foss.st.com>
Date: Fri, 30 Aug 2024 14:35:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Add ethernet MAC nvmem cells to DH
 STM32MP13xx DHCOR DHSBC board
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: Christophe Roullier <christophe.roullier@foss.st.com>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime
 Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20240629171100.20285-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240629171100.20285-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-30_07,2024-08-30_01,2024-05-17_01

Hi Marek

On 6/29/24 19:10, Marek Vasut wrote:
> Describe ethernet MAC address nvmem cells in DH STM32MP13xx DHCOR DHSBC
> board DT. The MAC address can be fused in BSEC OTP fuses and used to set
> up MAC address for both ethernet MACs on this board.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Christophe Roullier <christophe.roullier@foss.st.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>   arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> index bacb70b4256bc..3cc9ad88d61bc 100644
> --- a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> +++ b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> @@ -75,6 +75,8 @@ channel@12 {
>   };
>   
>   &ethernet1 {
> +	nvmem-cell-names = "mac-address";
> +	nvmem-cells = <&ethernet_mac1_address>;
>   	phy-handle = <&ethphy1>;
>   	phy-mode = "rgmii-id";
>   	pinctrl-0 = <&eth1_rgmii_pins_a>;
> @@ -102,6 +104,8 @@ ethphy1: ethernet-phy@1 {
>   };
>   
>   &ethernet2 {
> +	nvmem-cell-names = "mac-address";
> +	nvmem-cells = <&ethernet_mac2_address>;
>   	phy-handle = <&ethphy2>;
>   	phy-mode = "rgmii-id";
>   	pinctrl-0 = <&eth2_rgmii_pins_a>;

Yaml issue reported y Rob still not reproduced on v6.11-rc1. I apply 
this patch then on stm32-next. In case of yml issue reported by 
linux-next or other bot, I'll revert it from my branch before sending my PR.

regards
Alex

