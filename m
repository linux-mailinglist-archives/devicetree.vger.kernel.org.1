Return-Path: <devicetree+bounces-179255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6A5ABF588
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 15:07:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D71F1BC1C90
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 13:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AF4E270567;
	Wed, 21 May 2025 13:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GcpFgHnx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E63268C79
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 13:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747832867; cv=none; b=nu5m31sXw6tMGTyYrVx1u/0wiMqDDQRmpRauyeG5yoT+M+bd1Uk+JWQI4qdAMLiBhzWnREqQLol4sah/YhRCU/XKy5Scbps0MpLfQzcMGjCiS7eWj5afN/J+q96mteM+w6DQHaVXp3iA12ClvfgFvAj+VZW1u5/t/A75q1wiOGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747832867; c=relaxed/simple;
	bh=2h5eOk+PaQWfro9Vv3yg0j/RpaNifxflPxmCSX2uz4M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sb7K7dpFfo/BalnrcLkKxsuXzxMnyL2QagostrGz1N8S9WEy7q3v6jj7v/A69k0RQ3E/kxP2hjbtOGHXkBNBaIlIJykyo6zOfH+NRjQxRAYJqtLAwgPQTn4Z51K57b4aJbTmAbu2zBHvXCspHUlFX6EaVj/ww/Fgl0HPoreFrzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GcpFgHnx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54L9XO4q029186
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 13:07:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uYODI0ZMM8S9a1zlWL7NJhRC
	dLxf6RZlwDt4Yz1bkk0=; b=GcpFgHnxSiB98S20oARs8LRm/+kkzMFsOSSpDBnK
	U2ROZCnZ4LVNA3UhTSEEPJ5Ub0IWVwIw3wIHP64Wg1m38TKR8qg8DsNFW7fovOR5
	nJaOtktTUfo0Rd3RyPoyIvJFEXsKVlWS7/kCVsG0//qXujtM0tjAMQn64bbz77jm
	mJrn33Fer5+/pafL1VnGjZIr+LMRGOJb/z+NdlwDyU3XZyPq2nz2N3LDEPWS1yol
	YA1dLPLVsw+AZzjrJQHbcWkiVHGOm2MFQJrO0P7OZNJd/mIVb7r9WY1OfQ8MqFwf
	q4fjHzMrMrKSE1G062aMCqSRbK9PEnRfvR5R5WXd9JKvuw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf432dw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 13:07:44 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-30ec5cc994eso3370195a91.2
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 06:07:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747832864; x=1748437664;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uYODI0ZMM8S9a1zlWL7NJhRCdLxf6RZlwDt4Yz1bkk0=;
        b=oggGU5d66IZDQDNU0X7fTy66iSAaxi+sR0RkTqPKyI5mb3+Cqp4hzqqJ6nZdNmLUko
         ohK1OFaut3wda4YSfR8GzjUy4ms+icL3gB06CNfvyvO4efg32dgCfQhld3gAaeA8q7WL
         1T4abL/bJDX2W0V0YS/eFVyDRcMwlyjz1NG0bxalOrUS0sBmH2EinKGWMaxatKaH+IAv
         b0gO3Okxcp/arkwCuT9FnjXk9oxuwP36cgDeJbkseAmOVM4V21LrUIO/7DHJTO4liWKV
         uAyVQg0RkjZH6KN280khOblXQwG5KzBxiZYyxknYxie5GMFizW0g4iCdTyRUf56JGjjY
         EsEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJNwjLTNO5xunRKaVr9Bl4Wa68fHN7zVNVQZLhSyhfjVl+XGLWN1ZQzu0b+XqHR3cDT68PXaRj/B3r@vger.kernel.org
X-Gm-Message-State: AOJu0YzdyHfeO++7hYWEODuA1IZRuLqmFIC8boV+qTWCUyhvtjU5YHMn
	2/lW9O4pSUjTxDeSFRRm1gKb+Sdawsg3y7AUJGWESb3jFwrMDGH/Bc29tv5+5eK+tZcqoTcTiba
	XDql1x6xLC0NLl4OTBIoJnQDX+B1UEXasBePaZrVsofWzT2eUErxVNOWwTjLGRcAB
