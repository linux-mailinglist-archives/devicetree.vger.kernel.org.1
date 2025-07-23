Return-Path: <devicetree+bounces-198824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5895BB0E806
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 03:26:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7804056620C
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 01:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EE1A170A26;
	Wed, 23 Jul 2025 01:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ls86somY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7A213AD05
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 01:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753233994; cv=none; b=iJWmniPQb/jiDchvJyASfBvB2fPMZDOG0v96qrHHorW/CVyh6C/XpgU6Y2SHImPclyO0okU76ktw0dcdNkb38OKMt6eKW7P7ONTXw/BZwt8BQYezPHvZYAXVEJPACxQFplcmeq7vAM4M3/2w4JhIunMYGMj2NJfWcuWI9ooKW8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753233994; c=relaxed/simple;
	bh=hCjUuYTsR7TV0F+xdfDYAb9YgyUx+t6qw2BHAPvmPQY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZIKTMvBcjUsRJA7RnyUBFsA6tHxJv3hsH2eaB87E0i0XArpwMTGMvcOkcOUhQcFalM5WV2gYnS13Wujq37EaNuHGIlInTB+0wpOP/qYEhUW0/6w1vAEcUrMBY/Bjs4J3Vmh+l2DpeRdz+T0e5OgxMODXYpVph9GWNv3NQs+wwZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ls86somY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MMOP0g030783
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 01:26:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GytfrVle3ILQWADnYNTelXzFoz+GMb/Nzm6XgJiXcyU=; b=Ls86somYWdbDbnpn
	QFBqJejSiZyNFrpOvedFjpcyQqspMCymEvQ5Zv8uoTH+yBJvm0jmmN8kTJyruisR
	nTj9JuP/gq6oRLSt6XlJLMBsWstGFGSKZny/QYpcbBR1S860caBGkuwFKNibNNZZ
	Ajadv6Gkm90+SWHF4xwQYrxUAPFpqW70N1MRWsXdZ6c07SR6xq6n/WWcCB1FrFdr
	eJJ6/Ju9EWsAQOxay3osysmhFV2HaA61oXj5Zi7Bd+xVzisB7YWmSqKUMhbCRkQ8
	kP0zJXZs8ce/hQpDmQ2oosEp83Ac+2UYxNqyIiOQVw3i9ciME22renbn5byK3r6r
	0dAZkg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048s3dt9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 01:26:30 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b31df10dfadso4205982a12.0
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 18:26:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753233990; x=1753838790;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GytfrVle3ILQWADnYNTelXzFoz+GMb/Nzm6XgJiXcyU=;
        b=pqSjtzJuRnkVpDfFEiOl9Ea+H+4517Kjs2gV/HlncIKykkcgneIHtn8zmSXDngqOCf
         3//GCX1zay+Q/OE5XseAouhJa4KQJZhUc5zqlqIDogDGI6fWywxBzQpOrVb7Ij5Zk+q7
         VNyLbuMIVSceSnGQ6gaJAHt/yJHCD+dxTFyLlMSkynrKo2h4zuR2p38E6+buKnu1OihX
         oXq92kTY1HLWGmPG2JowuQvitmrN3bwgitqsgGW0fuREUXafH7jQI3GbIKC8kAHlngJh
         QESdmigdX0r8m/h1ZTz25QSPlPa6y0yvqNGMFiT4ijI+GohJtc9ItzJHXynxi1gvuMos
         aGnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXM4tt/xQ4TvjN054xtLiuc4W7+heU8vE3O+/DmVn4wVFa6TWwoxX/l9uMxRoQarZyZUqfIIIzL6PN8@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5AZ6hjzdfSPo22ODltcBe90iw04l9iG2+PXub69hTXi4vM0qF
	EhiI2s6GUOx1ILM2pFRMYbUhoW1H4gXo5g5x0tib5lugNzy+yRv04JxzWLeaHH0NGImNUJ/VzH2
	4POHhm4dzaB/jDnH8/cEMF4UpYv4661t0HPC51al4zY2iiOu9uSDex5wizIWCouJ6
X-Gm-Gg: ASbGnctnhVMKB+AJzI2M9OB/+BL0FjOcFybJI0XjNATJPoOmU5n9lNNRxaVV+OXXOUX
	X5BALB9wpaIyJxf2ishqYUAzWT4FYGC7L6DgQ6BeolNN8Vh4Yqerfurvc/DOwIo8EjXJW69Bv5/
	l6rtBkF55qb6r70pzrwrzgpBmEyVjGzjbNSJ+bZKaSQnauAfcYX4fV05njmD8I543Lt5jaWn3G2
	giMPHtgU/CsIDjQ5RcpFuaUnqXlPrzqYFU15pRYdMT9gaz25n6qgb5pqNXsZaUyzwP0frJUEwaA
	BBdr6XOvlJSOW61eWue/fzeNru99o9pCPnbnLbupvrIHiwrcTWeuKKsF5yAzrh7BMjTHrgHtJAg
	pnrfxWHimmdAaKwnp0hc1VWo=
