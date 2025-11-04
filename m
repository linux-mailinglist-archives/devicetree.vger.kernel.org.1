Return-Path: <devicetree+bounces-234627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BEAC2F613
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 06:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7C97189841F
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 05:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD1382D027F;
	Tue,  4 Nov 2025 05:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hvLCrYAp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IONOni4e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671AC279903
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 05:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762234511; cv=none; b=HstEozN5gznUmwnBo+m6FZVyDKN/nrFfyuSxC+24+8AM7fYK6JCRGM1WGUXIRgvnue2oNC2rTNd29ijFoNN2yR/PZStGksdRVC8jSgbDyPT5Nal97pjGUteU4lyjIWzdVZzBgya5QDU/IaQnxiJnTPBLlP1ESJYCv+fF/y4a9wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762234511; c=relaxed/simple;
	bh=2P+CxIoELezvA+RCfalPVsUy7iSXyonL+qlhkllQlb4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mTcZgFya0v9PXFYvjbzSxekSkDbmtTG55gmBk7kVy1FQfBSZ4CI8bNY7fpKhNtCq11KFYvMuPJftzHUQeW+nqQLVoVTrH1L0BbI+L4frRnLJ91FfCYOVu4fdXEGXQyYB278KFgfYYGw+S/UC8aWD4fvkI/Be+bXnDgRTZRz4/gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hvLCrYAp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IONOni4e; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A42lseN3659534
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 05:35:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1yAZ5BZxanPwdn7pnZ47192vgH1AOWrXwIL2Xsu5H7E=; b=hvLCrYApud9gLrqr
	TU7pmqOKylKn2G0Q1RSCSIlyROfbayjJf3qVTc477fHIn7sC09AJbaGP0xakcr88
	wvvBRx7EQHdgTSu8RyqNpXM2O8epJGKig95b8KoAq+VxAEdSwARciFWaqUtcGZu5
	0P/v+ot2KUNINhmP4dEcuQ0Amj9UahxpeyGet+gk2OqtqTDdO7N3Zpo5ZpSplaXE
	+whntNdmOIkTmMArtrrzaXudzoAgEOjG9lAyudPHgL449xco9O7+bV4JD0qpkCEA
	ngcMDddv5ps+VfxI+gODhbLGnl/go4vxwm/HJrrDPWAb8j/yYNhSmXPMG2gK2D49
	CWCPfA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70ge9ra5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 05:35:09 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-340c261fb38so3193841a91.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 21:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762234509; x=1762839309; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1yAZ5BZxanPwdn7pnZ47192vgH1AOWrXwIL2Xsu5H7E=;
        b=IONOni4eGirUbQAhImCQVLOqE4UbtQaCLGjtDnJfhdhlEn70aYlvIK59sWAIAEoi1u
         yzXnTpMe5jjhhQ3XvjRh3e+x7qGd+2c7Wt2ucBAsSkZsxFGHvfz6ai59n25aL6OLlCV5
         XMVNiEK12RGoYFAxlnwVOtMW8RzjcQdpb5GlWCRSuh04o7m/mxWIXGUzWRy9t8HR7nys
         ZW75iTXefdNUEuBB992V4pEOPFWLvaqPCbIg4sQF7dIFUw3ezWgloim8pTDSKrQYx7lp
         axgkBMyL5d5RViV1ThEyzcbGSkksVHSCupwPJTHrECK3XOSDLctlFjMe1WsJA8x/nxp0
         ogNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762234509; x=1762839309;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1yAZ5BZxanPwdn7pnZ47192vgH1AOWrXwIL2Xsu5H7E=;
        b=XB31mKumBDSPJUMgvNfvI0SE6M2ds7EzEbe1iYng4R+THdUjP5dH4dfEltiR+Z63Mx
         9jHwAfM/HZ278p7xUyVUxWFNOgrV0GUcy5s0Qha0Zk6z60vP7gPg+iPIYekJnELw/fUX
         0xgg9ezKKN+OkfidoVVu1WQR1iFVEwoN7rV6OTzbgzVIQqhpi6ZPuGzayvvJd7gCxmTE
         Kpvje2kr39C8pqd95qeEOQ3XvMZUpRgLIOsr21aI1/UaxPz+CxUFBqY6yfjmZkZZxxkp
         YlcxV41tKeE6aCKlu/Y0Li0CuuRyD3xYNdXrbOWNoRHVFogtCWhRrrM1LLt6I9sJ/TpI
         8RWw==
X-Forwarded-Encrypted: i=1; AJvYcCVGGDle2k1J4wr1dNytpMXmLF/ET22sOs1fL/OZNmA59EeE5yee0UsOx+FnuFTbxatukI6gMDORRSpa@vger.kernel.org
X-Gm-Message-State: AOJu0YyrSYDxwM3tzFLSXS1cLxdDkx/9uSxXh8Pf7nllZpzCIfQBY2m5
	tYRe/Zf1C/brBd0LB8Fg9n98dbhdjssVmu/gIjffOAL6FHMke4QNZS3SqBxZYjO+xv6shkfVcjx
	zTuYCK4p/+Te/TVNeIaGf0qxm9eS9SFKOsD2YqG8ojurnNVP7fLUX/LESoWVE+9qf
