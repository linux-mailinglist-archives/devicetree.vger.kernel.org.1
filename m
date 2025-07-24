Return-Path: <devicetree+bounces-199455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B88B10B75
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 15:32:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8DE617AE13
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 13:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C35D32D9EC5;
	Thu, 24 Jul 2025 13:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NE3dcdpY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A155FEE6
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 13:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753363918; cv=none; b=uirvhxQsXxyJGMhTMW85KRH3lOeJx8Pu+XTyb2sIof3GJYa9knXLY4dww4KuHYTPNlLAc9dJTd4mjijzxwyj+sWgfW1rIX6YGeWdGx6ijQikHZkpbQqA5DLHRmPzLPXQ+drLkFoRhUVvm+rjH3Rpq8nEutpoRhACCsMJOYiFxBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753363918; c=relaxed/simple;
	bh=F1kkTJWWATnergb0steCpxPDq7lIJ4ptvm6nISdTbfw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H421btghOWyEJZK28dPMUFHGUP94sbgG3VvVMdTSEkXwMW8j3hdI/6wFYTdAdmNW2386VS4rc48GyT6YrwmFeruKXZNW8+GSO0KO64Ve9iv2ZoVNgNnesyAySDy57ughSE+47+T/9WDOZ9dIZVlglLxVLqUsvJe4b9HMHcnsDWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NE3dcdpY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9wtDd022020
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 13:31:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UGZqYstjALDPorUsHq3fkuHRnZDG0CR7bEzEh3y+/kc=; b=NE3dcdpYcFvCY/4d
	zcXa91WKG2/+pNf7gofKhRcFTKw5OBPLCrnaZ3+8toODsHaJ49lWL87WUbAMbJBn
	AK7gO2vvjMf/wA6/MOv5grvjCH/6HPBtktQrrKKi1leRRv5F9QTS+/zs5eb7ZZlV
	VGsqPmcfcBOLkFHxLa1qoZDCuk62DUwpaA7Bw72K4df6gRM+iUYgE3tC49C5+VX0
	yP9R+VrtYLS8pb5pigkDnWl6PscaX/Uhz65sXRIqEbK+z2TrcCAR2VUoIH0AHEaH
	+905GNAXOLNufxJ+S8alB2MQQTd3FcoaozUj2+lLon2sRUIRm/95t87jJ38qfAAI
	We+lAA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044drmru-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 13:31:55 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6facde431b2so2092396d6.1
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 06:31:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753363915; x=1753968715;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UGZqYstjALDPorUsHq3fkuHRnZDG0CR7bEzEh3y+/kc=;
        b=nmvXuv8+07Vqogl924i2AKISNcH5DUXAGsa80quZADwXeDke7cVcldIbgkvVlE5nze
         aUJLk92SzP3sHtCG5o4nojrN9qnv4I9o4qUwtWYY0Bu9tIiovDcWWGyBBobYhaEYB9iJ
         tuWgYASjrMUqA+mx9vW+iz/XR4xqMnXjPAeSFV314x0DZV9SU4geqnBq/8fTorI7dSnG
         XWf1yryKdCGiLGthjoyZot03N4pQBkWWXg56IFsAn3uxttN9L+hDVNcbfr9YUf47tU8e
         mpQ/z3p0vRHFRqxv5wuL27UQiW9vNV4Ep2ie2I9bABoZcbBk8tAvCcWpiRGns5mIiSvC
         bKmg==
X-Forwarded-Encrypted: i=1; AJvYcCV21OE7Jf5FKpYlE/ug6reA/JJVNN9w61S3TpyxFTFpcgs0XbIBMABEbUQXhUq0bVWZLwSqpWW71rRU@vger.kernel.org
X-Gm-Message-State: AOJu0YzCFkQETBVtrHviO3CmM5H5sXWDOTmpDa0seWkPuwGPkM2i/n0p
	0kH7R0s92nq8jXm1JulwgmTUY2mgzdSu4uK1e9i/ULKnzroT8f3cLTRVfYZ1Z22qOeIDg5DCLXS
	/EFrkzsWobxa/mhN6SnX/qrkTJYFysL3DvwZcadPWLOMqjlnyZlI5XloMMwoNwBj7
