Return-Path: <devicetree+bounces-250286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99767CE818E
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 21:00:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53A9B30111B0
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 20:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD4A221ABC1;
	Mon, 29 Dec 2025 20:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pIpchFXZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UyXl0Fef"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1565A23D7CD
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 20:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767038410; cv=none; b=lf8Z8YCb/SjvUqaDeB4I1cUQ3dPucV9zikHzrk4cenv6v2ray2wqTosJWOHxd27F2z/LL/faCEgWpMlecSv5Lf54fd17TGLkVl9pZ+1MDMJmgUBQXTG3IEq+t+6oCg19ZkaTYicF02OF0ohsh6uLDvuzBVzUJLTbyUS7ZY14bd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767038410; c=relaxed/simple;
	bh=CvF6FYFxOxSnae9woZ5z7Wwkhxha2ElUJGKqKUxsqQQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K3LNSYH8PY1pzx30BpPfYiaDNR8R5pRvq+p4uYIrWJM5CxV7p0V/AJTkukAifAVgodHcAxeHOFS1jYyU7zcJzCWcmc30EniG/6Wiu+fqsrvbkZ0lVohbJEVlOM3nV9WrI6ZeNOQ1EC3rnmERGr6lwPP+P1EMHiinSYB8vyXBvEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pIpchFXZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UyXl0Fef; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTJqjAZ2284829
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 20:00:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=q2ZUs2LDcuQkOS0+JMHMC4JM
	Gpn/Yfg5MP7jihxwB4Q=; b=pIpchFXZl2TXDArwKD9ElwvaDqwe+dHveI1uYn90
	wYx1JJeSiKT+eXFlxrdblKOCrNHhCkfj8R7LT/6n3bGNC/1vbGqSXZOm4shp97rC
	5S3S/nXsdxCGW1FqilJGL7y6hiSr3LxEsTx6XSq0z9VhQrz8EOWUmB7R7jB1XQar
	iWQepQWnQGAiGjvKYkVocvdJQj4M3CutfgGmC4e/ZZthGQn/CYG/kmvPS/P4ss7Y
	SBeZkkUJGnoIVjzzY8LQ03BItx3MLq8XR2pcjwqWstvxRlvL5vjXGZ56TpVsQFok
	K46QgeUUNlRjKJWTcvvHo3vJ9VsfNpShYVbkU45FCrkjNA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc06gr0d5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 20:00:08 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1f42515ffso238854111cf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:00:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767038407; x=1767643207; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q2ZUs2LDcuQkOS0+JMHMC4JMGpn/Yfg5MP7jihxwB4Q=;
        b=UyXl0FefspD0XCinAct+jK/eBdqP82VKhu5eHGA13vmj9UyPn39DKRRTV/6H3+u9rR
         Uw4StuLjSjWQxdhAxDERqh07bHVipfvsc/Ubj+osVAcBuxlzUiJ0kWYoStgCgTMdunZg
         +TaY0w5No7fHuEYn+gKm4rPPxGRrJeWBMSL/N+Sf+/1+XfKd79PzgIcNKEiVi4us8hoW
         R1Jr8jzySCk41DSUgWAOh/MHwfdke/yy+fXnUb2fD6FAT2xOARGLZ67A5tJMg91GifnW
         R52E6Me0iPXbJzKjqx0YghyK6MDayyAjcLLK2aHnQAujNt/vClTzkMOeCSES1kXtiyti
         lZXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767038407; x=1767643207;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q2ZUs2LDcuQkOS0+JMHMC4JMGpn/Yfg5MP7jihxwB4Q=;
        b=fSVuvc79A2FVejkQykV99dvbUKJpnDm9qIZ6C3p+HBthSGCyGrUmPpOzz5oA4XOrg/
         PYZRqsExJYSexJv07/3XptivUIY1FDQV9Yor+6GI+v/iu3sdbX2cAf7NcH/3KxueGUTP
         Ul4G3EBxsq4tc8YNb1mpMDC3ZZNrEqmPjSqXyFNz3eyRq0ivWXumRQV+G6hzI473Ilx9
         2CoAZBNuB+C2ezq/Es2vqcpajls01/jT+72H7plCPp47pXP05mYII/XpgkmyfJfsFOrH
         JF5Z2ZGzAWV59r9Kfll0FvnyYn3WAqqH4CrRWSjUI0RDZu0ucBqsorXAdY4OqEbtpiMH
         TLNg==
X-Forwarded-Encrypted: i=1; AJvYcCWD1jTfqnY7ZbhcgYpZtfI8T0bSpKG3CYVq8mMuqvk48NbKlqOIVJ5EfOnBLdXtivNWzurkyHVc/5Wh@vger.kernel.org
X-Gm-Message-State: AOJu0YwcATklz6YxFaN2Z8LWTsN8DnH1wWT8L1ExNqDylcoOvYUKYkei
	EgylSmTUzDjwyBtfmzCQmADrRltb9i35ujonB+4bOZIOAwA8gP7z9ZP1o06kb7r+qRlQ/wHcU8g
	3IxnV68LCawEyuy5BQYdLJVf2pWmHpLIXOTxa3SmYYy84OatFjsFrCa2MqXV7xh/o
