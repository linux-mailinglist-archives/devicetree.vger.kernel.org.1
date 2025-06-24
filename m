Return-Path: <devicetree+bounces-189011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DEDAE65A1
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 14:55:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 59B3117C5DD
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 12:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15CA229993D;
	Tue, 24 Jun 2025 12:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lJIz/amU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8454122D9ED
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750769619; cv=none; b=gs8LD+UGJNye4VaGt5EfcYLZ60RQ95/UPWzh4GV3++3Dl9Vk9QXIvk0mDQ6Nh0br2LSSHsJZP8ttFmzJWsBuLIrPecGOpuN5kFPPzsFGAldx6iFv63mNiHVA3lq86CGKX0r3t1NKhwF/3mGozwpL4ZjT3TU/P7OfLnEFUyVDGP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750769619; c=relaxed/simple;
	bh=goi+JYdc8hX2nZ6r6/E6w6bG2TAS+Qvi9wp+yVs7mTU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mB/Lf798nW4lTipMXCUdBgD/tKry2BoTlr2nD2XJipfbSCFip3yTj4LZUAtUMPEmGFYjv1V6Ei0YnSUT+ukp81bhfHU22vriuTmay57918Xk+QHOMtx00uJIuHd+TUPEKh9Ujzr99w1ZNUGHCaNa2CyW54ewVUG3rELCmTnfiyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lJIz/amU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O83KQw020776
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:53:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y/+Oz0dkYo1zBsxJyrMPTZE3tsWtgvUVNjRDnaW0KIE=; b=lJIz/amUFjS0TrRZ
	u3wiXr/pgY3UIxwtl7dqdkpeJJXL7mhZDFER4ufNRcQJBBsTZX0VXPOw13oxpK+D
	nxv0D0mz9QRPK0i7yAiQyJQY6vqgahLn7VyMRqkXcLOxfg9bh72aTkO1Z5QTSfhY
	eoaR1djt54VUPH2DruITojk5OhBOzlM+bckYLZQedGeDjOMzwQfcoFsZmauXin6D
	jFikalM7TdlD0Wyj8SeuV/YAaxCyK5FeUd+BwgCR5Ej1WRtxmokhvmA+Q/Lgn+hI
	FuS8CRscW+FOJutcWi8d2E8YtDMf987zzwf90oMAVBh+0vHrKArlCUCDhSt3+cNO
	saTQPw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f4b3v1b1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 12:53:36 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a6f59d5ac6so12441581cf.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 05:53:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750769615; x=1751374415;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y/+Oz0dkYo1zBsxJyrMPTZE3tsWtgvUVNjRDnaW0KIE=;
        b=gFfItgtJLDak8we1Uk+GyfpRgB9Gfbkuk4WFRSXkIja07OloXrtsbVCoz+A2HK6CAn
         K2Bdl+AmGc8ZZqaNrVDf5t2EZbFvIR3sIXgBsrsmv/LdMEwYgE6Viao86r9R5VJwa87S
         pnvzNUC1CfTdumyAgLhKhZz6MwHdn+5g/0f7yBtenwMtj1izuB4q9REyjWP+Nd/3YfjD
         vBO4B8o/MuppiahOGp6zpaQrKooZ4crnYJBTPq6s9hT3ZdclNlGJCKP8ZhmB/exGEZRB
         VZyjNiQBbfP7B/T8IuCH8HfvUxfKDQ+W6Vttic+CXaKDN8DMW767QnO9QpIAh5QPjaIm
         YTVw==
X-Forwarded-Encrypted: i=1; AJvYcCURGWPy1DFWi83ADtIWw2GchBI2OjpwjAQ4G7wUOP/8TGYWslQbW2LfDZaSZ8EO1e7dYsfc8L32UmXb@vger.kernel.org
X-Gm-Message-State: AOJu0YwpGTPzseX5gfEDG9f15zBYtUQRTUjhwVALCjFhI5K5mkv52UVB
	gRxpekMQ7MyYL7rTi0YH1iQCbLY06wmmUv/o1welmW6kt+ifhAWmYvyz2QBkt3TI7cRSJ3F07yx
	KVqXTLfE6+EBIFi0uKqDzl7H6I/CvRM7DkHeZNmq5UFH4T2KAN5Ua0jcd7eR2H+FF
