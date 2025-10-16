Return-Path: <devicetree+bounces-227492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A769BE2180
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:10:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8F98C4EDABF
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28EEF3002C9;
	Thu, 16 Oct 2025 08:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OZXByYJ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1D32FF652
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760602207; cv=none; b=RF2CPi+K0aPe2q2c2n7rlaNqWZmB0K4zlQocqWSeHQkyxvhJB4mF6Kz+vzIOhDY/f4HyyP7U4RYh4TWAiIux5Yp4zWwg67hxHQaimTe8L2e2vt+CLIgq7leDSMXTL4nkRC0o7dN2fd57k0q2b4kQmF3HN97Y+79Su6pX//KtqBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760602207; c=relaxed/simple;
	bh=jJlPsZ0mceG6nLVbkJ/VZ6In0naj2yOA2MrxmWidNXQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EZ1374/HD2RbyA5lw+AbfSP590FSCu73376deusgR0gtB0rNrdGRqwAzopr2RbMpDEFgostAI+wBkHuu+pGld0x5ir/2y73a0FUwXuCg8sgY3ArCn6zGB8UdS4ZzBhou0DT11HqElBz1IOwKszrT7eRJEEO+FyhX0hZ+f0ds2aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OZXByYJ8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59G72VBd003535
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:10:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	71eTVHWK8qTFUy2Hm8BbFVjk43WuGIVBQKth2mrE6II=; b=OZXByYJ8t+2YfDHr
	7Ry9TdhdaC4AZMnQDYQ6zdRsMQtXfuVd8Su+7xP3fraYiczQfsMoHjC/u9CAJTL2
	w/wf7JoAqhZSjv/uMZuSQ5vWvihhe9MmCPD37z8LNoZ8Af3HaInoF2DfqlyAiDj4
	gaOWnlkYv0juOrUPjHRNucNjo2l+KI/M0glqRK7sPoUPQQMVP4vCVIfFbkmJXOk2
	k+0urYpVfFWj5DL0Tb7iGK6bPRhkjTqWmyi02sKBEVszXyvO9KNbA8542ZX1fRpE
	cnR7XBHOLhLg5SckJr9DBfQlVvYxR8hblnJipe3S2L2UsXMybSRaP2CnvNLcX6wQ
	SElNWw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8p5kd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:10:03 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-88e965f2bbfso22176185a.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:10:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760602202; x=1761207002;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=71eTVHWK8qTFUy2Hm8BbFVjk43WuGIVBQKth2mrE6II=;
        b=Z+QHK7SDxCi9jhhFn7AI9e2+pTpHzCKptYAbA6FYwoOoiVjNm9lwPgZh41oJMsE2gO
         +ar7/5Ph69zle2ZIcYYBxmS3L8tKGT9hwiOYXHrJHF4lpvbvbP9OEB+ZrW+oy2k2sfB7
         Yl1dNJcrsr6kje19sthekbI67v8Hu7fHUUxl+zuki1Vv+ENmH87Zam3KbFneqniSdoC4
         xgIw9JvelrU+LtopWUd5zFmOlJ+Dj3TTukTkuZPqh7UiCX58INsnJfyUzWW6VAjycbp+
         ffKKW8ct0FHKUOsxGE2XE2QP9t42QOo6KrasHan+lA+wp0pRjTkuClQTXCsGDBo1cARw
         MvNw==
X-Forwarded-Encrypted: i=1; AJvYcCUv+JozxxQ5tg0Ms6P7Q/fU3b/dWUTcvdE18xzYgPaGeMYdcauLhxr4m53z4JCu3EM/usxtumiHduMg@vger.kernel.org
X-Gm-Message-State: AOJu0YwKSdX5U516Vfn5RSZk4zoMPDdzkhCoPYaFM8U5wqwFmiM3f63t
	JifwIziSzMat8Rh58gona08Qxd0yepLAEdSUAmwJjaomMH1bqQIbvg8l1mgmTQCEWQOnzl4reAN
	yT2A4qBhkWCbj01JQCbiB2S9kP66gJAakA+8rmB1Cu2uhWOprCbtpaWiuzFkaZJva
