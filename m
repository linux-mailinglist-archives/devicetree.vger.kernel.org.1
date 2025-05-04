Return-Path: <devicetree+bounces-173444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5294AA86F8
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 16:51:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D06633AC20E
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 14:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 439A11B0420;
	Sun,  4 May 2025 14:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="edt2AnNI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6AAF12A177
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 14:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746370286; cv=none; b=birPZ4v0Sh6flLiFpdRZp/k9pMfsfxCG6G7tSLNG8Arp8ZyvsKX+G8VgPPB1SHBc5YK0m/GLBS18xJWZnVBCzIIwSqo0HZOwxkxd6YEyGLhSDaonxgJCPQr9NXQK+ypS8THbF8ppHsdOgyE0gtyesrdB6R0/BQxsXvv3h/73kdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746370286; c=relaxed/simple;
	bh=R5jUXMTEI4sATcODUwe7y6lMZm3PO8rLE2ZZrClw+x4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dZqWVEugWhVOfR7J1ZRki6lIXeOJjt+J/6yyl8neMnRw3gY6r1ZusDA2kK9d5FZFdeOsY5IK36NMrCSAjntajnZCMUqZrENg2EyyGdA1h7veqCMftb2kGJVAvH9bKn+2CRyV230BGW8GV785JozRFwcp7CX+fwPrt95Jb/IYC5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=edt2AnNI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544DwLWr026660
	for <devicetree@vger.kernel.org>; Sun, 4 May 2025 14:51:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aT646PFGWgiTNKYSG2kvR0Vo
	KIDIZ8aJQYd5gcs1oaA=; b=edt2AnNIAJ0Ra7AZdI3qtTFlcPIYK49DvI3nwUxj
	ZrzksU50KjzPGvi7+nU5dsOJt2iuH80ubSQUGt8exz5vk4lAAN4lcRMlih9gkYDP
	KCQIDQF/PoEbWwHlsibEebllWcpsZNncvKL12oO+YIcg97crdkrwAMO6A+a5pNDh
	J6+KlXH9q2sf8awnXq2SqfPfug8LJMjdCMJo2pqQm17Im0WHqATsuXjJSro+27R9
	nWWoYqjSdXT08JhLBvHsjSfRJsFY/IB5M1G9frjsPEgoIJEJcM5cgjTxbn4vB4FT
	pjvJ7C9/RarfgGQmtcf1mIc1eKwI+kYOVhVKWz8tok7GSA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46da55t46t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 04 May 2025 14:51:23 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5c77aff55so833472985a.3
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 07:51:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746370282; x=1746975082;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aT646PFGWgiTNKYSG2kvR0VoKIDIZ8aJQYd5gcs1oaA=;
        b=INYkTzZfdrqyodzfAr7yjY/ugbRrmPfbUy9Q5IoQrHFjk4siEG5aH3Nr/OB99T5Vh9
         WK5V/KWGTpbUfxXjRLKHNSHxWAaJ7ojVdOTWScSEuP5lmtJ208f7sO3v2kcl015HLR3U
         UAGPvXJhPiHD0uQ7TCbA+jJS7ByN4LsoAV+9dmeheIIhREhmzeHzsfdnR2g8PUiv4uvN
         f7TlqPbp73oeRtw1FqVvrfpvVzpELOO+0RpZS0hcla7IzJFtc+jDfXRaqMma0yOHgCFi
         xDOPy/x9rY/pCrE/rwtvffBIoqDEUsdauZThiiSYBn+MKDcRmzzcEJ1at3lpJcnHNxjD
         QPYA==
X-Forwarded-Encrypted: i=1; AJvYcCVDRLGnqF4/y8nIh4dfsqEuQlnMfD9CAE80DPHRpXRq7joeaAbF+i8bF78jSrqUsMW0TbptbJShYW1B@vger.kernel.org
X-Gm-Message-State: AOJu0YyslXmn6pqhzNBHIVYyN3wlJG/pk+E2N+IaqA1W9PO/1VoEvM9l
	E9FctIp1mO6VpcPBau8Yrtb35YADkPGC+O+NgV6ahaQCQZXpATj4izdVo5pbPDaXUQ1R/raCUnE
	x8CXrlLan7a0D7NBu0vifVNI+o8HbY1Eo75s7SUz1MsOrhtS/vGrxQPlWv43t
