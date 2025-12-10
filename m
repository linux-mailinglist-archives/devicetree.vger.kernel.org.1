Return-Path: <devicetree+bounces-245623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DBBCB35C5
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 16:49:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E66DE3040748
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 15:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F704199237;
	Wed, 10 Dec 2025 15:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wgz1BowV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KqOIO4oX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A61219E8
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765381671; cv=none; b=qDHqJ4XmqO9c1/evgNSyeMgRIBKP4JoP5HOhAuVqBKgL2zopB2+gk500Z/o+KP2JDRA8jTy9dbdcpaINMcpWP0Fn2m7Dewn+tI0VNTW201hg80whYZlzN2P3W4kua5X/pCPj1oM4JLTLGLPWLH7uvcTxVrse7zaqO2+DICLMAGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765381671; c=relaxed/simple;
	bh=TCcycMihj7G7NaaPsn1fmj1EiYrBsUd4dLCKu3LkA/c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FYo6iP7sGij/RRNL5o7eS0ChGBFu4k+tjM19u69Oais4GK2l66wIRyH9HEhy9XwY8HTqAKfU0pBpa8L8VAMOLBpULyN6QwakGyeJk7CA8qSEtDuBZpIOn1rKODjqjJjIFwY2Lo6HTDxPMZ254Hd5jW5IVBV94Ep7XaEXPuPc2so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wgz1BowV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KqOIO4oX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BAASYHg1802668
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:47:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	10BA5lcbUcspkWK3Z2K75uImJcYvTUu5ID+858HqxLc=; b=Wgz1BowVxwQFvR4V
	zYLIy/Oe4BQKfYwMUWN+KpTpSPDQQq1ofcRL/m2Uin2FmQBMAz60J7UyHDXnSc/Y
	MkyIexp5pU4yiLAUoCZYiGan4qLwh5wSzycXBK9oUnTuE6u0kXbUCGutg8B11WB/
	zNqwkDPn9JfqCjzMM3CxemCfBjTt2iL3O48nHrQHwXM4JcZ6kWj2s6f0HEUPJm/M
	+R7usIJnOkSPh+Lq66UAE6fF2mouAxkkCJ+GruIJunqxzPoD6QeB1U8KfIIBVW/h
	RCjiQJcFUvacPjaJhwn0TuPWyvHcwTGudcXTH6ezh+YDkL24h3KATqH5gH+M3EoT
	rhwxpA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay753rxwf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:47:48 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3418ad76023so13427288a91.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765381668; x=1765986468; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=10BA5lcbUcspkWK3Z2K75uImJcYvTUu5ID+858HqxLc=;
        b=KqOIO4oXiOv/ErwBLrzNZo7PHNXpeh+qECEJmEJ/BlZuO3NLIadoDKzili0lj6A1LH
         7Gul9FH4lnLujWE+KMdba2kIWW9RPMWqbo+teG3EX1Ksh7CJK7xZl4RbhlivDkTTWu7J
         PDTE+8Yp8XSS3JdKvmw/vzU64a1IQHj+Bej82MmRrVbi8KnZFMqfzYzX4Kb6b6I+IBDy
         /O4WBaAaMV/vHr+kN0Vkzj89xb24pHaUDG5kq16ldoPhAJi+mV+u3+GCzuH9nQVqcAyT
         2sV1B7OahvWAfRHuXGLzHkPtOQCm8AarKxxIdSOza5amTCpQMfBc/N8e64IoVLVBH645
         ROSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765381668; x=1765986468;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=10BA5lcbUcspkWK3Z2K75uImJcYvTUu5ID+858HqxLc=;
        b=OWqvfg5mSwLmDVMVymtXUeiuX5C4C0JAKDU2xwpjXhXoAO8v+CQAfULZsYv/+itTwo
         unyCbCMKme/b+C5vTdKmoJiXiuhRVsjCbbMUVVMGd+euLuuSM2+CdhIoZLsnRZhqBxe7
         fCpmKeIpbXNMuAoRna/LaCHvsHhUpFZvAA4OsIatlMOq3gTP4uNttn83XEyhmv/CVwdd
         1LRVguUfzHG6j74H4DgP2KVxxsktXhDm23OriMPrJ7KWTsX3TOAZNTcPHoNvUXuqpZWL
         kWj8q/pn0CbRdKdTv+x/K+dUMkEts07ML9woPfVKyAzlfcFfZykg1HLR8ueQslQtaB1p
         s5dw==
X-Forwarded-Encrypted: i=1; AJvYcCXTj/JkOAW+wBaxUGqchtdpg/yZOsvQlusU08erHJt6phUr1jE7FDmNAi4XtyNE4lX3Iux1U5/KRyEN@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq6PNk83ES3x8KgiB8aB6wC20on8sidMltOV2TkHTEiXCnHWwO
	8rQIRoM6tR+ewJ44DzZgqgbi5HsrzFxPYd71W4n2RW/X5DRV6T4pQObUEBhb+UQO/u4Q812vU3K
	hDteKTWbDzhxtw0pM5YhOxssHx4+6zlraVjmgHkj6miqry3rb0M1BGFMeIeQjTNSJ
