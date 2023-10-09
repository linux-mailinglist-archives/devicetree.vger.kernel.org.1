Return-Path: <devicetree+bounces-6851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4687BD2D7
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 07:41:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D2D11C208C3
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 05:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2832AB651;
	Mon,  9 Oct 2023 05:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="KHDtihLb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4CD1FC5
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 05:41:08 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13D959E;
	Sun,  8 Oct 2023 22:41:05 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3995eZMZ056348;
	Mon, 9 Oct 2023 00:40:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696830035;
	bh=uH1s6pUcj06GVFmMzVsYyW292JwkPCIrAGTeZPFkZrI=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=KHDtihLb5/nkre8mGz6ZsxjQbhIUSuhMoNmGdRCaSURHNnGDmJfE9XnTxjQ/fvnbh
	 CEJhh/zcFr75PmyqL83NaZRSuXfwJr+Tq7AjJ8Rh2yeQiEPnyM/d4Zym3JYhoS7Fqi
	 20qH3sZbn2o/eT/M1hYtTeCCtvmJdBC+PvZtWq64=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3995eZF2018233
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 9 Oct 2023 00:40:35 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 9
 Oct 2023 00:40:35 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 9 Oct 2023 00:40:35 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3995eYQV043957;
	Mon, 9 Oct 2023 00:40:35 -0500
Date: Mon, 9 Oct 2023 11:10:34 +0530
From: Dhruva Gole <d-gole@ti.com>
To: Muhammed Efe Cetin <efectn@6tel.net>
CC: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>, <heiko@sntech.de>,
        <jonas@kwiboo.se>, <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>, <megi@xff.cz>,
        <robh+dt@kernel.org>, <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: Add Orange Pi 5
Message-ID: <20231009054034.am2e4hcmwoworeml@dhruva>
References: <20230928105137.5ljhuoxjc7et5thw@dhruva>
 <20231005135405.257495-1-efectn@6tel.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231005135405.257495-1-efectn@6tel.net>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello,

On Oct 05, 2023 at 16:54:04 +0300, Muhammed Efe Cetin wrote:
> Hello,
> 
> On 28.09.2023 13:51, Dhruva Gole wrote:
> > Hi,
> > 
> > On Aug 21, 2023 at 18:47:59 +0300, Muhammed Efe Cetin wrote:
> >> Add initial support for OPi5 that includes support for USB2, PCIe2, Sata,
> >> Sdmmc, SPI Flash, PMIC.
> >>
> >> Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
> >> Reviewed-by: Ondřej Jirman <megi@xff.cz>
> >> ---
> >>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >>   .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 673 ++++++++++++++++++
> >>   2 files changed, 674 insertions(+)
> >>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> >>
> > ...
> > 
> > Can you provide some sort of documentation on how I can build and boot
> > the kernel on this board? I was unable to use the upstream arm64
> > defconfig with this exact series applied to boot the board.
> 
> What was wrong when you tried to compile & boot the board? Can you provide some logs?

Umm don't have logs at hand, but I remember it didn't really reach the
linux first line either, it went into sort of a bootloop just after
the uboot stage.

> 
> > 
> >> +
> >> +&i2c6 {
> >> +	pinctrl-names = "default";
> >> +	pinctrl-0 = <&i2c6m3_xfer>;
> >> +	status = "okay";
> >> +
> >> +	hym8563: rtc@51 {
> >> +		compatible = "haoyu,hym8563";
> >> +		reg = <0x51>;
> >> +		#clock-cells = <0>;
> >> +		clock-output-names = "hym8563";
> >> +		pinctrl-names = "default";
> >> +		pinctrl-0 = <&hym8563_int>;
> >> +		interrupt-parent = <&gpio0>;
> >> +		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
> >> +		wakeup-source;
> > 
> > Are you able to actually use rtc as a wakeup source? I tried this
> > on a downstream kernel that I mention below..
> > 
> > rtcwake -s 10 -m mem
> > 
> > didn't actually seem to wake the device from deepsleep after 10 seconds.
> > Do you know what other pins I can use as wakeup sources?
> 
> No, i've not tried it before.

ah okay

> 
> > 
> >> +	};
> >> +};
> >> +
> >> +&mdio1 {
> >> +	rgmii_phy1: ethernet-phy@1 {
> >> +		compatible = "ethernet-phy-ieee802.3-c22";
> > 
> > Just wondering, can you please give some logs of the board with eth
> > working? The image that I have from opi seems to fail eth? As in I am
> > not able to see any ip address. here are the logs:
> > 
> > https://gist.github.com/DhruvaG2000/eda2762e35013c8d5ac9f37e818103a3
> 
> Unfortunately the board is not near me currently. However, i was able to use GMAC ethernet in both the upstreram and downstream kernels. Did you try any images other than Orange Pi ones?

Nope, are there any other images that maybe more suitable? Please can you point me to them?

> 
> > 
> > ...
> > 
> 

-- 
Best regards,
Dhruva Gole <d-gole@ti.com>

