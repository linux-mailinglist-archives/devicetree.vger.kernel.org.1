Return-Path: <devicetree+bounces-6822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4582C7BCF9C
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 20:37:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08E9C2814C5
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 18:37:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83B5D154AD;
	Sun,  8 Oct 2023 18:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="LipCyjX4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF2B1864A
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 18:37:40 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E584EB3
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 11:37:38 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 6FE1C8669F;
	Sun,  8 Oct 2023 20:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1696790256;
	bh=9pDHnoghiR5/hvKLbZNmIaU28lMZuGV8cMX4LefHMEo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LipCyjX4ovuNPYo1FM2lhsKmZr9XljxfjFH1pE2FcRXAwgEmyBXDWpPO60nQ2OhYJ
	 GciBqmjIWVqVvnQ1f7NT7GkxNlWSenMPM1pKcrOb/xroGRgcbOu91oajAhkn+7RDCG
	 b2zOWLeM1npdBBtHzyLugOwLsPJ7+ZlmeHbENDwfrx76ioIIanHCY43TUfS8CEfjG/
	 oSkQ1chwZs775sw2VfLjGolJJUtlSACsBR8E21j+Gk4wP/6VG1Ll5diXUug2jYNZhz
	 Q1TvYQVZCMeo7e2dD4m7bIdqsa4NEcD/6T05vok/KsGxgpaBote5+QUdcPCiKeLIYK
	 wsuESON5f2iZw==
Message-ID: <b74f092d-52d6-4a39-8a99-056800c98f62@denx.de>
Date: Sun, 8 Oct 2023 20:37:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: imx8mp: Describe VDD_ARM run and standby
 voltage for Data Modul i.MX8M Plus eDM SBC
To: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Magnus Damm <magnus.damm@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
References: <20230831181850.154813-1-marex@denx.de>
 <20230924142150.GM7231@dragon>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20230924142150.GM7231@dragon>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 9/24/23 16:21, Shawn Guo wrote:
> On Thu, Aug 31, 2023 at 08:18:50PM +0200, Marek Vasut wrote:
>> Describe VDD_ARM (BUCK2) run and standby voltage in DT.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Fabio Estevam <festevam@gmail.com>
>> Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
>> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> Cc: Magnus Damm <magnus.damm@gmail.com>
>> Cc: Marek Vasut <marex@denx.de>
>> Cc: NXP Linux Team <linux-imx@nxp.com>
>> Cc: Peng Fan <peng.fan@nxp.com>
>> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> Cc: linux-arm-kernel@lists.infradead.org
>> ---
>>   arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
>> index 13674dc64be9d..d98a040860a48 100644
>> --- a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
>> +++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
>> @@ -362,6 +362,8 @@ buck1: BUCK1 {	/* VDD_SOC (dual-phase with BUCK3) */
>>   			};
>>   
>>   			buck2: BUCK2 {	/* VDD_ARM */
>> +				nxp,dvs-run-voltage = <950000>;
>> +				nxp,dvs-standby-voltage = <850000>;
> 
> Buck2 is not turned off in DSM on i.MX8MP?

It is turned off in SUSPEND/SNVS/OFF , not in IDLE/RUN .