X-Gm-Gg: ASbGnctp39MeBE6vd+SDEw+y3+wHCccs+xfYQ/M80UDmi2bXOoX6ONJ7S0ThLXBsWcq
	bHg/gqMnCa97y6igHyle6amCj7HFVWLiyqOEq2lqxockkdjP6jo2Gf5geHy6QeaQtXo/G/bfrjo
	G1+cG9T2BM7PkiU/6UhRCYt5tQhgelX43E/naDjdj8eGYsGowRqgX0b4RDM4Khev7b8YoC8WD8B
	eVfim72TBtI4H9Q5cwfeQjhUam6uxB7Ka3HTd7rW2nutTW0PtMkS/OdR5A5KC8Gtp67aEISVQ8v
	xXi20FNP408FZCdaG8PgyQJwX/ZS3oyCki3wMA8xHXogsZhnUmg49V3ST3Dj+qmNMwnEk8HxTIM
	=
X-Received: by 2002:a05:620a:4152:b0:7c7:bac6:8b7f with SMTP id af79cd13be357-7cae3afd94cmr506217585a.45.1746370282625;
        Sun, 04 May 2025 07:51:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2YEQcg+z4L/QH84IcQi6XWb1BR2SKyeknZAaEyykVIQte4w280JJ17Qto3urIA058pFmO3w==
X-Received: by 2002:a05:620a:4152:b0:7c7:bac6:8b7f with SMTP id af79cd13be357-7cae3afd94cmr506215885a.45.1746370282284;
        Sun, 04 May 2025 07:51:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32029306833sm12338191fa.52.2025.05.04.07.51.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 07:51:21 -0700 (PDT)
Date: Sun, 4 May 2025 17:51:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alexey Minnekhanov <alexeymin@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>, Dang Huynh <danct12@riseup.net>,
        Alexey Minnekhanov <alexey.min@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sdm660-lavender: Add missing USB
 phy supply
Message-ID: <jujiy7ij63lahrx2opj6kbotglsgbqjqrlcvwlnl2aprj5lbzp@p2tpx7uib6jf>
References: <20250504115120.1432282-1-alexeymin@postmarketos.org>
 <20250504115120.1432282-3-alexeymin@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250504115120.1432282-3-alexeymin@postmarketos.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDEzOCBTYWx0ZWRfX8+kAu1MIrjiB
 bCA779VTWaWN5ZRBitIsSx5UPcf7ZS5qD2UOjvfy+NjOH3RNZ6DYkwAYIdeQ6n+URT2m2L/PTcX
 cj2q2Z/o27/xeWfPZt5EtJ/RxhXxMVat/AEtIVKeFLQzl8TgsSLUoT7ce63D49rOko+bpac+uiP
 vhlwmVswgLCzjyNzjWYYd6QJOqJY0NE1YY25m9En6m5/pXK6c0udSoyWZ7Gci6idfItDnvd3rSL
 /PBpZXwsY7+zl26UcNxgOs4Br9TNRFChbO8XLTNCMT4KlkUz6F1uCQAcUiaDy4wQVFmU7e6UvnY
 J0wWB4QGaFbt3eTpUwW8GhsoVwob3kMP7Mk+HmJfjDKS07+8xDUu444KfrFSTSqDiY1eZnOfb8G
 FTlD8jtRLFmbO3/8vEW5n2vXwYpp88yD9q5ML0RP+t2OpqrfEfD2PIyxiEYlZ6RME2olIcWD
X-Authority-Analysis: v=2.4 cv=M9RNKzws c=1 sm=1 tr=0 ts=68177eeb cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=Gbw9aFdXAAAA:8 a=EUspDBNiAAAA:8 a=uluJzZTdjp9Xle8A0wcA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-GUID: 5jUmJhFudPVMbY0WPrN4FeP4lGLU5B6A
X-Proofpoint-ORIG-GUID: 5jUmJhFudPVMbY0WPrN4FeP4lGLU5B6A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 mlxlogscore=606 priorityscore=1501 malwarescore=0
 mlxscore=0 bulkscore=0 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505040138

On Sun, May 04, 2025 at 02:51:19PM +0300, Alexey Minnekhanov wrote:
> Fixes the following dtbs check error:
> 
>  phy@c012000: 'vdda-pll-supply' is a required property
> 
> Fixes: e5d3e752b050e ("arm64: dts: qcom: sdm660-xiaomi-lavender: Add USB")
> Signed-off-by: Alexey Minnekhanov <alexeymin@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