X-Gm-Gg: ASbGncsrjayljk7umz/M7/dsjqcLlEoPZ2gfoHbmOHW9UchDg2Zc6LjV4huFDK7eWcH
	sPWZqk7lkAVCOS1kn6Yof4haB7xd9KDWmgol0hprC0RO/Zp4h3457iENXoE7XdkmwfQwTWpTfyQ
	+MrVijDDeA6MZk/Jh0naYx9P0CcuvuAw/k5LHRwGluAMijaPWgzZsZzzWtGLo4YIkY2Jn8xCbYw
	I2gCClF/JW+8NQSMEta94eWJst7J0CxWTO51iu0gZ3EgzeXLq71pWH145E8cxvr1xlyWtiLSEvE
	DyFRVDNr5hVhtbHgO8DMiO9LSuGrXq9mTogOFQ8PLdYXSft9VmcQJNjNlc/AsimPj/Wg0mKVUqY
	oYUTY708mqDRleOXOew==
X-Received: by 2002:a05:620a:a49b:b0:7e6:2435:b6a4 with SMTP id af79cd13be357-7e62a1ea577mr372422985a.12.1753363914548;
        Thu, 24 Jul 2025 06:31:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1LI4SXtUDns1xFXr2pxNw4p8OV1O+xy0f8RV7nH2RnjoV1/Q0cvExqriBQrt6rTZtA+N2DQ==
X-Received: by 2002:a05:620a:a49b:b0:7e6:2435:b6a4 with SMTP id af79cd13be357-7e62a1ea577mr372420385a.12.1753363913957;
        Thu, 24 Jul 2025 06:31:53 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-614cd0f72fasm862314a12.24.2025.07.24.06.31.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jul 2025 06:31:52 -0700 (PDT)
Message-ID: <276b7977-45d9-4b37-a4f5-1c65802ac267@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 15:31:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] slimbus: qcom: remove unused qcom controller driver
To: srinivas.kandagatla@oss.qualcomm.com, srini@kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250724132808.101351-1-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250724132808.101351-1-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BJ6zrEQG c=1 sm=1 tr=0 ts=688235cb cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=-nCjNjGlNwJnK1JuTs0A:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: nqQy9iN4FSK8yeHU9rAUsfHJBQDpB-61
X-Proofpoint-ORIG-GUID: nqQy9iN4FSK8yeHU9rAUsfHJBQDpB-61
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDEwMiBTYWx0ZWRfXzq0+iY+QSIi4
 t8wATi/6Dsd4IgyF0bObM61r+aE3uzb0ciK1gXXZ8CclXNS5ZLoo4dNiv1+E+jcK4FhvKq+UC79
 dBs49S6YqKRamZ7RmuGlY3pgq8FaL4DVt53D0kVSLkeAPJ8iXquEIMWCHzIToHwnhDsAxsCDu7N
 t24EcIForONR3l3uZP7MsB/UKi/6tYQVLWwvK6+e2r3G67XLg6SqjFlPENW8zzPDpredmGcMrpv
 4bO23z5nsYQBWiJXXu+YxNRXKbe/a7XxM/Djk6Xjqeg8fjFKtx1Jgl3tRVYZJocKYMwHD9d3Nyg
 MKXwvkTT5BvEd7ePF8gV19qLY9AqF3Qg02+DF48RCG1bv3yixMBUtboVWaPdtYROgvXNsoLESb/
 GlWqCFHbM0P3nlDAnIBdc/p046xYhI1XSBOg6IyF0r6UPLyetsIW+k8MlNhnfMgPYZvJRel6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 mlxlogscore=782 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507240102

On 7/24/25 3:28 PM, srinivas.kandagatla@oss.qualcomm.com wrote:
> From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> 
> Qcom Slimbus controller driver is totally unused and dead code, there is
> no point in keeping this driver in the kernel without users.
> 
> This patch removes the driver along with device tree bindings.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---

I *thiiink* this is apq806x code, with 8974 adopting the new hw.

+Dmitry, does you computer history museum require this driver?

Konrad

