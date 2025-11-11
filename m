Return-Path: <devicetree+bounces-237219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F51DC4E7CF
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:32:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 70B3A4F1A2B
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 14:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1AEB2F83C1;
	Tue, 11 Nov 2025 14:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DGgsmsp3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ilqxlCWz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B58223339
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 14:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762871151; cv=none; b=eMI5T4S7ZSjwI0dKj60TiJC9+W4cLLd5ZFmoWO0G1OQA8K/5jfXSOl2RQ++nWZXffNir6X5iWqHC3WISFao7+P4YNawg96kmh3n409AowNDHj6lHZU9bHivfMoBqbPzFti/so9I1HlBgipmp2yzPL6k/jLuqIbvf77wS/MpvyIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762871151; c=relaxed/simple;
	bh=ZynVm5GTjJ3jV5ewXN1Dx5baeS9+v8p0cOWdmi/XlNM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u096104wnLrcFH180NyJovRQ9VIaXjmSFQB4aE81Txw9Moff55W99gm53fxre4tFA8xTwlFUcZPicfBh9KhW+RhYfAZzjAEmNSypQP+egB/ttx0Cc5bsMt8L7M78X8LpLFDw4INysg6cgGiuzYfhUaQf6HksHNq89OvQMxHhCk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DGgsmsp3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ilqxlCWz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABCm6dW2540261
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 14:25:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hGa7B98r9MqkGDgKlmDgrSnW42cjpgklRI/2tR3rrb0=; b=DGgsmsp3z5Kly49F
	2Hq/3japteXVdZPaeIYVZvju6RwgCftm3mwlfB5kZrBZWou2alIVyDiJ8gra/AKt
	NtpiSahSi/l9VMHGE3iqpp5/Z/mNQW4lcrVFjs0l8IB8Eo0+8fhBQBGUYJR+VO5E
	VTXGwe59agQekoRbgea8fGGod+LVAqjbQvsN7tLsxWYmq9mJ6RpOg054zekzaszX
	7oKmwQjXANhYnkw/Dix/5sc2qB6H/L8Qa6KyE/aKSFYuPecUakEW5SEf70FiMmvq
	9jl7LKoTmdduSKy3zuE+u8GXJV5aNOAFxGyBp4i2KZYpkxWRKK6eNZn9AWRurky0
	kWM9YA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ac5fgg8be-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 14:25:48 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297b35951b7so69297015ad.3
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 06:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762871147; x=1763475947; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hGa7B98r9MqkGDgKlmDgrSnW42cjpgklRI/2tR3rrb0=;
        b=ilqxlCWzdnBvjL1wf+S7veMzVqRVC/1kphvJwp0tGJ/mrNpeNx7AvERarIzJht/HHj
         h2LyH/yx4HWahQnesNSc6c+M+yDxXYW6lWymENinM4Hn+dmOiSTKk6Whmkca8I6njTg0
         iPrD5KYocxwr52c202hHOII8+i3vBY6o8wDVexRF+PwkuutpKkdpcjDB3ys+GymO8aZL
         d6I4VPVDp/b+gF95WOkqcQCqVeVE6okjoJEiwGe+oWmR7BTSpF4frzSmbJLb94sjkYzJ
         AUNUIAno7fRiQlsaaLxjCQmxKcAd3zw2dMRw3GiXTMXQPqUf+4FSMBI8lrKNxXJRdjR6
         4ydA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762871147; x=1763475947;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hGa7B98r9MqkGDgKlmDgrSnW42cjpgklRI/2tR3rrb0=;
        b=EVQKIejXc7xF7f+8d4Wdfn76V0Al1Ec+w3bAD0wecqF02MOYzFLZe5f3LD81pUWGFy
         5mTHCUGxi5ayCEZfZ7VbmNbG9mOGqLxFzPIJpB9Yov9JdNhY7gY7+vRszZOcH2jWhc6T
         7L48EZCzZKt6ag/p617/UPSu1KaZMkmxTMTx7hQuMhMhZuSX1mKQZestRJ5zgq70R9a/
         iLP0R3LbrNihO710Q2684u1iVKW/Qzb11I3z48dFZKPN8EqYR+vtxblgmfCnJ5de6WPa
         rpHQcjKyJoi/PY8yaIdxWT6XcowbXtT1/ZtAhitwX24HrdfnEAjlVz8fc2fwk0yDOLzi
         xq9A==
X-Forwarded-Encrypted: i=1; AJvYcCUUTRI4M2rRPPKPjBJvreEDaaQEKI+knXmYb61HE3rHLufe3+6tBXPeB+QcuXFB59CnaOPmIVdMQTa/@vger.kernel.org
X-Gm-Message-State: AOJu0YyR+z7PORnjkN/ozedQooHDXMQX7aH5z2tAnACu+331tF4lHBnm
	YSEjbzTTrR93TqKKXDeIRH58yuql0Ata6hLosJY1Z+b0+N0XIzP9t1XBYTa9xVPp8/wzdd+iU03
	dsXptoh0k30L8+SMVtSsKQpNR6wdtzdmo2RyGcI5KqWzYUIOH9+Tldol3XcEBaa/O
