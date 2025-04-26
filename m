Return-Path: <devicetree+bounces-171173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 23712A9DA26
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 12:45:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA4CD7B3D32
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 10:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4250227E8C;
	Sat, 26 Apr 2025 10:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ak7Bg+we"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB2E226CE0
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 10:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745664305; cv=none; b=tx7maau/TJ1vXdEkNyxM83cqLx7UcYkl+lJlaYnwldtam6qfi5cW0Y+8T8tp+pCWubJsneid1JXiEuH/FtOITalDXG4OO+TUZTRS4HxP1J9K+nFLXELPfu1QtvasUPYp9q0O436p0Y0s9jE62Vj3GVm3Wp++X4BMVgI5pz1La4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745664305; c=relaxed/simple;
	bh=W2cjkRemjCUenJHUNPy6mF05A9vEztYbyP+NpqiS4ns=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SZwbYBbaNS+C8mwg3aYvTR9heQKN0wN3YmhOX77u5ruJvEd9tGEEqnKgW6h9G81dcHqnzK0vC+nVCMl0eGK6MzZPU+IJ3gVd94QXxkcev+2fYekwlfJpfo9N13zXRV/wUMJeiBpzO3eOB4pANryL+oRhotnyYSziUHfpUYXTvX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ak7Bg+we; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53Q0h63g023624
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 10:45:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Cti0cls6RpmnwuEVrPBosDHrl0E/TWcIksexIlUz1V4=; b=Ak7Bg+weLiLtmPbP
	mt+dNjk8S9Gx2LEOfa1s2nCl+j+2sfhFaLdLzBEEGQngO1cZADpIMgoOTlSRH/fw
	E6BzuUhRBfS5PHLSSl+egKF+GoZlBKBmcXLZYsdMbpc2fLcutXolg+H+5ZEJZBaH
	R8U7jG0OQFIBayCER7RTOoXTDCP1vfn8Jek/obaDj8o3VUoW1MMI1wmvNzwHEAZH
	i5P1Qniv9PrcxRchbcKKCHXijPr7M7BcUNcb6YCxeE2z12Rrn0z+rfA3bYPPMIPg
	Xtob+VoaLSi/30Tu2ydzjb0ZZe/eWu6qdZQRDV6okn704V/E65/ftmrb7LiTLMLu
	EBa89g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468n6j9518-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 10:45:03 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-47ae9ed8511so6034841cf.3
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 03:45:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745664302; x=1746269102;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cti0cls6RpmnwuEVrPBosDHrl0E/TWcIksexIlUz1V4=;
        b=nX95ivC7VIaqrPBhOvonpUplmUKmV+oeynSfFS1wStK5x5LNpc3gswpAPqVNT/7U1H
         PjhJoWkU396/k96s9jSv5wxS9fP8GgPKeJAlS3Ob+KLC6s62MMbLjf2z4NMN0Pq7xHwm
         JYBPWKprZhIsS94NQmwq0eT/t3VYSSO7+BEXov4pJRjEzjw/FeHCilXntxWsmjW9HFiO
         uYD5fyu274q76uMmJt0gBeLWui1up9gVJFtwOpJW/hPtupmvUGsXJTXcbHDYbLh7ftll
         h7jBJbOsMkpwvQnEx+pP/0WFW8DvLrVrFW7PDppd7USYfWaf60/riXYvWxoNl6pIAbQ4
         LPFw==
X-Forwarded-Encrypted: i=1; AJvYcCV+4hcuT4kr2WbjU173GiLdb3W6aACOgSXkLW2Jwe+QqUWrelbyLLhR2ClH/NWzb71ZosFCwi8N4wri@vger.kernel.org
X-Gm-Message-State: AOJu0YwpgoLUbJaf7a9v7Nn7fixs972lbXQGJgNjL8geDelNSMRhi310
	dnOS1EiDtNKQXRm8dmqj/ZCMdbJ5kfKQZAigB1VGqX0ORX4DrloKay4a80Ga6HllmoZusDsrPWh
	wjujhVX5PAc+w/F8U0e8AuPAKgkc1gmqgZDHwfSnxiipBye6wpZZJasjnLZ8/
X-Gm-Gg: ASbGncvwMilyZz4gYyfhHY45FEaubx0DlMIYF8AOV/Mdw9RAX+L7dzb2GUCVUcJF3jd
	g+50lZCSkjwXsG8fwt3JiJMNDYth1zGvQ3VrjSqT949hrrFl0sFPKu3LSKr9XvMiZbIIzUB31I9
	oRY2WTwB6vpR2Ni2rb0E8aaxLc9YOBAVtOf6v8j82+dcjXZTKB9PJXkvbeFlj4dCm0uvHOcp9Xu
	MI/U54f3ocW0pLuT+vybXb498dZD5aTcMhaedawp+HRV3vBzIKHL/0FuMXLfxR2njTY++CBvalU
	FZlypbkNljkNh9qhAymx6Gd4tsL5+SpwmKEHvfqMpz1YDGgtV60R4k3POSodhyVtMzI=
