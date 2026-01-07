Return-Path: <devicetree+bounces-252296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7A2CFD559
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:09:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D264430010FC
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B33BB2FB99D;
	Wed,  7 Jan 2026 11:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RXgcUjUW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ysb8PJi8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224432FC876
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 11:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767784149; cv=none; b=HXkxPLNG1YzIqlyBBgf+dDy0/6SjTyFWULDsyvBK0OX63/PyiyBHl37nxFnhkh0+tTFBrS90HSw1lbifKgYqjRXwrcd4tnhaM69H4NbW+e7bteLaD3teq7lSN8k1idH4IHwmwxdK9T7/jcnlEhZIKPxkDIMYlfIRMbhKlVg1iqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767784149; c=relaxed/simple;
	bh=iVKmSVIlqJhLg/96JFbuRFrTkgycKVMD430SBMjnBlY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NxQqI6qB2tclTJu0VTylcazgBShptfP6rGPQ1jhVMn0sOFYzT1zIYffwOVNk4FflAIPtVg/XN5FL2FRwBB9TOmEAShmuMlf7CQObSyuW7xCeetdKBfDmi5R6DVk4tnHz8SVRko5egZiyOqgsXd76etNVVx4p5JmNgmMhLn6rpbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RXgcUjUW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ysb8PJi8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6074mLcC1643279
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 11:09:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L+opzUlGSXD3UzcHpbB74BmmUMnhmlD9pdcmRCk/Ck8=; b=RXgcUjUWVZ6zkz4O
	bSMmnh5Jl7xBuqNGECrg5L2CwrCvCI5EqSetxvsJzmsqDbL6/fEJlovj0omhAQNy
	CaSrmTPrK9Ac3h0FWUBZQieENlU3t4S2/OMEGtqt5sOuekl5Jpng1adLeXcYYvj3
	mbal9yLQF0boo+FoBskaryUk/pgwXtWBsQ6BdA2ub2uT6WanFCdqABYz6eT3ePlk
	deuQmC/wcDOspOyL2ao5S/SFgygTdAqV3l+ztbZ/eMvJY+UJDd8qXQXftzLHR5VQ
	AK4D7Y942vvXMdrYpU/PO/w70dhf8O6y2as+bX+c1L0gP9/vqlI4a87ZkU3fsgrZ
	xSysGg==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhgsfh5v1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 11:09:06 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7c74e4f2bb2so800024a34.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 03:09:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767784146; x=1768388946; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L+opzUlGSXD3UzcHpbB74BmmUMnhmlD9pdcmRCk/Ck8=;
        b=Ysb8PJi8H4vUdXuIUAaJZYYUCy3DUMUELct8FFYH2WThLy/OL2/174hf1dUQa64zV3
         GBq3B7CPwIdA9rCvjCKOluF3ksr7oVM3nZUfaHQ8AbAEO7ORI/8C5YtBqH8IizaL6/6Q
         rZ4VKjpCiryGJHgIB8FFwAlZGq3Jud9EsY5C3KdAkBmLAnBaBbfCPJI57+qzZdFLNYvv
         NIt6f8ucnnzXrbSAx1apoquTU7RPaDfqFmAoMrsUNXfoTErOY96icZHCp9m/cPB7cyCU
         r5AHZBM8Z/8caTzfRBrb3pDPz5Z1V6bNYxtLcEi4IxvHGEVZtWA0e8101PClXJK5eHjW
         umGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767784146; x=1768388946;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L+opzUlGSXD3UzcHpbB74BmmUMnhmlD9pdcmRCk/Ck8=;
        b=i2ybDOnKo14FSRfu7J1d1jcI1RbsvrC/pm9ANtTS1/ZhFPTXBCjrVB7a3Lab5ZNBdU
         WEtU3kx6cNQQ64H11ia8DEUVSTur3/O3Gx1F3u9+oGFJUCWYGLIs6EhgVIhpQbJpbVDE
         cLIgbc2JVwiouMUUvEwMARJ48IDzHsl6ppeDehBjOtiJG0pCSxi4ex0oM+Vd714N2+Jg
         I27e9KsqIeqCJ8pw0MXN5wi12MKXemYA5UApuil92FBLd0ts81cAQpnqFbOuSkAydoo3
         z8VPy1uUxDmmgjQmYk+j4afsNVBd+Ccz7m9cis9fvImWBrvLi8DLzRJfeKG2i3GiR25v
         BQWg==
X-Forwarded-Encrypted: i=1; AJvYcCWJOpnw37D3e/+veeD3FhJ8J5G1lk5Qv2mYxMxsapG7LKOdMSkvM2NtUcgfZC9h3UCyHO58FgyH6qNn@vger.kernel.org
X-Gm-Message-State: AOJu0YzjRoYHJ7LinixmTznYdqwPM6p7ArSrvAW7H+rPwqzFEVGxGvVZ
	2ErPYs7Q/SChpursfEHePJK2I6HGif8njDtNdb1+ZAm9E2qA91zUROMXGcyQ7WIZ4t7sjBXOc4y
	OcdBTOlKjdgL9Y87WczYxQkBaAtlK+77EcLFg3vOIK9xO5QMHvyWMLagLiFU9LrhX
