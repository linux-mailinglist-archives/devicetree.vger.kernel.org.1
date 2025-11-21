Return-Path: <devicetree+bounces-241137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 89848C7A435
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:46:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B55B04F4A12
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E273A355040;
	Fri, 21 Nov 2025 14:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G6USKL4+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SY5zXADo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB1D34FF53
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763735305; cv=none; b=PODnU/WT59TsOfUlWW+HQVQnDxd99IbzU6qvKzke2qAbMfzd5Koi3UR3mpSlynzfqqwqxNn38VdqG7mhgEt+eDzuw4sm2YwaXtERm2DYgOJ+5B8tyz89Bg2JQ8O7eZY2NLts/v/HwL0kUtVFNZnAKVPpEgp6Zp67zdzqst5ibNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763735305; c=relaxed/simple;
	bh=iGPu+yHKYnpDzXDtlaWpzQqdcb2xPICidiPxYTntGIk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FBE67XwxxSo3RcNkw5RHY27r3jDj6yFh1IcX2w9hkPBJoHD3PS+4UPlJXUmuzb/EcKQM0RUx67TqBiZPZSr/R0oB+IWrDa+ZJHU5Wq0T/A0+MjHdhTYhfQAwiFxGF4vnSswKEBHCxGPxcVBWA/GXum7gvQhPnlsPw9ugbPMWsB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G6USKL4+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SY5zXADo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL9VvUP3048090
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:28:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5K5SRumAJrB0iRG20ERiS5RWix6rhVRMy+dUouMmg4g=; b=G6USKL4+tUrS7GeK
	fsX++3gfNKzvTHRHYuKvKviuB6j0IlpxHQDmCR7oZLgijUhXWGebJSeXiQqrOR9O
	pjdmrRBYUjh/NP8OF64xPiyJEKwBcuGx9dntCa2JmoLiyX1ghzwTuNyl3JlwosIH
	hOsIUEd5f9CHxIMjeHnnaa8ER4fbZooisecQJS/NrFxVSx9H5LDAkZmEqPf2a4dM
	rL0z/eFUpGhqKSbJV4CtvJzD0eugSBFjXuXEd9JuZVvmsiQB4BXsmwbgtK8WFqRm
	VkykxlNi0Fa50QRhjJI5VBaBUVZkl3qaF31Bj89y1HlVyVBqe+LMstxFygn+dIzP
	8LpVPg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajnhjruv4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:28:23 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b29f90f9fdso52709485a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763735303; x=1764340103; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5K5SRumAJrB0iRG20ERiS5RWix6rhVRMy+dUouMmg4g=;
        b=SY5zXADoL05fppSHBWv5IYS2rZjWH8Rax1IsoJFGuUlaa8OYVdtLCGaw9JsQt6E72R
         x5e2kk1gSCSpIUzboFp64zY16aWIeVQKLR5LDE42a7yn424rKD17J2tIf/W8/LfxQ3Lc
         aDbSFf3S63uTDkpKlJMdSmZ11oMeyMoquzg+P+5WqfMkHjqRgQjjpmgiYVegRAg1UvhF
         LYwe1B5hN7m50w8dMkSMHYoQPKKevUemrzVFRmuzKb1md0bskpRLKu8E0UmGfAqnua2d
         bfqj57xOWns9tYkHKpHalIoYhm1VqtLhwqydSVGW6wWTysn3y9Gq/eqb2NaS9ApxOPHa
         cL2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763735303; x=1764340103;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5K5SRumAJrB0iRG20ERiS5RWix6rhVRMy+dUouMmg4g=;
        b=YVYsVwmYkK2e8nQLgfYyKtYsKWaa5QB1qKddcQzPv7L2jeTtb7TN7bgWI2AKCm+uJM
         zSu+sjMyvmzNtfPpndux11il+gFY+K3gaG5IMmdSSB/IA5uhflCCofLjEQXXBOxI6U4d
         tWaZQ/UlSjlP2hZFCDnqHwHeH9jrk4Xch3jqgzFM0Zja3e0vPVq06zb5jDlXnlk5mPaJ
         4yz0dmFYkDYmt/ZLOIcGnIvZpFImdod9zfiiduiug4blLIYi8ojJdo0X1fy3SUmiNKZy
         AUzpJ9Fcw1SLzeAf4ZSUfjBYOrIfOxx1VV1DfeRL4MWpnD/pRI1apO3JeBTC73+s3UEP
         CuTg==
