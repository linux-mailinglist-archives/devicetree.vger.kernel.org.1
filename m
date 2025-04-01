Return-Path: <devicetree+bounces-162178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A40A7751A
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 09:19:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81F703A5850
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 07:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCCDF1E9905;
	Tue,  1 Apr 2025 07:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S6zsxb8a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8711E990D
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 07:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743491845; cv=none; b=aD/2J51L5fJYFOHEtynyKjVP5O67igP6TjqH1Ku5z0FOzk6qHIoJyknQ5Q7147Whil8WFUkqo46obgMcbK3HvMDX52RQuQcAasLu6yYwus4EjXklr8InfWZnQsplN+PKiywHgVvbAs/SJzz3L8uHcFG8+/CBn10fgZTh5Q6hzLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743491845; c=relaxed/simple;
	bh=K94tqSCdI38kDfHqpKSLdrbnPJqSiDjqX6KGxtHaBus=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KHPkwD24oNpaHdWQ/4qyJ3peSPYfbcsmzpVxuQRDTyswtExPyAeLLFjtxY7arDFh4oJvB961tGOj6rMd4mx90CFeiuN34zzY8fwM1/STg+cAKT2aHzJVtu5pQLWiTOCBzFddi5ZLnb9xTDSUvHf0sHVu3N6DmCKRsp5l8R1+Jv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S6zsxb8a; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5315igHt000399
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 07:17:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FtMGRVk1ZbNEw+POJb8t9Wm2iW3twKtu3+p8pqREbTY=; b=S6zsxb8ac9snJQ4a
	pTSJ9wyVBp8SZhPsTxzorNsUhzlFYMn469v5G22Mk820Coizt/sgGtlsRE90TJPA
	TiKcJldUyDfAqZ65mWrqsRetWJ0ndGKR9F5RHz9RxP2M3GeuqaDKGOVvau+xjydb
	81Vuv1k9Le+O3hWNx4OaeEN/gb6aAX6TAP/2vMKxb8W24KWlfteo+vj/JIprg4lk
	gtXGX9fZTwdu9K0OUHOrYdK8zDqBw5S98yioEQ9Khz9fUMFDG+wnm/BrhNRgvG9V
	aPt/kQq1xw960uFCenOVOfxafW+c8CdTKRiSRm5Ic9fYa3sdOuGnVcPcySUiQlky
	ycSSxw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p67qf64q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 07:17:22 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3032ea03448so9911535a91.2
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 00:17:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743491841; x=1744096641;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FtMGRVk1ZbNEw+POJb8t9Wm2iW3twKtu3+p8pqREbTY=;
        b=JwcoOG3km8kN4syA8oduLPDOp4BiP92nbKxNUjd7XuMuK26ie+KcwJ7baGUQHbzMXB
         yVdHS5EtaDmydYaAFihaC8ZL0dycABYzzmZzGZGqdzj+wvn/kXumeseB9IBV+smBdhXv
         P/yt8bdM3dxBD1LFjlDQidRqWvOp7eVDZVAYLsubI7USeSM+MwivLEDokE27t3Rg/JBj
         ouM+keCrCQiFS8heTKzvXyPqumdLGgeIFWyK11GPyOXxUv3xLOQ5xn1o570mZYXJG/lT
         voau5HFqxh5vomDQn+5iSwgi19LiOssDrm0nVvyEfey+Hvgg+RRwsrCTcr8L7I3y3Qf5
         0hRg==
X-Forwarded-Encrypted: i=1; AJvYcCXw3St/hZoA6UzksLhn7GcCs3xNq93H4t4RovjbDDNJ/wHgn3eOwu1EAuo5iMtJJ9viI1P67VEq3Rl3@vger.kernel.org
X-Gm-Message-State: AOJu0YwDQ8JDjyuKVuJWlwScCzKHlLkcl52xOUzvrz6WyMD/ZpJtH82K
	4eflvX8J/QupdYiFXnjQ2sBzaKc+ujuDzZ25fAH3+75ZNJ7knsVU4G7ZN3NG81Wik08k7L3y7Va
	wH6E0iYnNlWXSItdhzOeotR3BJZKrxA5vKJIWI7pDm9zUmeOXNxTzhyfm5LIV
X-Gm-Gg: ASbGnctFJr8Rb22YZ0i4sDZMnkeIChKLJT7C5GjJMwAvrj9Gph5qKX/+ORos+2cFyX/
	cppRW5s47H5hvnHfKrQsVx2xIGiQTMH5kFCGRJXs8yo+0ig+UzL/2mFPN3r5i4EKwlcyWyOoSN7
	4AqNJEjGp+zFU1sM/pb3KLsIFp+WBcluHd8CS/hxMzP4a3t5qCi95pWiirE2TqPE/h9mtGEb7vf
	zgiOx438PjGIusOtPcS8H/hLDohx0+Z3VXd3XhyIsGRAE8VDH7+2/dcKetK37mUewQCrUkzAnxi
	0nLk3JNqij1ulZrBVRBVHUZ++z2H986OzB4YBGcKPQqvhA==
