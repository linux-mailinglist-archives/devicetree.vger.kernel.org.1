Return-Path: <devicetree+bounces-241278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CC4C7BDCF
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 23:32:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E70824E19A4
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 22:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3558C2BE64A;
	Fri, 21 Nov 2025 22:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kH7WqefG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XTs4kY/S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8B223909C
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 22:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763764366; cv=none; b=BsJ1Bul3guJVG68pecFtNaGjkXabLveSgIIUvDyLYDJkriIANHTECIegmlNAaBiYU5UqexztZigIBMUWqY/nF/BUGY2AW5flLYXTBHpppQJqMl2UKYi1M3Vyj5XAxQzCHu2wAqB7SLrOwohSU6QkfVgUTTJIn/twBKRG5xfW56U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763764366; c=relaxed/simple;
	bh=5A0Q77sAPpGijX2UqsXmaV76gU4BZ0C2GTRYj7Rq/zA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gTnPdxTb/q7OsdIwydslnT6cucZGisd3El8nsmOdJ0Q7RAvLnVTMqORQp1UmE8WExkIUAa2FtthDLCskaQcH8kKoNAuwuthc5IuuYv1d99uqolPegdyAmc2r5+BWu92QPuIU3LCwpfR2gVYTEmfrB3nTIwhmKMd8f6TvoDNpUUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kH7WqefG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XTs4kY/S; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALFla2p3140679
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 22:32:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Pr453cERSmy1/J9J1l2SfVrp
	0cwlN0LwGQ0VuFEXJdQ=; b=kH7WqefGVNsFQj+gaR6mLFWKT1rqgfx9RKoagdyk
	MazkSWDV1TldXVvbJlvNhfQBaB2vAPc12HMsrllpzzq+C8U+RUTkfUTnfcSFW+7g
	ChHV8N/1BDarRlqSM1ql4cCgubBG3UqqAVRxNZU3HwVI55608t9MIkoYZVe1GRoJ
	idSLZpxDTXVQ9qsrghEqbYpv2vBrcfCkSXzDwZvay8oJU3usYmfNOwvKZgLnTMYI
	JnCgv0B/5E3IYNCapvMfwJ7cOe3B+mS3Jneg5jvOw5IkClAxRRxUGAWsUuC7SWaE
	oBldQ2dUrpr8GUTtyQQJg9ntnwz0GonSLABUv9EB2p3JYw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajmppjjt6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 22:32:43 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b1d8f56e24so734692385a.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:32:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763764363; x=1764369163; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Pr453cERSmy1/J9J1l2SfVrp0cwlN0LwGQ0VuFEXJdQ=;
        b=XTs4kY/Sd3A2CyXcoUvR89IAPUAwG0HUYQGPaDAMyGQN05EjbBw08k8PK56/f51EcH
         rMIXwRRdHrvSEflEBKOMNF8Trw4bS4NEElFB04YMl7uCQyQubsAhsK4qLMa0GGbk3Fk9
         mEl7YMVHD4xn3D1oBnBIVMTkhmSe5n8ULLH1CJ0vKOt8OFmOR5APOz/AtGoEMN7vmNp1
         UP8L0vmdPGIivfCPs73o9kuX5IdBockkcniVz5D5hzdkPmo2xclSPwHz3Ym8SwBHDLex
         UuEnZssDuoNyx6pbO0e5Xrs5DtVcvlmd2Kv8eDhPWNyrSwxXeDrLJMwfWqaIyTYRBmrT
         s/lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763764363; x=1764369163;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pr453cERSmy1/J9J1l2SfVrp0cwlN0LwGQ0VuFEXJdQ=;
        b=KV0Jwzlu/csDc8fIu5BDoucFFa+vrpiGwku1W7eo+ebbMp1pd8KPPLPu0In1LBUb6i
         CnAP59eyN5iaiIs3/d7hl4Qb96Y5X2P0Ov+j7Yy/cehSts4ajaeq/lZff62fvYnOp2wF
         HWphAYUhIgu8UQC44flF0ZETIhZu0Oa5sIxhfEz6ACM9mj693xbbH3RoGF0mhZ9r0RiA
         Gq/2UuSe1PYBLN1Zh9pvN7ONpYXm6uTFPMGgfVd5qeOoMoclmYmitHynYgNQIVjR78/q
         VaNl16D3L7lvKi8K4HaRG2HZQp7+IOdfXKGpYcntQ6XlBuu+j95pT0nJE6qL+3IjSoWk
         v0DQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtYvVKq8mOYdkdEAxDzhlbS/jreyIhqpJYZwWd3IfDT0H1FJOqScFvQWnG9E3IoHWcrFwVWOzvsphw@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk3GofRIG1HCJSRVTEfh2xy+M6FiS0O17mbEsrXAwrlqHJ846K
	/8qM3w138vvTSMIA10Yw/z616MF71Ocsr0VrLUm8CvvdHBn00Ax5myVuMZ0kwHqTVJh412wmE3K
	4vFPliLW0J50nL+/hlU5bjhbnK+0dmyjNJn8w+bdbvep/99g8d4sO4yClSc+gAafX