X-Gm-Gg: ASbGncumfjtlBi6YmBY91ZPYyj/8h0neCJKqxkjFRmmXtt5q2fxo8T5l/+JEsENBLbW
	cJ2o2Bb4unEH5eHcAnJsKmXYwblEb59AcKn40BaI3qt5AXxigpK+w3jyuUEqaSHBsEp8uY6zGF2
	zAY49a0FuY4Dpcgs13w/bm7gU2nCrrq30AxRjRXPaD63vJjapTYxIRqnHMEHeBJVCXn8JNI+cCH
	t9JOtenN4usX3AW0DHrOuJyRqMs1qSCCLqvIR8YnAK24xSrznyJAySBAafEogvlQxJSnDfBFTn5
	tppOQGffbXMJSZAx119NT1uwEkJjIIzG1CXB+Uz5+OoaPcW7rp9tJG/eGxBNNbc9B5IDXcIrBpS
	Jqsp6yCWZQcd5SH0W1IRYzZGlMu9TzATCj+9ZVMPLah23+gner/O8O5/X8qfzM6e7cPwrSg==
X-Received: by 2002:a17:902:f60d:b0:295:28a4:f0be with SMTP id d9443c01a7336-29528a4f6b2mr143160095ad.10.1762234508770;
        Mon, 03 Nov 2025 21:35:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHng7eVS5bLdwxY5O4re3A0l3NZGOVCyRWV9eOTQvzKfq1x2VWpkt7j6UzUVTsx3vqD3p1wzw==
X-Received: by 2002:a17:902:f60d:b0:295:28a4:f0be with SMTP id d9443c01a7336-29528a4f6b2mr143159835ad.10.1762234508290;
        Mon, 03 Nov 2025 21:35:08 -0800 (PST)
Received: from [10.133.33.122] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601a609c8sm11237775ad.92.2025.11.03.21.35.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 21:35:07 -0800 (PST)
Message-ID: <ad00835e-bc20-4f97-aba6-e1b4f5e97191@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 13:35:01 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mfd: qcom,tcsr: Add compatible for Kaanapali
To: Bjorn Andersson <andersson@kernel.org>,
        "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-mfd-v1-1-6c8a98760e95@oss.qualcomm.com>
 <b623c7f6-f28f-49ba-b6f6-25084117a6b3@oss.qualcomm.com>
 <l4mb5pi7kz7uuq6o3eueoxl2ngt2sdd6dv3kyudw6i54co5v5h@w6ya2nuas322>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <l4mb5pi7kz7uuq6o3eueoxl2ngt2sdd6dv3kyudw6i54co5v5h@w6ya2nuas322>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 08FSe2p8wZTwS9eCVTdol21El_7HMtBV
X-Authority-Analysis: v=2.4 cv=bqBBxUai c=1 sm=1 tr=0 ts=6909908d cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=jXqUCmHUJh4Flt8Z5iMA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA0MyBTYWx0ZWRfX8h11IMBgJ0tC
 2xVYQXDOugnWYQZYnO+9qJYNQ4Yhb5WChJFoXRPvz72tB1p+5NXjG5GtJb7vOhl9cAMBQkS1917
 SKwXCAo6I8ZwolEOwO1x/BeUQcNreA/BTVA7GYsZ/G30ILah69wmSFFba7p4h6DNKvtkzqcJ7/3
 kX3QePwjzylp8WLSex34+wAdFL83yo9fTVGvVP3QqskLMZSFNCubjLOK3Nc99TX0yQcFrdkfD3s
 Ttkd5TBuk2LzydH0PIpH4fs6AkbfoFvG9GsoFNOiH+6q5yTrFv8ep0fqmc59LxnEB2bfgVJjGNJ
 Goa6gw8Wh481Y2OdoWJecpVP1trMGtXCCMr1kxrbxmJdujjxACSp0MHHgmpTS6s5zY+cl2xXV1Z
 5KsgyYDj97MvxydF3eE9pW+YXAAz+w==
X-Proofpoint-GUID: 08FSe2p8wZTwS9eCVTdol21El_7HMtBV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040043



On 11/4/2025 12:02 PM, Bjorn Andersson wrote:
> On Tue, Nov 04, 2025 at 11:34:25AM +0800, Aiqun(Maria) Yu wrote:
>> On 9/25/2025 7:23 AM, Jingyi Wang wrote:
>>> Document the qcom,tcsr-kaanapali compatible, tcsr will provide various
>>> control and status functions for their peripherals.
>>>
>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>> ---
>>>  Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>>> index 14ae3f00ef7e..ae55b0a70766 100644
>>> --- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>>> +++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
>>> @@ -48,6 +48,7 @@ properties:
>>>            - qcom,tcsr-ipq8064
>>>            - qcom,tcsr-ipq8074
>>>            - qcom,tcsr-ipq9574
>>> +          - qcom,tcsr-kaanapali
>>
>> It looks good to me. Glymur didn't have this functionality verified yet.
> 
> You spelled Reviewed-by: Aiqun Yu <..> wrong.
> 
>> Remind for review.
> 
> No need for that, reviewers will review when they have time.
> 
>>

Hi Bjorn,

> 
> But that said, most modern additions to this binding follow the common
> format of qcom,<soc>-<block>.
> 
> So I would prefer this to be qcom,kaanapali-tcsr.
> 
> Regards,
> Bjorn
> 

qcom,tcsr-kaanapali is used to distinguish with binding for GCC:
https://lore.kernel.org/all/20251030-gcc_kaanapali-v2-v2-2-a774a587af6f@oss.qualcomm.com/

Thanks,
Jingyi

>>>            - qcom,tcsr-mdm9615
>>>            - qcom,tcsr-msm8226
>>>            - qcom,tcsr-msm8660
>>>
>>> ---
>>> base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
>>> change-id: 20250917-knp-mfd-4dd3c81e6b9b
>>>
>>> Best regards,
>>
>>
>> -- 
>> Thx and BRs,
>> Aiqun(Maria) Yu


