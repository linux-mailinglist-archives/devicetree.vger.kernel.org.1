Return-Path: <devicetree+bounces-178574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DCFABC407
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 18:14:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CE551B63177
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 16:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6889F288C2A;
	Mon, 19 May 2025 16:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G6ILHzI/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B15288C17
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 16:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747670798; cv=none; b=tmdRO7Vhrimm8aqxvUoB/nSq2BhAx3JHnLxfvvbXD4hOM4OqlgL2vcLPDor/KY6B3kADTkardwRrm56X8jM+/cKNTS6veMXrI/bikBrfo/DKXjREZ7CGdN+mHlGrtdKCdklEEDhQ64nP9D0rjBwJnbKJhydVEZAkqkXSpWvoTJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747670798; c=relaxed/simple;
	bh=TluCJ+QE27SqsbEyuiqmlkaOj0JcS37taUo7hHpS8vA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=leBBdanE/avcphM4H2zCotbiEghAb29jzmmL6uG5UFFnXDHkDRroxB8Nq6d72ChteKrEUG/x33s/Kp4pyi18AtUTTAHs0oZcT1OVHY8WEwAcih2vCeSUfS50lcyEsyVtru+zF0iixZFzn5yprLe9RKpfUpYWegqByooDQhPWgJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G6ILHzI/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J9W3g4025924
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 16:06:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pCInV1QBCyzl4b6q6TN30j8i
	Ig3ET3mzjESHX804HKM=; b=G6ILHzI/FXwbRN4wESyPXLnJftX77rHjbEO/llOq
	6tzTNktXbKIRbmyhExsSWNa1kCDmQLitrNK2bwNOhPhxYtrqdBeQViGonsL1vipp
	ZmwOxHeOk2IZa5pmkCpOf3bduSfB2uwCAsmP6VapJQV78jKcFBHmwxvYDRLZ2rvP
	Y4oUMhbD8rtzyJMlVp4PmwZeZeSbcKHLnOkhchfRMSFGTisemiBIxLTKGGLhFmz+
	ze5sNB9LnTJJw+vlW9UCJBW2DjWi6DqizyYg/CQNORc95BOni5p2NW7fkW+2TuZV
	d3ysm/dRaFVXCfLRV7v8J9EV3Y+eXvoNCsKsd++ztA7R6A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjkyn1eu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 16:06:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7cabd21579eso837965885a.3
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 09:06:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747670795; x=1748275595;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pCInV1QBCyzl4b6q6TN30j8iIg3ET3mzjESHX804HKM=;
        b=jaQDaCaxCHFe1HOFpf7EMaO69nmRN0rTP+uR2mo+UN7tF+MXAA8TqDby/ITXV62yP4
         RfNUQ81lh2HVs8TjOLOwqs9na1IQVj0ObbLwmgw7Tr4lzGcZlSsjAVS3p/wFJQ1o0kMy
         CTCfZa5ctjOYsGtovxy1FD+PabJiNsAjKss1wXAKKQ5k3GJSJVMGSgdL7MGWS5QzuYfH
         KXGvmZMKzhgvRSAGQod0YXDYmIZ/mNd3syoMCQMNfuTo8Y6VaMQPyyKB/IAaeDp55uVp
         4nnRiy2NBXbAlhkmO2RZl/8tDxL0o/X/FXk9VqLZ5O8Ml7FiaatN0OE9Agj10iBx279y
         oziA==
X-Forwarded-Encrypted: i=1; AJvYcCXZl0tn4PdU1dhfEB70yaBYllCLa8msEMw3iyC9Y+eD13r/NvVi+4ybsth/v1l7alpvTvt7mQXLkWwz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3O4JtzJ06F/ChT8mAeDx5UDkj3YxSpfubg/sncJV0YxYLZWga
	Dx2zZgOe1/kYN4fNTRcQhbf28DyUKyPHeBex+LboTRxh/eNJPZl9ZB7tNLM0KA2b2DkDjsNbbxm
	W0IE5lC7IJnjCy60Qd9hB17T/ipdgC0rC/Ge2xFVUui+HUgcabRPgQihvKut41mrF
