Return-Path: <devicetree+bounces-182375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A72ACC02F
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 08:27:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 40B6C7A56F2
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 06:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1063725D537;
	Tue,  3 Jun 2025 06:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kDJEf4fh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DDF25D529
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 06:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748932028; cv=none; b=BMRbreOuUZaPuogdnAUcwaVewB2Kf36umV47cVEMKG03gZn19nq/Xzb745ZNYjLxe98nv88fbb8NvK0C92oxMSUcDMPyVFGiXWO5aozf9VEtx+lJSi0NEV9iwM6ab8dwx8GtF62O5zc0Zvj+WT6bzvV++qSXfVzKH2wJpy7yM94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748932028; c=relaxed/simple;
	bh=pgbmzyXkjANX9nV6rfBHZhYfTLLC84FPsJOdW1kLwLo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hy4BOlswCdw6FoKHQsQ93wR49IsxPpuuNWRmY8rjqjO4ctGnzkpXZzOyGxKcXlBkmMk/MM2IPe/IpI6yqpqG8cGBO8n6VBEqerPJw3xJ2jZTherLH1QcJ2c1oHhaanhx0Xi+LfwJD2cm3c7d5UkmPRLZIq0KWcFdnEkgtaF4ttM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kDJEf4fh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 552HJoDL011688
	for <devicetree@vger.kernel.org>; Tue, 3 Jun 2025 06:27:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8CFq5uuLaQJqYVVZzTgnCqorXoI6WhlI7n6d+Xq9WcI=; b=kDJEf4fhE16Pofz1
	yelXVHlZOA/tk0iWqZRBerqE5HH8D4fd7iXmvHLAZLy/xPf3nl1PZl2Q8w4i4+1v
	/drAHNxwf13Bk+NfylsgW2VPNX+tarC4gBhDwGTv38OrCl3qedzK35M1pcN9h/Jl
	L7qnZyD0//g9wK0GRC16vRDO/B3FSYVlXKMzjAndKwPJNKfp4vdiNwQO/6g6QPX4
	Ao855wnriaJhfwWbSqACNCsIKVCp4QjX4wwP77JiXoox1EE86W5geoD9TAXtB7+z
	y02WO5p+3+kiZc0SQKKYeH9ojL4MLdAY2jwPxfqtXiULAiWj7bSVmZR47Ao1vpQ6
	d9JvMg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8sshxq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 06:27:06 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-23536f7c2d7so52360265ad.2
        for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 23:27:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748932025; x=1749536825;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8CFq5uuLaQJqYVVZzTgnCqorXoI6WhlI7n6d+Xq9WcI=;
        b=KrIYE38843zNVuO7URfS8wd8VN09doLNvkE5Z9AltOXdZXeXs628oWDOPy56S8UjJ0
         unW/oY82u8In/TJ7BJ1sKZodPRIyWXD2daffkC00B/3jj5CwwoiSyeiH1x+Z1VJEAHO0
         xKdbk/Tch5lA3lCGJHHVKS1GT26+1rerDjLtIKiWc6+mEpCGPqXJ5vfDdIOhYyFVNL22
         rTmcdbS42UAFqYDbbnvnCFXwdC1/+FbMF4dYBLxBvFVLdtIQjqfQdpLThp5oqTfUQTt8
         ZX4P6adkxipisnQzzkopKrO6Dwq+6XSCy/6ty4hcF03syNTGS0ptH9msxVeAfaWZjG1P
         pv3g==
X-Forwarded-Encrypted: i=1; AJvYcCXIsA97MzG/q6YpwR6suKSbyGaE0JI77v+gvQl2Gab7/Fe8o6hyEfgDg7orkyfkmvu2pb6QuS4CpGcf@vger.kernel.org
X-Gm-Message-State: AOJu0YyyGT8KDL3R/4ze5ilXXzbYjQ0kqT05Ag1pGPew/mC3YCbQZXwV
	QEWSNDKkuUZgCNmfvBh2eHo++unLt/DKrouDV/+CI300z01aREoIg05EoMURfGpLrhn+7DTw2oc
	BySPO2kd73f21LPpux48hhgoj5PdVPzcs/re+O/uz2qLhBrphAuTjwauOzTTFQ4cE
X-Gm-Gg: ASbGnctaGVGUpgQ26iikZgbAe0uRAa6TXhZWqaWglvOtoOFDCWTWBFb1uQwrn+XmA9I
	LHbMUTAiFPs+FOar3bPs76LTK1fXNb35TS8lfW62iVWoSG8a2+ZCdnmGHTCCq8o9OunNjM5r3zo
	100H95kGWrlsT8fAzl+fVmmyfJwrbseFdmO1vAYGAHnM/92BdetEB1jv8VU3/zFZKngHWNpg+sA
	Xj4O8KymB6no5JSTyPSBWHbaF0viriiIqIRMqUXWYEr4aZg/VhuUNowiOQfue80SS1He5Bp1k6p
	wYid4iXcqEthF0UygUinqBVadFZUOFJuM0ksC8rGWg==