X-Forwarded-Encrypted: i=1; AJvYcCVx8W2T1nk03512eOMaD26D0FueDvnDlGMDkRaCuO9PyVIgSbdvXARYvmWxs7wCXSPtJZFkweK1wgdk@vger.kernel.org
X-Gm-Message-State: AOJu0YxlR+foA3vFi+hBo7OZawX1fLWprLsT5DBGTefx2nJxLPTFZHN3
	uDLqSVNFuO+GLkG+uWaXn6DOfPbF3JeI1mqppe9YKRPRP30q27904YF50rZolcAGZXveOxPIG0m
	vfZZ+Tj/ZSZVDUYRjQmmF4Lz4wVWPA1lkF6iYsOkBastdwlnSlo2RIL3OVLHLsqtu
X-Gm-Gg: ASbGncsRINGxT+riY76fDGMsAgQ9mop6Q6cDw+t7fHzRLV0hoPAnLMWfLBje5xzLomd
	HwC5B7znk0QfW8Qs2xVlgUtu4cVntlH9Z7gAgqP+AkkfxQXPO9M/WQIdNKvfcN5wvEWFIE5YOBN
	nMXKT4DRWc3DQj5Wvyp1C+Z3/Ehy9ic762UU1vmRylocM892/Dm4sCZR5Z4FXtnRuofkqkbZuLi
	N2N7NTYEef6cvsTT2QiVXP0SZ6yxmbm8M7w+PFyedUuqPloyja540UJDKmJ/NE3Rbtsc36UnUJp
	bRnsv7utnjHg4qlQY/oXOSpi01a3BzkvmYIZm2Y+Sh5K7uHz8Xo/RADM7lG7rZqAI5rMinFbwTx
	CIYblDnWtHRJrxm5njnBx81uBnUm+Zh7x8jlGvkPRNGcU650O9Ww3/bIBiW7f32ea7c4=
X-Received: by 2002:a05:620a:1aa1:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8b33cfc6cd2mr198062085a.0.1763735302540;
        Fri, 21 Nov 2025 06:28:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEtPv1RIHH133fUxhbb5eKXKSklczMTYQlSQEAg6JCksgzSAciPqOMlITjDcBsuK8vE72yasA==
X-Received: by 2002:a05:620a:1aa1:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8b33cfc6cd2mr198058685a.0.1763735301980;
        Fri, 21 Nov 2025 06:28:21 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b765f840a30sm324380666b.58.2025.11.21.06.28.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:28:21 -0800 (PST)
Message-ID: <78c5ab7c-6100-46c0-8315-f239680fee3f@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 15:28:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] ARM: dts: qcom: msm8960: expressatt: Add
 Accelerometer
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251121-expressatt_nfc_accel_magn_light-v2-0-54ce493cc6cf@gmail.com>
 <20251121-expressatt_nfc_accel_magn_light-v2-5-54ce493cc6cf@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251121-expressatt_nfc_accel_magn_light-v2-5-54ce493cc6cf@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: wjCeCgI9cYKKTGv1WSqbRtu5L5UzFbOb
X-Authority-Analysis: v=2.4 cv=SPlPlevH c=1 sm=1 tr=0 ts=69207707 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=INxY3ozUAYpN26jWuhcA:9 a=QEXdDO2ut3YA:10 a=p80W13QwkFgA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDEwNSBTYWx0ZWRfX9gLSlTamg/yD
 Oa1pA2bz9UjN0gVSqr5a4GrCV96lInO3MUoF4bw1AOGjjFAH+izBFMrRZzWO6Dp7FTmVlPy2OYf
 x11mff0HD/QzwaSlpDuHz2vLKJmbVHHKYsyehyATT2IvL0bcdrSBY8CvFMSLRdchtbXg0mW/Y+W
 Pztw5HRADpRw5azg+LZwBBY94lj+P8fmc7ocimEBKOCe451b8XpdgNnHeekQ3TGJ1+EgNWxs5jx
 Uxmhxm+tgI+IA4lWo9yobfsGsXWeLhnMKBAdOLMs0+bkMyNFXu6LY7pqCWsBh5VFYnFV6NQ3CeX
 Jrdeb+OxN72hIDdTemtDIZAs+3UhcfcnkT8i9XR8eP9hZbKgVPsWYelIHXFkB7OUS19SNXhv17u
 Izx9A8AFSb+VYAQ2XXUOqNLQAfc3Tg==
X-Proofpoint-GUID: wjCeCgI9cYKKTGv1WSqbRtu5L5UzFbOb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210105

On 11/21/25 12:44 PM, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> Add the Bosch Accelerometer. Mount Matrix is left as a TODO.
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

