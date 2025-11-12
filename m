Return-Path: <devicetree+bounces-237631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6581EC52998
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 15:04:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB8A2423BE5
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 13:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66AC5229B12;
	Wed, 12 Nov 2025 13:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CugzfM3G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MqGMTeul"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB0B21FF46
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762955502; cv=none; b=MVkJ2OemR8lk7QFKNtpkifLh48vOvSKza52XPEpQlh4RTKz27rLSQ2ZNIBU9p7bIAKhFwwKGpfDn6O8tC1Fn+7lJmgsKtw8Ufw/BICEtyJnZAnKjkv1Qi4s+E7xieA/P/vLGxzHM6WCiAuq4slYfLcNkgjdOLto6bpmHD85FsSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762955502; c=relaxed/simple;
	bh=65/ClbOI1CVgdU0S11r5SwYxThjB/AuSM0S0yIDQDsA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aBi+GmM3DCmSzvVl4iiZRj+fd2R3DLKR49oimijd23kjskQjFt4DAM+x8HAKzaC4DmtdrPZZxqcmfY85MFcUDY0KbDAW8Y5i/jcLAOj2DzhFwyMbMykYd1a6r9q0LY70oBMkm2weIaTOeh3HZ5or96tK3JLfNZJiHtvscjVn2Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CugzfM3G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MqGMTeul; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9X7L81001850
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:51:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0lanilZXsOqoFoASvnE/+cQ6cv+YIockWb3Z71quJ1Y=; b=CugzfM3GfmiVKw6K
	q8PoDQ++WDDCmcWeNPEzQSj/NKZ5g70K116ixZSwPKQdlVg0SHWIZ1ZTxPKnaHoA
	26t+eCR0HH1byu0H9oeoK88ZMdXtD3cnTCgU+d69zkXEPHkbYvQvXD3lDSVR0M53
	I2MJvlP4eWV5n/ww6oPXeUY0diNGTGTpOLXjSfoomyJlel3KQIfmchxk6LfX8atf
	h5Fhp/lbyeNrVDUual2xyDn1PGSTlLuwX9DJ6jXKz5bLwH+A2FuqABns6mXfnNZI
	owzxGZy79F2eVy5uOvG5Gt83K3h0dXD+GCoWKELoF0gXfeuzqeGb3zlb3A+M/AfO
	yIMb1g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqq20s1f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:51:39 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edaa289e0dso3073551cf.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 05:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762955499; x=1763560299; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0lanilZXsOqoFoASvnE/+cQ6cv+YIockWb3Z71quJ1Y=;
        b=MqGMTeul2wS8dn4Zmd8fsVPSjO4ChIW8vICmcxzTRqBQu6gSru80X8+2/5Cxxz7Wdy
         sl800Dpe79p8K0mfYLlknuB9h3okjfgXlPWhrt/MwW9kpRGpvPvCOJ3fFVH1hbJdP8I5
         q5G/0urwDNzYMn2G7KN/sBP0RUZXJvjM6im55qNINHVSdbTIIuPHITwj6ofEjcshGiZF
         BmtdCwmpk70UuHodgWUKNsWS0ohL9WwIQGBOt178Wx4j7Wv04lIHpnzXelz9BMvAPMb/
         dg95vfLq7aVNozXXMlbeE+Y/Al+eMIyP1jIdjg5Q9ccmSfZAtacom/L+IpBbk0mrcqyY
         TeqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762955499; x=1763560299;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0lanilZXsOqoFoASvnE/+cQ6cv+YIockWb3Z71quJ1Y=;
        b=uFdDPog/ihQk4dO2/hyStJdqMIgZGcvUIaFG8aywheetob8dopiTc3/7c5hfnMIu+r
         2wisq3jD1uDYMHnMtY86aBIizpv9WBBTolhfmEe2va6sbIaQAL4p78++1NxwJBTrLZ37
         /DKYaFp8Mtv8sJPm/FpTA7Q0Ghmh4z2Nmmu4RQ37hbkgUswFXvCtJ0RpONT+BMsKqbaC
         sRqHbBOnmHtS3OhAmTjfkVglu3SdzFqe0FGecm5gTYS9YfppbfAU3xg8yNpWJzvrwVXe
         mu7Smc2d1BNwdoV1eiTRP79m+QgVIeKDk/4RDkyiAR3hDn/VBFAomdIWD2are+0cl7gp
         TxKA==