X-Received: by 2002:a17:903:230d:b0:235:6e1:3ee8 with SMTP id d9443c01a7336-2355f763a30mr159297895ad.11.1748932025526;
        Mon, 02 Jun 2025 23:27:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8aRNsYbc9V+jEebHStqQA2ho4YdUmDecvWv7gxGhSOXn3RlY0aVsETQbYAG9hg+lUAs3nAg==
X-Received: by 2002:a17:903:230d:b0:235:6e1:3ee8 with SMTP id d9443c01a7336-2355f763a30mr159297495ad.11.1748932025106;
        Mon, 02 Jun 2025 23:27:05 -0700 (PDT)
Received: from [10.92.214.105] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506cf952bsm80687235ad.191.2025.06.02.23.27.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jun 2025 23:27:04 -0700 (PDT)
Message-ID: <c1de3745-d627-0d2f-6d51-679765603f11@oss.qualcomm.com>
Date: Tue, 3 Jun 2025 11:56:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 2/2] PCI: Add support for PCIe wake interrupt
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com
References: <20250419-wake_irq_support-v2-0-06baed9a87a1@oss.qualcomm.com>
 <20250419-wake_irq_support-v2-2-06baed9a87a1@oss.qualcomm.com>
 <543ocn4vecyjej26ynjggm6zwj7bmn27rd6c4foo36gvxeltma@6d5dfdoscxwm>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <543ocn4vecyjej26ynjggm6zwj7bmn27rd6c4foo36gvxeltma@6d5dfdoscxwm>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RMizH5i+ c=1 sm=1 tr=0 ts=683e95ba cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=Y6MG0PhRDbTeA8aGlRgA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDA1NCBTYWx0ZWRfX7UfxDjOG/t6R
 7rm1UfrGrupo9oPgrDmClXf5G9fmtGK730nd4FZsCH0C1K5K6jPgpW7V8AqNFHAYXWy/mCJu/jl
 4FpFDXKjAbiGHSiosxK77HnjxZBUyR3RvxRbCGUEkVzrKEtql/uJYIXkXvqyb9tyT5kx/193dVr
 OJGO5TROlfldSxlJq57xKkGSE1uqP2bWDDMZNt99y/m3C9DAADuXjUlVDP0AmPwcdh3Fe+P+VrO
 +E48SrIaoDhrtZ1GZs63YrogEvd+7wPnAplda4XmOJvQjuHpe6bKycsO3ai8A1FtPhBuQZ8s1AS
 T1D2Ud2gfwVJicDJVI16CoJiGiYGRDMx/wiME2vkL7AhPX+9HLqP3nQGzXDQKCgT2gnOMQoIcXV
 qnAO9D4sbhjehPNao1lAyOttemUJCRvagvD1dTeSh6JapqK+csqICwT1YvqcMlYPLBAFdreR
X-Proofpoint-GUID: LYmcJv8rzAuHxp4RjmQZNHEfiIkl-sxQ
X-Proofpoint-ORIG-GUID: LYmcJv8rzAuHxp4RjmQZNHEfiIkl-sxQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 adultscore=0 mlxlogscore=999 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506030054



