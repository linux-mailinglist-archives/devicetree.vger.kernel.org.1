Return-Path: <devicetree+bounces-159367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48318A6A734
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 14:32:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A63C516A2DF
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 13:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C34CF1CC8B0;
	Thu, 20 Mar 2025 13:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="TsmNuXGS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9CC322E;
	Thu, 20 Mar 2025 13:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742477519; cv=none; b=OYUuVKRPFFCjiajop0PJJ7ZC0l7wfjga5qhDO/N7Fvqo0j2htxFJDj5rtx6V9Oh6jPTtYnL+D8o4K0MAC/4wCC0rDd/ciKJn1OJYaKzriwdE1PZbabV6J5ghHgcAUQPYODBFPSKZ4UX1N9INJ0AmZgsNOqiD7g88vcUtKKcqN9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742477519; c=relaxed/simple;
	bh=/ARGXQ16wIbFIjef7OkNJ2isEjOpUmbsV4llJElMt3s=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=UZazUgo6umN51DUQQMB1/UCqW2NumVSPJzYsNc+mx8PEegja39eiaNCuRLDU8+0wVFM39PNwZuPg281Ddlgx58YW4jFYcdtpUn5KcQZqc7kg6aZixkRnEMOtWTkWiAWF2YIDnOPTpelYLhby+HURfJAaZgkjLrGgk0nedUr7nlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=TsmNuXGS; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52K8qApU025723;
	Thu, 20 Mar 2025 14:31:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	2GhEP0iObycxxgMfhvUnZ9ov+e48SKG/yYCAdiHKKuU=; b=TsmNuXGS/snz4UFE
	P68BI2sd+ASVIYb5eUGJ/71BUzcbD56/h2Vr21LC+gOz2McBMXUSk+7EG/uh9q0d
	eE8Q3bMrLLrUDa2f6sax/g9rS1QpWmjQ/815M0P3VLasNkomG2Mb1FKaV5DHVDFK
	OS3cxR5G59cP5IVsaVfe6kORjbjGpT3/oF0vRhViLSomzt1DdpRToVn7f78kyUH6
	B+i0QpMNkF+jdBWi8aruybvG3I4DEe7/jjZxsMJvSM1yRQFSyYMs1qaSFV8TarQf
	c3f5OIaNwIgElO5psBEBSqeCMD/cBFNurkh/iPbBcn7SXSbf4/wTRGLfyeDWOr/6
	IItEXA==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 45fuc8p0ke-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Mar 2025 14:31:21 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id D1FF640045;
	Thu, 20 Mar 2025 14:29:59 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7496A8095E1;
	Thu, 20 Mar 2025 14:28:53 +0100 (CET)
Received: from [10.48.87.62] (10.48.87.62) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Thu, 20 Mar
 2025 14:28:52 +0100
Message-ID: <1e3498a2-9279-4363-a0d9-8187933f6691@foss.st.com>
Date: Thu, 20 Mar 2025 14:28:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/8] memory: Add STM32 Octo Memory Manager driver
To: Krzysztof Kozlowski <krzk@kernel.org>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas
	<catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
CC: <linux-spi@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <christophe.kerello@foss.st.com>
References: <20250219080059.367045-1-patrice.chotard@foss.st.com>
 <20250219080059.367045-5-patrice.chotard@foss.st.com>
 <eaf1ecca-4fde-4128-8590-6013c3a13a04@kernel.org>
 <8b1b7df5-07f4-4f95-88e7-4e95ee909ffd@foss.st.com>
 <ac119dba-6e73-496c-97e1-d59ac0fe4a27@kernel.org>
 <06244bfb-1bd0-4a07-a928-3d2e68a89259@foss.st.com>
 <f508b96e-81c8-41bd-baca-ebd1b4419904@kernel.org>
Content-Language: en-US
From: Patrice CHOTARD <patrice.chotard@foss.st.com>
In-Reply-To: <f508b96e-81c8-41bd-baca-ebd1b4419904@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-20_03,2025-03-20_01,2024-11-22_01