X-Gm-Gg: ASbGncuYKW/Py39INaQ0UvWvVeq1MVjqMYg3IhFa/H1vf/XACC4bhPybwgjBuFPg0BV
	DAhOQzHjU94rEBC2qU3WcN2FVxrZHo77bJaCly5WxOEkzYP0HhWlKONLtGLLpiZeBIwojBSPSpd
	MuVaRkLMBQ6XP6F1BUqLASJCYb4nozoIsg2Tr+WylfCOdK8yXImKvrQ81nnSK9qLH5A3LUxqgoj
	FpCY9X7/ScDaCtQLcfnfEZHg00IGPPwzZSnGasX1tZr/+Aj4pEyDN0MJJS56atSg505dyZI/IIH
	eYdJsGRDI1/xjW/q1ceszlQR0dWkPV5zQ/S1UotBMIagCNzbx7VvU/ozngnHeoJg5HunggQqzWu
	tOHcSAaZSo6/Oko6ijYzqaw==
X-Received: by 2002:a17:902:ea0a:b0:297:c638:d7c9 with SMTP id d9443c01a7336-297e562e197mr179715755ad.13.1762871147492;
        Tue, 11 Nov 2025 06:25:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFkROrZLUIRrbkgoTAgkprVjqaX7dHmwbXmMslaYaaMrgNrailMFiy5g2vGuUSJjGn5syzSxQ==
X-Received: by 2002:a17:902:ea0a:b0:297:c638:d7c9 with SMTP id d9443c01a7336-297e562e197mr179715115ad.13.1762871146970;
        Tue, 11 Nov 2025 06:25:46 -0800 (PST)
Received: from [10.206.103.12] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29651c740a9sm183312755ad.53.2025.11.11.06.25.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Nov 2025 06:25:46 -0800 (PST)
Message-ID: <ad372979-adab-4486-ac69-90a9df1ae512@oss.qualcomm.com>
Date: Tue, 11 Nov 2025 19:55:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 20/21] dt-bindings: display/msm/gmu: Add Adreno X2-85
 GMU
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse
 <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
 <20251110-kaana-gpu-support-v2-20-bef18acd5e94@oss.qualcomm.com>
 <20251111-magnetic-jasper-slug-3abc3e@kuoka>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <20251111-magnetic-jasper-slug-3abc3e@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: zyJJAL6-j2dy4kraZwgrM3pafR4S2IKa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDExNSBTYWx0ZWRfXytaN/73q/8kj
 0KlYfQiShykB3mF4KJojKe/tU9lheNdMjhEuVfQEnQcEoP/hzjTbXpm5gGsu/4+sM/CLvI5vlbe
 PEEHaz+052oS8BryTj41vxea2yTY0gIXBklGIuXUq3BzQFSlHf22hnFj0T/Tuy16pwMpOMvFJ97
 ADzSb1aE6Zey8ActGsh0lquLvItuGRgIqFpVaro2ofj4AdOsyXqhoBPc457ZwRrQhmZXLTkX7AX
 sX1lgZss3Y3iL5Nwii7TLzz+x9epRhF64Yu3BYvr3jH7hAFfstRuNO7Q8twetVjHv3PJQHdlPsg
 sJ+WRu8zFHD59OHZQm8PgmaDkAWIDO/Pj2CgPSqIIg4VRfExJpniU5xN29KUriZZrKVX81x0OIJ
 ogVWmoGd6Y9wY/5o/q7WDbdn3bkrsQ==
X-Authority-Analysis: v=2.4 cv=B5u0EetM c=1 sm=1 tr=0 ts=6913476c cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8
 a=3RWeJ3mqlPvKrM-9dKcA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-GUID: zyJJAL6-j2dy4kraZwgrM3pafR4S2IKa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511110115

On 11/11/2025 1:19 PM, Krzysztof Kozlowski wrote:
> On Mon, Nov 10, 2025 at 10:07:26PM +0530, Akhil P Oommen wrote:
>> Document Adreno X2-85 GMU found in Glymur chipsets in the
>> dt-binding specification. It is very similar to Adreno 840
>> GMU with the additional requirement of RSCC HUB clock.
>>
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>> ---
> 
> <form letter>
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.
> 
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions of patchset, under or above your Signed-off-by tag, unless
> patch changed significantly (e.g. new properties added to the DT
> bindings). Tag is "received", when provided in a message replied to you
> on the mailing list. Tools like b4 can help here. However, there's no
> need to repost patches *only* to add the tags. The upstream maintainer
> will do that for tags received on the version they apply.
> 
> Please read:
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> If a tag was not added on purpose, please state why and what changed.
> </form letter>
> 

I think you got confused. These are new patches I have included for
Glymur support in Rev 2 (as mentioned in the cover letter). Did you
confuse with the other patch for Kaanapali?

-Akhil.

> Best regards,
> Krzysztof
> 


