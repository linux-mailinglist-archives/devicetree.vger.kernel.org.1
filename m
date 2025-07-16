Return-Path: <devicetree+bounces-196983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8233FB07CE1
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 20:25:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6F7AC7B3CE8
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 18:23:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 813872BE64A;
	Wed, 16 Jul 2025 18:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jdgzDPo+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F96B29ACE4
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 18:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752690195; cv=none; b=KNQ4LkE/wf4eYvHv0sA5OYy8T4kk7+SmlYxyPKbULRDYNG0UqC7UPRN7duzKTx/X6c8qE1q5Ggp7vHHxMMRtk/GrAtg2T4oL4TPvGlqEA9a0lbPQEZq1RpjcuIx5F0dKeEur9hy6ddsZyN7mov4PKlaj5QgFpQXnkboCollD5PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752690195; c=relaxed/simple;
	bh=DoCggDPXxoCH10+4U1zekwBy6EFTZXslLJab/HUMrvE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jR+72gbLyx6uUPWdweF9FqnYIWHqX9uASf720yaumSyZket6TXrQFVV8xNqwv+91DIm7MZbdJuUzb8/Xqohtgqbadle17tbjJXq8FUAIjJvEBt0cfxYUvrsHqj4bkOCHIcWAVr3wC9OVOMXDH579dt4/Zdj6lj98xJlK/wJGqKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jdgzDPo+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GGDTFO008506
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 18:23:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JK4iMoMMVXxdCtDOd3oRY/UP
	XotWkPq616eJEmzqYJI=; b=jdgzDPo+S5AeuFxHitcGVjiSb91nBxdmv+ZwTS9B
	KJ9Fn97AOnoeL4wtT8aau1LwC9v/yn0gk1cPJk+XNNummwnlWWohJ1QulxHoi3kd
	XPUhZ3oGK4+aDEa5EIqfvtDL8gXlxefqhNPzjud7Z/c3X25P8/MGp/TUYTRYLUJ/
	mgGAZSvsXTk3jK+AEqFUVn/5Mtk4WAf/t8Gggwg7QxDfWevcYPb532lLoWvGaUlR
	q4451Ygz0AdXirlQNhfDABBNAeK8qlLjP6GbiFXGhSdzitFCw/9vE1imZXry5sQb
	AQCBuiyzzapPs7KXTdmlpOft9TkSwzB64gi+1i+Rg/ewSg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxb5135-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 18:23:11 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e1aeab456cso13579085a.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 11:23:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752690190; x=1753294990;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JK4iMoMMVXxdCtDOd3oRY/UPXotWkPq616eJEmzqYJI=;
        b=kwLBthDaoLyxYnR0W6ilVebR/SW3+Fguzk7y9hV0/3aszLV1QjOH3BYSllzZ8YhTKO
         amaQ99aOHQ0eq5qTTji5fwbprXP9xUfXzf1IvDFnZOe5LhiAtqU202DQSzx5pSqu9ZuG
         JTGZm60a1ClqC/4oJh72VjW60AXctvsrux6O5q0duJZsbPZZdRt8+eAPuay04UVNDMRk
         gwvK7gTBNw9Yd5UxFZGGIv0IOqzcvrJDjhBqkqeBxrHusGysiaSNc17p9BMWBD/6JgUb
         UAQiXbb02VYhK1xij/CDdB14dJmSOgc4DGAN2v0lVzi8nDuwi/tm/TjoG9Ia6Db5TAbS
         Gwiw==
X-Forwarded-Encrypted: i=1; AJvYcCVuoxPE46bGfWgGF4G7juFkdKc6F21uUP1uTuIUXf4UfaXcoMHa4tvkr07vsZ1sE9KO//IfODY1bDM2@vger.kernel.org
X-Gm-Message-State: AOJu0YxyyOKGlOFxTKqWR24mQabtmPclVn+xcSYdD7+sMgqLi3wi0wrb
	A+uncJyw1fAgumaWfsqUKj1TBplPYFOt6ENgIu/zxLRAL6lho1sjvLqSXf3oJn3Gd9H8yDkVyzX
	33XJqDJYG31bA/R0hRQEcyMPva7ZwxDMNr0ljhvR8VNFNtGV2AZ5/WY+2K9QAYiaF
