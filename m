Return-Path: <devicetree+bounces-230787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD148C060E5
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 13:43:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 995BC3A3995
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 11:37:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8C5245019;
	Fri, 24 Oct 2025 11:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xoxyv3vF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A276B279918
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 11:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761305849; cv=none; b=X9xoMC/a1BkI0fmLLWjfQvpAY+oeUG40O80HYeFDgXAOMYUG/CMY26Ns1gpf9A1PbCBU/J2NZS0BF9T9D2cJkmElgbiKgTd1QphA0n57xykYIUwV7O5ma1ARjXPt2g/qX8Uei4xFr4ixgkAlZA5h59edvILj2yRk4W0LAkXx0cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761305849; c=relaxed/simple;
	bh=AegDV7IseewiNZScqyTokamJL+JGOkRVJ0CsWicKgK4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=urwt1xZrwMCz2nHj35R83m6+jzf3hYR7+5ESaJWbeLXBDOCm4/TYmqSh3aDMGVF6QiPpnYglNN0let/a93mTnKue/s9wdqiwpGZDhMFNDg6ve+QTSWkI6CkJx7GYITqmmhkg9UmScW/cUV5kh3qp9qIgh8hcRI3oSRgQjyYjdzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xoxyv3vF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3MBps010242
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 11:37:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dbfGbR0kcMmEjjS0vTIRsRdJzggRoz88OyC/T39B8BY=; b=Xoxyv3vFFcGRreoB
	Jpg4cG2pZknuWhO+R4y+49fe5zhstgEZ1O/Nl4aAQ1SyyynWhuxjWSUEV18+PkdZ
	YS5/0b8fUgUoVwLHGfhW/+eU65abRj85AOeeu4IzFfKaQbhvpLBB4I5Or4qW98MO
	Bdx+sWS9fY+qOJ8wnQ9uP0QRo0+LB8pXvli/BIT7YMRVmsPv6cC28CtAWLO2V2Zl
	mniJZBtycbAyBUN7A2abuMTjxW3WgPLBE8fNV+gNeMRhec6yZk2qm/7j6KDzLlQl
	KMdu6d1XJ8nluVnNutl47kpX3PBrBsxUMloJZqc9QqqLtS4PoaN1Jc8pRFy+er94
	dxDh0g==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y524e3he-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 11:37:26 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-792722e4ebeso1735711b3a.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 04:37:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761305846; x=1761910646;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dbfGbR0kcMmEjjS0vTIRsRdJzggRoz88OyC/T39B8BY=;
        b=RYOqQjw1IdosvweLUpU2BtVcgeEdY/PxeVOCoFBcj+S1A34yj+f1dKtwMsFp/CWZS6
         bgyQp0SJLSR22j8XreKi6V9W3Ak0LrBUwseRj/T5nxjaJSfSTj7+Ki7Xm7FgN3tZ9mtm
         sEEu4YMZNNeWFx5W2Zd9DKMRWFSs9UxKKo2S/5er954Q9KOD5Mk+9By9ZbUKIvKqY8qR
         ubznE6ayROiLzAE5OqOy5vnEyr18I6Z7xuQkIqvGtAOdsDscLB4KNAUG/7RoUCWTpgjL
         OiOu1DtbWHqM4uzdk3OFSprbJs6DeupaFtrH7MWsSXMQnh3F1mdwUW8ww/OGyzB5q+ii
         3/2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVbWM677Lg60Du95B3rs/bYBolNe+8SkNWxZcQG3QsLnMKLqRcCvaOoAtdw71f6kd1GeI9tpx6fiHrM@vger.kernel.org
X-Gm-Message-State: AOJu0Yyrf3rMgTelX8QRIGLVwLb78/0W99H5qFNWjNm/y4VSsuLVN4aR
	nyT0xPkuqOP3j7bvf+F0urxhj1//Hy4wX2CdbVOeRNmz/qVDQdt5OTvBRWxnjYY5ja4msDErg06
	yP+0B13c9lXT5D/pPGSjW6qj6joLZD2feXPRxa6HucKRMn8VMmjQkwx4+q71LiF9bAKAuuSxB
X-Gm-Gg: ASbGnct6Nu+wvHyUgyLxBmTsCtUVTb3KLLJAI8sNTy5PvmxdrbMaKr8Dou2ZSjE7R4K
	M4PhdoTp+wWKXyytH22J8AXo8WzIoRwDrBaxYEv4CxIQe57FzAg91N75sUNr0ECzW0q2ZfCMspD
	S5qzvdxDBIywgnDUU+uF5IFdSK8M7syrdpaZM2JALsvXoi3BA7Zp4L/yY2xJG3A9be7PnM7xsAR
	L3WNg0NWZ2LM0vHa01GLJ2Q1MYW9upHXU+q2OYS5Nh2v7KoO9WchMxAf68Q5zO+XOn5hklpjddH
	XWVrpVfthSDcVQ6wfmPlVrCSH4ukk3EcqafhBQYc824AcESIwefM0JS18Tl5EXDmN0p+sT+9n7C
	OY0nkGYAYDp5vcI/6P5AR2COEWFr/43U=
