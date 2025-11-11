Return-Path: <devicetree+bounces-237340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DD7C4F7D4
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 19:47:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DDE7D4F3088
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 18:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D21A2C21CF;
	Tue, 11 Nov 2025 18:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cLbP5CED";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N7dAEEvV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C069A2777F9
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 18:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762886734; cv=none; b=qK4WK3o1NmihnPCafQ2sSr/1nnMjbs98F9InvzKbJ7f/kx3tONTV6902czthR3FfQZskotiF3yEx2HxRw7cEYJciJpFMSnGsdLp0SWe3x7RseDs9wpiQUyI4VMaep6+GoL3ZFjE8mY24sJFV2VRbSGiDKbpRjv9HxuPzu6b/qMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762886734; c=relaxed/simple;
	bh=m8HjbcXk11mq43CaUrlq93qQaoVQl7sLhwGwxLXplWc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TV/ynq7C1ekT6+MmA6Fm0HDwy3Cwq2HE7zH5Pm59tUBnPHpJe+knE2f0bBW6tsPkXjdzp0DuLv60NnbwjpUfcgZqbS2JbSmjP3vEagvF0/9TJh5oxcUsEjkEGDjDrl360U4jIgCgSoQWpvJuArqOWV794NhI4gMMrgzW5N2deNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cLbP5CED; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N7dAEEvV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABH3v4k2810086
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 18:45:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iDRuZXkPS1qDYVh7sPEoO/kaONTCP3KF2c/Ipe9RM1w=; b=cLbP5CEDVgM+zFrH
	cmt5HM3VJ2rL7/LLIMTq16a7sd1+NDO+WMSp0Ny7AODJ/zbQcQWGfHSGH0LC45mM
	yQbYI8RCOQK85wMazVwoVdiu0otFp15A9CNsnzoZG1x9tGJldkuM3VV02LWnpBuH
	knjKUhIjkmNkisGGjBpBFhpzK2Sr195QN5PhHplp9J76T04uNdfvzsGW9AXBh6AH
	8i8h1++HnijD/2HTCFE+xY/FFsd/i2tEa5I5RkPNNCjm7xPNDBGtIAoEt2aYxC54
	f0oYuP2B9PAzOp9zwBWB1rO2uUKHFG2tkRk6iJfUxnaH3Plkv+DKgbNaaCtITbE7
	sZMwEA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ac11x1w8b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 18:45:31 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-295915934bfso433465ad.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762886731; x=1763491531; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iDRuZXkPS1qDYVh7sPEoO/kaONTCP3KF2c/Ipe9RM1w=;
        b=N7dAEEvVJIhBDjLRvR9hP93yV7JZCQEnvLN7SycnoXHREPlgxMdOIBPMr9vzbOyPdE
         gUTyaQpJXKhl7RqjoxtOBx3dAdvo9WOy42ri7u8HcMNeGSKEBrSZOBxuwsGDY7bEi+R1
         tklnR8KG23WyeJWK2fVJg2tED8HkedZBxdvGmod5KPw906ju4nNLrqfgsFqX2cwSOjCd
         /D624J4wH5VCIMIeILsBq0WvEB6doe0ZNrMllvKnrUu2SQsz64GS6t1g70hHlB316VKw
         jIpPkzTglLwA9SLEGgtojfEYyDgJe36LWdyyDtWLq4mVjCw0KvDjxDZD0guGoi6ZCKu5
         3BZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762886731; x=1763491531;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iDRuZXkPS1qDYVh7sPEoO/kaONTCP3KF2c/Ipe9RM1w=;
        b=wkJ2Lca8E83t3PKvSbb20LbpdCnj1RGPuDOUkX7qWi0RmFZ3f6/2rb5EbdS4VCqxLa
         VN762aCv7bvPWxTziTow464jG3VY73F7UufD7Qt13KXAKrmkYyy9Zc0RHfU3bT0eUV2q
         fzuaA2NuJ3hWkFNuehDIwAYRCMqvSCdknJtZQTHLhuzzOMrHtexsXEi3f6RtNhnfjl8V
         qTBenKkpaifPrq6oxmjHxqqUEmxZDis3iUulE04g24E9je3yp0VrIY70RK5ewXzv1cHV
         MXZC8dm6Z+gc3ffXajyPNuXmyx9TWvH9LXshYHVf+DEhfRqiFADMbpUqXselpwDtBYh4
         Kz+g==
X-Forwarded-Encrypted: i=1; AJvYcCWLoiA0M3VVkW6yBNkmouuh65LtMOAcxEV2b05JR4zaQRRvdrGG0I8neQps1xH27nk4DtC8QJFJLAPo@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2wzgDiG6+eF51JVW4D4x9pgYMy2GuoBaY+jlNZF0e/n7B6a7b
	TfDnWkIQ5kKjPO/i2RdaMZiwYOt/XMjwNkFlGrZn++aZ3az7BfdSNfx8I7PdOZgbPZhWee7sz2Q
	oF/0htgpyrqHNa5SZW74b2uwVF1+zUFPocJcP+0HBCZNWzCvdDfASXH8obFlqLvcM
X-Gm-Gg: ASbGncsEIcGc9NtzrbM64+BygD34wW+Fkace3/39ZA5sE8AXzQgIVnRqr1SlrSlYV2G
	QXJaeaJQ/6Pp1PIJPP9poCApxdenyesfBa7m5DS6OSuoLZPfoPQ/ceFmB3E531fBMO8mzuCp92g
	LTEC5J0zAfb7QJWMYEQ/DmnCDyZWPlc4GaDpx7PZPr860RYt/2lVQAyaIhiwKs9Lu9ENFD+8AtX
	bPUpuZX/pcCXpi6ChgkXTzzrMJEFkeTHQHZRgjB6FA1y6ig7s4zt/5F0RTVTp++GzxGlRt2eNmJ
	qdCUPbcqZVoRaBeCG4vSb3CDeythS4sjw1uRyUByXVAdyhM+c3xWxWSE5EddoeuHRnDD5UoQ8x2
	DP56sFFF+NRy5QaFrh20DDiahKzv4
