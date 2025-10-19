Return-Path: <devicetree+bounces-228486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D412BEE3BA
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 13:36:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 387544E0604
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 11:36:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8004E2E54BB;
	Sun, 19 Oct 2025 11:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RX2jYTUD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65842512DE
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 11:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760873760; cv=none; b=WuR3uNG9pxaI1eynW04wQJgiTrHKoZRCsZFH2Cu1JrX2QgQJrnK0Chfh0lWeUfqA0d/gtVFokhiXrAr9qy+PbB6Sc5pzn1aLNj2GSFPbMdpz4fKYvlUZIq3+6z/V0en/3h3DKAn2b8I/3xq0VUEoA2/9FHVVlcjBgCdoPhWhtWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760873760; c=relaxed/simple;
	bh=LBE7P8iEvXZvQChiXh66aQde+RFGIFlEtmroTpJ6buM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aye3wTjq1ZXckeaZrM53HvNjbxgK7sUrV1mIcRWFlavQDVtXw/hOd2deyxqBhQroWlqgxH4YZgNOICpqPHLp6tBUnfweY2mditmrNyu8fOtcwASwtdV3THNlO57AMxuurboCFAInT+KOsTUDEWmAM1rwbzcVrel0lGRbjqQmGYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RX2jYTUD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JAQBZD009647
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 11:35:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LPDtWvwCFPk9Bp0BBoOSzdwmx2o6Q1df26GMvEnG/L0=; b=RX2jYTUDJ8g1QPUi
	AV9J8bYhcdZl5SY5lXDdC2YRhCsPkbneYbHoOZ2EhOHd1ZIH5QtlkMrvYr7JkKjq
	6lSp8uS2AzP0e7zmyH2JnnQGAOVwTxasEFIpusVi0tWqvp4QgIfLBc2XRz0OwKfd
	qzLEucDnmdA3ZlxikJIe7ujJRu7k7sxPjWAK/SkJp8Gnf1XFPsag+blf0MFSemiI
	O6oSJH8fO1o3jJPr1p1EaHOHXiYIAA3LYgwmzH3Xm58RY0z202HN8iSKFZYqN6w0
	lAJqQXytWJ4tyNvTG7dZWr55iZccG3wwwXJOzOeVRzCTv/9QqdYGlGsx6c+EboMC
	XbtWwA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42k26j9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 11:35:58 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b5a013bc46dso2188702a12.1
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 04:35:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760873757; x=1761478557;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LPDtWvwCFPk9Bp0BBoOSzdwmx2o6Q1df26GMvEnG/L0=;
        b=NJD1tqxxRx07+RtzhRHctMzbMT5mDE3d6JEUM9E/4pXs8iTtvPXIK0XjECWSLs2nmJ
         kGM+mfG82DtmW02i1ecEXDW9czODCMyEB4bgJ51oE66s4Dl6yJ8AGXJva8P+Xy+WZdUo
         p2r63Hkav9oESXxwhwGfvYMDswrR0rU67sFBpeJaXTvUaa6+1eCLOrJ//3wc5fQP+bmg
         Y0SfXHxnmEe2CQWgsqzAxqCHqFvYXfEnRIH/wTjwDrIz5F8tRIStAEraHKLS7jH+emWf
         7SvnZ2VFfuzkmdKG3D1VxckQBULjOLjRQSs3qAlNS2UX8tD0QhAGYaTnXWt4hwUr2UZh
         S8XA==
X-Forwarded-Encrypted: i=1; AJvYcCWIkoAWvAglaBnkIgjF73oJuh5PXBuwgDAjTbZMhtJMedwm4gnB5L4J2Nb7F0zsB3OtuH7GxJXA1OR0@vger.kernel.org
X-Gm-Message-State: AOJu0YzY47daUQ1RIQqHlM+GfRdtlHyJI0orf5uzLJMDzm+t9l17P+gn
	P1DHsOn+87UT2IEjzEQQFykkz1U32UARb6Khmq3iHtIJifFVbgjVoz/2brdAR5yA08J+40latQj
	30HNk1NczIbjldodGEKkJ3dAOSqEevaRDl4adXiwMb1XoFu/05u9iX9z6gZZL/vgCQW06Ex/8