X-Received: by 2002:aa7:9290:0:b0:7a2:6db4:4c7c with SMTP id d2e1a72fcca58-7a26db44dbdmr7396052b3a.30.1761305845892;
        Fri, 24 Oct 2025 04:37:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMJ9ddkiXbFe6TKK3Y2/fvEFeNAy844DzrGqnMtKaMiv58hmthIdtxkrHb9kI/TP2dxoiy9w==
X-Received: by 2002:aa7:9290:0:b0:7a2:6db4:4c7c with SMTP id d2e1a72fcca58-7a26db44dbdmr7396019b3a.30.1761305845379;
        Fri, 24 Oct 2025 04:37:25 -0700 (PDT)
Received: from [10.218.4.221] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274bb0c93sm5573663b3a.59.2025.10.24.04.37.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 04:37:24 -0700 (PDT)
Message-ID: <f2ea3da2-4582-a2d7-9a90-8050b3e8a27f@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 17:07:20 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1] arm64: dts: qcom: monaco-evk: Add firmware-name to
 QUPv3 nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
References: <20250925042605.1388951-1-viken.dadhaniya@oss.qualcomm.com>
 <9b887bc5-eaa4-4271-8770-3458efb528bf@oss.qualcomm.com>
 <f016d47f-919c-2944-ab8f-68e450e5836a@oss.qualcomm.com>
 <be816a6d-c4e6-4cf1-b5dd-fd59515a42ef@oss.qualcomm.com>
Content-Language: en-US
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <be816a6d-c4e6-4cf1-b5dd-fd59515a42ef@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE1NSBTYWx0ZWRfXw2eHEMiQ47CA
 UB2oztMFri2l24JShVmEx7XmT+tpwLbeQgAN3kuLDsWkSAcKkpqjrTk2i1nla7wEgHoe9v+SO21
 bPn5qdZAP+Py5w320+Z+7xptbYW3esXj4YqjOcbyJY+KFNR1wtlhrHsKi7w982rUCB3TyA+mMz8
 cL/0OdQnFlfGOWZZdd1gT/ocS1RY4NbQtYNr/ssQljGEQGqEjgSVieeEIo0niMkvyPAwnuVQCZO
 pSDmsMsCqD0ud+XcPZ7Q8wKSq835AmiFySx2SAUWYgwhxqr9ZvxgitUSAqBvz5gfJXyao2Xg0M+
 99lqmi7zk67M/5YeFoTVPo7+P/R05k8vYuK33qMrHtiv3Q6Y4CzTBuYMYvHWN0uaYFQCZrft2+2
 W2Nhu6R8XP0K9byHTrpVbLn7q15ZHA==
X-Authority-Analysis: v=2.4 cv=Uotu9uwB c=1 sm=1 tr=0 ts=68fb64f6 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=2qUNLLk1E6tSnZkWjjAA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: Dy4xEI5GxEqylkYZAPUfnYiCGC5GrpWg
X-Proofpoint-ORIG-GUID: Dy4xEI5GxEqylkYZAPUfnYiCGC5GrpWg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220155



On 10/22/2025 10:30 PM, Konrad Dybcio wrote:
> On 9/26/25 8:43 AM, Viken Dadhaniya wrote:
>>
>>
>> On 9/25/2025 2:22 PM, Konrad Dybcio wrote:
>>> On 9/25/25 6:26 AM, Viken Dadhaniya wrote:
>>>> Traditionally, firmware loading for Serial Engines (SE) in the QUP hardware
>>>> of Qualcomm SoCs has been managed by TrustZone (TZ). While this approach
>>>> ensures secure SE assignment and access control, it limits flexibility for
>>>> developers who need to enable various protocols on different SEs.
>>>>
>>>> Add the firmware-name property to QUPv3 nodes in the device tree to enable
>>>> firmware loading from the Linux environment. Handle SE assignments and
>>>> access control permissions directly within Linux, removing the dependency
>>>> on TrustZone.
>>>>
>>>> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>>>> ---
>>>
>>> Viken, you've posted a lot of patches like these lately for
>>> specific boards.
>>>
>>> Should we instead push this to the SoC DTSI, to limit the boilerplate?
>>
>> The firmware load from Linux feature is applicable only to devkit boards
>> (RB3 Gen2 and EVK), and therefore, it is being added exclusively to the
>> board-specific device tree files.
> 
> Do we expect GENI_SE_INVALID_PROTO to ever show up on hardware that
> can't make use of fw loading though?

If TZ (TrustZone) does not load firmware for any SE, the SE protocol status will
remain GENI_SE_INVALID_PROTO. In such cases, Linux can load the firmware to
initialize the SE and set the required protocol.

> 
>>> If I recall correctly, you said these ELFs are not vendor-signed, so
>>> it should be OK to have them be assigned globally
>>>
>>
>> This feature is intended solely for use with the development kit and is not
>> intended for commercialization. Therefore, vendor sign-off is currently not
>> applicable.
> 
> Well you conveniently never really mentioned this in the driver patchset..
> 
> Konrad