X-Gm-Gg: AY/fxX7eo9SBSVq+ZShDNsMFh2n7skjG0NOkkQAX6WG6L3gdm5SZtN8VfK21Kbo6srN
	mPQ62kRzpsHIf6V/4bqxOJ8T2VsLYJtl0hpOejo5Aef3X4krjDYKgB+DD0TzI/99ZkAlv5oJqu9
	z8i7hgHd5UV9CdLDUZTFlFY4Ct4FKmvcg5G/wK2Eon7XXUbeaJQk9AKRehNiPP8rlpE4f1KgwVc
	p1Cn0qQ06yEXDjtdCq93Yw8nhcblEWFWD4UZnEa8CBjBIoaKp5IK+0pXcZSrQMoiGjWS/GDvTFS
	l0T2wuXbayhlXY78HhIjMqL3JC/NqJTZQEDy1QOMx7oySlKbIIuDn09C4Ga/++NW+N//TYFgxZ3
	aYuFjL4DHYyuVTDyLL0BblaG/HfwVagw5STes
X-Received: by 2002:a17:90b:3dcb:b0:32d:db5b:7636 with SMTP id 98e67ed59e1d1-34a72885f90mr2617067a91.27.1765381668005;
        Wed, 10 Dec 2025 07:47:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF6dorJamTns9GTKO04LeR4DjDWK+WEpzhDsqeXgTLByAyIlvR84qy71AQVlBexqy+DZg/83A==
X-Received: by 2002:a17:90b:3dcb:b0:32d:db5b:7636 with SMTP id 98e67ed59e1d1-34a72885f90mr2617021a91.27.1765381667401;
        Wed, 10 Dec 2025 07:47:47 -0800 (PST)
Received: from [10.218.4.141] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a70823084sm2911955a91.10.2025.12.10.07.47.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 07:47:46 -0800 (PST)
Message-ID: <72c817b8-0485-4769-90d3-c93a462ccef5@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 21:17:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 2/3] dt-bindings: ufs: Document bindings for SA8255P
 UFS Host Controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@hansenpartnership.com,
        martin.petersen@oracle.com, quic_ahari@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251114145646.2291324-1-ram.dwivedi@oss.qualcomm.com>
 <20251114145646.2291324-3-ram.dwivedi@oss.qualcomm.com>
 <20251115-polite-kakapo-of-satiation-0a0288@kuoka>
Content-Language: en-US
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
In-Reply-To: <20251115-polite-kakapo-of-satiation-0a0288@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=cYjfb3DM c=1 sm=1 tr=0 ts=69399624 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=MfuJy7bjgNQ4vI8lL90A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: kCDxbWsyzoQo2eHIfvdS2T2iG45MV4S_
X-Proofpoint-GUID: kCDxbWsyzoQo2eHIfvdS2T2iG45MV4S_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDEyOCBTYWx0ZWRfXw0GwduWjTsWN
 DSHB9JWOMQbsWojGAlAd7c/ymyWAhjIvF8p/8w2YmdxbkpzolX7UMgZUEUZqTfOR4nRyUnTFos8
 hk9+kP5VsTxuXQ9EJE3kJ3wx7QmrF3kzvAEpGarrzYYfOWVWfXM6EmUge2uWZR9v475OMcqiPwk
 fzkVg2E6E+/JmEpXC2pL3mSAZrRNeL9BNr26N4sFZ/yLuSjXpoWZv504FFwXoGo6ctkdJEbdWcF
 pXp6NBFK+wNRwibqjTho83K9JZW4Nwr5jdL3bVZ2M4Gdd0MqUb3Nnlrb+6NJxjgsfOR/CzDzBC1
 zi8UM+ahbQTsqEdNsqKSy/CDwxv7++xzHjErpsSX/lb44+vBjIH6UkDW85Ci4247Zlr4MBkMqMQ
 1zfBE3FBBaV7HEXGUNInz/E5XAgD/w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 clxscore=1015 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100128



On 15-Nov-25 5:25 PM, Krzysztof Kozlowski wrote:
> On Fri, Nov 14, 2025 at 08:26:45PM +0530, Ram Kumar Dwivedi wrote:
>> From: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
>>
>> Document the device tree bindings for UFS host controller on
>> Qualcomm SA8255P platform which integrates firmware-managed
>> resources.
>>
>> The platform firmware implements the SCMI server and manages
>> resources such as the PHY, clocks, regulators and resets via the
>> SCMI power protocol. As a result, the OS-visible DT only describes
>> the controller’s MMIO, interrupt, IOMMU and power-domain interfaces.
>>
>> The generic "qcom,ufshc" and "jedec,ufs-2.0" compatible strings are
>> removed from the binding, since this firmware managed design won't
>> be compatible with the drivers doing full resource management.
>>
>> Co-developed-by: Anjana Hari <quic_ahari@quicinc.com>
>> Signed-off-by: Anjana Hari <quic_ahari@quicinc.com>
>> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
>> ---
>>  .../bindings/ufs/qcom,sa8255p-ufshc.yaml      | 63 +++++++++++++++++++
>>  1 file changed, 63 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml
>> new file mode 100644
>> index 000000000000..3b31f6282feb
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml
>> @@ -0,0 +1,63 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/ufs/qcom,sa8255p-ufshc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm SA8255P UFS Host Controller
>> +
>> +maintainers:
>> +  - Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
>> +  - Anjana Hari <quic_ahari@quicinc.com>
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,sa8255p-ufshc
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  iommus:
>> +    maxItems: 1
>> +
>> +  dma-coherent:
> 
> Just :true.
> 
>> +    type: boolean

Hi Krzysztof,

I have updated this in latest patchset.

Thanks,
Ram.

> 
> Best regards,
> Krzysztof
> 


