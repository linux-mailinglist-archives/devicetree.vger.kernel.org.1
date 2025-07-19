Return-Path: <devicetree+bounces-197832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D9950B0AF42
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 12:10:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D9EE582D96
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 10:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B1EB22D4C3;
	Sat, 19 Jul 2025 10:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hw1+m4VL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B731219E93
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 10:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752919844; cv=none; b=N54qBgIpyo1MaFE0tWN1+sCVzjfVNgKhEqdztngaUp9tH2Rc9s0UUQciAMSzals2Oc3mSnN5r7i9Q5OJi08lNISg5gVL26jVTe31E2tp7yxnioUH5eddKhf3+qO9Zo/Mp00IbGfuzYo681WO09Dqzp1dMGOUVlMk6LVR77xPROY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752919844; c=relaxed/simple;
	bh=utSiTo4TMlu1YfqS+7TeWM6t3lr6x4U04C1TJbKXAXI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TohCU6X3BoZ6GbSEbcROOo0MXwc48KGCBek+glcz9D9ORPy/jB8u2xhph8zu++PmHPs37VInkLbS7f/vl4LhDzkHvMBNMMIAkPwsW2Zf82tcMzaQMCtYjV6Ufr4DYLwQR3qs6IpWoR9HAcI3T5RM+3MztjmtrVAdVSO1cje938k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hw1+m4VL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56J4n73c004600
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 10:10:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TafuwAxxAyRiy+2/X0fzDvpZ
	2vsF3PkzwIbwp+jnjII=; b=hw1+m4VLVuD0e4CoSTymezjhl6AWgsWf1pNtk4AY
	U1K80C2wzZjo8noZRIfas6+lfQ637xNsXbRZeBocrsrllGTWV9Br0LAf1xBbVBUy
	PUE19KxYLcmWhk32a2Qc2Y53SertSD6D4BNMsjITJdApvVkJVsltCSpsGGqSWrB7
	3mdaEOIxattHgNuDICKPyX5znHcYDT/viO7bFQSOw90GDklQNT4UD4DdDJDz/9SI
	5vdjFmaq8nKyZGMSMKtcbPxMuD8JZKDj+2x6GJj3dCzxXxkWXdlltcDBy8OGVUIW
	khlDxvEAcDsUUjBQZriEMMncEeanG07+7oUnaEY3IVcsnw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4804n9rd9w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 10:10:41 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-704817522b9so37996196d6.0
        for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 03:10:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752919840; x=1753524640;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TafuwAxxAyRiy+2/X0fzDvpZ2vsF3PkzwIbwp+jnjII=;
        b=bd7nr2v0xR6ZI43eqFFxq1AAUzTnY1PNNTUmJndmIN2wQCwqcNjl4AzYJLd9+A4MBZ
         b5H9l33kdQwZmc46XppIaftcnk8VyT+Pu9UBgkDvKCMI8k1gm8kZagg1ViLzs4DF1dEn
         X00gV1vh3VRAVQPUQjlO0RV3qkFQH1rSvTi5Ay3XpnkNZW3XYsKuTSlBAgIAipf+E38a
         fgq/1qVrHyqr/HSFO5AT87Q5wWOU/nrvKOibtTjh0gPRq6c/8Z59ER+b4jl7i7jlGj6p
         V3A8E8QdZHc/5p5ZR1l/s2kSi/TQEo/Ocj/YntgoaoMUAIZ2dTfTGYJMFWmugc4XN76A
         MoOw==
X-Forwarded-Encrypted: i=1; AJvYcCUzlxKpCvHquzz3P3if6UwvfnKR9ty5k8lHgtXxfcmUEsNMKsNmNW/r0kdJM4qlbRTySx0wpz8+dT+6@vger.kernel.org
X-Gm-Message-State: AOJu0YxhN7rGxVnsppx1ABLtUdmujByXODMxOfEEHZPtY3hJdvxHWg7i
	Zv8b67WGtXGDxOZ83lwXRtx36uzmDzJe1gpKUQk5fzDmMX8UpT3CdTB9s9imgu5cS5/LEqIvBBz
	idWTJsz8XMvhNJNSzCZ5lFK6Fd0AuU7GDxunsssnGq4KFc8cjY1u+Rmb+Ra98ZNOl
