Return-Path: <devicetree+bounces-183533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC04AD0FB5
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 22:19:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BB93188E342
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 20:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21F751EEA31;
	Sat,  7 Jun 2025 20:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c+ICdV7y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD8051C9DE5
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 20:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749327555; cv=none; b=IcK/tNucP7ncl1URzT8ZA5/pBJp9SGtrEvCmQCdWphW+SV3XZUHfYFchOuboDfHRqGsoJB3dG0gGT8ytNlxoqDShDtCqDu0r5HcAT0imib2wqXmffwWSSKoJimWAI+IwLf3G9lOWwuvwyj6L2I/IrhEOo02HAQFCdFmIzA//QNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749327555; c=relaxed/simple;
	bh=LqaiD3h73Pusyxp613jVddK06xmzdmcXJ+BxzbrwAAM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ikYfjaW7log1Gq78jxavvDsRITqFhVWitFSRxfhKxN8NnQL0BhFgCKkEG+OtVuDH4IdzpdiBMT19dvMnWDvb0Nj+Ae4wxCC4qjgEMpRWUz+b8kE5vMvFuhKYiMAP6v0P+EhkR1m/1HjTmcG0MjVzVu71kDTGcMdFBKFR7WlW7vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c+ICdV7y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 557Jt5Rr010759
	for <devicetree@vger.kernel.org>; Sat, 7 Jun 2025 20:19:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+LZCE2lVP4Etx3mj3qZLnJKJ
	eAE2MEJSQmr2c9HqiBU=; b=c+ICdV7yh6lsdtbj/364JpFL8Ly3RcVUVErFbsPD
	hfBKc5I5XvX9XctKDmAnL+BIklvI8WJgPojzot91KDYdMhZyYWkqMdvkYbJ1MxW0
	VKSo/p+VUoBhvgW0np7pM1glaGEAKpmU6oMdmKSVWuKV4/EOIfo3qXBZalaByiLr
	jDmVo15YqOZdISVJSii+y4k6HS1EImIvsXNg31akJH91WyrWYp36hQhB04yeyFTE
	HspwzeIEfAJjTvUvN7JMZiL9qIm1FPLL5Twa6u6TBBIzFk4negcEnM+Eq8gR8x4E
	dTrZ86YtU0r+ozKxqtNuV/NZdrG3+pKFViDxsMNyk/So6Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ccv13r3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 20:19:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d22790afd2so360838685a.2
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 13:19:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749327551; x=1749932351;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+LZCE2lVP4Etx3mj3qZLnJKJeAE2MEJSQmr2c9HqiBU=;
        b=TRP8gPwilBvz/x99mRzo1J3cmaNHmtlQqONC9oJ7R2Maz9CuItN223odT9OMWBahVF
         fVFOTn/X2eY1fUxpi3tTHFzohwEX15MN/s9HdNZaO5oR3xYJiKWNaFEg5YL48wOAQwHU
         X9G1aiUkn9w51R8Z20iFxk9KD8f5uZClPGU+hwa1+7bzFgVi4BLAEYjNeW7ZMOg7BESK
         TkqVnBI6x7p6X/vsoH3Fy/U9rcCxxrA0n+e6C+e7+dKgVCowT56VGbymvLsasLEGb+3p
         yOFjsP9Uuh1tcn569bGTeesJgsMDIhKabmq42vk6HWH+4TAPGYQSjkexjL/emcakcJfU
         ZL/w==
X-Forwarded-Encrypted: i=1; AJvYcCXe7VyqZkD6DIQTPivVEdDsqnIlez1vhDBDGf8f1UZLFUIElRT3KOAOwfU60LtcLAQoU+Cz6GqE2uTv@vger.kernel.org
X-Gm-Message-State: AOJu0YyY8bBGw1ODPuWU05VQfUQMa9XHYSqVD9p1SstIjYbmhgD8yFsE
	5ueT0OqL5X+QkTCERVy8N7UiE4ehJKVqNWP3vIh6lgkDg4r+kV0nsVyWuuhCp7a0RGhhMWUvOUS
	nNJJ7s5ueKjb4CQkikjjS0APKRygIKpOJC8zcu+kl+w2phCONd2fpBVqWsLLnqIJN
