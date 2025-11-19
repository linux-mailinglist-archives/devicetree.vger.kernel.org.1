Return-Path: <devicetree+bounces-240100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAC7C6D6B3
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:29:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 789B54ECECC
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC56B320CA7;
	Wed, 19 Nov 2025 08:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MGbylInq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A9JxYkdk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D592DEA9B
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763540492; cv=none; b=uUeIoD7rzEzR0nP+X9ZoY5XWe70GhwTHhg/KMybN/Wm2Q4kffu25eBHMKFWLv4SkE4bQm+Lid7N+Dk+ItiJP3eXp97Q19gpxyYyXjyuBMn9dkUltQhvmityz3qUZsxwpH6k1BpX57B9ErF24bLp0muncFqVwcfbg70SPwdeETFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763540492; c=relaxed/simple;
	bh=SGwW4r5mjx2bwsfrVY30D26LHtxfAtTf3i3shZHSBNI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FAVGnkH91PLWW6ayBffagmtMQxrBLkc4MZym4weaE9AgWNhWa9S1KvShX6KuS3BE7e7znMb1pXBASUTTC7Y0Yr+VlJsOmWHOmv6fxhTDvzNxz9XiGqozZQNxREPr9lppq3gzg5yge/asSzKKUhM9q1dTlPOvYE3s8xyXR467Awc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MGbylInq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A9JxYkdk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AJ3xZvA840048
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:21:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xEAsUPywi8rUkrZqMBKpeI5/
	a9H3yBT33dG3WPief/Y=; b=MGbylInqBcS9kDYPoGzVXV3Z5mNjOfquuoXyPDMr
	7wFQPUiB+DV22cLuHIamnCr/zMvASUVMEnDgu6wnw9l7vRpomCEZwKnojz+ORXYV
	eA0U1PlG+xxtwkt5c9zUUJjX5hs9EGqoD+kqEAxpqetdRTZILr9QMyQUcVLtWue1
	2IqE4IGUv5JbQPQ30WVOzYMrq4tQhh1lwpK74LxywLsVJFdvhPafvixxEm/BRWys
	pVcFZOy1hgRx3iB7bt8njsfygidsOOY7ybqHfYRl3gRFofNZyvNesoGoWOYDwmU7
	ANzQIIKwMrxD3C04zYvavmRsxDxsYLnJASjUP+2M3b7fMg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ah6fg8p9r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:21:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b225760181so792912385a.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 00:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763540490; x=1764145290; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xEAsUPywi8rUkrZqMBKpeI5/a9H3yBT33dG3WPief/Y=;
        b=A9JxYkdk9P7QogAYuR3OuObCHzXFAdDsAFWlVGd2JAqSw9poRZ3LAcd1s6XCYDwPUR
         aPc/+jW2QUjT8WAM+ZUJCx4G6xrPUTczBd5NI/596Stln8iWdmnbvkeKI7TW+9RoEUkY
         cPSyXTRQQTPumUB/zRBXK4Wku18f+91IqB7ipmAJwioiMrKYnUUpYj1cB/r+9Sndnq9c
         wBtFw9N23mLEGGOxLFXyPI2LWY8t/eGewx929mTHq50EdxTreTFTvjbpbZz+FmLjFSZ6
         q0LJESKDzsxctUl2KRlXOMD1Csb+YrKzk/ZqUTMSIqcDluKz/LF5ILxyN8V1CjSoMqnl
         XgqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763540490; x=1764145290;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xEAsUPywi8rUkrZqMBKpeI5/a9H3yBT33dG3WPief/Y=;
        b=a2yCddlsjg8QThy+8WuiATr9hDu05ux/BZaaBIvAcc71k2XM0UTlrYYCdFoJyql+wA
         n7jxsQHCGXTNvXZqhts9RThbJVK56AANT639i9FAqL5H05JkQo9W2rgAY3X+vf7CRJep
         qypsTOnyN8DbJFNYpowSV4+6w9ETLcq+4eHfnNaRN+j51QGisv1ZJf1T7IMD52s7QMXR
         5jDEw+XLz6AYgR8+9Z3gqjy41XtPND3E3eWNvHpEUYjygXPpe8iqmqnN9uNDA1RPvEe0
         NLQgK0lbVNtlM2JCPFsrCphmvcwYxSrRC6ltpp48Dzxr9iaYim4Lx9/Cq97pnZWtAc3w
         g8zQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxayIfmcyV+wqREJPOEW7Vi4P8/dj+3nZ59EW/5et6YyOr9aDeMkUgnRiYq1BH1EXekELPiQM531dC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+0VTiIvmJqCADBRlPrPPqoZor4gi1N8FoIbMUz14UwSfpsxjA
	2C5WyhzKFMmsVlqzbuLorOkI5dM/gO97uJ5BlPZV8IcE6LcYWVIHTbWFEH12HMbVeafpdW/HMw+
	KANpa4a/l/zlx099r/gIgFKgZLGYxorlAXDRIEpR9mQxy5bXgV9RSmoEA7ZV5KVRf