X-Gm-Gg: ASbGncupni0u5Ao3kdp/9R49gO1nJV3GifgqexiCjV3cvmJimldv4banY8Vg8YVwSdS
	GGw1TI/V7g1IgiwY66ieXdqAx7/91BId12A9MkjC3R+XfnmX4aDEKb+2LpRdWv6hmmxCdCcM0kE
	hFWD7cZ4K0EhlJdHSiSrPQcCklsNbUEHx3wVnODMn9yt7BQbvhHe4OKS7tRf0x64lm0FQXBuOu8
	mOD3NMGAwHge762huZw5mhOx0lE5TBrGcIWoxSjIUhjGWFobeZ3z2R7PJKktCnhuYloh7VfY7yL
	DRtdr6etYjrAj9E1xSBElTR3/rd5r3HqFoAu6KylbJl1XYjHduuJhpTxcKK93tUy4QQPkiV43hS
	KTx0zQgQf/vMl0r+ON61zbjWwSvB19gVF6dN1clIs8L8O/YA2TKwA
X-Received: by 2002:a05:6214:194c:b0:702:d3c8:5e1e with SMTP id 6a1803df08f44-704f66ed6c9mr162269846d6.0.1752919840446;
        Sat, 19 Jul 2025 03:10:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgjU49TfyfGJdjzjVGo9vGtcZ/GmenE/HIfg0nrHe2DmMSEvyBaNgStXQurxKK8QsOHT7hXg==
X-Received: by 2002:a05:6214:194c:b0:702:d3c8:5e1e with SMTP id 6a1803df08f44-704f66ed6c9mr162269446d6.0.1752919839979;
        Sat, 19 Jul 2025 03:10:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31aac93fsm660086e87.73.2025.07.19.03.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Jul 2025 03:10:39 -0700 (PDT)
Date: Sat, 19 Jul 2025 13:10:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, stable@vger.kernel.org,
        Rob Clark <robin.clark@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcm2290: Disable USB SS bus instances
 in park mode
Message-ID: <px4wsemq2jvt4si33xquy3wzv7fdi6ywp66gutn6wcfdipwyr7@3ofcjfwfoxys>
References: <20250708-topic-2290_usb-v1-1-661e70a63339@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250708-topic-2290_usb-v1-1-661e70a63339@oss.qualcomm.com>
X-Proofpoint-GUID: jdmNeIDkJ436-s0LZ-K3NKrzH-VBwijE
X-Proofpoint-ORIG-GUID: jdmNeIDkJ436-s0LZ-K3NKrzH-VBwijE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE5MDEwMCBTYWx0ZWRfXz9gBkjC+0gLq
 xwmzbiYuW4nSyxD+kxWKuwTYr5SKLxlcwhJCfitXqNUnSZ/C+UenHSOH1krZvKmFIz6JJMQzvUd
 XgdT+ImzMD/vEyZB7QOey/CVBc+oWwPry8owi82EG7pAXQnIxzMNHKev+t3bpx1aV5hPvDwcw+b
 rLJ+mzDtiT4kirvIek69BhCgRRXg/Qqg489tjRO/2fAkdzuZ0IkNE2wy28sNMRbf5gpmg0Bdgex
 dv2SujJqJVzlSz5V0nKQmRIsdcVbxbY6lWBMI54WpUwgig8kuAVDDd9ZRvyfy3uwB89qtLjduv5
 BqEW7YLtLEMRKFYjPcvh7/rtpHlVQepoRtRCtU3ZCw1vIHOpXeLhbhkFOp6wt53gK4+Z4m64wLU
 WTVvTvI2onOP/toYlLFdGYElsQbyPIRNB0r9PVsc/KaoUeCRDvApPn7Z5ta3rzDC5OHVNo4W
X-Authority-Analysis: v=2.4 cv=DoFW+H/+ c=1 sm=1 tr=0 ts=687b6f21 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=esWAiSMzqJ-acQ4o4ZkA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-19_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 clxscore=1015 mlxscore=0 mlxlogscore=981
 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507190100

On Tue, Jul 08, 2025 at 12:28:42PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> 2290 was found in the field to also require this quirk, as long &
> high-bandwidth workloads (e.g. USB ethernet) are consistently able to
> crash the controller otherwise.
> 
> The same change has been made for a number of SoCs in [1], but QCM2290
> somehow escaped the list (even though the very closely related SM6115
> was there).
> 
> Upon a controller crash, the log would read:
> 
> xhci-hcd.12.auto: xHCI host not responding to stop endpoint command
> xhci-hcd.12.auto: xHCI host controller not responding, assume dead
> xhci-hcd.12.auto: HC died; cleaning up
> 
> Add snps,parkmode-disable-ss-quirk to the DWC3 instance in order to
> prevent the aforementioned breakage.
> 
> [1] https://lore.kernel.org/all/20240704152848.3380602-1-quic_kriskura@quicinc.com/
> 
> Cc: stable@vger.kernel.org
> Reported-by: Rob Clark <robin.clark@oss.qualcomm.com>
> Fixes: a64a0192b70c ("arm64: dts: qcom: Add initial QCM2290 device tree")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

