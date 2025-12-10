Return-Path: <devicetree+bounces-245590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1BFCB2B66
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 11:34:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2A9A3017863
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 10:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6003F30DEA3;
	Wed, 10 Dec 2025 10:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JmHyzB3T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B24iS9ta"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C679830DD17
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 10:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765362559; cv=none; b=fh6Gi4jT2kX7PzF2gM3z7JKPK3SXVNf2Fzi0X3AcNOR2lqqFo6vGqEYJ+xA1m+83Rt2IVH2aKlRErXuCGqY9+kJuYusJKr1+Em32g2xjWj07JW512ezlworgYgNCGn7m/qpVtHwPbk2tryM2lTGZXeeHokiuSzfrf6hKY0nt+dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765362559; c=relaxed/simple;
	bh=2/1E21ovLQ+e0CS7XiKOatLWNHMbg0n7QwuDflqrvo0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=na+eLsNJaexBUJEXJ57WlquJWSL/3QrsjA3ER8vyRnyM5ugVh50UtLhf6TB+G38OttEJOP9vXQl7dWD1keTXwk1m+H7kKdN1G1T5C0BzUw2s7fePKom2xzuXgt8DUA5R+dWnY+GHA+luQ6ijKx6Ri51JDtlAinzVsqrc8t5bQ8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JmHyzB3T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B24iS9ta; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA8e1qq1817842
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 10:29:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V7TB6TMdAII9r17Pf+/IOs9Lkjovh8q5VwbcbSGWBWk=; b=JmHyzB3TP5sjEnBQ
	5hvEh+av/Rb9oC5mlQRnmk7h0L0CI3NqGs0NfGLeQvvvGaiaIPxNnbsuemrge1zn
	DXl785Hh+METIUDlEyKn4NHNVwcT1xfJ0jYrAAKtqStOyvpEiNLwbH7JfzalkpgJ
	Hnq4UdmgQ6hdMPQNLqZXsNF+zRtm6TU17RyrCgwoESFOIla8DddGS4lS48XQD4sg
	kvbsjeiVVNUNee2va8RQ2TLx95WBoc3qVyt/3tgHLVVLL5eVItHzeF8lLchYxKyW
	NBNe0pOSSRJWkJZIWynkusCgGF+Fkp7y7I/fNrtHOEQmrLra00iM79210rwUt613
	U6HHbw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay2e0gxds-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 10:29:16 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7f21951c317so661645b3a.2
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 02:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765362555; x=1765967355; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V7TB6TMdAII9r17Pf+/IOs9Lkjovh8q5VwbcbSGWBWk=;
        b=B24iS9tacx+20z+I2wq5jLspkCN7lPjcSJonVghjp/5Rh++cjsgzLj8defFcYtZgcD
         jC6cp6xvRs7JwHJjSnSNon9XE+AlNQwrO1TJY9GShd23RvSaeUWKyPtcYqzWv+lhd5rI
         S/+0DN0isv5rWGzvbmYLZHoWhL/QOVSAxlv07XN8/5LVbA+bu+U1K7KQhiPj8Xvc+Ovd
         Ry7r96MhsrvyWq9IAqql36wh/oEm5Wvk36I9iX1D+GYek35u1j827Ow0P9SeBm0JgDJm
         j2lbhmTTYXKWS822V9dV4fHKTix4PFSV4M94e+ta4RlVhngqeQIHXUANd5bn/CM7H6ez
         wPgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765362555; x=1765967355;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V7TB6TMdAII9r17Pf+/IOs9Lkjovh8q5VwbcbSGWBWk=;
        b=PlObjiwphd7+hZPg+793vsw5qIfD91nAr84gz4NcId+U9Mlf/NtY/K3YQEapgF8OZZ
         3Jm9RvD+CTPnvKAJerJySetiibBqKzaZ46etjO87jIspQ7x5b4Iy735QVYpa57MdQx5q
         oW3Id8ZKYBalPPliVjLJOC0yy5C/YXt07BdpVpVfFDc/g0s7jICI1paZXtGx85g2wyO3
         hoUitCSPomzr7inWpKkMAcQaJtdE+ViPB/tYI/cBrS5PTzs39TqiUo1BGGtYBSOZzqgD
         8kh88Se5So1cqvJlQqb6ZE/6xzUBvGzjO6SaHePd47zfEMyLMbEEkaBt2HzZ9qNEKiBw
         TyTg==
X-Forwarded-Encrypted: i=1; AJvYcCUDIVFcgwGCZx83zX2Cb72QghS9sDGQ3TavhV20oTyTNWGbKNjA6NPrZurNEtzLPi3ZYtEIj8WTLmPk@vger.kernel.org
X-Gm-Message-State: AOJu0YyShabr1Pyoog7qO1mCtmvZjrsrwae0WLXB7k6+EUfmI7xlhN1n
	+3BZF62olqCo68BtABqFFzHjTf/5hjBhxZxKy27HCUYu3JdvevPFzxreGstBFSIul+T7fM8r2NB
	pEW0ER2XwS+VRBrAWQmr9xuXpJzpLQioG8tt8c1gQQrYL/4diB6E1TG3dijZmPB49
