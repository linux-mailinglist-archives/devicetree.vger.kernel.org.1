Return-Path: <devicetree+bounces-7167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE6F7BF7DE
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:51:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89A011C20AF7
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 09:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DF6317988;
	Tue, 10 Oct 2023 09:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="kmo+WQ8n"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA4B524F
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:51:07 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1450993;
	Tue, 10 Oct 2023 02:51:05 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EC1316607243;
	Tue, 10 Oct 2023 10:51:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696931463;
	bh=3kyKoSt/INO+3feEd+AMhyEu/RdjqOkiz8cSA/8F6hc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kmo+WQ8nLvz5RtPRaQLIMNNNPvgFahhYIVm3S1JSj2+XwdkDnZkxu/APhr/napL7h
	 aQYQ4XJcmOfepkznGnNlrk81hPqt2oHkfwmW9gMKZcxK73Uw9zGQQHbUkw9CrmnmhD
	 osQRGm4GOduNvbzZfcbi1lhj9U7Qb4WovhM7AnSoe1UHozQ5UxUqmaRtS7Q/ACX5ny
	 iPBFj76/BWM4MvZ8z2B/zeYNsE684sLDxgtIAPwsn8OVSMxfVHAyknJjcFVQhdeWBy
	 GqJgBnJehpSz4p3o3jYaFm0zengwhnWByyPoyTwDU86bZ1ViludAOCKL3vgtotiNkW
	 zMUx2o4ZaiPLw==
Message-ID: <b90c6bf7-d604-ec88-c7da-84726bba3af4@collabora.com>
Date: Tue, 10 Oct 2023 11:51:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v3 2/2] PCI: mediatek-gen3: Add power and reset control
 feature for downstream component
Content-Language: en-US
To: Jian Yang <jian.yang@mediatek.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jianjun Wang <jianjun.wang@mediatek.com>, Rob Herring <robh@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 Chuanjia.Liu@mediatek.com, Jieyy.Yang@mediatek.com,
 Qizhong.Cheng@mediatek.com
References: <20231009084957.18536-1-jian.yang@mediatek.com>
 <20231009084957.18536-3-jian.yang@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231009084957.18536-3-jian.yang@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 09/10/23 10:49, Jian Yang ha scritto:
> From: "jian.yang" <jian.yang@mediatek.com>
> 
> Make MediaTek's controller driver capable of controlling power
> supplies and reset pin of a downstream component in power-on and
> power-off flow.
> 
> Some downstream components (e.g., a WIFI chip) may need an extra
> reset other than PERST# and their power supplies, depending on
> the requirements of platform, may need to controlled by their
> parent's driver. To meet the requirements described above, I add this
> feature to MediaTek's PCIe controller driver as a optional feature.
> 
> Signed-off-by: jian.yang <jian.yang@mediatek.com>
> ---
>   drivers/pci/controller/pcie-mediatek-gen3.c | 93 ++++++++++++++++++++-
>   1 file changed, 92 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-mediatek-gen3.c b/drivers/pci/controller/pcie-mediatek-gen3.c
> index e0e27645fdf4..ad4b25c34f5d 100644
> --- a/drivers/pci/controller/pcie-mediatek-gen3.c
> +++ b/drivers/pci/controller/pcie-mediatek-gen3.c
> @@ -8,6 +8,7 @@
>   
>   #include <linux/clk.h>
>   #include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
>   #include <linux/iopoll.h>
>   #include <linux/irq.h>
>   #include <linux/irqchip/chained_irq.h>
> @@ -20,6 +21,8 @@
>   #include <linux/platform_device.h>
>   #include <linux/pm_domain.h>
>   #include <linux/pm_runtime.h>
> +#include <linux/pm_wakeup.h>
> +#include <linux/regulator/consumer.h>
>   #include <linux/reset.h>
>   
>   #include "../pci.h"
> @@ -100,6 +103,13 @@
>   #define PCIE_ATR_TLP_TYPE_MEM		PCIE_ATR_TLP_TYPE(0)
>   #define PCIE_ATR_TLP_TYPE_IO		PCIE_ATR_TLP_TYPE(2)
>   
> +/* Downstream Component power supplies used by MediaTek PCIe */
> +static const char *const dsc_power_supplies[] = {
> +	"pcie1v8",
> +	"pcie3v3",
> +	"pcie12v",
> +};

Please....

static const char *const dsc_power_supplies[] = {
	"vpcie1v8",
	"vpcie3v3",
	"vpcie12v",
};

