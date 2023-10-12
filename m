Return-Path: <devicetree+bounces-7941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A427C6357
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 05:39:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A679A2824A0
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 03:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A24AD815;
	Thu, 12 Oct 2023 03:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="eGS13LVb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F75812
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 03:39:17 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C650A9
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 20:39:15 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 0B5AF86C0B;
	Thu, 12 Oct 2023 05:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1697081952;
	bh=FheoD6iqxVN+cScx8u+8AJSnK6kUxvI84YG+oeiMjto=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eGS13LVb/wrh9ERO7w1W6S3kLTqmC7YRZlOGDUIo5SyI8f6z4xWR/T021fF2rRzyX
	 s433t8A00r1P9Va1p8V7xpx/609LEGI6pw/crDRMYxYds2ILMChcEe7V9epmz4wtLs
	 d6Bpi2CcYQrvKOcyM4KoP5wm4gxsnpLwZKqA7vwdaUe/75pQgEVJLmHLU4nlBGEbSd
	 C+FlOGP49xgldjtcLWSDuslVRKmbyzAiDfGQxrUBxd7Tskb3xnXAd2PU/0Ry7VWXDR
	 dAvs5Cf6eRKrT9wEdKhri7TkstouaXHCyz4wQJsSsiUVFdsWS3Fh9SkbljI/CZ9bUj
	 uDMoSvgkbBLew==
Message-ID: <12a042d9-c1b1-4d2d-9aed-91676c5b295b@denx.de>
Date: Thu, 12 Oct 2023 05:39:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: imx8mp: Describe VDD_ARM run and standby
 voltage for Data Modul i.MX8M Plus eDM SBC
Content-Language: en-US
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
 <20230924142150.GM7231@dragon> <b74f092d-52d6-4a39-8a99-056800c98f62@denx.de>
 <20231009123606.GA733979@dragon>
 <18174105-de83-436c-9e77-2c61e1ef2c71@denx.de>
 <20231010005813.GG733979@dragon>
 <884b473b-40fb-4f71-9328-9da49b5d01f9@denx.de>
 <20231011021251.GQ819755@dragon>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20231011021251.GQ819755@dragon>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/11/23 04:12, Shawn Guo wrote:
> On Tue, Oct 10, 2023 at 03:42:14PM +0200, Marek Vasut wrote:
>> On 10/10/23 02:58, Shawn Guo wrote:
>>> On Mon, Oct 09, 2023 at 04:03:01PM +0200, Marek Vasut wrote:
>>>> On 10/9/23 14:36, Shawn Guo wrote:
>>>>> On Sun, Oct 08, 2023 at 08:37:34PM +0200, Marek Vasut wrote:
>>>>>> On 9/24/23 16:21, Shawn Guo wrote:
>>>>>>> On Thu, Aug 31, 2023 at 08:18:50PM +0200, Marek Vasut wrote:
>>>>>>>> Describe VDD_ARM (BUCK2) run and standby voltage in DT.
>>>>>>>>
>>>>>>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>>>>>>> ---
>>>>>>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>>>>>>> Cc: Fabio Estevam <festevam@gmail.com>
>>>>>>>> Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
>>>>>>>> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
>>>>>>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>>>>>>> Cc: Magnus Damm <magnus.damm@gmail.com>
>>>>>>>> Cc: Marek Vasut <marex@denx.de>
>>>>>>>> Cc: NXP Linux Team <linux-imx@nxp.com>
>>>>>>>> Cc: Peng Fan <peng.fan@nxp.com>
>>>>>>>> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>>>>>>>> Cc: Rob Herring <robh+dt@kernel.org>
>>>>>>>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>>>>>>>> Cc: Shawn Guo <shawnguo@kernel.org>
>>>>>>>> Cc: devicetree@vger.kernel.org
>>>>>>>> Cc: linux-arm-kernel@lists.infradead.org
>>>>>>>> ---
>>>>>>>>      arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts | 2 ++
>>>>>>>>      1 file changed, 2 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
>>>>>>>> index 13674dc64be9d..d98a040860a48 100644
>>>>>>>> --- a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
>>>>>>>> +++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
>>>>>>>> @@ -362,6 +362,8 @@ buck1: BUCK1 {	/* VDD_SOC (dual-phase with BUCK3) */
>>>>>>>>      			};
>>>>>>>>      			buck2: BUCK2 {	/* VDD_ARM */
>>>>>>>> +				nxp,dvs-run-voltage = <950000>;
>>>>>>>> +				nxp,dvs-standby-voltage = <850000>;
>>>>>>>
>>>>>>> Buck2 is not turned off in DSM on i.MX8MP?
>>>>>>
>>>>>> It is turned off in SUSPEND/SNVS/OFF , not in IDLE/RUN .
>>>>>
>>>>> Right.  But nxp,dvs-standby-voltage specifies the voltage when PMIC
>>>>> is in STANDBY mode.  My understanding is that the SoC will be in SUSPEND
>>>>> state while PMIC is in STANDBY mode.
>>>>
>>>> I agree
>>>>
>>>>> Is it possible that the SoC in
>>>>> IDLE/RUN while PMIC is in STANDBY mode at all?
>>>>
>>>> No, I don't think so, but there's still the PMIC part:
>>>>
>>>> https://www.nxp.com/docs/en/data-sheet/PCA9450.pdf
>>>>
>>>> 7.3.7 STANDBY mode
>>>> "
>>>> PCA9450 transitions to STANDBY mode from RUN mode when
>>>> both PMIC_ON_REQ and PMIC_STBY_REQ are driven high. BUCK1
>>>> and BUCK3 output voltage is set to BUCK1OUT_DVS1 and
>>>> BUCK3OUT_DVS1 and BUCK2 are turned off when DVS_CTRL bit
>>>> in each BUCKx_CTRL register is configured to 1.
>>>> "
>>>>
>>>> Specifically
>>>> "
>>>> BUCK2 are turned off when DVS_CTRL bit in each
>>>> BUCKx_CTRL register is configured to 1.
>>>> "
>>>>
>>>> 8.2.19 0x13 BUCK2CTRL
>>>> "
>>>> 4
>>>> DVS_CTRL
>>>> DVS Control configuration
>>>> 0b = BUCK voltage is determined by BUCK2VOUT_DVS0 register regardless of
>>>> PMIC_STBY_REQ
>>>> 1b = DVS control through PMIC_STBY_REQ
>>>> "
>>>>
>>>> Notice that the reset-default is '0b' , so unless the PMIC is reconfigured,
>>>> the BUCK2 will stay powered on even in STANDBY/SUSPEND.
>>>
>>> Hmm, isn't B2_ENMODE controlling on/off of BUCK2?
>>>
>>> BUCK2 enable mode
>>> 00b = OFF
>>> 01b = ON by PMIC_ON_REQ = H
>>> 10b = ON by PMIC_ON_REQ = H && PMIC_STBY_REQ = L (default)
>>> 11b = Always ON
>>>
>>> So unless you reconfigure the field, BUCK2 will be off when PMIC_STBY_REQ
>>> goes high, right?
>>
>> I think so.
>>
>> But since the buck2 in DVS behavior is user-configurable, and this can be
>> configured by the bootloader, I would say that it is a good idea to keep the
>> buck2 DVS value defined in the DT, rather than keep it undefined.
>>
>> Also note that this board is a development kit, so we just don't know what
>> users might do with it.
> 
> Honestly, I just do not see any reason why one would change the most
> power efficient default configuration to something consuming much more
> power.
> 
> Also, even if DVS control is enabled, 0.85 V is already the target
> voltage for STANDBY mode by default.
> 
> Bottom line is that we should have some comment on this change, because
> it makes eDM SBC so unique among all those PCA9450 based boards and
> makes people like me wonder why eDM SBC board needs this setting.

This is definitely not unique, a lot of i.MX8MP boards configure both 
run and standby voltage for buck2 as well, even the NXP EVK does:

next-20231011$ git grep -l dvs-standby-voltage 
arch/arm64/boot/dts/freescale/imx8mp*
arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi
arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
arch/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi
arch/arm64/boot/dts/freescale/imx8mp-evk.dts
arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp.dtsi
arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi

So, can this patch go in as-is or do you want additional comment in V2?