X-Gm-Gg: AY/fxX5pt4UvB2T3VNJkIyKyCWdC2N0uI87nJGFDEF0N6koLEXdg/EIn1fTG6u9VMcY
	sEAZeVY86ciCxaXpyvSZrj1IA8GY/gne1fIZyGGuALhifuO/alwzcyhmLMqoh9DJJJaQnB4ABl7
	jvGuGF9vV0Stdgnf1WxyM+Kpe6U3HAx/XuSpR2VtFZCUwGFyZsvbA7Cpb7qRbKjPobx8zue36kf
	tsthPICVDQsKOwNr40hyfbUbz1WAqzkaFJJTDZLOeaMTV9T4j8ViJsYEAivUmZDa7DbFNGZ4BEJ
	nU9t1uv+45iiMzT5GZKmM8LN0jzUB4uTxX9PkTcKD5wy1gRyro1AQM5Mk0YODhhA5ea3BYxauxh
	1SqzZPYvZPJRjq2wr1UNmoadGDiE/v+hmcW2Ir/blUl2rI4BT/I0SZJW8b4HeSFS9f29hK26oGA
	Wb6ZDkyVoJtIMWiWUx0ZanldE=
X-Received: by 2002:a05:622a:5c05:b0:4f0:153a:65ec with SMTP id d75a77b69052e-4f4abd78ea0mr462045661cf.40.1767038406908;
        Mon, 29 Dec 2025 12:00:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGoszHrq5XQmQjknkTLfMXRDSTUcF5lISg7AuBpGEq3McP5PxEJZV9fRVpBSp1DUK2MHQzwJQ==
X-Received: by 2002:a05:622a:5c05:b0:4f0:153a:65ec with SMTP id d75a77b69052e-4f4abd78ea0mr462045021cf.40.1767038406285;
        Mon, 29 Dec 2025 12:00:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1861ffdbsm9461738e87.76.2025.12.29.12.00.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 12:00:04 -0800 (PST)
Date: Mon, 29 Dec 2025 22:00:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sumit Garg <sumit.garg@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, akhilpo@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com, dikshita.agarwal@oss.qualcomm.com,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        linux-kernel@vger.kernel.org, Sumit Garg <sumit.garg@oss.qualcomm.com>,
        Prakash Gupta <guptap@qti.qualcomm.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: agatti: Fix IOMMU DT properties
Message-ID: <bylruidduy2u4lsqlhzmohahgkm633hijffi3s2wt5ojeaotk3@awulzz2qdg7h>
References: <20251229071258.456254-1-sumit.garg@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251229071258.456254-1-sumit.garg@kernel.org>
X-Proofpoint-ORIG-GUID: HJtHEfXVAA6nhTp32QXRkMy_3i70RWKn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDE4MiBTYWx0ZWRfXzaVq1b4FsbWo
 lGfvcmvKqqWxPjUrE/q9O+FaiZOyA/r85HYLYxielIDCFcXhRQyaT6rkgAghUxr976fBFOoD6WT
 Kz7O/sCgXMMEyOhhyLALj9ZgDVCiOXTjEOAQjI7oE0U7n52UBBLVfh30kzxR4GmxxYZqGjFyAyr
 iTvSTWmtx00nv2qjh4+ACsWD22vlBp6hEeBeOcyLNrzmt3nMxOgbXeMCkk/RxIyQ3d1+/EyCx0U
 VJkw4IQpeBnu2DnKRfG3m1Z96worBDx8wuLq8xILHzbAJ/3c70R0f/cIP22dFUOeXRTas9Gr1rV
 j/W7azEXGiJNfzCNQ/tp0bYgbjlHctn44prMuH1lxuy9gYmevCOhN7JA3GVlUAObZqGS2eZIqan
 U/pUC7rcUpQeKiibfSWFUccSVM1H0Gd2LLy5JfHzZlb27M5kxtkUmh7aMiNJs2XfCe1HMLAqnbD
 d7H0re+obj2lfxUO2dA==
X-Authority-Analysis: v=2.4 cv=A45h/qWG c=1 sm=1 tr=0 ts=6952ddc8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ENeXTWk84ZaAIG5uhvUA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: HJtHEfXVAA6nhTp32QXRkMy_3i70RWKn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_06,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 bulkscore=0 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512290182

On Mon, Dec 29, 2025 at 12:42:57PM +0530, Sumit Garg wrote:
> From: Sumit Garg <sumit.garg@oss.qualcomm.com>
> 
> Fix IOMMU DT propeties for GPU, display and video peripherals via
> dropping SMMU stream IDs which relates to secure context bank.
> 
> This problem only surfaced when the Gunyah based firmware stack is
> ported on Agatti replacing the legacy QHEE based firmware stack. Assigning
> Linux kernel (HLOS) VMID to secure context bank stream IDs is treated
> as a fault by Gunyah hypervisor which were previously ignored by QHEE
> hypervisor.

We are porting the underlaying layer. Can we make it to behave in a way
similar to the _existing_ software? If DT was a part of the firmware, it
would have been fine to perform such updates. But as it is not, we
really should try not to break the interface boundary between firmware
and the kernel.

I'm fine with the change, but I think we should make sure that Gunyah
doesn't break existing device trees.

> 
> The DT changes should be backwards compatible with legacy QHEE based
> firmware stack too.
> 
> Suggested-by: Prakash Gupta <guptap@qti.qualcomm.com>
> Signed-off-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/agatti.dtsi | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 

-- 
With best wishes
Dmitry

