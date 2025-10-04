Return-Path: <devicetree+bounces-223613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 467BBBB89EB
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 08:18:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7777A4A3756
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 06:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DC6B42AA9;
	Sat,  4 Oct 2025 06:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aaUBB99v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1EB71DF970
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 06:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759558712; cv=none; b=RZm2UCdyWg/DPj/UAt6XyoWEAcV0Xq32gfMUzSLQyT6UN/K+7xLn4PLMxwnWE60x7fJzE1psJ8CiEVuRHAQj+rp6zQMlgnu6y/8d79PBPgFJWHxRrxDxgvUCIQUxIHDyMZbUhAJRuk0t5Ct8paKMxzDX5MjfXDyYz9h6/sniS60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759558712; c=relaxed/simple;
	bh=Xb7GbdUMgeFO6hGVfbM8PH1E1ogGhUzLWkc4jXBM0Yk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZhTM3ZMkvKcxYDN54jCTAzaQInyFUgcuAR8Bc1QbPSvk0lk/qXrsp0zJJmdMCvIeN/WpYSeJPVyE/jwdUAS6okfCr6J3rn0H+jniZosifxDP2PWrUCu6RRVjALPSNAf8CkNMrrZ9gAxpX31ZNrrt/Jr7fyCDI+dOii2E/p6FVRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aaUBB99v; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5943PYBH024732
	for <devicetree@vger.kernel.org>; Sat, 4 Oct 2025 06:18:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tREHhzBNqaNszskLCqYldCZ0
	jlzI/Dwijuz01+c/GDg=; b=aaUBB99v3DLAUpvqqGdBj9Me9Nnweq28bOfRNTBU
	TmjVXBCeiP5z1vUs2/yZNjXSXXa4PEv9P7QBrcyxba4ef2KcT46Bxo1ge09Ni8ms
	OiP8im9zc6swVzUcRS/Lg/Y5RpRJH3yEo+nJ1ikmrghWzNzve7WLjGaiMbqsgpc4
	H9dfjdCSueIR8lFTmrBm4Pr1wH2bPUVbBGpcgCFu1UVUBk6kMNIGTeZ0MGojfPzy
	LoIS5IBmiaXh3gMIo8KouP/LKXvz7Id3retugloLEllY8pj+nyqdV3CtvK+W1py2
	4WqAA8j7fXXi5iAQs8+SmV7i/vGp1AWZicG7pp/zcXGhnA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu08jt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 04 Oct 2025 06:18:28 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e576157d54so40947401cf.1
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 23:18:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759558708; x=1760163508;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tREHhzBNqaNszskLCqYldCZ0jlzI/Dwijuz01+c/GDg=;
        b=F+HD26vbqoJF1/V35CooOsQwBkHhD3tgtd7uUPpOrouCNBk0FWEt0gV/McCEHd5MCY
         Re+1wNdXrtJOCpw7Hr8Xd/Ruy5+wMQr0oK6oM5cJU7LnXnPM+6LplvySl0L6UKwLDjMZ
         My/DVLX2A758UAJrcrczFX3OYWH5pBKTxsr3LCUoLpeMluPERXMfTwR1SPWQtNZ6Gp0g
         2raHoI1T0RRyscxoZAQMDm4UtqP+X2ixDBGO16NlBLp30IOSmEv9eh0tAD6wmXriXhel
         wt1G6YyzfwQhJq0xIkcb1xuEwPWD0VBiL4HxdX0bSehq8xMwKTRg0fMkOjLWjaj8SH42
         xxJg==
X-Forwarded-Encrypted: i=1; AJvYcCVFvJISH0az/jWIvzWJ5LE+l/Gh7JyWIOj557+1CRgYr/vraoSUV726pPdgBnjgqieqDK/YjXwyq9Bo@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6pmvFiA3phKfA1Qt5d6RJTDSzZW6s0OifaiF64bgi6s+Rypwj
	0Gmw2w+1Upx1efyodpmLlVsaw9gdTGwwSViwC0R+FrpL5uu9JPj68ZxfHg63J+EQNEUaa2FoZvx
	bak1NQ3UR6M8NPNrHRwDo+wictqmonrkOGpUeiqYqulPPiCX5Cc83zqsD3qV26LdW4oQq5Xcz
