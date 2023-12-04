Return-Path: <devicetree+bounces-21198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE780802C05
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 08:26:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B38F1C20A04
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 07:26:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC9779449;
	Mon,  4 Dec 2023 07:26:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 393D3FF;
	Sun,  3 Dec 2023 23:26:14 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 595A08471;
	Mon,  4 Dec 2023 15:26:06 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 4 Dec
 2023 15:26:06 +0800
Received: from [192.168.125.88] (183.27.97.199) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 4 Dec
 2023 15:26:05 +0800
Message-ID: <26cd5320-e520-4614-9628-df1a1f47b34a@starfivetech.com>
Date: Mon, 4 Dec 2023 15:22:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] phy: starfive: Add mipi dphy tx support
Content-Language: en-US
To: Philipp Zabel <p.zabel@pengutronix.de>, <devicetree@vger.kernel.org>,
	<linux-phy@lists.infradead.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<minda.chen@starfivetech.com>, <changhuang.liang@starfivetech.com>,
	<rogerq@kernel.org>, <geert+renesas@glider.be>,
	<keith.zhao@starfivetech.com>, <linux-kernel@vger.kernel.org>
References: <20231117130421.79261-1-shengyang.chen@starfivetech.com>
 <20231117130421.79261-3-shengyang.chen@starfivetech.com>
 <939b96b8727054729207211f25ff91ccf8328e28.camel@pengutronix.de>
From: Shengyang Chen <shengyang.chen@starfivetech.com>
In-Reply-To: <939b96b8727054729207211f25ff91ccf8328e28.camel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag

Hi Philipp,

Thanks for review and comment.

On 2023/11/27 21:17, Philipp Zabel wrote:
> On Fr, 2023-11-17 at 21:04 +0800, Shengyang Chen wrote:
>> Add mipi dphy tx support for the StarFive JH7110 SoC.
>> It is used to transfer DSI data.
>> 
>> Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
>> ---
> [...]
>> diff --git a/drivers/phy/starfive/phy-jh7110-dphy-tx.c b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
>> new file mode 100644
>> index 000000000000..69aa172563e4
>> --- /dev/null
>> +++ b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
>> @@ -0,0 +1,542 @@
> [...]
>> +static int stf_dphy_probe(struct platform_device *pdev)
>> +{
> [...]
>> +	dphy->topsys = devm_platform_ioremap_resource(pdev, 0);
>> +	if (IS_ERR(dphy->topsys)) {
>> +		ret = PTR_ERR(dphy->topsys);
>> +		return ret;
> 
> This could be shortened to:
> 
> 		return PTR_ERR(dphy->topsys);
> 

ok, will shortened to "return PTR_ERR(dphy->topsys);" 

>> +	}
>> +
>> +	pm_runtime_enable(&pdev->dev);
>> +
>> +	dphy->mipitx_0p9 = devm_regulator_get(&pdev->dev, "mipi_0p9");
>> +	if (IS_ERR(dphy->mipitx_0p9)) {
>> +		ret = PTR_ERR(dphy->mipitx_0p9);
>> +		return ret;
> 
> Same as above.
> 

ok, will fix it.

>> +	}
>> +
>> +	dphy->txesc_clk = devm_clk_get(&pdev->dev, "dphy_txesc");
>> +	if (IS_ERR(dphy->txesc_clk)) {
>> +		ret = PTR_ERR(dphy->txesc_clk);
>> +		dev_err(&pdev->dev, "txesc_clk get error\n");
>> +		return ret;
> 
> Consider using dev_err_probe():
> 
> 		return dev_err_probe(&pdev->dev, PTR_ERR(dphy->txesc_clk),
> 				     "txesc_clk get error\n");
> 
> And the same for the error paths below.
> 

ok, it will be tried and verified. It will be used if no problem.

>> +	}
>> +
>> +	dphy->sys_rst = reset_control_get_exclusive(&pdev->dev, "dphy_sys");
> 
> Why not devm_reset_control_get_exclusive()?
> 

ok, it will be tried and verified. It will be used if no problem.

>> +	if (IS_ERR(dphy->sys_rst)) {
>> +		ret = PTR_ERR(dphy->sys_rst);
>> +		dev_err(&pdev->dev, "sys_rst get error\n");
>> +		return ret;
>> +	}
>> +
>> +	dphy->txbytehs_rst = reset_control_get_exclusive(&pdev->dev, "dsi_txbytehs");
> 
> Same as above.
> 

ok, I'll follow up on this.

>> +	if (IS_ERR(dphy->txbytehs_rst)) {
>> +		dev_err(&pdev->dev, "Failed to get txbytehs_rst\n");
>> +		return PTR_ERR(dphy->txbytehs_rst);
>> +	}
>> +
>> +	dphy->phy = devm_phy_create(&pdev->dev, NULL, &stf_dphy_ops);
>> +	if (IS_ERR(dphy->phy)) {
>> +		ret = PTR_ERR(dphy->phy);
>> +		dev_err(&pdev->dev, "Failed to create phy\n");
>> +		return ret;
>> +	}
>> +	phy_set_drvdata(dphy->phy, dphy);
>> +
>> +	phy_provider = devm_of_phy_provider_register(&pdev->dev, of_phy_simple_xlate);
>> +	if (IS_ERR(phy_provider)) {
>> +		ret = PTR_ERR(phy_provider);
>> +		dev_err(&pdev->dev, "Failed to create phy\n");
>> +		return ret;
>> +	}
>> +
>> +	return PTR_ERR_OR_ZERO(phy_provider);
> 
> This can not be reached in the error case, so just:
> 
> 	return 0;
> 
> should suffice.
> 

ok, will fix it.

> 
> regards
> Philipp

thanks a lot.

Best Regards,
Shengyang

