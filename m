Return-Path: <devicetree+bounces-226450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF0BBD8BD6
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:23:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 43A5A4FA7A7
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:23:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C16827F01E;
	Tue, 14 Oct 2025 10:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kL1xS8E5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED332E8B7F
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760437406; cv=none; b=D6iB6FEvfuxhZjHz5ZilroMonLhcmHqoGfnI02qCaOrv9vq2wlAKajmAY4Q1YpcKS5hyiO+izjljjix/d/roi7mCCF1UIpcjVy9gJF7tz8eORDQ+65reKsj8gENbBoHsO6RqVFylAAL+dvSnpPCjoR+9+RTsvHzH/r+1aQnSO3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760437406; c=relaxed/simple;
	bh=dka1hLAB2FDL4jzoGIfRpvi/9wOSg9e0OUQPD939vAo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aXTvEaSRu074PccqBHo+HbG4DfSF8OT96H/fsSP+bR4ftE4+kBrhR0lciPsJdZg61vBi9ip9vmIPE1SCbkxyHliyriTWxE85nSLBri9EC3UvcGB7D68DobcZZ8GUYlkWPzIRyTUSKnvazgFMcXRTUZc+BoXA9kjoUZPFszFN1KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kL1xS8E5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87KSm031320
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:23:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/q6kggVv0I8zQ7jGT2QmEA7M
	QI9ZTL3uoZuqj2yT2cM=; b=kL1xS8E5F3Es/ScguvWjy7ncewgbUzmnaLwzxTTT
	VNVloJ/pWk59upqJNNFE+mKZBL9Ho0Wjx8h96ECdVr21vEHQBFllduAVWyqr1+Tc
	GIFvE6Djg8LoVF1PW1DRhYTrQdIaNoNm4Z4ZcBpvmghtbuBQdm4y7j42tQWerZwL
	LtK6ELPdy8ZIgBmRMOVH15Ok4b4S/p4iKKk9sIuuvBuuZuq9zW8yJvwJWmJsQJaj
	xWij3J+PPAmXAHBd6lT8UhJ2q7VgXrxuUqLWT3mPHJsydFbMDjfz2pqYQwSn8Pqy
	KqwHjPBGv4Yck2jc1//GOLK42IlW8gwIhK9S6OZ8H+KpkA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0r2kq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:23:23 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-86df46fa013so3301547185a.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760437402; x=1761042202;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/q6kggVv0I8zQ7jGT2QmEA7MQI9ZTL3uoZuqj2yT2cM=;
        b=FOE/3LlD35J92SLMaGrrwSTrLTxx7hbpGzOzDPdJEScCUZeddFrL6JQs0qIMYMYDiS
         iwoRaaBgY7N/240wAoveiq64rpPgZuu2LtUZ2s/1IR5mai/SWtywrdXECh6lP75JBKMx
         ZdSxeBl+ASRgKQXp5+P2sGD4Y86h1WjernTBJhjpOdNBi8DakexKGp2L2jNHlU7eQ7Mc
         e1HdnVamsluAG49ZLSL6y0dhDCU2w0gMZ0hzAnHxAx5pI20lbomZFlreo5RvMiBy16MI
         JSJVY/StXuZPBTVNFQUiXF3lKref7jFpF1cmvIEHmHhwMxC/cnAxENXycR74kQZbmK5i
         Wlbg==
X-Forwarded-Encrypted: i=1; AJvYcCWT+phy46GoieVvhnydQBxE1CpfgKLhQxWt30kLOE7A2mAr3Tp0iQigWlyNWuCHz9tFFkqkl5fxu1o9@vger.kernel.org
X-Gm-Message-State: AOJu0YzfAcyL3GdskAKOvm+8bkV9pkpSFzREG/BUBKnlLmwMlMt+qVaQ
	qY1MPcGGPU6hQDI/5Cusq+Bj/G2WisJyUsuYLat/Q53IwF3JA9wsXZK7JQYoTw67q26arCFosVv
	c3ladvYl+j9rd2Hnsd8I/H/HHKC6yedqmE5VioyzRjeLq9PK/LMN/dwONKqPNEP/v
