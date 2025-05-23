Return-Path: <devicetree+bounces-179819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B29A5AC1CA3
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 07:49:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C85005039BD
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 05:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CBBD225A3B;
	Fri, 23 May 2025 05:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YEh1cDc5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A8A318E02A
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 05:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747979383; cv=none; b=BBh+fuA/fXsnCjWRohI168vCH21/5sz/GKpTPrLQjDYmyFcFQmnsxTSX3AmPCQDqcn7f2TSsD8lC2JcaYkV5O2qN35CeAy+qOt5XczHv9UrAofGAOWWCpzCwzKOuV3lvzWKcJ63GJolrf3XeK1c7EEgaCQuGgHxZtw7NwGr61F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747979383; c=relaxed/simple;
	bh=nplSLQmz/ppJRQtW5aFIEsesjnSk93/F8zhY86zPftU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uCa6Mu7YmdDMO/4tdIlYYOy5JjAfRnwqw1axIuiLvkDow8sARqc4bhLxTRvXnnOL7w57VJQaD602zbdUDhrMlVJ7imrj/zuUEHMdCQ0HX385mV0cqsrfmgX5rhVQkjV9QjAyMfxhUc2W643sHGv5Gfq8mPxKRokuc8kqnnM5dlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YEh1cDc5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54N4GI1B029159
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 05:49:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7SfGjSBw5GAu4E99myfFk4Hd
	Ng8QxEWTCMYdPfNypkY=; b=YEh1cDc5WzJiOCJ4QTIV03KG3J/qu/exi19e5nCs
	LD/U4O4Jx59Ol8+Ny2GkDLQM5qrI3o2MEyMMNQWeseHn3NdDetTMrzQIosF0N17G
	fj3j6RnyUDf45LHulkpqhOYl+M79sTfMOKUHg3xtvzkP1f/TcuEhcdNR54NMXmIl
	OvvzzWFqdH/3ViRwKH3UPYVmAQ4br+vCoXKz1yxxgBe6lGm7kpg0a/6HniGn4QLd
	oK+dx7hFtIiLLWgfMicewDmcLlc8zURPZ5HQHWAu2sDiOqjWF77RcWNPNITAD3CS
	ScQtRzuKpHJC2G/PMr0QJ5nFYxUqD2a+c421iy03efoWiw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf48uex-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 05:49:39 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8d448a7f3so96602416d6.3
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 22:49:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747979378; x=1748584178;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7SfGjSBw5GAu4E99myfFk4HdNg8QxEWTCMYdPfNypkY=;
        b=Yrs1FNk6Z0c3ED6sfZXnzX+DESinu9absdZsySAjJ0avxbfhP8sBkucr74zZF89JvD
         2e/t++PJbbnpUj+7CDU3E3nhND/0n9tced13igb/9UXAcJ3cRPK+AFupWqlyfJ5YR+9o
         OuI6JELqFc7TGqEo/RaTiVDXTgv04CvQi66buzQfBqBGJr1pa7iw0hX/M4YcGr9KvdfB
         NFI+gHlsUm+vLREfKaYpcVDKPczcTCfULQVvlz4IOaTRtWz8YzKWi/401LYWdFmc80K5
         VhB4um/HTtcjtY01ofmFJ+1x89+mSxHlzjjiXL9ML/qmdw/8jKP2NOPUgfNCnTKQhisX
         9How==
X-Forwarded-Encrypted: i=1; AJvYcCUcyR3gdfqa1rh2WFNXJgJj0ybvI1tCbgjoiAb4RjmRq5sssk88sLBDbYJBOKAlAqUf/akeGay6Cpsl@vger.kernel.org
X-Gm-Message-State: AOJu0YxUEcq4hv+da4nbt189u7pj4osN7Fmzj+hbpcaTSoHDCbJPRAFx
	QkN1TN/RWTiyJGiQ/zs1eIKJi3P2EekQyGYlN4ywH7NLFey8VFEBHhcsnyx5G7ZuxOy2YYMTiDZ
	+izF/r6am40ZXCEcRKrKT5SY2/pQPOLXFK+MFnwz7UQwNLsuycAed6NxBMvgJRwqQ
