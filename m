Return-Path: <devicetree+bounces-158746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4D9A67EAC
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 22:33:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49B524250CC
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 21:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED5E31F872B;
	Tue, 18 Mar 2025 21:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TtaGPfEg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5951017A304
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742333579; cv=none; b=BdAMb3gZStWpaQxvZOrxTzn8OFyep22Z0GWl284rFzLQLKCy3xZUcCRgTboK6n0gVwaZ5qdi7R6d3d210MgalL+cdH9FdKnRFHlwX88XeLNsRTBpvhK4QWDuwEN6/3QB8GYs3QjaPdDvmGZqCAbdEC0D2DrQ3QDZVTalqYOjLT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742333579; c=relaxed/simple;
	bh=2BUZe4B/ElR/wC9+24hQAHoUB3oeoZhKkoDplUsbO8I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KSqYi7NGZwXtlPzN3RcApJp8hpA20NAHHf+w+V6mh3VzrynpGb1I7Lu5ikZrRWyk3Fap2jZkYSnhGhIOLclh/xMieDchp6UhKv+JClGAmJDQqDNKNhFX3pmEVBfAZ8VapSlQeU7B0aUJGPoopl/XHkWq0aumbgq5ulR3xPnISJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TtaGPfEg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IG9YvE004557
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:32:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NwMN89YxaLKyCKOYp8/emJaN
	ov+ScqMrpVh61CIHIsc=; b=TtaGPfEgwfFb5Qb2aHdwxxm8+l3WHBOYxIaDJHZ2
	YLSqai35F1H7C4paGqSk23ERnfP4CujUj+Z2nytGIiQ5htKNoeMRBlZaZeEoI7x5
	s7FGSrQH0DI0+8HPAatulSSQGBYMQMdjB7C+hdJKSPrXRpM3iQ2jMPOGS3sGyeJd
	2bHaD4WQU5uinN0bsK6eglIh6Rj29bzHUFF9RSEj/Ep2v3usfH5Iw03ZxWX69knn
	gFe9KLK3J88Qi/qJgW3VrMB6cUK4CG4lMbYjeRWjJmBiL0UGkceavDJ/R7/TUNZA
	iO9AjDMa9a3jL9Vb9GEJAIrFZEyN0h8aaYNEdhmTIQIgZA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45etmbuuvh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:32:57 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c0a89afcaaso13498585a.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:32:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742333576; x=1742938376;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NwMN89YxaLKyCKOYp8/emJaNov+ScqMrpVh61CIHIsc=;
        b=jhYzIDCqu3pWCTelpTAXDRJLX2wQrq/c/Fxy3QPOtTdWojMafM7zVxDKbczBd9QjyN
         P71uZOo4uaT0P7Hcs/W3HNMVX3NVosjLbW6mcVuHmFN0yu+nHrU/k8zw0e/Q92JgOMYz
         sNBgPHzDjuKReFUIEQLwo2UOKBiPWVwGOkZDRHNmo+WkRJpuI1ISUayJO9jZyW8FrYC4
         Ns7XOC0vLjoH+HgOBCRR0en+TAjGBegMYQ0Aj60XnkxKNNKhRlRH00kWsnPonO9yPEzk
         b4kpU4e93q06Mgcuat2JH7sAZ6qi35QxTGylJH/87iX+MqqbIwAe0e/oK/otq/xvw2NZ
         BB5w==
X-Forwarded-Encrypted: i=1; AJvYcCWn67jKsMWsFWcvZK8mm0Q4ECSXwAovSP1ugfaoAgvLeaEz2ycgx4Npjt71KxxSXnlIcHXm5UWibzPt@vger.kernel.org
X-Gm-Message-State: AOJu0YxxuwYXyYsMY9M7Ze7y8yOGsKfdNTkYNXVAcZUiz8Zy6GulgZps
	oHrGcPq3KkTvz4eMjyDpJdodBd+Jeu8Ba+Nw3sAOG/QwdsYRSm94Y1qrUVAbZL6DDz5CIBcPZQd
	dVkJB7F0Ecvf156BVkZrDAtchRdX0pYMGD2Ilv1ybnELCTdVPayzd3Tju9h3R
X-Gm-Gg: ASbGncvKOE2OFxiySnCcJMLUPlazNCkNxU/QO5T9gCItgrDi/ItQfMuYm7lotm8KaUM
	cD3n8VRRFsg5L6WKTEittdVHQe22kxoFcYNDRT1vG8ISJyF+T24G3lb00BC1K/nPKDiT1a5Cau7
	7Pm70n030EdZUXx3AYhPzA+wY1JgSZ9vgDkdGGv7Pc2vfGT40LyDfDUG3+a3gT5xuG+1UKgh7Bd
	HTWzEjL/ihP7WKajOTEjFALRIc73hnb055W79dSs9Ae1Hx9W33vWo6fPXcFLhPrBJ0kCQlQMmEc
	USNZCtAs/n1GQkeKKZFb6BKdkgwQRibyIigqO3XPZuWcI6lssHuA7myP9H/IRyi0FAwSxTfhvaY
	HYN8=
X-Received: by 2002:a05:620a:f0f:b0:7c5:3b8d:9f2f with SMTP id af79cd13be357-7c59b731738mr798311185a.17.1742333576412;
        Tue, 18 Mar 2025 14:32:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFq5F/JLPAaQXrDSOw1XgilhJCzh+nKCxh1TSKH8fBgE4Opu3wA/GQDPb5L32TGJRmeu7EEA==
X-Received: by 2002:a05:620a:f0f:b0:7c5:3b8d:9f2f with SMTP id af79cd13be357-7c59b731738mr798307885a.17.1742333576089;
        Tue, 18 Mar 2025 14:32:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a8c68sm1774546e87.248.2025.03.18.14.32.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 14:32:53 -0700 (PDT)
Date: Tue, 18 Mar 2025 23:32:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Marc Gonzalez <mgonzalez@freebox.fr>,
        Dmitry Baryshkov <lumag@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 5/8] arm64: dts: qcom: qcs615: Remove disallowed property
 from AOSS_QMP node
Message-ID: <uftjklj7xsgruwyodttj6oo63cswa7xmojr7chiylz5siwfhfc@yb6rflzsxtfm>
References: <20250318-topic-more_dt_bindings_fixes-v1-0-cb36882ea9cc@oss.qualcomm.com>
 <20250318-topic-more_dt_bindings_fixes-v1-5-cb36882ea9cc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318-topic-more_dt_bindings_fixes-v1-5-cb36882ea9cc@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: xZIMSON-mUXrwBj8IxCwhMOy0Dn4WACn
X-Proofpoint-GUID: xZIMSON-mUXrwBj8IxCwhMOy0Dn4WACn
X-Authority-Analysis: v=2.4 cv=aMLwqa9m c=1 sm=1 tr=0 ts=67d9e689 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=MuFgdvjdNmmiJytiEo4A:9 a=CjuIK1q_8ugA:10 a=PkAOt9_mmfBkvtOLxIEI:22
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_10,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=617 bulkscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180156

On Tue, Mar 18, 2025 at 07:35:18PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> AOSS_QMP is not allowed to be a power domain provider, remove the
> associated -cells property.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