X-Received: by 2002:a17:90b:5448:b0:312:25dd:1c86 with SMTP id 98e67ed59e1d1-31e507c38f0mr1929461a91.18.1753233989544;
        Tue, 22 Jul 2025 18:26:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4PXhrm5s8sQWNmDBwncqbspLsfxjBdqDsY1USrfL+suPo/bCsRTBTtIyqK2QcU0YlP/HD1A==
X-Received: by 2002:a17:90b:5448:b0:312:25dd:1c86 with SMTP id 98e67ed59e1d1-31e507c38f0mr1929412a91.18.1753233988997;
        Tue, 22 Jul 2025 18:26:28 -0700 (PDT)
Received: from [10.133.33.27] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e519e16cfsm322575a91.12.2025.07.22.18.26.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 18:26:28 -0700 (PDT)
Message-ID: <4752510e-dea8-4258-a7c2-1d8e1b50384d@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 09:26:24 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 RESEND 00/10] coresight: ctcu: Enable byte-cntr
 function for TMC ETR
To: Mike Leach <mike.leach@linaro.org>, Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Mao Jinlong <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
 <CAJ9a7ViCf=_wmLX93TzgT82vjZvbKj3XLbr8takyfC1niQESsg@mail.gmail.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <CAJ9a7ViCf=_wmLX93TzgT82vjZvbKj3XLbr8takyfC1niQESsg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDAxMCBTYWx0ZWRfX7RFd3fFx+DEc
 jNo60ViRoHSrk1XBBtVF+PApgMu+4JHMzvK2O/Old+ZBRxpgECVHCFMfaUcnSqNx15ggDuFeLa4
 nwGxW3akHBARAA0tAAwYZ9++loTKmJibSAPGtFovAk6AHMnTTlwMlQ4tukihzRnlpRWb9SPbhuk
 ceuYT1hXDA3ZgtQbkEEnFDOH6RjttvRGFEw+jUamWNtdkb03hXkrOjQdT4Gm6lrAy6op2o+a4/P
 pdNtwHfTUEKjCFizPPhzKG1CAZ3bxIoouGU1Gw4c2D1oXkgmzRRMG7DOPrfYntwQmaAYhO8HMWk
 JvWC0MEogyJkfy2y+8WpeLp1qL+NjcvrrYlkt95PTdVbxQG2qNPsNJNJ2JMDE0GAzdSUtSbcYEo
 PDceA8vzMC9Uwq/AEHXPk+FG8CENfYoPvvCFSlSC1+Ca0/j9twHTwL03yQ9FeVJgd6URsfyY
X-Proofpoint-ORIG-GUID: KlHIaD31AY7g6CRV3_6EZTFEq1FH75cA
X-Proofpoint-GUID: KlHIaD31AY7g6CRV3_6EZTFEq1FH75cA
X-Authority-Analysis: v=2.4 cv=OPUn3TaB c=1 sm=1 tr=0 ts=68803a46 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=HGROPD1eyzCyC6u9zXUA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_04,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 suspectscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230010



On 7/22/2025 11:09 PM, Mike Leach wrote:
> Hi
> 

Hi Mike

Thanks for your comments.

> I have had a look at a few of the patches. The buffer swap mechanism
> appears to be good.
> 
> However there is a lot of byte-ctr code in the "core" tmc / etr source
> files. As much of this code as possible needs to be moved to the
> byte-cntr specifc source.
> 

I will try move byte-cntr related codes to the ctcu-byte-cntr specific 
source file.

> I suggest having a helper function such as qcom_byte_ctr_in_use() to
> call from the core code, and if true then call back into the byte-cntr
> specific code to do the specialist functionality.

Sounds a good idea, call the prepare/read function regards to whether 
there is a valid helper callback defined. I will try this solution in 
next version.

I have a minor question about the solution. We expect enable/disable the 
byte-cntr function at anytime. So when we jump to the byte-cntr 
function, we have to check whether the byte-cntr function is enabled or 
not first, jump back to the standard workflow if not, am right?

> 
> One other possibility is to have a flag / enum in the tmc->drvdata
> structure to indicate a variant. - e.g. TMC_STD, TMC_QCOM_BYTE_CTR,
> set at initialisation stage to remove the need for checking the device
> tree every call.
> 

Also will check once, see which solution is better.

Thanks,
Jie

