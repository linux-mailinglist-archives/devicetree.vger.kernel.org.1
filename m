Return-Path: <devicetree+bounces-9093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DC17CB9CB
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 06:39:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A47CF1C20510
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 04:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 064E417F3;
	Tue, 17 Oct 2023 04:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="DiiecacM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9CD315B1
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 04:39:41 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8065A83;
	Mon, 16 Oct 2023 21:39:40 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39H4dLgR099259;
	Mon, 16 Oct 2023 23:39:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1697517561;
	bh=NqnJYIfvbUMRXPZZw7oLWs/KEfLCO+zRCcnRQ0a8dPg=;
	h=Date:CC:Subject:To:References:From:In-Reply-To;
	b=DiiecacMsb1YSQwOq3jSsXcYWT3jv75DiLINdnTZbleKamPFLzioqhtWi/eQ4mFuJ
	 DpZR0WJrdNxIiprI1AQ7f7BslRRGaCJwhzm73jy0fw7EvTaDhnYOWHRbN5k+lUhI0D
	 fFWw1PVYPVQihuC8M64EVijbg6dR6Pa1DMYtOLRQ=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39H4dLOw031510
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 16 Oct 2023 23:39:21 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 16
 Oct 2023 23:39:20 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 16 Oct 2023 23:39:21 -0500
Received: from [172.24.227.9] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39H4dF73031060;
	Mon, 16 Oct 2023 23:39:15 -0500
Message-ID: <63b128a3-8447-4790-a992-ce4e1b10fe58@ti.com>
Date: Tue, 17 Oct 2023 10:09:14 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
CC: <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <jingoohan1@gmail.com>,
        <gustavo.pimentel@synopsys.com>, <mani@kernel.org>,
        <marek.vasut+renesas@gmail.com>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-renesas-soc@vger.kernel.org>,
        Ravi
 Gunasekaran <r-gunasekaran@ti.com>, Sriramakrishnan <srk@ti.com>,
        Serge Semin
	<fancer.lancer@gmail.com>,
        <linux-arm-kernel@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v24 08/16] PCI: dwc: Disable two BARs to avoid unnecessary
 memory assignment
To: Bjorn Helgaas <helgaas@kernel.org>,
        Yoshihiro Shimoda
	<yoshihiro.shimoda.uh@renesas.com>
References: <20231016214826.GA1226689@bhelgaas>
Content-Language: en-US
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <20231016214826.GA1226689@bhelgaas>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello Bjorn,

On 17/10/23 03:18, Bjorn Helgaas wrote:
> [+cc Siddharth, Ravi, Sriramakrishnan]
> 
> On Wed, Oct 11, 2023 at 04:14:15PM +0900, Yoshihiro Shimoda wrote:
>> According to the section 3.5.7.2 "RC Mode" in DWC PCIe Dual Mode
>> Rev.5.20a, we should disable two BARs to avoid unnecessary memory
>> assignment during device enumeration. Otherwise, Renesas R-Car Gen4
>> PCIe controllers cannot work correctly in host mode.
>>
>> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
>> ---
>>  drivers/pci/controller/dwc/pcie-designware-host.c | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
>> index a7170fd0e847..56cc7ff6d508 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
>> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
>> @@ -737,6 +737,14 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
>>  	u32 val, ctrl, num_ctrls;
>>  	int ret;
>>  
>> +	/*
>> +	 * According to the section 3.5.7.2 "RC Mode" in DWC PCIe Dual Mode
>> +	 * Rev.5.20a, we should disable two BARs to avoid unnecessary memory
>> +	 * assignment during device enumeration.
>> +	 */
>> +	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_0, 0x0);
>> +	dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_1, 0x0);
> 
> I cc'd Siddharth and others because they are working on a Keystone
> issue with MSI-X that requires BAR0; see
> https://lore.kernel.org/r/20231011123451.34827-1-s-vadapalli@ti.com 
> 
> I assume any DWC controller that uses MSI-X would require BAR0 or BAR1
> for the MSI-X Table.

Disabling BAR0 in this section will not affect the pci-keystone.c driver. The
MSI-X setup in the pci-keystone.c driver is done via the ks_pcie_v3_65_add_bus()
function which is invoked in the pci_host_probe(bridge) function call within
dw_pcie_host_init(). Since pci_host_probe(bridge) is invoked *after*
dw_pcie_setup_rc(), the MSI-X setup which involves enabling BAR0 will be
performed after BAR0 is disabled in this patch, due to which BAR0 will remain
enabled as far as MSI-X setup is concerned.

Also, the DW PCIe IP version corresponding to the Keystone PCIe host controller
is 4.90a. Even in the 4.90a Databook, in section 3.5.7.2 RC Mode, it is
suggested that the BARs should be disabled.

> 
> I don't have any of the DWC specs and don't know whether any
> controllers use MSI-X, so just heads up in case they do.  This patch
> was recently merged and will appear in v6.7.
> 
> Bjorn

-- 
Regards,
Siddharth.