> +
>   /**
>    * struct mtk_msi_set - MSI information for each set
>    * @base: IO mapped register base
> @@ -122,6 +132,9 @@ struct mtk_msi_set {
>    * @phy: PHY controller block
>    * @clks: PCIe clocks
>    * @num_clks: PCIe clocks count for this port
> + * @supplies: Downstream Component power supplies
> + * @num_supplies: Downstream Component power supplies count
> + * @dsc_reset: The GPIO pin to reset Downstream component
>    * @irq: PCIe controller interrupt number
>    * @saved_irq_state: IRQ enable state saved at suspend time
>    * @irq_lock: lock protecting IRQ register access
> @@ -141,6 +154,9 @@ struct mtk_gen3_pcie {
>   	struct phy *phy;
>   	struct clk_bulk_data *clks;
>   	int num_clks;
> +	struct regulator_bulk_data *supplies;
> +	int num_supplies;
> +	struct gpio_desc *dsc_reset;
>   
>   	int irq;
>   	u32 saved_irq_state;
> @@ -763,7 +779,7 @@ static int mtk_pcie_parse_port(struct mtk_gen3_pcie *pcie)
>   	struct device *dev = pcie->dev;
>   	struct platform_device *pdev = to_platform_device(dev);
>   	struct resource *regs;
> -	int ret;
> +	int ret, i;

Since you anyway have to send a v4, can you please also order these by name?

int i, ret;

>   
>   	regs = platform_get_resource_byname(pdev, IORESOURCE_MEM, "pcie-mac");
>   	if (!regs)
> @@ -809,14 +825,86 @@ static int mtk_pcie_parse_port(struct mtk_gen3_pcie *pcie)
>   		return pcie->num_clks;
>   	}
>   
> +	pcie->num_supplies = ARRAY_SIZE(dsc_power_supplies);
> +	pcie->supplies = devm_kcalloc(dev, pcie->num_supplies,
> +				      sizeof(*pcie->supplies),
> +				      GFP_KERNEL);
> +	if (!pcie->supplies)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < pcie->num_supplies; i++)
> +		pcie->supplies[i].supply = dsc_power_supplies[i];
> +
> +	ret = devm_regulator_bulk_get(dev, pcie->num_supplies, pcie->supplies);
> +	if (ret)
> +		return ret;
> +
> +	pcie->dsc_reset = devm_gpiod_get_optional(dev, "dsc-reset",
> +						  GPIOD_OUT_LOW);
> +	if (IS_ERR(pcie->dsc_reset)) {
> +		ret = PTR_ERR(pcie->dsc_reset);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "failed to request DSC reset gpio\n");

dev_err_probe() does exactly what you're doing here, but it's shorter :-)

> +
> +		return ret;
> +	}
> +
>   	return 0;
>   }
>   
> +static int mtk_pcie_dsc_power_up(struct mtk_gen3_pcie *pcie)
> +{
> +	struct device *dev = pcie->dev;
> +	int ret;
> +
> +	/*
> +	 * Skip downstream component's power-up flow if it was kept power-on

* Skip powering up the downstream component if it was kept powered on


> +	 * while system entered suspend state
> +	 */
> +	if (device_wakeup_path(dev))
> +		return 0;
> +
> +	/* Assert Downstream Component reset */
> +	if (pcie->dsc_reset)
> +		gpiod_set_value_cansleep(pcie->dsc_reset, 1);
> +
> +	ret = regulator_bulk_enable(pcie->num_supplies, pcie->supplies);
> +	if (ret)
> +		dev_err(dev, "failed to enable DSC power supplies: %d\n", ret);
> +
> +	/* De-assert Downstream Component reset */
> +	if (pcie->dsc_reset)
> +		gpiod_set_value_cansleep(pcie->dsc_reset, 0);
> +
> +	return ret;
> +}
> +
> +static void mtk_pcie_dsc_power_down(struct mtk_gen3_pcie *pcie)
> +{
> +	/*
> +	 * Keep downstream component power-on if it need to wake up the

* Keep downstream component powered on if it is capable of waking up
* the system from suspend

> +	 * system in suspend state
> +	 */
> +	if (device_wakeup_path(pcie->dev))
> +		return;
> +
> +	/* Assert Downstream Component reset */
> +	if (pcie->dsc_reset)
> +		gpiod_set_value_cansleep(pcie->dsc_reset, 1);
> +
> +	regulator_bulk_disable(pcie->num_supplies, pcie->supplies);
> +}
> +

Regards,
Angelo


