Return-Path: <devicetree+bounces-3602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 694E57AF6F8
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 01:52:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A2A6F282322
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 23:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FD274BDC0;
	Tue, 26 Sep 2023 23:52:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1B511731
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 23:52:08 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D7C61AC5A
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:52:05 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 7A05386C13;
	Wed, 27 Sep 2023 01:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1695772323;
	bh=bZYRkoDhWlo1Lv4/2GJe5H9WktaebAg/yWqtDVbxoCM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iANx9vKOY9yc/IzPdCSBL2PZdnGYc3Qpd/Gu0YtrwRYx8SoDfsBtsr1xLmUCIF7Zd
	 5aeBXVEgWsevFY0B187vrERIbtzDmMlqP4JR0ZG6OG9tO8MfXG+798bhHNxfVoYDkg
	 MndEIC6dM25rAMFMFV8MdfZX/rhNAtVJmR3Yn4F3SQfy6P6W5Q3SsqL/xmzP06FpoF
	 cDeB94JbRjNscc1DrqYAXJfjLhCiJxjQt+LR5rCuA/DZFTAjO7U0S19ALEKGqoU3hP
	 ozVlVA2zEBD4Gz+srMnJcl/c4t54N8HWIFUWpO0+pcbkbpq4rNGEIr0b725b9lOrEL
	 jTxR7zb1KsbhA==
Message-ID: <48d52dab-79b0-3db2-b492-797b0df857e8@denx.de>
Date: Wed, 27 Sep 2023 01:46:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/2] arm64: dts: imx8mp: Update i.MX8MP DHCOM SoM DT to
 production rev.200
Content-Language: en-US
To: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 devicetree@vger.kernel.org
References: <20230921192933.71639-1-marex@denx.de>
 <20230925034210.GJ7231@dragon>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20230925034210.GJ7231@dragon>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 9/25/23 05:42, Shawn Guo wrote:
> On Thu, Sep 21, 2023 at 09:29:32PM +0200, Marek Vasut wrote:
>> The current imx8mp-dhcom-som.dtsi describes prototype rev.100 SoM,
>> update the DT to describe production rev.200 SoM which brings the
>> following changes:
>> - Fast SoC GPIOs exposed on the SoM edge connector
>> - Slow GPIOs like component resets moved to I2C GPIO expander
>> - ADC upgraded from TLA2024 to ADS1015 with conversion interrupt
>> - EEPROM size increased from 256 B to 4 kiB
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
> 
> Hmm, it doesn't apply to my imx/dt64 branch.

Maybe the following series is missing ? I sent it about a month ago.

[PATCH 1/4] arm64: dts: imx8mp: Describe VDD_ARM run and standby voltage 
for DH i.MX8M Plus DHCOM SoM