X-Gm-Gg: ASbGnct7wMJmQmDwmS3j+sOTanzUqikpyP8DMDLcBRnojmuedjiW3HRE66QdYzMCrfV
	RH5mN1dU962sbB8t4FqehRCvkMtn53qORzdDXDrhaN4Tnb780uatGeYcNn1egix2j0M70VARs6L
	Egcqthnde/GzHyAed7VRFHs/Chw2jJxfCVtBtWcMjQT0IQpcjiHRpFfOcoQkGfWs68cLJjFj75n
	5E0IukuDj11hJQH9SHow/4niY/OzZwGTYyTjfOGHyaQmrmbVJv+EACRdj9zCWVOijkAZ/FVWlm6
	kJvs/AUgNUSuJdTeKuSULSF1r3GWrz4ixxi6Km54VKmmCx2w2qFn8KaFoTLcC25k+FQyXwp/wqT
	6sDvTeI+4Ar53KR5MgE/M+anHEXSU2zVLdjcsH768IWGT
X-Received: by 2002:a05:6a21:6d97:b0:366:187c:55 with SMTP id adf61e73a8af0-366dd671a89mr2108102637.0.1765362555342;
        Wed, 10 Dec 2025 02:29:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGcgu9hUwcEB6rt++82LtRZjGKcJn4qKJUTbsGlXArL5j1gkGg+yRYs7jJUlmFgGE3ypWN+RA==
X-Received: by 2002:a05:6a21:6d97:b0:366:187c:55 with SMTP id adf61e73a8af0-366dd671a89mr2108086637.0.1765362554850;
        Wed, 10 Dec 2025 02:29:14 -0800 (PST)
Received: from [10.219.57.109] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf6a2745c43sm17532079a12.29.2025.12.10.02.29.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 02:29:14 -0800 (PST)
Message-ID: <788d981e-7186-479c-8961-8b16482aa5bf@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 15:59:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] of: factor arguments passed to of_map_id() into a
 struct
To: Rob Herring <robh@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, robin.murphy@arm.com,
        will@kernel.org, joro@8bytes.org, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, charan.kalla@oss.qualcomm.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com,
        iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251204095530.8627-1-vijayanand.jitta@oss.qualcomm.com>
 <20251204095530.8627-3-vijayanand.jitta@oss.qualcomm.com>
 <75d44bf2-c518-444d-9b15-fca067e25877@oss.qualcomm.com>
 <837be315-2eca-4990-94e8-6d0765a8ba44@oss.qualcomm.com>
 <20251209200214.GA1015230-robh@kernel.org>
Content-Language: en-US
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <20251209200214.GA1015230-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDA4NSBTYWx0ZWRfX2NGb0vLb9q06
 0+2g+suRhOniA/QrVjErjQfw87Qw78vwRWKRpPwKyvMj011/4BHd6IKRoJMd9+uLX5g/BHDzycY
 nQgVvnb+ppsSX4NqrR1xJlcHaY1LLVXFN1qEu1pnbXzmq67hHRPYQyG22C9T+07GL4W0FeW1siH
 TP/JSUh7C0BxWE074pm1d3UbOpkUXopLuL8/RxlvxrzvRTspvKO3LT5AP3PAVmnOWSIyrnN7mI2
 dujEqDuaZMO8VgI60+hZmk9/mT6yN0PCGQlc49JNfi6me1NkB4xbGe8v2Z7gB9a7npFy+LIH1Xh
 WU13bWU351n/ib058Q1YLc5H6dYiCyuW+UubLCcmJGsGZA5znzc0CupitG954whKok/mvBczLhI
 v7U1Cph6r0jDymP73LzaD4HGlNF++g==
X-Proofpoint-ORIG-GUID: aVHhQjWZq5dEbV0AE5gJT7yMqyVT5nUd
X-Authority-Analysis: v=2.4 cv=G5oR0tk5 c=1 sm=1 tr=0 ts=69394b7c cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-qYRvQ6t_rZha5YZWBsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: aVHhQjWZq5dEbV0AE5gJT7yMqyVT5nUd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100085



On 12/10/2025 1:32 AM, Rob Herring wrote:
> On Mon, Dec 08, 2025 at 07:10:32PM +0530, Vijayanand Jitta wrote:
>>
>>
>> On 12/5/2025 10:17 PM, Dmitry Baryshkov wrote:
>>> On 04/12/2025 11:55, Vijayanand Jitta wrote:
>>>> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>>>>
>>>> Introduce a new struct type where the optional arguments passed to
>>>> of_map_id() are in struct. Subsequent patches add additional arguments
>>>> to the struct that the caller expects to be filled of_map_id().
>>>
>>> Why do we need a separate struct? Can't we use of_phandle_args instead?
>>>
>>
>> The idea is to use it for multi-map support mentioned in the cover letter,
>> where we need to pass additional context (callback, dev etc..). Having a
>> seperate structure here makes of_map_id() interface easier to extend.
> 
> Then perhaps?:
> 
> struct of_map_id_args {
> 	struct of_phandle_args args;
>         ...
> }
> 

Thanks, this will work. Will update it in next revision.
>>
>>>>
>>>> Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>>>> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
>>>> ---
>>>>   drivers/iommu/of_iommu.c              |  6 +++++-
>>>>   drivers/of/base.c                     | 31 ++++++++++++++-------------
>>>>   drivers/pci/controller/dwc/pci-imx6.c |  6 +++++-
>>>>   drivers/pci/controller/pcie-apple.c   |  5 ++++-
>>>>   drivers/xen/grant-dma-ops.c           |  5 ++++-
>>>>   include/linux/of.h                    | 23 ++++++++++++++------
>>>>   6 files changed, 50 insertions(+), 26 deletions(-)
>>>>
>>


