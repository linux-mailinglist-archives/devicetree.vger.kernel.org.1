Return-Path: <devicetree+bounces-24652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4903B810C2F
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 09:15:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6B701F210AD
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 08:15:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E7F91D53A;
	Wed, 13 Dec 2023 08:15:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4997CDC;
	Wed, 13 Dec 2023 00:15:49 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 5B74582A9;
	Wed, 13 Dec 2023 16:15:41 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 13 Dec
 2023 16:15:41 +0800
Received: from [192.168.125.85] (183.27.97.57) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 13 Dec
 2023 16:15:40 +0800
Message-ID: <9523aa6b-55a8-4e6a-a3ba-45d9b1dacc77@starfivetech.com>
Date: Wed, 13 Dec 2023 16:15:39 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 15/21] PCI: microchip: Add event IRQ domain ops to
 struct plda_event
Content-Language: en-US
To: Lorenzo Pieralisi <lpieralisi@kernel.org>
CC: Conor Dooley <conor@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
	<kw@linux.com>, Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas
	<bhelgaas@google.com>, Daire McNamara <daire.mcnamara@microchip.com>, "Emil
 Renner Berthing" <emil.renner.berthing@canonical.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-pci@vger.kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
	"Palmer Dabbelt" <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
	"Philipp Zabel" <p.zabel@pengutronix.de>, Mason Huo
	<mason.huo@starfivetech.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Kevin Xie <kevin.xie@starfivetech.com>
References: <20231206105839.25805-1-minda.chen@starfivetech.com>
 <20231206105839.25805-16-minda.chen@starfivetech.com>
 <ZXhB1kKpElgKx8vm@lpieralisi>
From: Minda Chen <minda.chen@starfivetech.com>
In-Reply-To: <ZXhB1kKpElgKx8vm@lpieralisi>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag



On 2023/12/12 19:19, Lorenzo Pieralisi wrote:
> On Wed, Dec 06, 2023 at 06:58:33PM +0800, Minda Chen wrote:
>> For lack of an MSI controller, The new added PCIe interrupts have to be
>> added to global interrupt event field. PolarFire event domain ops can not
>> be re-used.
> 
> I don't understand what this means, please explain and I will
> add it to the commit log.
> 
Sorry.
Microchip Polarfire PCIe adds 11 PCIe interrupts to PCIe global event domain.(Total 28 PCIe interrupts)
The microchip event domain and event irqchip will handle these interrupts.
But PLDA host contain 13 fixed PCIe interrupts. PLDA codes just process these
13 interrupts. Microchip the event irq codes are quite different and can't be used by PLDA codes.
So add an event domain field support microchip and other vendor who just using the PLDA interrupts.
>> PLDA event domain ops instances will be implemented in later patch.
> 
> Future patches don't exist, each commit log is a logical change
> that must make sense on its own, I will remove this sentence.
> 
> Lorenzo

OK, Thanks.

>> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>> ---
>>  drivers/pci/controller/plda/pcie-microchip-host.c | 6 ++++--
>>  drivers/pci/controller/plda/pcie-plda.h           | 1 +
>>  2 files changed, 5 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/pci/controller/plda/pcie-microchip-host.c b/drivers/pci/controller/plda/pcie-microchip-host.c
>> index f5e7da242aec..e6dcc572b65b 100644
>> --- a/drivers/pci/controller/plda/pcie-microchip-host.c
>> +++ b/drivers/pci/controller/plda/pcie-microchip-host.c
>> @@ -821,13 +821,15 @@ static const struct plda_event_ops mc_event_ops = {
>>  };
>>  
>>  static const struct plda_event mc_event = {
>> +	.domain_ops        = &mc_event_domain_ops,
>>  	.event_ops         = &mc_event_ops,
>>  	.request_event_irq = mc_request_event_irq,
>>  	.intx_event        = EVENT_LOCAL_PM_MSI_INT_INTX,
>>  	.msi_event         = EVENT_LOCAL_PM_MSI_INT_MSI,
>>  };
>>  
>> -static int plda_pcie_init_irq_domains(struct plda_pcie_rp *port)
>> +static int plda_pcie_init_irq_domains(struct plda_pcie_rp *port,
>> +				      const struct irq_domain_ops *ops)
>>  {
>>  	struct device *dev = port->dev;
>>  	struct device_node *node = dev->of_node;
>> @@ -941,7 +943,7 @@ static int plda_init_interrupts(struct platform_device *pdev,
>>  		return -EINVAL;
>>  	}
>>  
>> -	ret = plda_pcie_init_irq_domains(port);
>> +	ret = plda_pcie_init_irq_domains(port, event->domain_ops);
>>  	if (ret) {
>>  		dev_err(dev, "failed creating IRQ domains\n");
>>  		return ret;
>> diff --git a/drivers/pci/controller/plda/pcie-plda.h b/drivers/pci/controller/plda/pcie-plda.h
>> index df1729095952..820ea16855b5 100644
>> --- a/drivers/pci/controller/plda/pcie-plda.h
>> +++ b/drivers/pci/controller/plda/pcie-plda.h
>> @@ -129,6 +129,7 @@ struct plda_pcie_rp {
>>  };
>>  
>>  struct plda_event {
>> +	const struct irq_domain_ops *domain_ops;
>>  	const struct plda_event_ops *event_ops;
>>  	int (*request_event_irq)(struct plda_pcie_rp *pcie,
>>  				 int event_irq, int event);
>> -- 
>> 2.17.1
>> 