X-Gm-Gg: ASbGncuIFeQRPCVcCMAl5nl5Dv+PAwgMCZoW1IhBzG38AdpN8pmWeSrEmEtbeR5i61e
	sxhTW8qr4UARDiDPZZvTucVMLk+tAbGC3DMzQfB4fFvIoZwDIaSbbvJA0QK22SVvUhoHJRtEsNP
	CrLNECmvhljZN2T2wO698jKVPgO+lwpDDwqidMCrGKER6yWHG4bZvB5gBj1ER06Jws0fdawFQ1D
	y6TlntoGai4ssy06IQFteIp45kgv4EgqFvRNHRMl4xzdpScoNJRfC9lrJrwLHryFnp0jkqsOAjQ
	r0A/3fzJxxLNu8rYEwD2UWnzJCTPnXDbwxjsJZ8C/lpJjfA+GXbABRDPsrm2wRFCyTOWUuNfOnk
	N5bcb0JMYQVGnvUuxijlkyYEweqOccoiAHts7ow9lJo7AoZKkkur0
X-Received: by 2002:a05:620a:6282:b0:7d3:a7a7:27ad with SMTP id af79cd13be357-7e342b368f8mr700585685a.37.1752690190338;
        Wed, 16 Jul 2025 11:23:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4dGOAQzmmOnjOY9QLp8IFiHzk+jathDu/1gUNdhAauGYoBTABP8XBoC53a1ib974mH2810w==
X-Received: by 2002:a05:620a:6282:b0:7d3:a7a7:27ad with SMTP id af79cd13be357-7e342b368f8mr700577385a.37.1752690189707;
        Wed, 16 Jul 2025 11:23:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c7bd725sm2745529e87.14.2025.07.16.11.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 11:23:08 -0700 (PDT)
Date: Wed, 16 Jul 2025 21:23:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: robh@kernel.org, lumag@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        ulf.hansson@linaro.org, konrad.dybcio@oss.qualcomm.com,
        quic_tingguoc@quicinc.com, quic_rjendra@quicinc.com,
        kamal.wadhwa@oss.qualcomm.com, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] pmdomain: qcom: rpmhpd: Add Glymur RPMh Power Domains
Message-ID: <brk26rybf37png4lqea2ekmtdpvdubhih4rq4gazek5aqjzfs5@nbthyvvnxtna>
References: <20250716152758.4079467-1-pankaj.patil@oss.qualcomm.com>
 <20250716152758.4079467-3-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716152758.4079467-3-pankaj.patil@oss.qualcomm.com>
X-Proofpoint-GUID: 6habglcqqbkW8y-8mdE_gL7JpaKH7rT4
X-Proofpoint-ORIG-GUID: 6habglcqqbkW8y-8mdE_gL7JpaKH7rT4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDE2NSBTYWx0ZWRfX9Ln5aAB63dSd
 hn+c6DxWDqNMmjVmy4fFxwJoKN9cj77pZdyneAIKJ0FYWFURgXAZPvfldkQuBjZIA3Nb5tTZoM8
 2Ynz3QDl2uFd8K/HUqYopPK0Kcdt55bw72c0QbeUxdwxPoEkuJ+Ts2CPjHDPZSb4zVJkVqt2Hrr
 NJZ+iKhDm2kZf27/J3Gr5UiYSJSjxkTr4eYXbefXgskz4PvcOTJvjTcUBkSYnaFwBfMpHFVO0jx
 aSGIcMOndZoOwP76Q6cie4P4KNKQOWuKkbzIWeE5YwIBGx8Fx8+hxpObvZ8FpvfhN6UBYOAcKYo
 ZYByS3VytT96jLpBOPCz7gp4lTsYerVO7swCm5McGFhULA4jpUuqrta9fOo6zIbIUYVF5VIlyG5
 5das6EmBhYbwITuybOhlOJ+pREeQQ9OzdxAZvSHRAAX4torELHQ+yfnELK+jEH/ikgUpzY/H
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=6877ee0f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=DTRyGS_NSo7weVScNrYA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_03,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=822
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507160165

On Wed, Jul 16, 2025 at 08:57:58PM +0530, Pankaj Patil wrote:
> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> 
> Add RPMh Power Domains support for the Glymur platform.
> 
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  drivers/pmdomain/qcom/rpmhpd.c | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

