Return-Path: <devicetree+bounces-229864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB00ABFCEBC
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:37:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0590A3A3A74
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 15:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D18A34CFC6;
	Wed, 22 Oct 2025 15:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N+mR72vB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2788B221FBF
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761147424; cv=none; b=k+BPx1+3fSw9KRxqamoJ+bf25kVljrxwYwr1hmC8LrC+lWYj1CmD+rUqSVUkEJBQEe3A0c92gWdSHW/HXJO0ueNJwg66rg5lUytS+tBjp8cnP5k0Q4y0S9yTJAf2Miz5vBzySj3tih3823A6S1QxNc9yNgF57PzbsvW8EvuERLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761147424; c=relaxed/simple;
	bh=yw7MYPuJwxskvEnV1slIcH19SvjfzztecTsuaNiUHWM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RwgUbZ8UWmPuuGOeGqQqGxtlS79isyTxkXc39532sN2mlf2cHS8MLSPXgsojAcZs7aSBKypQjofleYPLJWFO++jiWZ1qMRny8LSQTocq/XH0ymbhc5+KXHEo9hmivgorG4PlkYlPt/Od2mcRtYCA2uqZjNz+7Y4BKOfnm17yPhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N+mR72vB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M8NONA003554
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:36:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U+mhibcr3KvxpGvWKRaEQkH0yOEvTS11FzM0f/Yj4IM=; b=N+mR72vB8fZvYrOf
	Z7+8pw13DC6cpHEGOJaOqLWxI7uFt7PYW9q1skSuc8cvf10FTfjiqrT4FSKP8je6
	aKjJegJ1MZka/ym+FAv2gjmvhVzyGycQRz639NZrtjJybBbPl6YSjNXPL6mB9UWM
	NFFWPdtm1w6CcSqAF/WfNHh5+2oWQvWcT28fRsiCkOY/+loj76uMf12X32x1A56m
	GQN2kxHDm3tmOmDt5GCezopMY42p/Cesdntl9kCVMO4+zQax+3N8zAqtutq+FhEX
	p3ss9ylZeg6tvXC71TRCwQyNh1TQQzr+87D7i9kmMP0yuKmYiIwW+yRNoBVgif4L
	tdfm2w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xkpsas2u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 15:36:53 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e887bef16aso4099041cf.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 08:36:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761147412; x=1761752212;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U+mhibcr3KvxpGvWKRaEQkH0yOEvTS11FzM0f/Yj4IM=;
        b=WRv3m3s07Nv7qsSwaH3Wt7bSVOrQwp+Rnw+AWxcWPxbSMhaRnY/7OFcmCvlEMGo7KN
         XR+L8EVQ4fZ3qGSt2Lpzrptlt0VibvW9UdJ8xd0kF8soc06nAB4wMNxfktigfLo7fLC+
         GU45FHv2SO8XjS/gdjt7sBNbdv8/ruKb5rzuUPvvN964alju+BGVGZ7eK5w87/K/XbM4
         /8OOxrPIQGIVu3pWdFPUCr/nTmsS3XMAPTlh4Wq8ROJsypNtpW6pV8ZkONMaIIOFVvNN
         lbK2rONRHha8fns9ssrPrpb/+iMKQJ5+t0STzkHMOpt6+alBLYGVYhQmIDOCI6OVrItO
         TMXg==
X-Forwarded-Encrypted: i=1; AJvYcCXM6fLyXpyQ/OG3d/WP6KiiRFZCCkA2nAoWo60YwXfzV3SHFcNKgGxMweRqeap7q/zAaRlJ4KC+riKT@vger.kernel.org
X-Gm-Message-State: AOJu0YxfMaBfsi76wWm3826Wnumhn9sEI2x+9GABH7pKdgVg1MtKeSlz
	KI5Fc+sO8gNw2tCT1P9EX0+bXs0/NmypgNSUMDFd9+97N87xQR5e8BQeVnSl3nxMMfivdagsmms
	ZU1tLUG5BCcU89eqeD6ef7VNfb7/NmdPU8T3Ig8HEe2Ky7+Gvu5NkstEH0/E/mDWI
X-Gm-Gg: ASbGncuidgzOXoZv3VVQ9NArbYmzUxYL/If0Ycya7muTGJztMYUI38LGfipcY5ZSVwx
	TeVIzD16tePRmgGeFnHBqJcPuTLrwRUigzrXYbN3t+C+7aN6JxLhB1XQmWYgaaOgLBmGcyzIGh3
	gksLrekseAxwnDQX79UfqXMB+tqU7j7AbVnFHWG/FUyvA1NqoL35qUHOpPv1X7nFsNDiKaDuvxO
	4QaTVsWy14LBU//MBp9gLGRvr6Sm482TgULf4UddwYjNUJ6kqjNOYR/EDElU8A+UoRMYNIy0fpx
	rFSCSjy4BwXb90nzGx7Mi+S8gJ8ogi54IsGhgu1/vmX6aPA0T0lD9ZXUqW6itc+XOt3E/2f6wqP
	KacHOxN97/2FQZ/XOEHhEKHXUclDxT14B72oOTcJhOCjA9QexEQ/XbvFV
X-Received: by 2002:ac8:5843:0:b0:4b7:94ee:4fb2 with SMTP id d75a77b69052e-4ea116b05d0mr59506771cf.5.1761147412318;
        Wed, 22 Oct 2025 08:36:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5FuP8hgpkFIa3uP3XvrbHL/HJQny7T4MX9pzM+xYE09ja+BdsOTDkZo9VZA53gUib6HSKPw==