> Regards
> 
> Mike
> 
> On Mon, 14 Jul 2025 at 07:31, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>>
>> The byte-cntr function provided by the CTCU device is used to count the
>> trace data entering the ETR. An interrupt is triggered if the data size
>> exceeds the threshold set in the BYTECNTRVAL register. The interrupt
>> handler counts the number of triggered interruptions.
>>
>> Based on this concept, the irq_cnt can be used to determine whether
>> the etr_buf is full. The ETR device will be disabled when the active
>> etr_buf is nearly full or a timeout occurs. The nearly full buffer will
>> be switched to background after synced. A new buffer will be picked from
>> the etr_buf_list, then restart the ETR device.
>>
>> The byte-cntr reading functions can access data from the synced and
>> deactivated buffer, transferring trace data from the etr_buf to userspace
>> without stopping the ETR device.
>>
>> The byte-cntr read operation has integrated with the file node tmc_etr,
>> for example:
>> /dev/tmc_etr0
>> /dev/tmc_etr1
>>
>> There are two scenarios for the tmc_etr file node with byte-cntr function:
>> 1. BYTECNTRVAL register is configured and byte-cntr is enabled -> byte-cntr read
>> 2. BYTECNTRVAL register is reset or byte-cntr is disabled -> original behavior
>>
>> Shell commands to enable byte-cntr reading for etr0:
>> echo 0x10000 > /sys/bus/coresight/devices/ctcu0/irq_val
>> echo 1 > /sys/bus/coresight/devices/tmc_etr0/enable_sink
>> echo 1 > /sys/bus/coresight/devices/etm0/enable_source
>> cat /dev/tmc_etr0
>>
>> Reset the BYTECNTR register for etr0:
>> echo 0 > /sys/bus/coresight/devices/ctcu0/irq_val
>>
>> Changes in V3 resend:
>> 1. rebased on next-20250711.
>> Link to V3 - https://lore.kernel.org/all/20250624060438.7469-1-jie.gan@oss.qualcomm.com/
>>
>> Changes in V3:
>> 1. The previous solution has been deprecated.
>> 2. Add a etr_buf_list to manage allcated etr buffers.
>> 3. Add a logic to switch buffer for ETR.
>> 4. Add read functions to read trace data from synced etr buffer.
>> Link to V2 - https://lore.kernel.org/all/20250410013330.3609482-1-jie.gan@oss.qualcomm.com/
>>
>> Changes in V2:
>> 1. Removed the independent file node /dev/byte_cntr.
>> 2. Integrated the byte-cntr's file operations with current ETR file
>>     node.
>> 3. Optimized the driver code of the CTCU that associated with byte-cntr.
>> 4. Add kernel document for the export API tmc_etr_get_rwp_offset.
>> 5. Optimized the way to read the rwp_offset according to Mike's
>>     suggestion.
>> 6. Removed the dependency of the dts patch.
>> Link to V1 - https://lore.kernel.org/all/20250310090407.2069489-1-quic_jiegan@quicinc.com/
>>
>> Jie Gan (10):
>>    coresight: core: Refactoring ctcu_get_active_port and make it generic
>>    coresight: core: add a new API to retrieve the helper device
>>    dt-bindings: arm: add an interrupt property for Coresight CTCU
>>    coresight: ctcu: enable byte-cntr for TMC ETR devices
>>    coresight: tmc: add etr_buf_list to store allocated etr_buf
>>    coresight: tmc: add create/delete functions for etr_buf_node
>>    coresight: tmc: add prepare/unprepare functions for byte-cntr
>>    coresight: tmc: add a switch buffer function for byte-cntr
>>    coresight: tmc: add read function for byte-cntr
>>    arm64: dts: qcom: sa8775p: Add interrupts to CTCU device
>>
>>   .../testing/sysfs-bus-coresight-devices-ctcu  |   5 +
>>   .../bindings/arm/qcom,coresight-ctcu.yaml     |  17 ++
>>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         |   5 +
>>   drivers/hwtracing/coresight/Makefile          |   2 +-
>>   drivers/hwtracing/coresight/coresight-core.c  |  54 ++++
>>   .../coresight/coresight-ctcu-byte-cntr.c      | 102 +++++++
>>   .../hwtracing/coresight/coresight-ctcu-core.c | 113 ++++++--
>>   drivers/hwtracing/coresight/coresight-ctcu.h  |  49 +++-
>>   drivers/hwtracing/coresight/coresight-priv.h  |   4 +
>>   .../hwtracing/coresight/coresight-tmc-core.c  |  70 ++++-
>>   .../hwtracing/coresight/coresight-tmc-etr.c   | 270 ++++++++++++++++++
>>   drivers/hwtracing/coresight/coresight-tmc.h   |  29 ++
>>   12 files changed, 688 insertions(+), 32 deletions(-)
>>   create mode 100644 Documentation/ABI/testing/sysfs-bus-coresight-devices-ctcu
>>   create mode 100644 drivers/hwtracing/coresight/coresight-ctcu-byte-cntr.c
>>
>> --
>> 2.34.1
>>
> 
> 