X-Gm-Gg: ASbGncv0Z+9FRR0qpuTX5UjhpePPtaQI5InruxBf92iyDLdDVDc66r59TAwV05ftBMA
	l0bTjYPOill/H7fUTx2ns5UPUY7b/+H4LQPjVpNHbQGVdR5u5qtmP1v7lq9Xsq11YaDHCwgOeix
	dQY9vxWb+/2yVAQeIO0baY/qQycjqU9VmR6QFs4xL2c2wQJ8PpaJ7YghbwG+h8E7bUs/VYl6iJH
	QB5Hcfh4U3t5OsIuxFXOCt4Ii0zzXrqQHBV3b8DngzdeU52Uvo6o7MJ/kE8yzygi9+vujtMq7b+
	4Kg28Lkq0bx85tSbzm/blxtnDH0HoGpjclYizBpBooZ3zFTBgCOfgoT/d13AwB0oKsffv4Ajm5H
	nIx5rzhp2UQ==
X-Received: by 2002:a05:620a:1787:b0:7c5:47c6:b886 with SMTP id af79cd13be357-7d2298ec4bbmr1259268185a.43.1749327551592;
        Sat, 07 Jun 2025 13:19:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+d6uXzqI+QKh9+yYdZeeNWVpfa+xj5aUq7v0Dfdn1I02Yq8fqqA/F3CQ3tC5opeAiWOy/Vw==
X-Received: by 2002:a05:620a:1787:b0:7c5:47c6:b886 with SMTP id af79cd13be357-7d2298ec4bbmr1259265985a.43.1749327551269;
        Sat, 07 Jun 2025 13:19:11 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32ae1b351d0sm5691611fa.41.2025.06.07.13.19.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jun 2025 13:19:10 -0700 (PDT)
Date: Sat, 7 Jun 2025 23:19:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: wctrl@proton.me
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rudraksha Gupta <guptarud@gmail.com>
Subject: Re: [PATCH] ARM: dts: qcom: msm8960: use macros for interrupts
Message-ID: <v5jlfknzt2zcadnkokfea6amc4gtowg4intmofdtaj2gzajfo3@4ygrclrtselh>
References: <20250606-msm8960-irq-macros-v1-1-03e573ba26d6@proton.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250606-msm8960-irq-macros-v1-1-03e573ba26d6@proton.me>
X-Proofpoint-ORIG-GUID: JuMKLwzuQ3FijhscFRlir56dKDYPidNO
X-Authority-Analysis: v=2.4 cv=TsLmhCXh c=1 sm=1 tr=0 ts=68449ec0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=MzN8uu8svZ0T6_zCNRoA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: JuMKLwzuQ3FijhscFRlir56dKDYPidNO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA3MDE0OCBTYWx0ZWRfX+CAmhnD30b3c
 NAmQEZ1RzCA3jn5Um3ny5yjnrM7PB0bYam7fX9XgWG2ZNDmSNk6SLUUKZTlP4ytrfEgi/iZrMR9
 mq2KhEE8zERtRhXIwY0PGluCIQ0JNRFwTyXzH5ZGtkpGm/+mPdH9HgZRy7IUBghYxfR8yVC0vI2
 K/Az5tnsGi9ZdWCPcqmuMI3t3/VLzPAOEb4RkGb3aMmVDNcworH4SWDQV/bHECBCRzmXdRej4nq
 ij2N+SLSCS0iJ25T/7wwTp2MehQX1Mg/z1p09j5a3deWqbj6CrcqBk7EhpRk4Sha/HKuJae2X9V
 03tm/z54/06VmAGVXheOu2RrjDRUu9mSsRMKtOrF4Zol777fUWMt6MriGDJVwmLFJBrsqaRsGMi
 ZFtP52AFNwSwn+uCr4DAmauG/qJ3tVeRM5MrAW7EFTxTgUgj0i0WWtCuRmbHH5ryWCRDbMWt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-07_09,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 mlxlogscore=532 impostorscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 clxscore=1015 mlxscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506070148

On Fri, Jun 06, 2025 at 02:03:51PM +0300, Max Shevchenko via B4 Relay wrote:
> From: Max Shevchenko <wctrl@proton.me>
> 
> Replace the raw values with macros. No changes to the output
> 
> Tested-by: Rudraksha Gupta <guptarud@gmail.com>
> Signed-off-by: Max Shevchenko <wctrl@proton.me>
> ---
> Replace the raw values with macros. No changes to the output
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