X-Gm-Gg: ASbGncuEiARn0e2xTWpsW5o8nC10fwHuFXYmooflRZi+B6AVanDFEmP4AETWdFhzlYf
	4Nh2052QgkHaHfNzL4d7I0S5JGyJPKhymV2HFN197K/Tw41/HSj21r/i/mz0g7gtAkqoMwdsws9
	MxXgm177QnV9BAdGayQdawXIIeDPhXU8iZTokJtzgUy1j769f9FHf8kRX+VseHpRnH6vSas0oMk
	ejxKNJCGdQiJ7i9ROVXEAflWGZt6Za8HCSn4+We8Eq8Fpgco83g9VB3kfxB6U4O0sAWN89XdYYr
	1xNcJIN7fVdOIfAW0K7L0w++m4n1Qb2PSu4Qc5jl/9pN80l2L6Lc7b4D1OViVEMzE6e4H97Rk9w
	0KKepMvElraZDgQe5bTdQUXxVh4AD2jcr3r0WK2MJQ/WG0duBRHwXC85q6w==
X-Received: by 2002:a05:622a:4d07:b0:4b7:9b53:4931 with SMTP id d75a77b69052e-4e576ab85e9mr66481061cf.40.1759558707848;
        Fri, 03 Oct 2025 23:18:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEB/luGgFeuFq2gc8pMMZHls+pk4ugbASEUaLSkySS7at3hllWxZalz4bhSCVqzUh5bustxSg==
X-Received: by 2002:a05:622a:4d07:b0:4b7:9b53:4931 with SMTP id d75a77b69052e-4e576ab85e9mr66480941cf.40.1759558707438;
        Fri, 03 Oct 2025 23:18:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b011a9154sm2520945e87.115.2025.10.03.23.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 23:18:25 -0700 (PDT)
Date: Sat, 4 Oct 2025 09:18:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sm7325-nothing-spacewar: Use
 correct compatible for audiocc
Message-ID: <hnphyvnervdsivywj5x3hgyuy6lhtnls2k3djd4i3z6jid5yjt@y7nja2ga3cqo>
References: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
 <20250930-sc7280-dts-misc-v1-5-5a45923ef705@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-sc7280-dts-misc-v1-5-5a45923ef705@fairphone.com>
X-Proofpoint-ORIG-GUID: YjE9akvvRnRMuc48aRYX_Wj1EOvV9Vdv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX1Ipv1zcjjUy6
 v35LeZdNbiPaBWFOrY8qKplYFb6oTORviIshvHUKyxk6sVhHBPrw6oMRvDC7r6q9uqcveNCkl99
 KZZ/w7nimzs8a+WDtVijpqVqJYyK/KBv+AcC6aiXevFWj3a9HjpaoYydWy23q5UztWZU2ACgWxa
 dCSL5t+d1cDqndszDqfzM+vAJTP3et9m1F12ZgesaKhTZpJPhKHXs7VA1eav17nSfh5GcVvrqnS
 Sx737BhNsGd4auVMuUEeithLHOkRhoitSaM9Hr5VmlI+C+UsSvPiZRTCi0/KwDs4bPNCItDX9Wy
 lcyARxBZPKHO3hX8GyT4SqkWj4I54Vc8v/Ratof2esxuL2ZZhMfLIoTUOvtAOrshqIeFjyxdbrS
 30KqupVmgd74lCW4HgrSIOQHhEmZGA==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e0bc34 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=ZWl6vx9Q9smWLlo6MzwA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: YjE9akvvRnRMuc48aRYX_Wj1EOvV9Vdv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023

On Tue, Sep 30, 2025 at 03:57:05PM +0200, Luca Weiss wrote:
> Use the correct compatible for this phone with standard Qualcomm
> firmware and remove references to power-domains from a 'reserved' node.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

