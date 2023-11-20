Return-Path: <devicetree+bounces-17185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B5A7F180F
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 17:03:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 54EF5B20F36
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 16:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B84A81D55D;
	Mon, 20 Nov 2023 16:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="gPtukCSI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43D04B4;
	Mon, 20 Nov 2023 08:03:15 -0800 (PST)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AKCP8xC011317;
	Mon, 20 Nov 2023 16:03:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=MJ1NJGZizIGGaLVzmAp3/rUQGS0Kx8EmGK/uk8ZRu78=;
 b=gPtukCSImAadHN2ylLD6jKfACxYLRaJUTJBF/ZjAXF/HqS1OD+8vLnzuUF7s7fwGzGrw
 tpBrcCs/j/JAU+h2DTmz6k1++6u/4CDBn3zW0ixoFouX2VfOsR0xfuYr47LP0rher6Ki
 m4I9Pv1+1JGyZ57mikCbKdHTpJOEjUx1UuUfxlRTn5d42Qd3iFgOEbKFy5hKsrTLGt/d
 7d2r7V1OLa7MyAbJQfFbZKjE7sHcRmyFUQH9IdtdbCurqH7SpJtmTNLEAwCdLLfKLbbd
 4qXgUZtHXjViV/TaRid4bw/i3qXrpPrua+LT0bQrcywngDxbQi3naZmlf8WAS2X5rGrX lA== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ug7ea8fqn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Nov 2023 16:03:04 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AKG32ot000603
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Nov 2023 16:03:02 GMT
Received: from [10.110.123.216] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Mon, 20 Nov
 2023 08:03:01 -0800
Message-ID: <39b694e9-3275-43b0-a1af-4e2ef7facda3@quicinc.com>
Date: Mon, 20 Nov 2023 08:03:01 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Implement vendor resets for PSCI SYSTEM_RESET2
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mark Rutland
	<mark.rutland@arm.com>
CC: Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Melody Olvera
	<quic_molvera@quicinc.com>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>
References: <20231117-arm-psci-system_reset2-vendor-reboots-v1-0-03c4612153e2@quicinc.com>
 <417cb5cb-01f5-4d01-8bbe-aa2286fca43e@linaro.org>
From: Elliot Berman <quic_eberman@quicinc.com>
In-Reply-To: <417cb5cb-01f5-4d01-8bbe-aa2286fca43e@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: fPJ31nbOCaiTIJVB_0C262EjR8ktx6q0
X-Proofpoint-ORIG-GUID: fPJ31nbOCaiTIJVB_0C262EjR8ktx6q0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-20_15,2023-11-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 phishscore=0 mlxscore=0 spamscore=0 malwarescore=0 priorityscore=1501
 mlxlogscore=999 bulkscore=0 impostorscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311200113



On 11/20/2023 2:55 AM, Krzysztof Kozlowski wrote:
> On 17/11/2023 22:18, Elliot Berman wrote:
>> The PSCI SYSTEM_RESET2 call allows vendor firmware to define additional
>> reset types which could be mapped to the reboot argument.
>>
>> Setting up reboot on Qualcomm devices can be inconsistent from chipset
>> to chipset.  Generally, there is a PMIC register that gets written to
>> decide the reboot type. There is also sometimes a cookie that can be
>> written to indicate that the bootloader should behave differently than a
>> regular boot. These knobs evolve over product generations and require 
>> more drivers. Qualcomm firmwares are beginning to expose vendor
>> SYSTEM_RESET2 types to simplify driver requirements from Linux.
>>
>> Add support in PSCI to statically wire reboot mode commands from
>> userspace to a vendor reset and cookie value using the device tree. The
>> DT bindings are similar to reboot mode framework except that 2
>> integers are accepted (the type and cookie). Also, reboot mode framework
>> is intended to program, but not reboot, the host. PSCI SYSTEM_RESET2
>> does both. I've not added support for reading ACPI tables since I don't
>> have any device which provides them + firmware that supports vendor
>> SYSTEM_RESET2 types.
>>
>> Previous discussions around SYSTEM_RESET2:
>> - https://lore.kernel.org/lkml/20230724223057.1208122-2-quic_eberman@quicinc.com/T/
>> - https://lore.kernel.org/all/4a679542-b48d-7e11-f33a-63535a5c68cb@quicinc.com/
> 
> Please link here upstream DTS user for this.

The changes are applicable for SM8650, but hasn't yet landed in arm64/for-next/core.

I'll include it in the v2 with note.