On 3/19/25 08:37, Krzysztof Kozlowski wrote:
> On 18/03/2025 14:40, Patrice CHOTARD wrote:
>>
>>
>> On 3/13/25 08:33, Krzysztof Kozlowski wrote:
>>> On 12/03/2025 15:23, Patrice CHOTARD wrote:
>>>>>> +static int stm32_omm_disable_child(struct device *dev)
>>>>>> +{
>>>>>> +	struct stm32_omm *omm = dev_get_drvdata(dev);
>>>>>> +	struct reset_control *reset;
>>>>>> +	int ret;
>>>>>> +	u8 i;
>>>>>> +
>>>>>> +	for (i = 0; i < omm->nb_child; i++) {
>>>>>> +		ret = clk_prepare_enable(omm->child[i].clk);
>>>>>> +		if (ret) {
>>>>>> +			dev_err(dev, "Can not enable clock\n");
>>>>>> +			return ret;
>>>>>> +		}
>>>>>> +
>>>>>> +		reset = of_reset_control_get_exclusive(omm->child[i].node, 0);
>>>>>> +		if (IS_ERR(reset)) {
>>>>>> +			dev_err(dev, "Can't get child reset\n");
>>>>>
>>>>> Why do you get reset of child? Parent is not suppposed to poke there.
>>>>> You might not have the reset there in the first place and it would not
>>>>> be an error.
>>>>
>>>> By ressetting child (OSPI), we ensure they are disabled and in a known state.
>>>> See the comment below.
>>>>
>>>>>
>>>>>
>>>>>> +			return PTR_ERR(reset);
>>>>>> +		};
>>>>>> +
>>>>>> +		/* reset OSPI to ensure CR_EN bit is set to 0 */
>>>>>> +		reset_control_assert(reset);
>>>>>> +		udelay(2);
>>>>>> +		reset_control_deassert(reset);
>>>>>
>>>>> No, the child should handle this, not parent.
>>>>
>>>> Octo Memory Manager can only be configured if both child are disabled.
>>>> That's why here, parent handles this.
>>>
>>> So if device by any chance started and is doing some useful work, then
>>> you cancel that work and reset it?
>>
>> stm32_omm_configure() is only called if we get access granted on both children.
>> That means we are authorized to use these devices, so we can reset them.
>>
>>>
>>> And what if child does not have reset line? Your binding allows that, so
>>> how is it supposed to work then?
>>
>> Ah yes, you are right, the OSPI bindings need to be updated
>> by requiring reset lines and the driver spi-stm32-ospi.c as well.
>> I will send a fix for that.
>>
>> Thanks for pointing this.
>>
>>>
>>> This also leads me to questions about bindings - if you need to assert
>>> some reset, doesn't it mean that these resets are also coming through
>>> this device so they are part of this device node?
>>
>> As we are able to retrieve children's reset from their respective node,
>> if you don't mind, OMM bindings can be kept as it's currently.
> 
> But that is what the entire discussion is about - I do mind. I said it
> already - you are not supposed to poke into child's node.
> 
> If you need to toggle child's resources, then I claim these are your
> resources as well.

Hi Krzysztof 

Ok i will update both OMM driver and bindings accordingly.

> 
>>
>> And another information, on some MP2 SoCs family, there is only one 
>> OSPI instance. So for these SoCs, there is no Octo Memory Manager.
>>
>>>
>>>>
>>>>>
>>>>>> +
>>>>>> +		reset_control_put(reset);
>>>>>> +		clk_disable_unprepare(omm->child[i].clk);
>>>>>> +	}
>>>>>> +
>>>>>> +	return 0;
>>>>>> +}
>>>>>> +
>>>>>> +static int stm32_omm_probe(struct platform_device *pdev)
>>>>>> +{
>>>>>> +	struct platform_device *vdev;
>>>>>> +	struct device *dev = &pdev->dev;
>>>>>> +	struct stm32_omm *omm;
>>>>>> +	struct clk *clk;
>>>>>> +	int ret;
>>>>>> +	u8 child_access_granted = 0;
>>>>>
>>>>> Keep inits/assignments together
>>>>
>>>> ok
>>>>
>>>>>
>>>>>> +	u8 i, j;
>>>>>> +	bool child_access[OMM_CHILD_NB];
>>>>>> +
>>>>>> +	omm = devm_kzalloc(dev, sizeof(*omm), GFP_KERNEL);
>>>>>> +	if (!omm)
>>>>>> +		return -ENOMEM;
>>>>>> +
>>>>>> +	omm->io_base = devm_platform_ioremap_resource_byname(pdev, "regs");
>>>>>> +	if (IS_ERR(omm->io_base))
>>>>>> +		return PTR_ERR(omm->io_base);
>>>>>> +
>>>>>> +	omm->mm_res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "memory_map");
>>>>>> +	if (IS_ERR(omm->mm_res))
>>>>>> +		return PTR_ERR(omm->mm_res);
>>>>>> +
>>>>>> +	/* check child's access */
>>>>>> +	for_each_child_of_node_scoped(dev->of_node, child) {
>>>>>> +		if (omm->nb_child >= OMM_CHILD_NB) {
>>>>>> +			dev_err(dev, "Bad DT, found too much children\n");
>>>>>> +			ret = -E2BIG;
>>>>>> +			goto err_clk_release;
>>>>>> +		}
>>>>>> +
>>>>>> +		if (!of_device_is_compatible(child, "st,stm32mp25-ospi")) {
>>>>>> +			ret = -EINVAL;
>>>>>> +			goto err_clk_release;
>>>>>> +		}
>>>>>> +
>>>>>> +		ret = stm32_omm_check_access(dev, child);
>>>>>> +		if (ret < 0 && ret != -EACCES)
>>>>>> +			goto err_clk_release;
>>>>>> +
>>>>>> +		child_access[omm->nb_child] = false;
>>>>>> +		if (!ret) {
>>>>>> +			child_access_granted++;
>>>>>> +			child_access[omm->nb_child] = true;
>>>>>> +		}
>>>>>> +
>>>>>> +		omm->child[omm->nb_child].node = child;
>>>>>> +
>>>>>> +		clk = of_clk_get(child, 0);
>>>>>
>>>>> Why are you taking children clock? And why with this API, not clk_get?
>>>>
>>>> I need children's clock to reset them.
>>>
>>>
>>> The device driver should reset its device. It is not a discoverable bus,
>>> that would explain power sequencing from the parent.
>>>
>>>> Why of_clk_get() usage is a problem here ? i can't get your point ?
>>>
>>> Because it is not the API which device drivers should use. You should
>>> use clk_get or devm_clk_get.
>>
>>
>> ok, i will update this part using clk_get().
>>
>>>
>>>
>>>>
>>>>> This looks like mixing clock provider in the clock consumer.
>>>>>
>>>>>> +		if (IS_ERR(clk)) {
>>>>>> +			dev_err(dev, "Can't get child clock\n");
>>>>>
>>>>> Syntax is always return dev_err_probe (or ret = dev_err_probe).
>>>>
>>>> ok
>>>>
>>>>>
>>>>>> +			ret = PTR_ERR(clk);
>>>>>> +			goto err_clk_release;
>>>>>> +		};
>>>>>> +
>>>>>> +		omm->child[omm->nb_child].clk = clk;
>>>>>> +		omm->nb_child++;
>>>>>> +	}
>>>>>> +
>>>>>> +	if (omm->nb_child != OMM_CHILD_NB) {
>>>>>> +		ret = -EINVAL;
>>>>>> +		goto err_clk_release;
>>>>>> +	}
>>>>>> +
>>>>>> +	platform_set_drvdata(pdev, omm);
>>>>>> +
>>>>>> +	pm_runtime_enable(dev);
>>>>>> +
>>>>>> +	/* check if OMM's resource access is granted */
>>>>>> +	ret = stm32_omm_check_access(dev, dev->of_node);
>>>>>> +	if (ret < 0 && ret != -EACCES)
>>>>>> +		goto err_clk_release;
>>>>>> +
>>>>>> +	if (!ret && child_access_granted == OMM_CHILD_NB) {
>>>>>> +		/* Ensure both OSPI instance are disabled before configuring OMM */
>>>>>> +		ret = stm32_omm_disable_child(dev);
>>>>>> +		if (ret)
>>>>>> +			goto err_clk_release;
>>>>>> +
>>>>>> +		ret = stm32_omm_configure(dev);
>>>>>> +		if (ret)
>>>>>> +			goto err_clk_release;
>>>>>> +	} else {
>>>>>> +		dev_dbg(dev, "Octo Memory Manager resource's access not granted\n");
>>>>>> +		/*
>>>>>> +		 * AMCR can't be set, so check if current value is coherent
>>>>>> +		 * with memory-map areas defined in DT
>>>>>> +		 */
>>>>>> +		ret = stm32_omm_set_amcr(dev, false);
>>>>>> +		if (ret)
>>>>>> +			goto err_clk_release;
>>>>>> +	}
>>>>>> +
>>>>>> +	/* for each child, if resource access is granted and status "okay", probe it */
>>>>>> +	for (i = 0; i < omm->nb_child; i++) {
>>>>>> +		if (!child_access[i] || !of_device_is_available(omm->child[i].node))
>>>>>
>>>>> If you have a device available, why do you create one more platform device?
>>>>>
>>>>>> +			continue;
>>>>>> +
>>>>>> +		vdev = of_platform_device_create(omm->child[i].node, NULL, NULL);
>>>>>
>>>>> Why you cannot just populate the children?
>>>>
>>>> I can't use of_platform_populate(), by default it will populate all OMM's child.
>>>> Whereas here, we want to probe only the OMM's child which match our criteria.  
>>>
>>>
>>> Why wouldn't you populate everyone? The task of bus driver is not to
>>> filter out DT. If you got such DT - with all device nodes - you are
>>> expected to populate all of them. Otherwise, if you do not want all of
>>> them, it is expected that firmware or bootloader will give you DT
>>> without these nodes.
>>
>> We don't want to populate every child by default because we can get 
>> cases where one child is shared between Cortex A and Cortex M.
> 
> But in such case DTB would not have that child enabled.
> 
>> That's why we must check if access is granted which ensure that 
>> firewall semaphore is available (RIFSC semaphore in our case).
> 
> If you do not have access, means child is assigned to other processor,
> right? In that case that child would not have been enabled in your DTB.
> 
> Fix your DTB instead of creating another layer of handling children
> inside drivers.

In fact, initially, we wanted to avoid to trigger Illegal Access in case user 
didn't use correct DT, that's why, here, double checks have been implemented.
But Ok, i will clean this part and simply populate children.

Thanks
Patrice.

> 
> 
> Best regards,
> Krzysztof

