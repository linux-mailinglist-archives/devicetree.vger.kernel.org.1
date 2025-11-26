Return-Path: <devicetree+bounces-242450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA843C8A601
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 15:39:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 286064E59C4
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 14:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D8203043BA;
	Wed, 26 Nov 2025 14:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g8XM1HgE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DtXJM0AJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B82302CC3
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 14:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764167951; cv=none; b=VkAx/KxR8caRnHlzsEZ1OhhFMequ4EL5Z0GOsZPTy0qhIoFcB/bqqpvWDXSbOqzVf4s7WCZYqDHqViLBdUE0Igl8ODv0k18WKOtXoSjnWq0SUiM5kZbmYcI/0K8awos1Z5sUFgTxDNCWp78wqwDl+1AH78Ovh6uN6Ctonel/elI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764167951; c=relaxed/simple;
	bh=ozg/zky7pZYYhf21hDQgiq4F0XigtmY4Wqju6wrAWUQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oL4du5JyMcurtCEcgq/tRCKHCisLGXSsXuumSSeDjpA5QV7oF5ySRrNa7M2Gm8uqayzucaeJlQz99QQl3Iz4b3lpdb5/DYjH9TDlmPWM0uwuFdZDsZNrpKVvB38gKek0TSxl90pMdwJBPc0doalHtISe7ncnrzb38afP9Up4uno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g8XM1HgE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DtXJM0AJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AQ98Ji33666161
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 14:39:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ih06yL3zICl3oBGO2wVm0aPZ
	B8b204IAvwsOOEb1LJ8=; b=g8XM1HgEHr1K8W8uAY4QNjDYAIOkKFvJk85GA6Z+
	niusaakNCF8kODCZI6RH14JVBEAY5/u97AWP1AYg3IHQKxBpR08intEbjYDYur1B
	hm9TIRXjdvgO+CSGt5tXU39B2n42OvR2a1ugoCrFDGULWpIhOdZ97PNSMpcSc31g
	7W+wnrw4RlcYaF3Uesq2cgBkMJSkQ7NEgNO6KGciLSnDtAHHNwzuIEV5VNND8raV
	hWQeCbkxzHGD0E2EVG3rwGL1hEWKQZSgTSK909AajpP4hOROng+NA9Tp244wr2LW
	+s5Sg/60PB+Wp5SDNROizl2evcDVCk8emY/vNWqD8lM89Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4anmemteur-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 14:39:07 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b286006ffaso1608963485a.2
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 06:39:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764167946; x=1764772746; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ih06yL3zICl3oBGO2wVm0aPZB8b204IAvwsOOEb1LJ8=;
        b=DtXJM0AJ75fF36lL+oEnLExKCC1hB5E2uzOLQ9mKLy3aK5cVRO99jpDUA8XiEvIAR5
         aV3P/4+9iPS0QJ03KteVz4bORnaHZN2zxxahLQ7EaDlGJ3djtZvRDS08EVs/zfqTo+Nx
         lxAb6jL11iwZEA2kTDXm+7HAVfCUrH2LGmebVyahivluapbg3xg+XnyNHPw2RCzAv6oi
         qZpEyPEpWjI8JCv7a9YBMsnMPIPVs8O8VKIK23NcxaryOLdAne6piSn+5S2+kZu19stA
         R6isd1ooCroGICN8Z2c+XSnWbfCRD+CiCjc5hWv9jLWFHRHBcElr/1XhThlyvP9Q9YNh
         Qb8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764167946; x=1764772746;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ih06yL3zICl3oBGO2wVm0aPZB8b204IAvwsOOEb1LJ8=;
        b=WZWQuBtTjhSvwxZFZRZKzLIOLxhTAdVohJdbBVMpG7pZdLtQz4uu1tSwPtwl4WNBX/
         RDXPz+PdSVv4H1dZGDEzl1JbCTsm/hFKqszPWZWldROFTLDIFRzGdOKrHLQlLAB+ekQ9
         F3vp7LRAHjiH65VTCgPg6F2qJXbLexu2QUNmD9X25Eb0r4ll4K0Fzf43RMvOvi7ze2s1
         iJqtH4YFn9ZtWIA5saKoc//jWLw7fGExOhpUnUzssciJd3oUyJenjck3DjyXhe1d+itV
         Xc49HODafXdU3PTzKOpALmHOMvJwuKvNNNIbImubZevEcC/7BTfpt19GYS61lO+cpHjC
         SPkA==
X-Forwarded-Encrypted: i=1; AJvYcCXDlJKW/TrT/bNhGkKwNd+5hvabP7I770mCdj5DJMNJglV9xRkTiIqFSf4OVJlqRdvOSuN/Es+CsmxP@vger.kernel.org
X-Gm-Message-State: AOJu0YyM2vQpX1Pv9bk8jsuSNv0suwdEE+wB8FnQXq/vrFFTvQQMVnNe
	TyiblX1gmJxAnYn1/2MHLVf5eHO4zuOfnvWAD0EVnKOOsj/lwuMF/88AkekqQpnFlRjgzd2/TLy
	RGVaVcQaWQsKuyBIX3NYNClCQQxmfZX561Pqcgw/bUAYDoMBwLJpYcAFPTKQv1ANj