X-Received: by 2002:ac8:5843:0:b0:4b7:94ee:4fb2 with SMTP id d75a77b69052e-4ea116b05d0mr59506401cf.5.1761147411728;
        Wed, 22 Oct 2025 08:36:51 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c48ab54desm12600892a12.13.2025.10.22.08.36.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 08:36:51 -0700 (PDT)
Message-ID: <9c920cdf-1985-4656-bee2-8bfacc15bfa9@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 17:36:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/8] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20251017-knp_video-v2-0-f568ce1a4be3@oss.qualcomm.com>
 <20251017-knp_video-v2-1-f568ce1a4be3@oss.qualcomm.com>
 <c9d8f76a-513f-4a09-bba4-cb8f0df1d2fe@kernel.org>
 <034bf6f4-0a49-4973-8536-28526b3409d1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <034bf6f4-0a49-4973-8536-28526b3409d1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE5MCBTYWx0ZWRfX13pfgVf5BcXx
 GMYeBGFqAbqTREJRBMsjdrB2DMu42vSvOIh5ZP9/mQfJrO+TU4JlGHAtBY1KEEnrAugMRN9ITwQ
 33muNw5a4r2KuqInaGyo+gFCxqy3ggs+gyEBVB/Gv4UTRBnI2PaVZoDkZQ0b+uDbSO8n/z7WH0C
 Tsr8mA3lcWa2hUEYQ70lzKL/hS0tBbNOagUw+3aSKdETdVkJkVsOJnvSDsok+fkyhVTgQYeDhU0
 0H9lH7nGd9ljpwWhDSerkQYz3iQxWEuW2Ro21i79MVze+NzLesPVoDXutTzgr0VDyo2+Iv5UWSS
 09I2dUOESCwclH2YUTHr6pJNweM8jZ062FqI2VCuCcq7nVF5UdYQgD2yIF7JY79NzhG/BjCi6UL
 ZRZbpV8czRa6rf0mKeQyVJdjB8iznw==
X-Authority-Analysis: v=2.4 cv=FbM6BZ+6 c=1 sm=1 tr=0 ts=68f8fa15 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=MY7ZD1EjAs5gof5aNy0A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: QNLvpa41hYZGpTIVpEjIaz416CDEX0VB
X-Proofpoint-ORIG-GUID: QNLvpa41hYZGpTIVpEjIaz416CDEX0VB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_06,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510210190

On 10/21/25 8:55 PM, Vikash Garodia wrote:
> 
> On 10/18/2025 9:28 PM, Krzysztof Kozlowski wrote:
>> On 17/10/2025 16:16, Vikash Garodia wrote:
>>> +  clock-names:
>>> +    items:
>>> +      - const: iface
>>> +      - const: core
>>> +      - const: vcodec0_core
>>> +      - const: iface1
>>> +      - const: core_freerun
>>> +      - const: vcodec0_core_freerun
>>> +      - const: vcodec_bse
>>> +      - const: vcodec_vpp0
>>> +      - const: vcodec_vpp1
>>> +      - const: vcodec_apv
>>> +
>>> +  dma-coherent: true
>>> +
>>> +  firmware-name:
>>> +    maxItems: 1
>>> +
>>> +  interconnects:
>>> +    maxItems: 2
>>> +
>>> +  interconnect-names:
>>> +    items:
>>> +      - const: cpu-cfg
>>> +      - const: video-mem
>>> +
>>> +  interrupts:
>>> +    maxItems: 1
>>> +
>>> +  iommus:
>>> +    minItems: 3
>>> +    maxItems: 8
>>
>> I don't understand why this is flexible. Make it fixed size and anyway -
>> list the items.
> 
> kaanapali vpu generates 8 different stream-ids. Now, boards running kernel in
> EL2 mode can list all of them, while boards running in EL1 can have only non
> secure stream IDs. Min have the list of stream ids which can be enabled for all
> type of boards, while max is for boards which can list all in HLOS given kernel
> is in EL2 mode.
> 
> Below crash would be seen if boards running kernel in EL1 mode lists the secure
> ones.
> 
> [    1.361157] pc : qcom_smmu_write_s2cr+0x64/0xa4
> [    1.361165] lr : arm_smmu_write_s2cr+0x2c/0xbc
> [    1.361168] sp : ffff80008005b8f0
> [    1.361169] x29: ffff80008005b8f0 x28: 0000000000000000 x27: ffffc7f252f45320
> ....
> [    1.361195] x2 : ffff800081200c48 x1 : 0000000000000048 x0 : ffff800081200000
> [    1.361198] Call trace:
> [    1.361199]  qcom_smmu_write_s2cr+0x64/0xa4 (P)
> [    1.361203]  arm_smmu_master_install_s2crs+0x7c/0xac
> [    1.361207]  arm_smmu_attach_dev+0xb0/0x1d4
> 
> Could you please suggest on listing the iommu items ? I did not find the
> relevant references in other bindings where flexible iommus is being listed.

Krzysztof would probably like to see what I believe someone else somewhere
sometime suggested in the iommus discussions (sorry it's not possible to
keep track of it all), where the DT can list every possible required iommu
sid, but the driver ensures only the ones that are necessary are utilized.

This will require big changes to the iommu framework though, I'm afraid

>> I already asked this.
>>
>>> +
>>> +  memory-region:
>>> +    minItems: 1
>>> +    maxItems: 2
>>
>> Same comment. I already asked this about iommus.
> 
> Same here, there aren't any bindings which lists for flexible memory-region.
> Please suggest if there are any such references.

Similarly, we can define the additional memory region that's necessary
for $reasons and leave it unused in the driver (actually I don't know
why there may be two, but let's assume it's a QTEE/noQTEE detail), because
for the hw to operate, it must be set up by some entity in the system
either way (i.e. the memory is reserved even if it's not done by Linux)

Konrad