X-Gm-Gg: ASbGncv/1MQUeMrvc/yqX297BkvgKBIdqSoGdMsRNV02t+i1my7U5/Hv2raaur+WMnt
	3fsWpfZEPxvXU0Xwr3nnaApK1oNpnXgCQi8z8gyVIwzVP2D3K5lSCqyossyCDG7tRjvE0WcR1t8
	zzJ5e858n/ZkeVH6ErokHHYzv3e1XzRtDg7HCmW2kASW5bm+PZ+T5Lc5I3pLgFi6LgiYJkfe8jG
	zBm5rTSWNJ0yO5MGsDNG6PDdLQjx2hCinee4pO1J9rqkjc3qxlryPDGCPdae+LFdKYZIWDfibxJ
	evRMwLh8BeSY8ZywceqK1IXmdmVHaJ4T18LLz/fBVyKSK3owJPnTUsVRhQPfPDmbLorCan8qwGo
	=
X-Received: by 2002:a17:90a:c2cd:b0:2fe:861b:1ae3 with SMTP id 98e67ed59e1d1-30e7d5212aemr31974542a91.8.1747832864060;
        Wed, 21 May 2025 06:07:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQTcM0DEewfI33gItZD9j1h0bGLelB3UY4zmdB1KWV9XM4V5233w4DxRV0kJm45wKsrFEaSg==
X-Received: by 2002:a17:90a:c2cd:b0:2fe:861b:1ae3 with SMTP id 98e67ed59e1d1-30e7d5212aemr31974498a91.8.1747832863677;
        Wed, 21 May 2025 06:07:43 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e702c19csm2813012e87.170.2025.05.21.06.07.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 06:07:40 -0700 (PDT)
Date: Wed, 21 May 2025 16:07:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenmeng Liu <quic_wenmliu@quicinc.com>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, bryan.odonoghue@linaro.org,
        todor.too@gmail.com, rfoss@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs615: Enable camss for
 qcs615-adp-air
Message-ID: <osxdr3czofrurub4c4tmqv5vciv7ub3gm3vxygqee6uizjmmq6@mju4r54hpk6j>
References: <20250520-qcs615-adp-air-camss-v1-0-ac25ca137d34@quicinc.com>
 <20250520-qcs615-adp-air-camss-v1-2-ac25ca137d34@quicinc.com>
 <748f96f7-d690-4823-845f-67642db97a06@linaro.org>
 <dabed183-6907-4483-8c79-616aafaf2851@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dabed183-6907-4483-8c79-616aafaf2851@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDEyNyBTYWx0ZWRfX+u7yvvpzKOiG
 7MW25NY5S9jyvYRzNu7I81dDzkd0P4LKqHQMlQdIwVgSt6xlCB0Kls1TS0EKCTlK0s1jb6rFtA+
 7Tux3zDAy83XCc524Vw9Nx+6JTPWdtt/dy8FswvBz/YmjA/oZB+12dcqQjGDbz+/eID2shVh9/a
 hevxndFo9amaQs9SgpqiehSOiHiPozwsp3GDSNi3gBLEy98FoLd3RTHkTdmDrgq1t9Z8e8tOPqX
 +TED+ny5VIDsgRq0NldWO9eD0XnLTKoh88veoEwcp/5S+0ZZc9lAVhfSdbKIFjeUnUen9vQMG6T
 wwXHzLK+jPoMyZq4xEnlpxoDtzomybKX+0jXOb8L8ILbJsX3XshWzmFWKqPjhZtthrDqhN/ramR
 thqDTMuLZlDz3NKhCKolQcvMDRnSKeFtM8xwnOAFxXH4h/Fw+sefDO3DW+/Qxcnt0ED90GY5
X-Proofpoint-GUID: wyqxpVCOkdWdBEZzUwwIUiZ01Uz1axn8
X-Authority-Analysis: v=2.4 cv=Ws8rMcfv c=1 sm=1 tr=0 ts=682dd020 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=D6KgBE5joMCqelrfVo0A:9 a=CjuIK1q_8ugA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: wyqxpVCOkdWdBEZzUwwIUiZ01Uz1axn8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_04,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 mlxscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=809 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505210127

On Wed, May 21, 2025 at 09:32:00AM +0800, Wenmeng Liu wrote:
> 
> 
> On 2025/5/20 20:19, Vladimir Zapolskiy wrote:
> > Hello Wenmeng,
> > 
> > On 5/20/25 11:56, Wenmeng Liu wrote:
> > > This change enables camera driver for QCS615 ADP AIR board.
> > 
> > what is the rationale of enabling CAMSS on the board without giving any
> > description of any sensors connected to the SoC?
> > 
> 
> Hi Vladimir,
> 
> We can perform validation through the CSID TPG(Test Pattern Generator), so I
> enabled CAMSS.

Are there any _actual_ cameras being a part of the RIDE platform? 

-- 
With best wishes
Dmitry