X-Gm-Gg: ASbGnctAeD8rQI3BAlp23DOjDbLCXUMlzzz+kFY4kkGsmLVfhADd/HBlm6st7hElabV
	LN6EgvDGc7tBWwFGQqnqAjJpjx49Wn7Ub+ZIy5DcRxO10cvXJw/t/Lc5xUQw9L8Ze0xKeGqeod4
	3M59Kibl1tqp+h1IANir/Tk82sJ3WhtvTNZUU4W/rfkMd4Tfjl0QtJGK8W44TLgXeEJInQ2giph
	eKhBzeQ/7Hz6UMaU4BM7WLhDpFSPySa2Sml4QsHhLgxRAUwyuPvff5E9rZdFzyl5UNLC1cQusY+
	XcMvA5n48wjoGevCfP5mKVd8c/gxUAGCypG44a+Uu5x82jnHOJlbY8JcbUPeR7h5jD3c+JZJjON
	RpMDKsWWKf3LvEwq79cE91b86+fzN50Yx71+vdspkFAPKPTNdlH4xkGEz
X-Received: by 2002:a05:620a:26f4:b0:88f:561:d952 with SMTP id af79cd13be357-88f0561db13mr249391885a.12.1760602202355;
        Thu, 16 Oct 2025 01:10:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8Qx7DNi7TWeBh4m+fWu7ED1KdauIgTL7hZB0jOsVg2aUKvUTLde6ZeWAgS3jkNEUDwPMQhA==
X-Received: by 2002:a05:620a:26f4:b0:88f:561:d952 with SMTP id af79cd13be357-88f0561db13mr249390285a.12.1760602201901;
        Thu, 16 Oct 2025 01:10:01 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cba06b7f6sm465031066b.30.2025.10.16.01.09.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 01:10:01 -0700 (PDT)
Message-ID: <38c3bf97-4b69-4450-9e23-32ece07e38dc@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 10:09:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: iommu: qcom_iommu: Allow 'tbu' clock
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Robin Murphy <robin.murphy@arm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
References: <20251015-topic-qciommu_bindings_fix-v2-1-a0f3c705d0f3@oss.qualcomm.com>
 <8e7a145e-6871-4974-ae19-40699747803b@arm.com>
 <56fcl2ip6ecu4inig7ecpjt7qrsdt6sehkrzrk6joysbp6tea7@4xdgxhhe3aso>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <56fcl2ip6ecu4inig7ecpjt7qrsdt6sehkrzrk6joysbp6tea7@4xdgxhhe3aso>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 25QGklQwLcJG4JbmswcqdgNVM6cCsw6o
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68f0a85b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=bEtsd_hQwJtcpMEHxR8A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfX0ygVNLsMYpZA
 K5mP0xpbbe/WYj1Ckivu4+N5E8GExXfzCKYyZSt6ZCH30Vbd/843zWwsNS/zroPUm5RGB16FSAR
 A4Duw81Yok7y1zIwsxVf2xIZjxeJKSKn8dOZESeyer2bxu5liMgIeVPBHUicaeGcACrTqnfmIed
 EVC+N2kNLIs6wgHPS/Me0GDXg17iq4erKdyuCQVSoO4xNMjw2pZh+UsiulDRWIBXYQP7MmQEv8S
 ScARCnsRTke3auTZcJF9fdKh/Okoch0MeNDqtCAyXlbbKeScadcnLPRlXZjwi/YOCEMArpujY1U
 YnU7rCVCoYt41V4BsKLgZxUAh7PZ2XRCXuI19DtR+vdIlj5dEuTmZp6caTqk20odGv2oafVQSPq
 v16vGX3/eRZIencCIJ7YxHZrdyS7ag==
X-Proofpoint-ORIG-GUID: 25QGklQwLcJG4JbmswcqdgNVM6cCsw6o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134

On 10/15/25 10:10 PM, Dmitry Baryshkov wrote:
> On Wed, Oct 15, 2025 at 05:48:05PM +0100, Robin Murphy wrote:
>> On 2025-10-15 5:41 pm, Konrad Dybcio wrote:
>>> From: Konrad Dybcio <konrad.dybcio@linaro.org>
>>>
>>> Some IOMMUs on some platforms (there doesn't seem to be a good denominator
> 
> It would be nice to provide some examples here.
> 
>>> for this) require the presence of a third clock, specifically for
>>> accessing the IOMMU's Translation Buffer Unit (TBU). Allow it.
>>
>> Hmmm, but isn't the only thing that accesses TBUs the consumer of the
>> qcom,tbu binding, which already has its own clock?
> 
> qcom,tbu is only defined for normal arm,mmu-500 platforms. Here Konrad
> is fixing the older and more obscure Qualcomm virtual MMU device.

(for context: this touches upon 2014-ish platforms)

I checked the address map of the physical MMU500 that lies underneath
this virtual impl and it doesn't fully expose the same registers that
the modern ones do, I only see PWR_STATUS.

The BSP kernels for those oldies don't seem to have a notion of a TBU
either, except for toggling clocks that contain "_TBU" in their name
at both the IOMMU device and some DMA-capable multimedia blocks, which
I suppose makes some sense..

Konrad