X-Gm-Gg: ASbGncudvDyKfvXtbFAVUo6aj3Mf+7q7amJZYRSR8GUixYQDI4/zfOtjdv1uoGuNHYQ
	7y2megw/dvBvGwv6ncOj0zgUvFBLOZc4ucDSmc64Nch2Gavnc4ZDqcynGCCpF2+NNYVqjeD1kZs
	zNhM9cf57Cufr3xmf08kJcalZyHCg5+32QCZUte2Ui15LayXSt/Gt/r83kAqpENBVzTNo4OoaKa
	uN9lcd0hGJnisORQdiwlkKX8sZSlQSk95Fb8IpGBqzch5ctjT+3xDREM/sK4OG9eVNf/UJpvrkD
	EuByr+2DyTj3TS1GCe0gEBRc1wlZNP7hy7VNFeyZRkxYdt3FV0BrhahPf/2d0J9MznW6Mg3pTm2
	zVuWcQvBm1essJjKJdLYur6Pop3G7B3XFv81+onJar9yqdT6bPKb0T0rQ/GJEjIK2apHxnDZu/h
	h3RPoU0ouNIRe6SUgCXGo6DD4=
X-Received: by 2002:a05:620a:1a04:b0:86e:21a4:4742 with SMTP id af79cd13be357-8b33d4808bdmr2719411085a.77.1764167946351;
        Wed, 26 Nov 2025 06:39:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFuvwz9GZiR0vucNDwByTSixZwnlV3s+6YWSU/zh6BM6UYrhc+KLDg+561iMmnbTPrGqzYR6A==
X-Received: by 2002:a05:620a:1a04:b0:86e:21a4:4742 with SMTP id af79cd13be357-8b33d4808bdmr2719404985a.77.1764167945752;
        Wed, 26 Nov 2025 06:39:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbc5e07sm6013824e87.83.2025.11.26.06.39.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 06:39:05 -0800 (PST)
Date: Wed, 26 Nov 2025 16:39:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        manivannan.sadhasivam@oss.qualcomm.com, quic_sayalil@quicinc.com,
        nitin.rawat@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: Re: [PATCH V1] arm64: dts: qcom: talos: Correct UFS clocks ordering
Message-ID: <s3eeapfrmw2smh6j76mhegeanqfq4vwa5jz7ilt2d5bf3acxc7@t6hkp3c4jjsk>
References: <20251126131146.16146-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251126131146.16146-1-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 4OMLDnBeJWS41e-LCCKKjttLXG7FnpYC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDEyMCBTYWx0ZWRfX12uYzQ8qLdtG
 zoe6Rk5IH7jFT7pqrIK1mRt7RAhLUY+54prF8mRn6TseNOKaaMqa7BYVIFfoZ+n8MZ+2/n7Zxy1
 7xCzpagz7FSZY8Gxwo/VcPfdiocQa3uQixiKLiH2wncshUKDPsIlTSGqYkzKe+lNgllbaFwAMA+
 uHu+kuDxArNy91xN+sf3rmlqzmTiDmifkOByUdiQfe1Pfjdo9s+iQm4splDoy5iOJaB01s6kp3n
 ilisPEBg/GvaJt0IDzBxyU82f8aV6QEj5E49BNBfCY52efB2kj+5Grafd3p+jdJpv4s1byCD05F
 BN2GA22YSgYCnsDVtKHDpngrqAvrJCxFvABRe2rz0vJtTkqcCh7XMH4pg/swuC7P94DMaZf7gxn
 cnSYmAE9a8w74DkBG8jO5vCEMt1Gtw==
X-Proofpoint-GUID: 4OMLDnBeJWS41e-LCCKKjttLXG7FnpYC
X-Authority-Analysis: v=2.4 cv=bZBmkePB c=1 sm=1 tr=0 ts=6927110b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=M3Igi78ymzd9_o9g02sA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511260120

On Wed, Nov 26, 2025 at 06:41:46PM +0530, Pradeep P V K wrote:
> The current UFS clocks does not align with their respective names,
> causing the ref_clk to be set to an incorrect frequency as below,
> which results in command timeouts.
> 
> ufshcd-qcom 1d84000.ufshc: invalid ref_clk setting = 300000000
> 
> This commit fixes the issue by properly reordering the UFS clocks to
> match their names.
> 
> Fixes: ea172f61f4fd ("arm64: dts: qcom: qcs615: Fix up UFS clocks")
> Cc: stable@vger.kernel.org
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