X-Gm-Gg: ASbGnctd1yz2i/pEdQNJyT7mZ6nb37sIX5W87wRwuJdbQiFAI4lwkUTagG/SGqGTocd
	l0qF/MModoUaZXl+Llj+kDgvj6gvWrfuWiTODjrEM9VEjII/NIRXe/NT6rJ/G9uTZK09lauDV3p
	dipRUa12TWz29Iby8ovaFlITAE75aVLfSG044NZEp/+kwsbo/aY5ATFv8H36WlwU5II7crn+16f
	ra41C5fmTq3oHAHq+u12anRWdpOXM6Ffw/HPpc4loFuD6yDV1U72RPObBxKCLK7+7Wuvzm/x6ex
	JJpIL6ktxbCzB42C5LY3x8tzhDDnNmA2UcRwz2RdFERPj5kaAdWi0tp1EgTTFzjWVETdRDsLqjk
	=
X-Received: by 2002:a05:620a:5e50:b0:7cd:5090:3319 with SMTP id af79cd13be357-7cd50903498mr1489185885a.50.1747670794623;
        Mon, 19 May 2025 09:06:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMFw5Roez60YZW75hF5ZwRt982I58W/G/fp9+fvjelzz4QBS+enmm/pZaPsaXJOzOWO1lQFA==
X-Received: by 2002:a05:620a:5e50:b0:7cd:5090:3319 with SMTP id af79cd13be357-7cd50903498mr1489180385a.50.1747670794160;
        Mon, 19 May 2025 09:06:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328085ce31dsm19233651fa.105.2025.05.19.09.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 09:06:33 -0700 (PDT)
Date: Mon, 19 May 2025 19:06:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <quic_jiezh@quicinc.com>
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: qcs8300: Add gpu and gmu nodes
Message-ID: <t5jk3gmv6gxy7fhr7nbj6wwnutylsgenhepae7im6xqn5udys6@65ysrfzjakhv>
References: <20250508-a623-gpu-support-v3-0-3cb31799d44e@quicinc.com>
 <20250508-a623-gpu-support-v3-2-3cb31799d44e@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250508-a623-gpu-support-v3-2-3cb31799d44e@quicinc.com>
X-Proofpoint-GUID: PEYFzhaT1IZKquxTKYcaOesx8eg3njL0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDE1MCBTYWx0ZWRfX9xJbaIegGLgq
 k3vOy8n+R/4tYnmm97j7xQ5Y5+UXL4ZdSAAFl20U1W8nHhDov39CGXVtY5SFBpQp7rtiGtz6j5L
 p6W7r3eBpMMzDxhbdrYJgThImLs8jEEmGQCfJBOus55A9BVHAqH+YFq0hYLWVd+RkJn6N6DHw3g
 mUuruIKNDeFUB0QGVqYyM+8QIe+eSBMPX3W3O8iTh59BPGulvcz8P52VIskYdyqKOyajssOQo7A
 OrxgLvXctAWMrWJOmvVe5jt4TCiBACZeTBWChSZx2VgdMzOUaOBahNWYThmnJldeyLRVWfGMwQH
 uJUSXwy+wSF77RGUf9L+YVrUPwI7tRrkq5Q6LDKB/fVh5T0RL5BTmvzjomZymohP9vh03aHPL4j
 4foSp3IA5nLg7nrr5YYZxQ2SePxkxfNBogwoFhRFryru0mfz3ByaZZArWhfpnQros6pUZrDw
X-Authority-Analysis: v=2.4 cv=H8Pbw/Yi c=1 sm=1 tr=0 ts=682b570c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=3Gb_2g71upWOQPDw1swA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: PEYFzhaT1IZKquxTKYcaOesx8eg3njL0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_06,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 mlxlogscore=638 adultscore=0
 phishscore=0 mlxscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190150

On Thu, May 08, 2025 at 09:49:20PM +0530, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add gpu and gmu nodes for qcs8300 chipset.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 91 +++++++++++++++++++++++++++++++++++
>  1 file changed, 91 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