X-Gm-Gg: ASbGncsuvGVSRIGFgszhVUhT1SPVrzBn1zSUbXsmnf/bQDpBcaTSuClyATyNVlnCgap
	LmCvzMTvvOtavOnbMoWes/AkIssS8pKO6uTjf13ZkHyxQOrfTvrzpb/dml/++dUuIhVOia3d9UD
	YUM6HZ5e3nqoWjrKlxs0s/jmNVrfa4dKI3v9c6uQXDPioTeVhjkkSriMSk1O+5hHkZAjnrP6LTy
	Ge9qoxGfPUsujNB5UEqSt3dlzyXU6hy0j63Z64Iewa/ZhF5AE1nHsrb1qVfJsrH0onw3qe5iwPl
	eZmM8UvLIfS1z8IIhM7dliGCWtp4QC6ByzsIcWw6qyGVRTzi4D6oAfHsFcUZfa2/h5L4J9ODELh
	FEzDJaoA08N/rLKt7jF0mLITKKq0DQfR/8dI/kw30Ity6uxcUixvu
X-Received: by 2002:a05:620a:bc5:b0:85f:d78c:579f with SMTP id af79cd13be357-88354019979mr3300406185a.80.1760437402472;
        Tue, 14 Oct 2025 03:23:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFWXH1WiqeKRdg/ZhH41/VhdoA1bJDjANkssxaTXJhlGef6O0WTcMGo77Oq7bI7MfQwSpsR+A==
X-Received: by 2002:a05:620a:bc5:b0:85f:d78c:579f with SMTP id af79cd13be357-88354019979mr3300402785a.80.1760437401998;
        Tue, 14 Oct 2025 03:23:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881f92casm5118341e87.43.2025.10.14.03.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 03:23:21 -0700 (PDT)
Date: Tue, 14 Oct 2025 13:23:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: Re: [PATCH RESEND v3 3/3] arm64: dts: qcom: Add missing TCSR ref
 clock to the DP PHYs
Message-ID: <ivigimfa6lp5rbjdw26t5witdpnlghvbnlljc2aspst457hadu@4yuudxoxx26x>
References: <20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org>
 <20251014-phy-qcom-edp-add-missing-refclk-v3-3-078be041d06f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014-phy-qcom-edp-add-missing-refclk-v3-3-078be041d06f@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXzv/A0YRNamz4
 34j0Zs38tKyqOaH6DXWVw4foRbEx2qbacYSIEZ0jM7WQFrppJW9exvmBUMyrapPOfa7fB1dR5IK
 1BMvs1gLUmLNn4dwVMAjt63ZlwtDLFNxlR/NceWg292J3ziKPclK9yiqoHmomvgdkkmylcrhiA+
 V72+JgzcgN4j0Ts1AZ+vynTCEByD8ArABI1OEU2rj+1HIoH5xfefVKcnRIIWs6VdlQBcMOJxm/A
 PLtRZ2LTawOTEk+DPsethq0LFlQC+STWT1Du3v1D7wNgcRbgy+mZm3yuIHpzzoJhI6VhvMCjNqB
 e5S2T9Rf044CinIZdE1z5I5CdcoajTGGkGe6OfAW0NCT+xen1DLfkOsBo9sGiRFCR/1L9PZ5TwT
 cekWGOOxdf/0WONrCdqPUE5mz2nodA==
X-Proofpoint-GUID: OU9Tc4ieXz4ek4d8SFXbEDN6XG2SqoS6
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ee249b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=bvtlJ27tT1nIeLj7f_gA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: OU9Tc4ieXz4ek4d8SFXbEDN6XG2SqoS6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On Tue, Oct 14, 2025 at 12:46:05PM +0300, Abel Vesa wrote:
> The DP PHYs on X1E80100 need the ref clock which is provided by the
> TCSR CC.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, even though this change breaks the ABI, it is
> needed in order to make the driver disables this clock along with the
> other ones, for a proper bring-down of the entire PHY.
> 
> So lets attach it to each of the DP PHYs in order to do that.
> 
> Cc: stable@vger.kernel.org # v6.9
> Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