X-Gm-Gg: ASbGncvqEMo3K0WuTq8BVOKkvODCDExG+O1ndiu5WsAndEO8gMVnt22ZZljwVtXJrUO
	SooAVM4/x6Z00IGLGhpPizYcR2a+xX7sjU+XM0G8YZH08eO6NIlKOwAVuwynTi6/QZZXjS0OEfT
	av6vB6ygFs9Mrz+DdViGsDePWEl4JooGQtpGb9QzJsrkll1nxLKiQ4Eh+ccWVDZPnOZpurWwtut
	79QURzsZjRPPTeA/iSdZ+o5HRtwZzaIyiD1bpGO1srd0GHl7sAxCYixR0IbS3ymNS3MeYggi/Tf
	q3tENIg2VYg1EmrimsYHSeeYfU9Mbu0ZCI6CT9WN4eiU9d5RXlLqhwWrImA0NYYFq+rlrZKtSol
	v/bw=
X-Received: by 2002:a05:622a:6182:b0:4a6:fbd6:a191 with SMTP id d75a77b69052e-4a77a1ae861mr87818181cf.1.1750769615256;
        Tue, 24 Jun 2025 05:53:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgsD3QcWc6S0AZNrpNBd+uIEeZjeiiG6NGMmKXQHsPOX3VXCP45konCfmawthc2DRqsam1pw==
X-Received: by 2002:a05:622a:6182:b0:4a6:fbd6:a191 with SMTP id d75a77b69052e-4a77a1ae861mr87817891cf.1.1750769614739;
        Tue, 24 Jun 2025 05:53:34 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0a67a80a5sm151041266b.26.2025.06.24.05.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 05:53:34 -0700 (PDT)
Message-ID: <a9c012e4-40ab-49f4-a0b0-b4ebc4272153@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 14:53:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/8] firmware: qcom: scm: allow specifying quirks for
 QSEECOM implementations
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-efi@vger.kernel.org
References: <20250624-more-qseecom-v3-0-95205cd88cc2@oss.qualcomm.com>
 <20250624-more-qseecom-v3-2-95205cd88cc2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250624-more-qseecom-v3-2-95205cd88cc2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDEwOCBTYWx0ZWRfX19IujY8WbwNi
 l9qkoHISyex7zziDvZlPvJm193kjzb+gLluJqoL/UxEPqUSvhrU7FTWIhsIIo1tZnZetMxz/PHY
 kiUaPX3cyT73T00+Th3C3jF4BUPOtDrGpRbPp/8q1H86J0Op1aHRd2F/1ETkQOFM+FLAEonfpCX
 pjTWlxYL6ORZFZcBp5p3hFfvsHcoxiFWvDegZ4unb1KRoO0UHheolcPMrtgoEPcOH9POL+3xJRG
 LspeP0mKNtvlFBv8SARk12x40fRkcFPLMoMYzHHSgaePsFrGAksJZFRcioB+lq/5qiPK21eoDY7
 wlKFTzIWDZNIJKuLjzm1g7Q81cxfJtjkYfytuFTV58+ziKQ2he4U1951KdDCcvAcC3mUFpAywHM
 sIN6Dy55gGVt362KebyGZYf8RgcHy9U+BvzqfLA5QQpnVl+KARJ8FLkhV8mOgKu0qv65gQGa
X-Proofpoint-ORIG-GUID: -0XRXoFQinZMZTZMB261BftrJu0_z_wz
X-Proofpoint-GUID: -0XRXoFQinZMZTZMB261BftrJu0_z_wz
X-Authority-Analysis: v=2.4 cv=A8BsP7WG c=1 sm=1 tr=0 ts=685a9fd0 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=Xl6Gf3kKTQkptmOWZCMA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_05,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxlogscore=729 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240108

On 6/24/25 4:13 AM, Dmitry Baryshkov wrote:
> Some of QSEECOM implementations might need additional quirks (e.g. some
> of the platforms don't (yet) support read-write UEFI variables access).
> Pass the quirks to the QSEECOM driver and down to individual app
> drivers.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

