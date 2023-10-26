Return-Path: <devicetree+bounces-12048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC547D7ADA
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 04:23:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 780461C20E26
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 02:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8A188F42;
	Thu, 26 Oct 2023 02:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC662F44
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 02:22:59 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD892AC;
	Wed, 25 Oct 2023 19:22:56 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id E873824DBFD;
	Thu, 26 Oct 2023 10:22:35 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 26 Oct
 2023 10:22:35 +0800
Received: from [192.168.125.85] (183.27.99.126) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 26 Oct
 2023 10:22:34 +0800
Message-ID: <09f8a530-1bd0-4dc3-85a2-8d67fdcd0148@starfivetech.com>
Date: Thu, 26 Oct 2023 10:22:34 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 14/20] PCI: microchip: Add get_events() callback
 function
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
CC: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring
	<robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi
	<lpieralisi@kernel.org>, Daire McNamara <daire.mcnamara@microchip.com>, "Emil
 Renner Berthing" <emil.renner.berthing@canonical.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-pci@vger.kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
	"Palmer Dabbelt" <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
	"Philipp Zabel" <p.zabel@pengutronix.de>, Mason Huo
	<mason.huo@starfivetech.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Kevin Xie <kevin.xie@starfivetech.com>
References: <20231020104341.63157-1-minda.chen@starfivetech.com>
 <20231020104341.63157-15-minda.chen@starfivetech.com>
 <20231025-lizard-prideful-5223384b2c27@spud>
From: Minda Chen <minda.chen@starfivetech.com>
In-Reply-To: <20231025-lizard-prideful-5223384b2c27@spud>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [183.27.99.126]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag



On 2023/10/25 18:44, Conor Dooley wrote:
> Hey,
> 
> On Fri, Oct 20, 2023 at 06:43:35PM +0800, Minda Chen wrote:
>> PolarFire implements their own PCIe interrupts,
>> which added to global PCIe field for PLDA lack of
>> MSI controller, the interrupts to event num mapping
>> is different to PLDA local interrupts. So add
>> get_events() function pointer.
> 
> Just FYI, it's not the PLDA IP's lack of an MSI controller, it's the SoC
> itself that doesn't have one. Last time I spoke to Daire about this, he
> was surprised that you didn't need something similar. I might reword
> this as
> 
> "PolarFire SoC implements its own PCIe interrupts, additional to the
> regular PCIe interrupts, due to the lack of an MSI controller, so the
> interrupt to event number mapping is different to the PLDA local
> interrupts, necessitating a custom get_events() implementation."
> 
>> Also add struct plda_event_ops function pointer structure
>> to struct plda_pcie_rp.
> 
> I'd probably also drop this, as it is evident from the diff.
> 
> Cheers,
> Conor.
> 
OK. Thanks very much.
>> plda_handle_events() will call the get_events() callback
>> function pointer directly. For the robustness of codes,
>> add checking in plda_init_interrupts().
>> 
>> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>> ---
>>  drivers/pci/controller/plda/pcie-microchip-host.c | 14 +++++++++++++-
>>  drivers/pci/controller/plda/pcie-plda.h           |  8 ++++++++
>>  2 files changed, 21 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/pci/controller/plda/pcie-microchip-host.c b/drivers/pci/controller/plda/pcie-microchip-host.c
>> index e57827bdb4b3..5a8c134bf643 100644
>> --- a/drivers/pci/controller/plda/pcie-microchip-host.c
>> +++ b/drivers/pci/controller/plda/pcie-microchip-host.c
>> @@ -652,7 +652,7 @@ static void plda_handle_event(struct irq_desc *desc)
>>  
>>  	chained_irq_enter(chip, desc);
>>  
>> -	events = mc_get_events(port);
>> +	events = port->event_ops->get_events(port);
>>  
>>  	for_each_set_bit(bit, &events, port->num_events)
>>  		generic_handle_domain_irq(port->event_domain, bit);
>> @@ -811,7 +811,12 @@ static int mc_request_event_irq(struct plda_pcie_rp *plda, int event_irq,
>>  				0, event_cause[event].sym, plda);
>>  }
>>  
>> +static const struct plda_event_ops mc_event_ops = {
>> +	.get_events = mc_get_events,
>> +};
>> +
>>  static const struct plda_event mc_event = {
>> +	.event_ops         = &mc_event_ops,
>>  	.request_event_irq = mc_request_event_irq,
>>  	.intx_event        = EVENT_LOCAL_PM_MSI_INT_INTX,
>>  	.msi_event         = EVENT_LOCAL_PM_MSI_INT_MSI,
>> @@ -925,6 +930,11 @@ static int plda_init_interrupts(struct platform_device *pdev,
>>  	int i, intx_irq, msi_irq, event_irq;
>>  	int ret;
>>  
>> +	if (!event->event_ops || !event->event_ops->get_events) {
>> +		dev_err(dev, "no get events ops\n");
>> +		return -EINVAL;
>> +	}
>> +
>>  	ret = plda_pcie_init_irq_domains(port);
>>  	if (ret) {
>>  		dev_err(dev, "failed creating IRQ domains\n");
>> @@ -935,6 +945,8 @@ static int plda_init_interrupts(struct platform_device *pdev,
>>  	if (irq < 0)
>>  		return -ENODEV;
>>  
>> +	port->event_ops = event->event_ops;
>> +
>>  	for (i = 0; i < port->num_events; i++) {
>>  		event_irq = irq_create_mapping(port->event_domain, i);
>>  		if (!event_irq) {
>> diff --git a/drivers/pci/controller/plda/pcie-plda.h b/drivers/pci/controller/plda/pcie-plda.h
>> index fba7343f9a96..df1729095952 100644
>> --- a/drivers/pci/controller/plda/pcie-plda.h
>> +++ b/drivers/pci/controller/plda/pcie-plda.h
>> @@ -102,6 +102,12 @@
>>  #define EVENT_PM_MSI_INT_SYS_ERR		12
>>  #define NUM_PLDA_EVENTS				13
>>  
>> +struct plda_pcie_rp;
>> +
>> +struct plda_event_ops {
>> +	u32 (*get_events)(struct plda_pcie_rp *pcie);
>> +};
>> +
>>  struct plda_msi {
>>  	struct mutex lock;		/* Protect used bitmap */
>>  	struct irq_domain *msi_domain;
>> @@ -117,11 +123,13 @@ struct plda_pcie_rp {
>>  	struct irq_domain *event_domain;
>>  	raw_spinlock_t lock;
>>  	struct plda_msi msi;
>> +	const struct plda_event_ops *event_ops;
>>  	void __iomem *bridge_addr;
>>  	int num_events;
>>  };
>>  
>>  struct plda_event {
>> +	const struct plda_event_ops *event_ops;
>>  	int (*request_event_irq)(struct plda_pcie_rp *pcie,
>>  				 int event_irq, int event);
>>  	int intx_event;
>> -- 
>> 2.17.1
>> 

