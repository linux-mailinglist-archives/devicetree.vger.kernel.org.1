Return-Path: <devicetree+bounces-255505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EE3D23A21
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:40:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 001B630275AA
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:36:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B17F357A3B;
	Thu, 15 Jan 2026 09:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J9jebfDH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EgvZ6OkD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B1132E739
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469812; cv=none; b=uLfaG9iN16tgRFn86tX/uF/jdCcoz1jQnqzk/n/tmWKDpK0EDINFcDG/RMqanndEaorOGCIkyjiqr3VGShtLpMSqQxHDCU7hk3BIZlLmMGlG/XsckPiy1/UKqA0907+QiMynpBCGNLLYZasM9AJJjl5N5zXg1SIsr9HC3vd0olE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469812; c=relaxed/simple;
	bh=g5vpfOReGTYuo7MIXmXJrTZoA451p3tRnyKuZrT7HjE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kPFJFZcmb7b+IKpU1qeOlZrYtebl9OJqMIulOThQtTE8TEpMAI0sl6xC1eFavCYqsCygMo3WIzSDNQZweYJl7yyAEv7oDOD0x3j+mc7551gEpe9QiO2LssxKDrsTbiKHuwIfamr4O4iNwcjldFLyBOuqFABpoAJzlFAvhQ/sYhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J9jebfDH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EgvZ6OkD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6g0fG1055227
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:36:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=o9cj7FXfIQssfEuXNDd0xmDD
	WsdaFgDb+gr02rTb3QY=; b=J9jebfDHrdq2yv7Je2ZrxGp4VRQ4wM2ajvhVn5Jy
	Pz7O+eFUpZGCVRyVAOqdsFBxodH98flD5w/TRQlIo9aygIIHSwbm4wZR7OIcU/5i
	8YGI0cjxTropK9TGp+STnt0PAHvdJ6oIWgZO2E/xkBEZqmfKdr1CT7kXT45Zc9mv
	86bfCRwUw3hDluYkEN7ZiI1WdfjtNMJFN+w1xaOJTevzNF3RpLQRCXWj+T0pcbfZ
	5wYbtxYMIs88+kc1lgkb2FIOBJL9l1PrXwwpmRadCsJy56H89KYSbfU3glEdghm1
	rZH4qLdo1fJjTGQzePNF0DH7ixDT9VCFZINb9d98UGyo0Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp8d344xv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:36:49 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8bc4493d315so202535385a.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768469809; x=1769074609; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o9cj7FXfIQssfEuXNDd0xmDDWsdaFgDb+gr02rTb3QY=;
        b=EgvZ6OkDJ/ZbUOBBf2BVlcsS6QFBtvIQp/Pu+IbS1OO5iTuJ/oq7zQPBhbax3tBWlQ
         TF2a2/VyxV8uLBNLTk0pMZxYDXMgEuIBKNqD6PvVsSfliN5OnWIyO8HkxFBgNQwjGcH6
         hzV0VloX3ip2spSLtQ4q6chbXA0aGOMrDQqkenNW6fp+tuQZBx+hNrCPEDpPFmPh4Lh9
         HUw5yIZ+1PWhVBNfTM1QCezPcNjygYwCQ5Xox/SJgbdn5Xwvs4qAcDziv7q+nuvtG4AU
         FObJ4q+mB7pFOzlBDLRlES6WyzOy+qnUin4NwK5hrEVACNYtfMO7RuBX2g/p1Bbz4QrQ
         MnpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768469809; x=1769074609;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o9cj7FXfIQssfEuXNDd0xmDDWsdaFgDb+gr02rTb3QY=;
        b=b6bT9g+YUOnP/NLrYreBAGbNfLL2NfEt6oOZ+jd+j5xrdpi7VLONTbOtv55hJZV4Cb
         fd7CeVH9h1lUbv1k83wR5tl7IXVF+GZ/gwN5L0hy/a9XMlzLujpEfQZZFQ2xO4bRRgJ4
         mVsdb8q/GadGhYRK39RXTGMWL54QK/C54HtssiEu9UV+kHgF7a7KR2G+cyH05mgZnh1B
         G2B5/azBYivDhS5rDUd0tPRiPuI+pRQtnRa0TIuk3r8pgZxU2CLrTsH2AbCCZmegD0ao
         zZMbuOw4wwi+wo/xR+0IicLlcXCrrUH/2hYx5StEEmDrIxg7WKIXS1ZJOFkIJqjSg+ND
         JjWA==
X-Forwarded-Encrypted: i=1; AJvYcCVqz18BNE+18nZKCNuRFYnvSefF3iLsXIZ0yTZWaaGOUc5ceqG364qzhLSzyng1bo/rgKwuzJscskdd@vger.kernel.org
X-Gm-Message-State: AOJu0YzhQrlibRZnEfWVF2l1C5uttIhDBMZ8RC5KmelhGusWXUWDsEYJ
	H7TWySLshW0u5ClWapu8hbBGELq43smp8v58fEGdxPIpi2Q5hym9Eu+unxZ2upd7L4fWpuiSjtt
	9a0bLecEmjrWV8rPdMOauSQlbpTmeUNZ1NJOC5ONkQCE4E1MtSFK2T7s3KosMY1S9