X-Gm-Gg: ASbGncuhv+s+f48Tlx7J7npvgod0TKLZ/VtU7Dd4tVUg/eZXow2T0qQEG+5edKi43hJ
	pTv9oggBYgRyyeMhNJGXp1aR3mwUV2zFqLZoNdQYo/7oZhrQtVmvCGD2PuRGSQSyQwQGG2CKKZS
	5OAZmWEZ4mG9iEWb945P35T7pfjzxoE/6ScTNpun95YupEaDMxCl65cQl2RO7bK2uuTTuTLZFor
	i7wue7MAk8xUoQArM9LbRCd9VMa9TQ80dDtlMI+iAQvv42eFZYCDV9FnpbNSka6sq/8PL/L0KmM
	T4eL8E5KiKDeh1q7l8/XK4APO7/AaqMFMpEMyvMz4dLmShnHa4nwn1B8O3ZQYw6RT+zZDZWSIlc
	=
X-Received: by 2002:a05:6214:20ab:b0:6e6:591b:fa62 with SMTP id 6a1803df08f44-6f8b080f716mr430806386d6.5.1747979378370;
        Thu, 22 May 2025 22:49:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFheDJVlbefAnPn31NTy3OIuOBaiLApvyN7B8S1z3Qk02zHaxCAQYIRo2JyE3+NGM5OzGYdZA==
X-Received: by 2002:a05:6214:20ab:b0:6e6:591b:fa62 with SMTP id 6a1803df08f44-6f8b080f716mr430806236d6.5.1747979377959;
        Thu, 22 May 2025 22:49:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f2fbf4sm3722164e87.70.2025.05.22.22.49.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 22:49:35 -0700 (PDT)
Date: Fri, 23 May 2025 08:49:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Alex Elder <elder@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] net: ipa: Grab IMEM slice base/size from DTS
Message-ID: <pkimizoecvqzzioqyd333lrchjkjo6to5fnjezbgbazjsowg5h@5mzjthmzeijb>
References: <20250523-topic-ipa_imem-v1-0-b5d536291c7f@oss.qualcomm.com>
 <20250523-topic-ipa_imem-v1-3-b5d536291c7f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523-topic-ipa_imem-v1-3-b5d536291c7f@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDA1MSBTYWx0ZWRfX6fx0eQmogOS4
 hxT+a/c+VKtKbizcWTIYpjqFYnZDgr517K5B5C+gNDy8eTjneM9GTomwnlnMpEcqWp8wxDoZoHo
 0nSnIoA8imbToR1c7mQxGs2BKCi+yCnkYTQ7mzcxE1vWBKwqDB8OctIu+ycWCovw0NkcuxuKm/l
 BLpwb2mmx8/GWbAp3LRQvDXKR64uBuQyX623XdVnNJJioSh1g1BeLnMYFUN2G67/Lhb5m4qlq9m
 VSWUZ5MUJT9zCEJvtHfKksTfK5rkwZnR78kaWehX08KRGODGt0GdH50ug0HRZjQ49TiU3BbUrLL
 TOqtEyPpa3GeyL2CZJJ08dYRHauHsUy3nnCCXTRyUumZi27DPvxLgvynda9l73Zxrez24KMqSTN
 Ku1kvF33nLfcz7LDG71zeleUVENjV6VfFosh16MwPy4Nbm44AwYWoSUv1hPazDm9OWMIUrUV
X-Proofpoint-GUID: bTw9FI2IF5McW8bb13UseYC6n68AE-lX
X-Authority-Analysis: v=2.4 cv=Ws8rMcfv c=1 sm=1 tr=0 ts=68300c73 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=EkgrmPCljZciWarWCYgA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: bTw9FI2IF5McW8bb13UseYC6n68AE-lX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_02,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 mlxscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=712 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505230051

On Fri, May 23, 2025 at 01:08:34AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> This is a detail that differ per chip, and not per IPA version (and
> there are cases of the same IPA versions being implemented across very
> very very different SoCs).
> 
> This region isn't actually used by the driver, but we most definitely
> want to iommu-map it, so that IPA can poke at the data within.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/net/ipa/ipa_data.h |  3 +++
>  drivers/net/ipa/ipa_mem.c  | 18 ++++++++++++++++++
>  2 files changed, 21 insertions(+)
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