X-Gm-Gg: ASbGncvZWRG+OfYG7SjMfiughbH8HSvIqu6zR5PRb6yi9IIpLvGwQ8F/9UtEo0kB7OD
	AWHfaGCck0Y1RGh2wUIJHXIG2XopnoI5xQRiO6fjH/AK1+Gdp+rRNqAQhiRX0wTvtUVhroZiPsS
	d29Vlzh5cssCpQRJd3gRowku7pE70+CxFxt5ExPqO4NNzBPVCmivBshMdE1O/5EmlxfQsUkrinI
	um7vn2+PlY+xQDG+A1C6mP90agXu+hiUh2D/yzmH/VmUahbXVBBBNatKs2rygVm3xEkEOJFEJPl
	KIqAMrdfjT+Lto+abVFvU2BudXx+tpEyC0Zuq0Nf8KlXt68OWUREkV/Wydr514DIcOG7hmn67ZZ
	ab8IVRKbXE+65iz+MJIsSrcHSQmzRTadnUsU2+zmywk8HEJTIoi2Gdy6DkBt1zUKK2vjMkCgOz+
	gO39BN+llxM7LPAFF8rpdwVdk=
X-Received: by 2002:a05:620a:1788:b0:8b2:e8b5:1e9a with SMTP id af79cd13be357-8b2e8b521bfmr1425463185a.21.1763540489545;
        Wed, 19 Nov 2025 00:21:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHRXc8k0vTH4YXhYm8Uq7SOvE23kdJYfiJ1GXMBzpPl0mZrGGhj8dQCLjyo0yHmskt2tOKZnA==
X-Received: by 2002:a05:620a:1788:b0:8b2:e8b5:1e9a with SMTP id af79cd13be357-8b2e8b521bfmr1425460885a.21.1763540489071;
        Wed, 19 Nov 2025 00:21:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5958040049fsm4560259e87.61.2025.11.19.00.21.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 00:21:28 -0800 (PST)
Date: Wed, 19 Nov 2025 10:21:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
Cc: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@hansenpartnership.com,
        martin.petersen@oracle.com, quic_ahari@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V1 1/3] MAINTAINERS: broaden UFS Qualcomm binding file
 pattern
Message-ID: <bow74xfqthpcx53ncr766dcyqmij2ycy4xuigh5elg73jmwqcb@vpm43t27mbfj>
References: <20251114145646.2291324-1-ram.dwivedi@oss.qualcomm.com>
 <20251114145646.2291324-2-ram.dwivedi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114145646.2291324-2-ram.dwivedi@oss.qualcomm.com>
X-Proofpoint-GUID: UEtgjZrYTgs1XfmTY6xBkZfmmaWCaST2
X-Authority-Analysis: v=2.4 cv=ZKHaWH7b c=1 sm=1 tr=0 ts=691d7e0a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=qsePQymvRCq6VeTyyVoA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDA2NSBTYWx0ZWRfX+SPLcPzD71Ji
 3CoQ0CHmawpzCKNrx+FEkNMPyom2rPuUB81s1/KiRz0RKYh2Mo3fMmCP8wPgN9sT/6uNHTEx0IN
 5G08lYJaj0Y7wNYJx7+KcVqoMNitDi18Y/+YMjELmFGdhNDb2858cb6GwctT99eMA92xZnaRjhh
 laydoKwoF1Aaar7EwiIGXvU8Il493WSsCE/CxOzxDPgkkCNgVHcSyKUtEYGn/TJ32Yj7scQfdRc
 /JSqUlsguPriAhRRpjRQh3fX1fdx+JzJUgLL6J+UUsVJ+wQdnpfOG7CxBiGEmcCOXVjFSCBcTTU
 NPKRxlBpwdfVk3Te6zSOmtGS+QsCA09qv5MdthN/a4kF1q72aTb/YJoLFwha5pfp8ULPHMa1LAQ
 okhqSnyjyaQWvKvedNm77uJ0TvtZwg==
X-Proofpoint-ORIG-GUID: UEtgjZrYTgs1XfmTY6xBkZfmmaWCaST2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 spamscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511190065

On Fri, Nov 14, 2025 at 08:26:44PM +0530, Ram Kumar Dwivedi wrote:
> From: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> 
> Update the file pattern for UFS Qualcomm devicetree bindings to match
> all files under `Documentation/devicetree/bindings/ufs/qcom*` instead
> of only `qcom,ufs.yaml`. This ensures maintainers are correctly
> notified for any related binding changes.
> 
> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> ---
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