X-Received: by 2002:a17:90b:134d:b0:2f8:4a3f:dd2d with SMTP id 98e67ed59e1d1-305320ae2eamr18234702a91.15.1743491841324;
        Tue, 01 Apr 2025 00:17:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFr4gOlMNdHJzyZphobs28BNbuI4vi69zmTSjUxMF19Ghg9xXQwTQ1pg7rC685uTI4i0vHJiA==
X-Received: by 2002:a17:90b:134d:b0:2f8:4a3f:dd2d with SMTP id 98e67ed59e1d1-305320ae2eamr18234674a91.15.1743491840854;
        Tue, 01 Apr 2025 00:17:20 -0700 (PDT)
Received: from [10.92.192.202] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1ecb62sm81122505ad.230.2025.04.01.00.17.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 00:17:20 -0700 (PDT)
Message-ID: <95db82e9-8527-0520-07db-672e64b6e25b@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 12:47:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/2] PCI: Add support for PCIe wake interrupt
Content-Language: en-US
To: Lukas Wunner <lukas@wunner.de>
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
References: <20250401-wake_irq_support-v1-0-d2e22f4a0efd@oss.qualcomm.com>
 <20250401-wake_irq_support-v1-2-d2e22f4a0efd@oss.qualcomm.com>
 <Z-uPOLNPIgm63PWY@wunner.de>
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <Z-uPOLNPIgm63PWY@wunner.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=fMI53Yae c=1 sm=1 tr=0 ts=67eb9302 cx=c_pps a=RP+M6JBNLl+fLTcSJhASfg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=i3ooZJLN8YTFS9vXi5sA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: dj8zt1H9LhecVFv0F5mmmGgOizmwFjJ_
X-Proofpoint-GUID: dj8zt1H9LhecVFv0F5mmmGgOizmwFjJ_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_02,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 spamscore=0 impostorscore=0 clxscore=1015
 mlxlogscore=717 bulkscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504010048



On 4/1/2025 12:31 PM, Lukas Wunner wrote:
> On Tue, Apr 01, 2025 at 10:12:44AM +0530, Krishna Chaitanya Chundru wrote:
>> PCIe wake interrupt is needed for bringing back PCIe device state
>> from D3cold to D0.
>>
>> Implement new functions, of_pci_setup_wake_irq() and
>> of_pci_teardown_wake_irq(), to manage wake interrupts for PCI devices
>> using the Device Tree.
>>
>>  From the port bus driver call these functions to enable wake support
>> for bridges.
> [...]
>> --- a/drivers/pci/pcie/portdrv.c
>> +++ b/drivers/pci/pcie/portdrv.c
>> @@ -695,6 +695,10 @@ static int pcie_portdrv_probe(struct pci_dev *dev,
>>   	if (type == PCI_EXP_TYPE_RC_EC)
>>   		pcie_link_rcec(dev);
>>   
>> +	status = of_pci_setup_wake_irq(dev);
>> +	if (status)
>> +		return status;
>> +
>>   	status = pcie_port_device_register(dev);
>>   	if (status)
>>   		return status;
>> @@ -728,6 +732,8 @@ static void pcie_portdrv_remove(struct pci_dev *dev)
>>   		pm_runtime_dont_use_autosuspend(&dev->dev);
>>   	}
>>   
>> +	of_pci_teardown_wake_irq(dev);
>> +
>>   	pcie_port_device_remove(dev);
>>   
>>   	pci_disable_device(dev);
> 
> Why doesn't the teardown order mirror the probe order, i.e. why is
> of_pci_teardown_wake_irq() called *before* pcie_port_device_remove()
> instead of after?
> 
ack, in the next patch I will move teardown after
pcie_port_device_remove()
> (pcie_port_device_remove() is the opposite of pcie_port_device_register().)
> 
> Also, why is it safe to bail out of probe on failure of
> of_pci_setup_wake_irq() without unwinding whatever pcie_link_rcec()
> has done?  I think this needs either an explanation or reordering.
> 
if there is a failure in port_device_register also we are not unwinding
so I taught it is already taken care. Looks like it is not.

In the next patch I will move of_pci_setup_wake_irq() above 
pcie_link_rcec() to avoid all this.

- Krishna Chaitanya.

> Thanks,
> 
> Lukas