X-Gm-Gg: AY/fxX4HzCp+norqIEUSImn+riyP9JAFrvbuyEnZsojJxnh3MKITpKuKyUaTMeVp8tn
	tKXivvykdDm1dBe7mWuNniKdsE8Cv1I0YmUjjAMfGAjPgJTKB9iIgeM8e0er76SwLVKRP4Cmd28
	KIW1NEw9wtD6DrS5fy6dv5CWa4uFrYhb2dnazy7X15IJS01BR041zOO/P3Fwe2GZ8WGwIOhi2Z2
	qTRIm4pjdaeAcr2rMkRKHCc5aXg5nogPPk7JG2IksNRM8ik3WZYGcPhQoaJi1LxSojrF/vxaCui
	WCXT+QjSNyCGQOP4f2EfLp+G22tJ9btXyEb4LvMYkOgHaq8P3RdtOsnbolNH+Ox/2AOkktMxr+s
	6DrFMvLf5df6Tn44jfrWUTK2CxhiQbIufgnpOmuObQlG6cCDwtZ+Hay63hzd0aTsIZOA=
X-Received: by 2002:a05:622a:110c:b0:4f4:b372:db38 with SMTP id d75a77b69052e-4ffb49228d5mr19554861cf.5.1767783635513;
        Wed, 07 Jan 2026 03:00:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwyphEbBnzatrOi1FkcXJkZhoDsihfa66ESQZFjVnysDdHMYl/GgxlvU1emeciPsYpJSWzPQ==
X-Received: by 2002:a05:622a:110c:b0:4f4:b372:db38 with SMTP id d75a77b69052e-4ffb49228d5mr19554121cf.5.1767783634652;
        Wed, 07 Jan 2026 03:00:34 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a235c0fsm482706766b.9.2026.01.07.03.00.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 03:00:34 -0800 (PST)
Message-ID: <ec91c169-ac9c-4f44-a3a7-b6fefbf2be96@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 12:00:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] of: Respect #{iommu,msi}-cells in maps
To: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>, robin.murphy@arm.com,
        will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        saravanak@google.com, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251231114257.2382820-1-vijayanand.jitta@oss.qualcomm.com>
 <20251231114257.2382820-4-vijayanand.jitta@oss.qualcomm.com>
 <fde70548-61fe-41f3-9bdf-37ceda603e02@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <fde70548-61fe-41f3-9bdf-37ceda603e02@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA5MCBTYWx0ZWRfXxsGyHGDX/npz
 Auz7EvN0FhvloUKB+IG0m2gMdve4N1pOWsMgbI8hovOCM+YH32AcvBoG3v5pLngS09xRNEwVXtE
 qUBBemnuhXHppx1ZLfQDaBZI4NPUW9H2GaGpKTXx1mz7YC341gsFRCkWSaauyoq9mijScWOY5BK
 3mMMOVdFHbxnRoQqXzH/b/bQxRxskToIsJdfV+szv8c3qhqkrSFx5WCCA+oG9V0Vq2JTN5JAH9T
 gxpJ9GwJppnL/Hv3CgLo5MG6k3fJmDnK2kyGdRgtWhl1FMsX38TFU+yLatZTrmUwnnvmOfV0xZ7
 7bECDIUjN1PMrQ7ll1b+rqxHxXHMr/XYaJ+vFzkbIrxuEfIzZlrn9obB2pqM//y63S3OSYRcFB8
 kSQOhiwu9o4ipRFPvOkQwhTwm8Hl7LY9sN6TswcXOvwLJc/zAYGcyISuR9p0gStSZ9TVmnPIOJF
 hkxvhX13GyJAMdX4wlw==
X-Proofpoint-GUID: Tqqn6v6zYGn944o6qxJOtueiUJi1U-_3
X-Proofpoint-ORIG-GUID: Tqqn6v6zYGn944o6qxJOtueiUJi1U-_3
X-Authority-Analysis: v=2.4 cv=Abi83nXG c=1 sm=1 tr=0 ts=695e3ed2 cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=7CQSdrXTAAAA:8 a=EUspDBNiAAAA:8 a=QyXUC8HyAAAA:8
 a=zmrd7r8un3QtD10oEDQA:9 a=QEXdDO2ut3YA:10 a=Z1Yy7GAxqfX1iEi80vsk:22
 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 phishscore=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070090

On 1/7/26 6:31 AM, Vijayanand Jitta wrote:
> 
> 
> On 12/31/2025 5:12 PM, Vijayanand Jitta wrote:
>> From: Robin Murphy <robin.murphy@arm.com>
>>
>> So far our parsing of {iommu,msi}-map properites has always blindly
>> asusmed that the output specifiers will always have exactly 1 cell.
>> This typically does happen to be the case, but is not actually enforced
>> (and the PCI msi-map binding even explicitly states support for 0 or 1
>> cells) - as a result we've now ended up with dodgy DTs out in the field
>> which depend on this behaviour to map a 1-cell specifier for a 2-cell
>> provider, despite that being bogus per the bindings themselves.
>>
>> Since there is some potential use in being able to map at least single
>> input IDs to multi-cell output specifiers (and properly support 0-cell
>> outputs as well), add support for properly parsing and using the target
>> nodes' #cells values, albeit with the unfortunate complication of still
>> having to work around expectations of the old behaviour too.
>>
>> Since there are multi-cell output specifiers, the callers of of_map_id()
>> may need to get the exact cell output value for further processing.
>> Added support for that part --charan
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
>> ---

[...]

> Rob, 
> 
> Gentle ping, could you please let me know if the latest patchset looks good enough
> to be considered for the next merge window?

You have an outstanding build warning:

<202601062128.BCmw1wNO-lkp@intel.com>

Konrad