X-Gm-Gg: ASbGncs/R3Tj2EOQKGIC/rp+VtRfE252nmeY0n5cJLXeGGIRfKjJKKJQ2P2eXlv0kgr
	wzrrzYTfcS/1PqdSmljm3Wy5MS4qp7kCRy6fkH3jyaIAcLKNz/0lHLscxDx7rYVVvD15OEHpEvR
	B7sucFk1iagXCh+n9jn89w2BuxA0NJP62/aUxT/UTbwW0Rp5uFhMbWqczzytZwzKyK1LySs/zEm
	O1wHcmIKV4fHm41GQhEWVsvLS+++wcsc+mbf6ZtfuDCUAiCPoa7WpMtoclqevgOXxeDVz2uPw70
	2ADItsZFdDDx+/DKNUkC02yW3sWGUSgTVCbCfvJ6GEppN8oVQw2GpBlF5ufnx3mgHBMk8QUS/w4
	5MRW/Sca4qFs/AreJo5+DjfT5Tv7cQ+3tzGaXWXX0Kk4jsQb4iezFN1dkPz1KnwbjYTAJat8umg
	M160OdgXdrKKGrz1hORst5/LE=
X-Received: by 2002:a05:620a:1aa7:b0:8b2:bf20:f0ef with SMTP id af79cd13be357-8b33d47997fmr497574285a.54.1763764362847;
        Fri, 21 Nov 2025 14:32:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGrQuCX6VXqTt+aYIlduBf1Y7uPpB2QJUvC4Ki9sjnl/6lrwFmlUsH69t4JWc63uH1+2GbDVg==
X-Received: by 2002:a05:620a:1aa7:b0:8b2:bf20:f0ef with SMTP id af79cd13be357-8b33d47997fmr497568285a.54.1763764362337;
        Fri, 21 Nov 2025 14:32:42 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbd2817sm1914260e87.100.2025.11.21.14.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 14:32:41 -0800 (PST)
Date: Sat, 22 Nov 2025 00:32:39 +0200
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
        devicetree@vger.kernel.org, Qingqing Zhou <quic_qqzhou@quicinc.com>,
        Jie Zhang <jie.zhang@oss.qualcomm.com>
Subject: Re: [PATCH v3 4/6] arm64: dts: qcom: sm6150: add the GPU SMMU node
Message-ID: <7dd6deirm7p7jgbjzev2hcxcfmsx5dtijfaglynmqaicpxr7rf@p2zev7mayq6l>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-4-9f4d4c87f51d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251122-qcs615-spin-2-v3-4-9f4d4c87f51d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Pj2rd9aKNSwVpLnMRFi4cx9WOuuHbuvB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDE3MyBTYWx0ZWRfX/jemozuyblTe
 k21/a1KKBX6l1/Esl4WWLoNE5Ks1YQhmSW694m6lwiAmdlAs4fyTNsfbC2YhJcGLPhjy3YHbFUi
 siKXnb6GspvUbWf7q/lfhb/fu8sihwGFcbbSm3JKCBCPiqdxpYefqfyaefM7X1FuR0F0Pw3uZ5O
 iWSbTRCy1KrWeLnB3ilLTE5UL1Isz6KbP5EtXDz9CcShQWtL0VbzX8QukmCdGiIId5oB/97jk5F
 R75H1rE0ESULrlHVuQAnLd+l8P8hYtHdKXRYMoDsBWlxnnquOsw0DDA24GusGjKVpjUu0B8SaLL
 utUch0NQXECFyZkp/Wdr+4AlHL4FasNpmIRK9c+IF7mlK3Iq1FY+xcKc3kADxeKYh900nQK6eW5
 wHwApUT97wHnE0jOEdxms8sUN1HcoA==
X-Proofpoint-GUID: Pj2rd9aKNSwVpLnMRFi4cx9WOuuHbuvB
X-Authority-Analysis: v=2.4 cv=CK4nnBrD c=1 sm=1 tr=0 ts=6920e88b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=UQAiW8fk4jwks4S4FoYA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_07,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 spamscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210173

On Sat, Nov 22, 2025 at 03:22:18AM +0530, Akhil P Oommen wrote:
> From: Qingqing Zhou <quic_qqzhou@quicinc.com>
> 
> Add the Adreno GPU SMMU node for QCS615 platform.
> 
> Signed-off-by: Qingqing Zhou <quic_qqzhou@quicinc.com>
> Signed-off-by: Jie Zhang <jie.zhang@oss.qualcomm.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