X-Received: by 2002:ac8:7e8d:0:b0:47a:eb49:273c with SMTP id d75a77b69052e-4801cd5eb1cmr33064891cf.8.1745664301983;
        Sat, 26 Apr 2025 03:45:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5ahbGaThCrsLU5YdXHhOSo0roeSKraRYtG07uhVbFeJV6F+w1ZPA4VBcrJMdVncIiFqK5Uw==
X-Received: by 2002:ac8:7e8d:0:b0:47a:eb49:273c with SMTP id d75a77b69052e-4801cd5eb1cmr33064711cf.8.1745664301568;
        Sat, 26 Apr 2025 03:45:01 -0700 (PDT)
Received: from [192.168.65.154] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41ad27sm268969666b.5.2025.04.26.03.44.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Apr 2025 03:45:01 -0700 (PDT)
Message-ID: <306ce1fa-be83-4f13-bedd-97a20448d162@oss.qualcomm.com>
Date: Sat, 26 Apr 2025 12:44:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: x1e80100: add bus topology for
 PCIe domain 3
To: Johan Hovold <johan@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com, quic_cang@quicinc.com, quic_qianyu@quicinc.com
References: <20250425092955.4099677-1-quic_wenbyao@quicinc.com>
 <20250425092955.4099677-3-quic_wenbyao@quicinc.com>
 <4bb58766-a080-4351-87f5-79a98219171c@oss.qualcomm.com>
 <aAt4TBrekUqyTjfi@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aAt4TBrekUqyTjfi@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDA3MiBTYWx0ZWRfX5DUzxAPpnYBW tkObZoN4LvqQqsElC5PqcRbv7kZ9NJNmBsfSdX2ECDm4a2WGi9GgRUL1JpnMLcZK8Y+O2sMQx+A 6QMg6ld/7m44Gd1AYsDgrM/bZWH08ERAEo/r/DQbGIMzEL0n+yEEn2/NnjIFv10h/j+1WX2bR7c
 JViUG18/m0qWBMWisncw8l6T/VMsAN2y1ZhUAsKMRXuoVt3H+7FAOJBs/63AUd9BAzYfgf0rejY eQev3IIWnxncEMV/1s+39Gs87cNzheE1LB2ZcCYwicxfXihXG99ko8moCaSGJHa2TBEALAhAUGz Fqs76u38HaTAy/NqvLeF7Nj+iVxD3KLOtj5vgdEof1bXaEln5yIAYpN17BeK5tY2UzIbd95xSOb
 o7fW59B5//vFE6RgePTR/9IvkrO1v0ACVFbQdlRNMNFoZ0L6qEXq6emPMzmbOn7QCsAl5kUm
X-Proofpoint-GUID: Ox32QI_L5r7lhNVZur9tSpKAEmLkqnOo
X-Proofpoint-ORIG-GUID: Ox32QI_L5r7lhNVZur9tSpKAEmLkqnOo
X-Authority-Analysis: v=2.4 cv=C8fpyRP+ c=1 sm=1 tr=0 ts=680cb92f cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=FwFjppTGKuqVC4zksNsA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-26_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260072

On 4/25/25 1:55 PM, Johan Hovold wrote:
> On Fri, Apr 25, 2025 at 12:22:56PM +0200, Konrad Dybcio wrote:
>> On 4/25/25 11:29 AM, Wenbin Yao wrote:
>>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>>
>>> Add pcie3port node to represent the PCIe bridge of PCIe3 so that PCI slot
>>> voltage rails can be described under this node in the board's dts.
>>>
>>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>>> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 11 +++++++++++
>>>  1 file changed, 11 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>> index 46b79fce9..430f9d567 100644
>>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>> @@ -3287,6 +3287,17 @@ opp-128000000 {
>>>  					opp-peak-kBps = <15753000 1>;
>>>  				};
>>>  			};
>>> +
>>> +			pcie3port: pcie@0 {
>>
>> @0,0 for PCIe adressing (bus,device)
> 
> No, the bus number is not included in the unit address, so just the
> device number (0) is correct here (when the function is 0) IIUC.

Some DTs definitely have that, but I couldn't find any documentation to
back the syntax up or explain it properly

e.g.

Apple T8103
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm64/boot/dts/apple/t8103.dtsi?h=next-20250424#n930

RK3399 GRU
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi?h=next-20250424#n486

Konrad