X-Received: by 2002:a17:903:1aed:b0:295:f1f:65f with SMTP id d9443c01a7336-2984edc8cd8mr3418795ad.31.1762886731098;
        Tue, 11 Nov 2025 10:45:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHudt8EBpHs0AgGwqz9g1pHc97ezO6MMeauxnKj3D0cw/mrZhoZc8rx6PO+N69y8wHTbVSW5A==
X-Received: by 2002:a17:903:1aed:b0:295:f1f:65f with SMTP id d9443c01a7336-2984edc8cd8mr3418365ad.31.1762886730501;
        Tue, 11 Nov 2025 10:45:30 -0800 (PST)
Received: from [192.168.1.5] ([106.212.255.55])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dca0ea1sm4232965ad.55.2025.11.11.10.45.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Nov 2025 10:45:30 -0800 (PST)
Message-ID: <49339695-615c-4a89-974c-ecd4ea1b544a@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 00:15:23 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] of: iommu-map parsing for multi-cell IOMMU
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, saravanak@google.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com,
        iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <cover.1762235099.git.charan.kalla@oss.qualcomm.com>
 <20251107-active-uber-impala-8d9118@kuoka>
Content-Language: en-US
From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
In-Reply-To: <20251107-active-uber-impala-8d9118@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDE1MSBTYWx0ZWRfX/SYrUfNZEeag
 zXnKA/x+ym4u7I8wtRcs3q92xuyCJFHjwxAHtb/vt3oyCzRjQrnYy9YqrBvATflwfP0CCdSTwKG
 yoXQ8qe0mQwSAlFE9y5HAiYfcJLVnFn76rxEsK7l+wemNM65cwtJg0Xl2ytwrpOEghWfUXapicP
 Q+Hf9ro0os0pQofby9KM5Fk1fztkT8K9+2c78/cIa/Ir26/5o20f6VdMBmRlehE7iivOXO3Qun5
 GCFxzKDT5Ba1L2E5yiufekQ6iL3LiyCF3m1Lq0THYeujDqoIz13amtBri7PSvoNsEQc/0zc+oqh
 CmqUTfTl2ES00cvRO0uC6CzeeWidnWWbeRmlFf09YUNHMheg/nXf8up80eTdoviQj3xkLHLlknw
 obY4AUzPks+kCA72KwLJ5CT2MHJjOw==
X-Proofpoint-ORIG-GUID: Kkz7291lO7c0sy06oYvg9j5Nw_Z3C8nU
X-Authority-Analysis: v=2.4 cv=L94QguT8 c=1 sm=1 tr=0 ts=6913844b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=pJoDNl42m32kJ7anCML+mQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=yPCof4ZbAAAA:8 a=EUspDBNiAAAA:8
 a=dasm5qW_s5I0UYHIXAEA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: Kkz7291lO7c0sy06oYvg9j5Nw_Z3C8nU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110151



On 11/7/2025 1:37 PM, Krzysztof Kozlowski wrote:
> On Tue, Nov 04, 2025 at 02:20:59PM +0530, Charan Teja Kalla wrote:
>> The iommu-map property has been defined for the PCIe usecase and has
>> been hardcoded to assume single cell for IOMMU specification, ignoring
>> the #iommu-cells completely. Since the initial definition the iommu-maps
>> property has been reused for other usecases and we can no longer assume
>> that the single IOMMU cell properly describes the necessary IOMMU
>> streams. Expand the iommu-map to take #iommu-cells into account, while
>> keeping the compatibility with the existing DTs, which assume single
>> argument. 
>>
>> Unlike single iommu-cell, it is complex to establish a linear relation
>> between input 'id' and output specifier for multi iommu-cells. To handle
>> such cases, rely on arch-specific drivers called through
>> of_iommu_xlate() from of_iommu layer, aswell it is expected the 'len'
>> passed is always 1. In the of_iommu layer, the below relation is
>> established before calling into vendor specific driver: 
>>
>> a) For platform devices, 'rid' defined in the iommu-map tuple indicates
>> a function, through a bit position, which is compared against passed
>> input 'id' that represents a bitmap of functions represented by the
>> device.
>>
>> b) For others, 'rid' is compared against the input 'id' as an integer
>> value.
>>
>> Thus the final representation when #iommu-cells=n is going to be,
>> iommu-map = <rid/functionid IOMMU_phandle cell0 .. celln len>;, where
>> len = 1.
>>
>> The RFC for this patch set is found at [2].
> So that's a v2 or v3? Then number your patchsets correctly.

Is there any kernel guidelines that patchset should start at V2 after an
RFC? I do see many patches are follwed by V1 after RFC. Eg: [1] is an
RFC followed by [2] as V1 -- Or it is the maintainers preference and
expectations?

> 
> Try yourself -  b4 diff cover.1762235099.git.charan.kalla@oss.qualcomm.com
> 
> Works? No.
> 
> Where is the changelog?My bad. Will update the changelog from RFC in my next patchset posting
as V2.


[1]
https://lore.kernel.org/all/20250815191031.3769540-1-Liam.Howlett@oracle.com/
[2]
https://lore.kernel.org/all/20250909190945.1030905-1-Liam.Howlett@oracle.com/#t

