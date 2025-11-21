Return-Path: <devicetree+bounces-241282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8D2C7BE40
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 23:43:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29A723A23A7
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 22:43:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CE3B1F09AD;
	Fri, 21 Nov 2025 22:43:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m46Y2Qbr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SJUK4jS1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13702777FC
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 22:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763765030; cv=none; b=oKS27+yWDNE7Ob9WnAFpuZwSJlHKd8CdUgFs2uZERTpd7MSceT4qTcHvPe3mAAPj0bav9dplPCVTEeXGP3LDQZRMN6DvauA/u6ts+iMk/nDLCP+F1T5oZenBCQC+9ON2AHrgYWEwBfNWRxoqVoIMtfqzAWP/VD/IwGUOSODIFdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763765030; c=relaxed/simple;
	bh=0aNJNS0+9KQQ6Z22y7ewAEBnmghzZQ8wQq8sFpKgD/o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TfIQduuZJAUiE8chgrq6w2kOS43fQekzaaFrypr4VcWS3PNBeBIr4Gi69zn2r/qgDgBKwq6RFCt9uRfXHQRdyc/gv3p/73L0Ek3L99VRMrBC1gN7KfueEQkMT/qyja2HTNE+VCDUE/2QsVKy82Mm2HpRnvgPyaMBvmGFrSdJDrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m46Y2Qbr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SJUK4jS1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALIGbZV4024803
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 22:43:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=v76zapgO5bIdRvR0frt2ZimH
	yBAaD+3/mGyYC/gIUcI=; b=m46Y2QbrJ9S6ciuMSC263Wgh5jLjOE4jsDsp4kr1
	DGhaykTSTwQh8QtppqlEHhZOkJveQl5Wom5eZuQOwfiO27ZHwIeWFfEe+uVeSyPa
	6RfKciiJNdMs8YzCo9VE2Ig3AIvgKX6cEaQpzcbukJwXynfyZo9U060LHRu67toL
	+yeFH2BBIagkLln4WSjf564C8nBwJ2WcUyUQ9rZYyiDOsMIiveDPyTNee8MRJSxo
	ppJuzPMNw2vn5Svb00Klo7xcDOPF4sJBuTmNjNauG4Ywx5MQUYbZHJkqYcFch+8m
	iNzVOUMcwP4X+WOqQbhgcQzwKF3j2374hEMKxJfzaOHgdw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajw7a0mah-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 22:43:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2f0be2cf0so945357385a.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763765027; x=1764369827; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=v76zapgO5bIdRvR0frt2ZimHyBAaD+3/mGyYC/gIUcI=;
        b=SJUK4jS1pcA+sYTFP+CmhN/raMBeTpbovoV8rXD1VYkz4C/heF51Dq3h0IpN4ZRvnq
         KBRegoKzDVJLOfI50p9VCESLTKoGVb5s+DePzrA3f4ZT3sCVCojOJU0gGcRmiPzirXeG
         19wFAh1yFSSZ7qADlCtoklT/XFxfBeqI5OaEsxgapDf7e0SJet0MI4ZekiDWBFBNYNMr
         HUvz9fq9RJUL5rcaIpQLjHm4c75oQ3vzrrm6YcofP2bNNE6MFYCs1iTVqaFzz++AfCGs
         Ffje0x+ViBynZUn8mOadcEt+fQhvfxoWeQXZWfTf/GwyyodZouviABXqnjnflYT4BJDy
         daDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763765027; x=1764369827;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v76zapgO5bIdRvR0frt2ZimHyBAaD+3/mGyYC/gIUcI=;
        b=tubBzSf1Shr/U7J4GJ0ysIwFnHjEyPZzEpamfFdaTjdsZHHICezt7fDcUSYkoxswP2
         mfIIlHqCGrGhW9z7aIakCo1K7NFZXPCCCQVANdA4wV4X2HAJDmxM/sG63E1dWWXNcS1O
         iyPwyZcVzM8Hjo6wPu3dBDq1eOgKiMdUN60UyrdzMNFIPfKJ+3lcMphKts6/RuwPS0Ti
         mOS/U+VX4/60UOG39IaWzKLn7MCOh3buJKuXkUA1Bm+pWSdhU7gafo6ZljspS4I4JVf9
         tgEiEkLR0ClGlohjRfGcfROFNG6xlW0rZJNSdKrE/MGiy4HNfNSbsM85iggTHdh+WUly
         kqrw==