X-Gm-Gg: ASbGnctKeZSAvhOtebrsExKK/wfjXEITcJai86lOWZOTB8SMjmNlg/aUxZ1DnIDljyA
	uWG9mqQ7AFICaM9008uZM2DYjqY1eEae4l41ntRp8F+MKz0Gq0MhpAfOzC1WnsB67i7/neqOy87
	h8jPGvuiezpGT3OHoCaMMeCQMUS2LwolkmFsEJROaDuC1BFpyvUehazoYi4v9pPnv4EpseEbAsH
	dzWFJMMMs79YwHH2nf1G5TI3EQn2Azjn1WS9Pp7zeyAJ1gNMqrC9bf0a81wbG1/fPQM28Z3lwp2
	sPjIwNJyukfXnDcrxk955pHhLmSmuPiT68kcIX15anpInw32uiwQ41k/JeGj/x06uBgrNUNCCEH
	imD1SpmM6K0f9MeIS/jLsK98Oy0hcZE9m3Gc=
X-Received: by 2002:a17:90a:e70f:b0:32f:98da:c397 with SMTP id 98e67ed59e1d1-33bcf8f735emr12159168a91.24.1760873757168;
        Sun, 19 Oct 2025 04:35:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6CW/q1FylEFNvM8ThCHmkSbr40lr1qt5/loh++GddqpGz+vFWHhoot6iHJZgB6N2Hj63VWg==
X-Received: by 2002:a17:90a:e70f:b0:32f:98da:c397 with SMTP id 98e67ed59e1d1-33bcf8f735emr12159146a91.24.1760873756692;
        Sun, 19 Oct 2025 04:35:56 -0700 (PDT)
Received: from [192.168.1.3] ([122.181.214.173])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5de0c06dsm5025976a91.8.2025.10.19.04.35.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Oct 2025 04:35:56 -0700 (PDT)
Message-ID: <81367b57-f60c-48a6-8a59-7e160c312686@oss.qualcomm.com>
Date: Sun, 19 Oct 2025 17:05:49 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Modify USB controller nodes for USB on X1E80100
To: Val Packett <val@packett.cool>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
References: <20251014022121.1850871-1-krishna.kurapati@oss.qualcomm.com>
 <d0c18094-7234-450d-bd9c-e9f545de31e2@packett.cool>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <d0c18094-7234-450d-bd9c-e9f545de31e2@packett.cool>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Jf6za0_dgOIT2Po-ZZyOUJS_pwYbf19y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfX7nTQWiRBYnIU
 vKnR1gnT+hT9XVU5G8u2bYIStOu67yFfgdPQDqtxI4H+fI0dnrqyQURpYpLzXPayZ1pdaJW5FU2
 ac642hqji6TWYCZfr5NYgozqXQBaO1zhOwagXNmKButvymEtATHa9GUmJnp1tR36N01p8SxXSMp
 XNRQjT4ojfWEKPlyKgBivdbj1ZWrO+KHgddgnAoT4b7hV3l3Fjejdys1om7IlB7LE6O4DkYyU+S
 NmdJNwewVXYH6dUqloafyub/+RaNvPAAngGulJLQdP/ZGK7XocxLW6r4Gdml3clh9e1FoWQZvwk
 BY6wqBYpNodzLs05/ATkX6x/14N1InopvtjuoABF/syvPjsGnO4SJgjCMsMjpKSsJC1HHk24OLK
 nxz/Y+v9AK9E4zhdo7yHsViNA13OGg==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f4cd1e cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=COzVrc3/y9xyZPF/JXNSAQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=uXidzf91Loiht4yY4DUA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-ORIG-GUID: Jf6za0_dgOIT2Po-ZZyOUJS_pwYbf19y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031



On 10/14/2025 2:30 PM, Val Packett wrote:
> Hi,
> 
> On 10/13/25 11:21 PM, Krishna Kurapati wrote:
>> This series aims to flatten usb dt nodes and use latest bindings.
>> While at it, fix a compile time warning on the HS only controller node.
>>
>> Tests done:
>> 1. On CRD, verified host mode operation of the 3 exposed Type-C ports
>> and enumeration of the Goodix fingerprint sensor on the multiport
>> usb controller.
>>
>> 2. Modified the dr_mode to otg for the first 3 controllers and
>> verified role switching and device mode operation on the 3 exposed
>> Type-C ports.
>>
>> HS only controller was not tested on any platform.
> 
> have you tested suspend-resume?
> 
> The flattened dwc driver seems to break it for me on Latitude 7455, upon 
> trying to resume the screen never comes back up and the system just 
> reboots from zero in a couple seconds instead.
> 
> I've looked at the code and I couldn't find the cause so far, but it is 
> fine with the legacy driver and not fine with this one :(
> 

Hi Val,

  Thanks for reporting this. I did test runtime suspend resume on all 3 
typec ports as mentioned. But I didn't check system suspend case.

  I will try to reproduce the issue, fix it and then resend the patches.

Regards,
Krishna,