X-Gm-Gg: AY/fxX71iDDas6BJX8CUHLfZ6jLU8EgjQfFPWhQpucg/MDtgtGeeRJwCkk6akFhs4U/
	1mtVhthdOfFAlKB9UkYJajIBzZWFKPMlZAv7m8/It3X5bCEB7Efyx4R84/stK3u0/7dLJdR0G5b
	1eGmHQSkDY+vfte+X+eVDGK7o7JBJRhyevDQI1+dtfeo87Pizq3LEeJE6WaKgaugcp/7RSLnUZ2
	EFKOsd7l1qX5sR65WSxeH3mLMu8z+s0sFha8ifSaHAw35/dsgW6iBQMyAOr3VRCqoG+P+wyQToD
	HP3FLqG/+nC2hDf7xO4J2CjFxDnf9QRPXWwT2Gg+gFvSNFgQdPZ6KjVdhT92D+eqqPoO3W1VbTZ
	0owgH1h2YTySILBDNUI1F0gdyYFboAMY9VEEKSU97FRZQZk6y0hVtRAU6kl2kg82YVZB3xKEJYJ
	W7PAAJTGeXPj+SUjOhX3afYmc=
X-Received: by 2002:a05:620a:7119:b0:890:62b7:5ae2 with SMTP id af79cd13be357-8c52fb92599mr803481585a.46.1768469808934;
        Thu, 15 Jan 2026 01:36:48 -0800 (PST)
X-Received: by 2002:a05:620a:7119:b0:890:62b7:5ae2 with SMTP id af79cd13be357-8c52fb92599mr803478685a.46.1768469808467;
        Thu, 15 Jan 2026 01:36:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba101bcb3sm1503701e87.21.2026.01.15.01.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 01:36:47 -0800 (PST)
Date: Thu, 15 Jan 2026 11:36:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: cpus: Deprecate Qualcomm generic
 compatibles
Message-ID: <7kifzh3xkwkfa4ij3xtcowttaquw6ua2wkecpnhtyczbbhy2tb@agrqsbs6cjku>
References: <20260115083503.43796-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115083503.43796-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-GUID: t-OBUS2OLgR9vIms85TatS7vkIGRV76B
X-Authority-Analysis: v=2.4 cv=fbWgCkQF c=1 sm=1 tr=0 ts=6968b531 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=PEWmY9B5O7FHL5KUCRUA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: t-OBUS2OLgR9vIms85TatS7vkIGRV76B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA2NiBTYWx0ZWRfXyG9BELLEeL3B
 LDtNJje+rjBygeJEMdY0GRbjHqj2vxw0F9WektV0tzEm2ye1vaaPjesC32mYl5avWVvwbt4iRlZ
 mg9KH4Ti9hbL4nfKBzjcl9ZC3z0KK15VtzkcaFl9exx2Yqu2FevbkeE1NcoZZCcUEJUi4dS8uEc
 cQOjIWbZ0R2o2nGIVeWhyOOPZEs27LEmDaWuFUIBPtx609+gEut5N/rb7C4iYRpf58+UPVXrb/G
 ZJSO1zpAdzxRa/xJwflR8nvcQuR8T8bhRiy961HU/to8g4A4GHfk7sTSj0zSlUUDcreHIbBhGtn
 WpCtAIc9CGvyx/lHMFtwP9BaBGBADvW5WZo/9SypHNFSPvZYWFMMHmHnfJcsXCQ6wBER4xpmyi1
 uw6t7ce2Kbv9jMD2/42OLdxPLbjz3iTRHcecE4FWxQDcP5q5+Wf9hLlWDNWESqcHt1XqXJBQHH0
 Mpib5b7zV2kXYRh5flg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_03,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150066

On Thu, Jan 15, 2026 at 09:35:04AM +0100, Krzysztof Kozlowski wrote:
> Move four compatibles for Qualcomm Krait, Kryo, Oryon and Scorpion
> custom CPU cores out of the enum into separate one with deprecated: true
> annotation, because these are too generic names.
> 
> These are names of the families and there are significant differences
> within individual processors, e.g. Kryo6xx can based on architectures
> from Cortex-X2, A710, A510 to A78 and probably more.
> 
> Just like other vendor processors are differentiated, also Qualcomm CPUs
> should come with specific compatibles.
> 
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Konrad Dybcio <konradybcio@kernel.org>
> Cc: linux-arm-msm@vger.kernel.org
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/arm/cpus.yaml         | 290 +++++++++---------
>  1 file changed, 147 insertions(+), 143 deletions(-)
> 
> +      - enum:
> +          - qcom,krait
> +          - qcom,kryo
> +          - qcom,oryon
> +          - qcom,scorpion
> +        # Too generic, do not use in new code
> +        deprecated: true

I wouldn't even question Kryo and Oryon, it's obvious (or at least I
have an idea) what should be used for those cores. Except that "Kryo"
was an external name for MSM8996 cores. But for Krait and Scorpion I
really have doubts and questions.

For Scorpio I'd have a vague idea of having qcom,scorpion and
qcom,scorpion-mp (or -uni and -mp if you dislike the bare scorpion).

For Krait...  I really don't know. Your proposals?

>  
>    enable-method:
>      $ref: /schemas/types.yaml#/definitions/string
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