On 6/1/2025 8:51 PM, Manivannan Sadhasivam wrote:
> On Sat, Apr 19, 2025 at 11:13:04AM +0530, Krishna Chaitanya Chundru wrote:
> 
> Subject prefix should be 'PCI/portdrv'
> 
>> PCIe wake interrupt is needed for bringing back PCIe device state
>> from D3cold to D0.
>>
>> Implement new functions, of_pci_setup_wake_irq() and
>> of_pci_teardown_wake_irq(), to manage wake interrupts for PCI devices
>> using the Device Tree.
>>
>>  From the port bus driver call these functions to enable wake support
>> for bridges.
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>   drivers/pci/of.c           | 60 ++++++++++++++++++++++++++++++++++++++++++++++
>>   drivers/pci/pci.h          |  6 +++++
>>   drivers/pci/pcie/portdrv.c | 12 +++++++++-
>>   3 files changed, 77 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
>> index ab7a8252bf4137a17971c3eb8ab70ce78ca70969..13623797c88a03dfb9d9079518d87a5e1e68df38 100644
>> --- a/drivers/pci/of.c
>> +++ b/drivers/pci/of.c
>> @@ -7,6 +7,7 @@
>>   #define pr_fmt(fmt)	"PCI: OF: " fmt
>>   
>>   #include <linux/cleanup.h>
>> +#include <linux/gpio/consumer.h>
>>   #include <linux/irqdomain.h>
>>   #include <linux/kernel.h>
>>   #include <linux/pci.h>
>> @@ -15,6 +16,7 @@
>>   #include <linux/of_address.h>
>>   #include <linux/of_pci.h>
>>   #include <linux/platform_device.h>
>> +#include <linux/pm_wakeirq.h>
>>   #include "pci.h"
>>   
>>   #ifdef CONFIG_PCI
>> @@ -966,3 +968,61 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
>>   	return slot_power_limit_mw;
>>   }
>>   EXPORT_SYMBOL_GPL(of_pci_get_slot_power_limit);
>> +
>> +/**
>> + * of_pci_setup_wake_irq - Set up wake interrupt for PCI device
> 
> This function is for setting up the wake interrupt for slot, not for endpoint
> devices, isn't it? Then it should be named as such:
> 
> 	of_pci_slot_setup_wake_irq()
> 
>> + * @pdev: The PCI device structure
>> + *
>> + * This function sets up the wake interrupt for a PCI device by getting the
>> + * corresponding GPIO pin from the device tree, and configuring it as a
> 
> s/GPIO pin/WAKE# GPIO
> 
>> + * dedicated wake interrupt.
>> + *
>> + * Return: 0 if the wake gpio is not available or successfully parsed else
> 
> s/wake gpio/WAKE# GPIO
> 
>> + * errno otherwise.
>> + */
>> +int of_pci_setup_wake_irq(struct pci_dev *pdev)
>> +{
>> +	struct gpio_desc *wake;
>> +	struct device_node *dn;
>> +	int ret, wake_irq;
>> +
>> +	dn = pci_device_to_OF_node(pdev);
>> +	if (!dn)
>> +		return 0;
>> +
>> +	wake = devm_fwnode_gpiod_get(&pdev->dev, of_fwnode_handle(dn),
>> +				     "wake", GPIOD_IN, NULL);
>> +	if (IS_ERR(wake)) {
>> +		dev_warn(&pdev->dev, "Cannot get wake GPIO\n");
> 
> WAKE# is an optional GPIO. So the driver should not warn users if it is not
> defined in the root port node. It should however print the error log and return
> errno, if the API returns other than -ENOENT.
> 
>> +		return 0;
>> +	}
>> +
>> +	wake_irq = gpiod_to_irq(wake);
>> +	device_init_wakeup(&pdev->dev, true);
>> +
>> +	ret = dev_pm_set_dedicated_wake_irq(&pdev->dev, wake_irq);
>> +	if (ret < 0) {
>> +		dev_err(&pdev->dev, "Failed to set wake IRQ: %d\n", ret);
>> +		device_init_wakeup(&pdev->dev, false);
>> +		return ret;
>> +	}
>> +	irq_set_irq_type(wake_irq, IRQ_TYPE_EDGE_FALLING);
>> +
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL_GPL(of_pci_setup_wake_irq);
>> +
>> +/**
>> + * of_pci_teardown_wake_irq - Teardown wake interrupt setup for PCI device
> 
> Same comment as above.
> 
>> + *
>> + * @pdev: The PCI device structure
>> + *
>> + * This function tears down the wake interrupt setup for a PCI device,
>> + * clearing the dedicated wake interrupt and disabling device wake-up.
>> + */
>> +void of_pci_teardown_wake_irq(struct pci_dev *pdev)
>> +{
>> +	dev_pm_clear_wake_irq(&pdev->dev);
>> +	device_init_wakeup(&pdev->dev, false);
>> +}
>> +EXPORT_SYMBOL_GPL(of_pci_teardown_wake_irq);
>> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
>> index b81e99cd4b62a3022c8b07a09f212f6888674487..b2f65289f4156fa1851c2d2f20c4ca948f36258f 100644
>> --- a/drivers/pci/pci.h
>> +++ b/drivers/pci/pci.h
>> @@ -888,6 +888,9 @@ void pci_release_of_node(struct pci_dev *dev);
>>   void pci_set_bus_of_node(struct pci_bus *bus);
>>   void pci_release_bus_of_node(struct pci_bus *bus);
>>   
>> +int of_pci_setup_wake_irq(struct pci_dev *pdev);
>> +void of_pci_teardown_wake_irq(struct pci_dev *pdev);
>> +
>>   int devm_of_pci_bridge_init(struct device *dev, struct pci_host_bridge *bridge);
>>   bool of_pci_supply_present(struct device_node *np);
>>   
>> @@ -931,6 +934,9 @@ static inline int devm_of_pci_bridge_init(struct device *dev, struct pci_host_br
>>   	return 0;
>>   }
>>   
>> +static int of_pci_setup_wake_irq(struct pci_dev *pdev) { return 0; }
>> +static void of_pci_teardown_wake_irq(struct pci_dev *pdev) { }
>> +
> 
> Provide stub for these APIs if CONFIG_OF is not enabled.
> 
These are the stub functions when CONFIG_OF is not enabled.

- Krishna Chaitanya.
> - Mani
> 