X-Forwarded-Encrypted: i=1; AJvYcCXK3FiuBXHbButscXaChG4ncJFOil4xy9guoMPnrOfjk+e/87rgxXUGG4T+mqHAorA4ux+LnotAA7kC@vger.kernel.org
X-Gm-Message-State: AOJu0YwbtGRKm1ly9Ei2rCUbT7HdoaOis9EhYeHOK9O5ZlnFuh8I9HIS
	B/9dYZiuhSFxsxytE20dh3+AlxoJr/vxm5FSmvAA5nCN0FXPFhhRou3pWTQ7nof2OhKMq75OYVC
	Pk9rzc8XkWOIKtsAepr2pjpwwMHcRCYqjbqizdnmMr/9lb4odvVI4g/BXJ2ieA67k
X-Gm-Gg: ASbGncvlsKG7TfvHgjwfrJ2DNx0RX+mXtRmrM56z9sIg0mSEi9aRxXuY7L/OFUTxKe1
	gbRqSm4/FwdkcyDZig8C1PEoClPncRxw+aBTTLg/EFWO0CtvQQ31mCyPok4vg/Cy+bfKjkdI970
	W1GbIjJenLUvCn0CtFy5/ob2le3lzwYf8sZ1w+X/o2t4bD/Zoa5wpUY5Y2ozHhxraamYa1oXTE6
	KOhrU44UZWfXMOuZemWgUVL2/8XtiYytOlNu0TO+JgGFqrgdn2U+QOwLDJYpU3COqgVjWRzHK1R
	h8jSLjy+W1JJqoobAvIDkjjb0F6C37WYV0NvfLgKRfHyZnhGebcFw4XvwsoJ8WmjCs5hxjxADcG
	1waMakqETBu5pj1drOz6lFX0rom/tXxd71fHBO2uhWgN0l9gKJ4n7qwCxJl2HfyCd5tbbhpk+qO
	avstE29VgM/l9Y2u7byvMSflY=
X-Received: by 2002:a05:620a:28d3:b0:8b2:e986:2704 with SMTP id af79cd13be357-8b33d1e2c9amr478727685a.6.1763765026902;
        Fri, 21 Nov 2025 14:43:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEhShxarZPKNko07L672VvYM6E4Q/cCtGTF/pngqK7T7sU7mSFoE06aEOm6E+dFR58dPWuV/w==
X-Received: by 2002:a05:620a:28d3:b0:8b2:e986:2704 with SMTP id af79cd13be357-8b33d1e2c9amr478724085a.6.1763765026466;
        Fri, 21 Nov 2025 14:43:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbc5964sm1929746e87.70.2025.11.21.14.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 14:43:44 -0800 (PST)
Date: Sat, 22 Nov 2025 00:43:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
Message-ID: <ryaybhj2in3p5bdkbkm4alvxj2dumb6eah4wpru3xeffuabh3n@m5k6ivvmvkus>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-5-9f4d4c87f51d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251122-qcs615-spin-2-v3-5-9f4d4c87f51d@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDE3NCBTYWx0ZWRfXzuFrt1zDNDHw
 xP/Z+UA8hzhNE370xOyMI2Gmazz52wHl8CIT571ZkM/f309edVxbsCiwQ/XDIAK1PXDMXbbge97
 XeI4vfNIcMTutJGdc5q5UnJLS/kDPvjHnzln1d09wJbll7CJShCvI/JpQiEgCNUMECnviOhGCxk
 lVlNo6hFf6Y3wi4Oh2Id+ZbO9czm28POjuR/k41LjwHpeTLceBLNGWM9+G1r81jyjGH+H4rKTOP
 XpcWSDJwD7NS9yQCl/nNT2rUSxpjIaGXbtdU1RBsi2Lt2HL1JVxlcBPhri2cAQzxtvSkQ3MXNzB
 ihrfxToMYMnJq0uLrhO+fg1KKuxOdM7WzcVPfyzRwZixtPp6o7zk1syW9ZZdmPCUOHF/L3nxKPk
 7hzzwIErFmiqbwhc1M4g/V/BHdoQHw==
X-Authority-Analysis: v=2.4 cv=QOhlhwLL c=1 sm=1 tr=0 ts=6920eb23 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=8h3n1EBGBd86Ebf8828A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: LUlyR1to75QahgdKygDbkuFj2V5mp4LP
X-Proofpoint-ORIG-GUID: LUlyR1to75QahgdKygDbkuFj2V5mp4LP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_07,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210174

On Sat, Nov 22, 2025 at 03:22:19AM +0530, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add gpu and rgmu nodes for qcs615 chipset.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 116 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 116 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

