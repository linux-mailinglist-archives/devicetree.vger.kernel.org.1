Return-Path: <devicetree+bounces-83871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DBC92A2D4
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 14:32:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 289C2B21CD4
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 12:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F387F80624;
	Mon,  8 Jul 2024 12:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="FDl15BYd"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7B65B05E
	for <devicetree@vger.kernel.org>; Mon,  8 Jul 2024 12:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720441921; cv=none; b=o8SABtceMX8aUiCcvTl11oBe9hBK1C145KNDzJjJI6/3q3V+Pejxah+tYSiklN9+2krpNCICEJdy/EabIZSZlarI8wpSGlMwY42oyKYY3CgBnfuFFNBsYtLd345hy3q3NP4ju1rsFvZso4CL8qmddffHs1NUIi4cGD6fKieqxKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720441921; c=relaxed/simple;
	bh=Kl5nUKYm6zGxZClFeL76kQHq2+ADhXs616WjkcIg2lQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=CGQvtsq3LdEPiu4/K0cSgt1UPhWtR3QIgMjZGy6loFEC2UjtmfJ3y6xNY30uvcYUwYjNpKkxB6BMGb8fHYibgyzITmWJbiEaBmo5675Yq5zmZURjjDmBcAkYnaGpgiiKj6yx6B3gEdP5SrMcXpbeWpynh5kCZ0I0v4RdyIupbW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=FDl15BYd; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1720441907; x=1723033907;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Kl5nUKYm6zGxZClFeL76kQHq2+ADhXs616WjkcIg2lQ=;
	b=FDl15BYdVYG9naBa6n6BcP3GKt7/JaFPG7RpQXVs8+AuQ7EfAuGg4Pf/VKT4Xe3a
	kjl9auJQm2pNxHOgWvPu+MHhhG56bJ65HBjkQid6+0qoGe+yY9szo+YKJzce8qZV
	iXQsEATq3zEFBct1wA8kvQMDusU5eMbjTi75FA7zb2g=;
X-AuditID: ac14000a-03251700000021bc-58-668bdc3261cf
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id B1.83.08636.23CDB866; Mon,  8 Jul 2024 14:31:46 +0200 (CEST)
Received: from [172.25.39.28] (172.25.0.11) by Berlix.phytec.de (172.25.0.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Mon, 8 Jul 2024
 14:31:45 +0200
Message-ID: <871dab7c-3158-451f-8938-dc1ab477e725@phytec.de>
Date: Mon, 8 Jul 2024 14:31:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arm64: dts: ti: k3-am642-evm: add ICSSG1 Ethernet
 support
To: MD Danish Anwar <danishanwar@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>, Nishanth Menon <nm@ti.com>
CC: Andrew Lunn <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
	<robh+dt@kernel.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, Tero
 Kristo <kristo@kernel.org>, <srk@ti.com>, <r-gunasekaran@ti.com>, Roger
 Quadros <rogerq@kernel.org>, Daniel Schultz <D.Schultz@phytec.de>
References: <20240215103036.2825096-1-danishanwar@ti.com>
 <20240215103036.2825096-3-danishanwar@ti.com>
Content-Language: en-US
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <20240215103036.2825096-3-danishanwar@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsWyRpKBR9f4TneaQd8yJovzdw8xW6zZe47J
	4ueGXhaL+UfOsVos/zyb3aLvxUNmi02Pr7FaXN41h83izY+zTBZdr9vZLVr3HmG3OHdvHatF
	9/YJTBb/z35gd+Dz2LSqk83jzrU9bB6bl9R77Nzxmcnj+I3tTB6fN8kFsEVx2aSk5mSWpRbp
	2yVwZbxq7WcrOMhd8XXacqYGxs2cXYycHBICJhK/Np5l6mLk4hASWMIkcfHTbTYI5w6jxIHO
	sywgVbwCNhLtB1Yzg9gsAioSnzpbWSHighInZz4BqxEVkJe4f2sGO4gtLBAu0XlrJli9iECu
	xJ83P5hBhjILzGeW+PtqI9A6DqANmRKHJhaD1DALiEvcejKfCcRmE1CXuLPhG9h8TgEriYPv
	X7NA1FhILH5zkB3ClpfY/nYO2HwhIPvFpeUsEN/IS0w795oZwg6V2PplO9MERuFZSE6dhWTd
	LCRjZyEZu4CRZRWjUG5mcnZqUWa2XkFGZUlqsl5K6iZGUDyKMHDtYOyb43GIkYmD8RCjBAez
	kgjv/BvdaUK8KYmVValF+fFFpTmpxYcYpTlYlMR5V3cEpwoJpCeWpGanphakFsFkmTg4pRoY
	bQRVFl5r3H77zGrjSUsZLuQ0KDpMXz9Rp2ily6XQw4ZZKhO/x4c1eaTYqZ08pmsR/N7pdnik
	1arP5y/N6rrH7nRiuoPSlANWHcyra/70727aLL0qQtbNuu7j0RvRzjr+fp2N984tXle7TOYA
	66z/+W28f648rqmo3GgquiRsS4WDrLflg7V5SizFGYmGWsxFxYkAleZUHLUCAAA=

Hi,

Am 15.02.24 um 11:30 schrieb MD Danish Anwar:
> ICSSG1 provides dual Gigabit Ethernet support with proper FW loaded.
> 
> The ICSSG1 MII0 (RGMII1) has DP83869 PHY attached to it. The ICSSG1 shares
> MII1 (RGMII2) PHY DP83869 with CPSW3g and it's assigned by default to
> CPSW3g. The MDIO access to MII1 (RGMII2) PHY DP83869 is controlled by MDIO
> bus switch and also assigned to CPSW3g. Therefore the ICSSG1 MII1 (RGMII2)
> port is kept disable and ICSSG1 is enabled in single MAC mode by
> default.

sorry for bumping this old thread, but I was about to add PRU-ICSSG 
nodes for the phyBOARD-Electra and noticed a difference in the firmware 
names.

[snip]
> +	icssg1_eth: icssg1-eth {
> +		compatible = "ti,am642-icssg-prueth";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&icssg1_rgmii1_pins_default>;
> +		sram = <&oc_sram>;
> +		ti,prus = <&pru1_0>, <&rtu1_0>, <&tx_pru1_0>, <&pru1_1>, <&rtu1_1>, <&tx_pru1_1>;
> +		firmware-name = "ti-pruss/am64x-sr2-pru0-prueth-fw.elf",
> +				"ti-pruss/am64x-sr2-rtu0-prueth-fw.elf",
> +				"ti-pruss/am64x-sr2-txpru0-prueth-fw.elf",
> +				"ti-pruss/am64x-sr2-pru1-prueth-fw.elf",
> +				"ti-pruss/am64x-sr2-rtu1-prueth-fw.elf",
> +				"ti-pruss/am64x-sr2-txpru1-prueth-fw.elf";

Where do these firmware names come from? All references I can find use 
am65x-sr2*: ti-linux-firmware, meta-ti and so on.
Are we expecting the the names to be renamed for linux-firmware?

Regards,
Wadim