X-Forwarded-Encrypted: i=1; AJvYcCVREqKHXZ+xTuDHA/xst0QvGlfe/mTyamtP5dTJpk4Knn+cJEtZqI7e1sX5UiXi+JKSn52i4bjppxc8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxtd/xx66fw1HGSSWj6PYoSupNkSmz/Uj52cxFs/hsxCOr8l5D/
	FhX6y2p+B7labBGjeewib5m0+0wtZiEER5zigwM2F8RmtOwUHWCobVb3kAEz6oqiBB8Abl49xM8
	N6ZxGbNHz1kE0GyxHDO33x2m4ulICrppPFhsWDyPG5moZ5IWAZiQYrVxAFV4dNesX
X-Gm-Gg: ASbGncvYa2gBFbPgrtX/ZPkcXpOSXDY4fL1mAyc3/CAn0BQlFWUKRPT8Yf5p4Fmv2Te
	KoZ1Wef1BV4ASZRZ8YJnAN147QpgbV9DhW2HFjWRfxjFQ9V9hwCoN0K3Hn3syH433KXzSwb5fZi
	2Wl9qOLMq4nr5unaIPHZ/kjLlSlENt7f0YiqfxGi+KXzT7dgPIEs+XnRrlT9hB4r38YTCiCfJGS
	FAbkFXAIx9Ny1fc1kdrlzCCj2p7evvr5rRNci3AeksRocPbI9QiRFtc6JkGyK6EYSATFXbYgHo7
	jQbWykWIDUIsM5bUgcY0wWAPG1aQ3n7Zeu9J181v2jATW702UDmzDsgr9mkarOtY/5v77uMhqC4
	nLnIoPv4+AU2vXmrcPG/OPLRkUxFLaya/Zuc8Yo0QttpAJFCpVce74auj
X-Received: by 2002:a05:622a:1195:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4eddbc6b690mr27973981cf.3.1762955499019;
        Wed, 12 Nov 2025 05:51:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFLERtVCAbAsBFIDkC2l2nbCe7apGB2UyAVJXf++DcUzHj3l0TPdlFo6l2euGgQ30c2D/AZrw==
X-Received: by 2002:a05:622a:1195:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4eddbc6b690mr27973771cf.3.1762955498536;
        Wed, 12 Nov 2025 05:51:38 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bfa11367sm1583115866b.68.2025.11.12.05.51.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 05:51:37 -0800 (PST)
Message-ID: <f8ae7491-cae4-4e47-a1d4-344e57117e7b@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 14:51:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] arm64: dts: qcom: sdm630/660: Add CDSP-related
 nodes
To: Nickolay Goppen <setotau@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20251110-qcom-sdm660-cdsp-adsp-dts-v3-0-d1f1c86e2e6d@mainlining.org>
 <20251110-qcom-sdm660-cdsp-adsp-dts-v3-1-d1f1c86e2e6d@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251110-qcom-sdm660-cdsp-adsp-dts-v3-1-d1f1c86e2e6d@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EbHFgfmC c=1 sm=1 tr=0 ts=691490eb cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=7Oru3VZ2rc5tXTzVnmAA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: mLaXy0IY6ADocoYUCeOmkN2OVf1GF8dV
X-Proofpoint-GUID: mLaXy0IY6ADocoYUCeOmkN2OVf1GF8dV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDExMiBTYWx0ZWRfX1Mm8AdxpTh+h
 SXwtAqlVZ9rdrNXoDyBBei/xiyXn1uzbMoIIVS4dQg+8MTM/kTefGMmEkmjNAcerjdwd+x/xlTP
 wBgfSBgZDYeR4q9Nghb4YHCLxJ18+hc7bibjSDOZk7qd1CDg3cBWbY9VFgn8Vyv1ONX+GIIuMr9
 7+FzmTaDCHYO6JTNF/ELlQPdd/qMuEQ6qV4v9BVILdwgLQ50dEH02DjW42CDkRoeXxqgMtFm3wc
 g7i/MQzN9oHY3MhWjBab9py9cC5ATnTe8eGGi4CyyIxdoybE58UCuPGIRQ00oAzBCMOmm+t/Axd
 5xLmMa7WMR1f9iDbPu1d3RmqoBfwFDEjKEhI/32bH9lb57P0V71lX8/pgvD5ztDBYHeKgX8NiBu
 AgNe2vO6T8E4z6L1sgNHQCwoTwgk5g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120112

On 11/10/25 7:55 PM, Nickolay Goppen wrote:
> In order to enable CDSP support for SDM660 SoC:
>  * add shared memory p2p nodes for CDSP
>  * add CDSP-specific smmu node
>  * add CDSP peripheral image loader node
> 
> Memory region for CDSP in SDM660 occupies the same spot as
> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
> cdsp_region, which is also larger in size.
> 
> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
> related nodes and add buffer_mem back.
> 
> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

