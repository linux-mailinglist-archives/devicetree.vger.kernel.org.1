Return-Path: <devicetree+bounces-175155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E832AAFF61
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 17:41:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 049633AF7EB
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 15:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A33C4279785;
	Thu,  8 May 2025 15:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ur8eMjfm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2482CEACE
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 15:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746718858; cv=none; b=Q1cuM+KUduIJVkqNM1ihDo1NXoupEr/7YdKQ6j5Ei3ivyI+4ZJjHzxdSoeTKNQLtZHJ/k5Pzl9ECowRmfRG7DphXlPNvdcqppDCLeQjCiJ1FkWambTIA46ARzz8y7tuXAjraFEhdBmkpPMcKH/Vq7u6f10BGhUec07DylkURicw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746718858; c=relaxed/simple;
	bh=BudoP3nE0bpLdaJ5jrf66L37C2BHjnq7NOC0WAvQgeg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=urQ8QdOi7EGQ6fksvFCT1jS1SdopPdD6oWz7B3vp1kaYKCG5Y0kGFu5cI0fDwhVY7cf93kyvD06BissajWymXS6R8DpHZCe6CasPkfg3bBENMm56u8E+1p36sYH1VPY9lYy3DMop6OrnLFj8DHrDyUMcarfiHLy5hV5clLlW8eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ur8eMjfm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548DAN5c009407
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 15:40:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oOF+MnASMYrIA5de3GFHql4v
	cdTwJ0Xq/bKgRzL4R4c=; b=Ur8eMjfmWQg4g9JIR+AJpDO+sHWG9LTjGeyx8Ekg
	bDeNaTxA45kwH/ih2i42vwan8UbYQdoxXeIEdWTpsbQrqzYDHLwIWTuP+o8I6FjQ
	Bhpwr3UOHhiv1RGJjUMwNoMCgpJ/kJ/em+dJOTscEBK5nr1Q51HnafeGCY5pVNFl
	GCxzZRAlnAJc6+gx90eKea+OXUBb4oIrk76XsSD+yX68o7hQ4Lcor57qeciohwKM
	MwVQTM4GSH2UgtPeAzfF7a+FhX/AdEeVPBeEoqfJQSFrPvl1sNQIrf1/6/ciUS6e
	uPw41PSKOEAXWNBAhbXary+v/GsP+OtDZ7XNsKMUrTJPQA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnpessfc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 15:40:55 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54e7922a1so208018285a.2
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 08:40:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746718855; x=1747323655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oOF+MnASMYrIA5de3GFHql4vcdTwJ0Xq/bKgRzL4R4c=;
        b=VIevaqnRlwIZ6qwqPEcIc+KttvPEICrroa3YCmKGrwKkwpT6ELZM5wRZDSsWJRvAkw
         rDHbO98FF7wOti9mMbePfee/yEmv9VPSpDH85UxvNHScT2TOpjkXxPrpq1NiC7WuQMuv
         9vj+HNgCt33mOX0f1948q3umLTB8/jYsPGTmj+xPz78gvExc+nn7Ly2YiMaTZfdL22l2
         D4tZXuxlK0Qs+eYgDxU3zB0nD8tMgLRjfJ2s9Ld+eyIg/yQ6+Z7jxxVAwcKjghbbgYq7
         /8PykrHckjoIoyaQWkRekRgLVKeQTExvryV2yvxQW3Ah2ma7b65V0WD8JhAlAwrn1CIN
         gorw==
X-Forwarded-Encrypted: i=1; AJvYcCXTs40wAWJ8Kc7CA1RkIrv0K/11CDx8gE7ZUMPiPISVo29IMQ1wQgWuwftzpzJWbwZQ/GpVg3tHQEGq@vger.kernel.org
X-Gm-Message-State: AOJu0YwZhCdiv41kv0vEvrAyuaIbF/QadDp/AuMSK2jtKkK3NfIq2w1/
	b7etfmWaaG9aXafhrIQozujhFBjmn/1bkafjk+QHsTlf7tnAQlAXdyzNiQRRMewedO/+ATUswqG
	f/TtIv3PeIhl+/NBKlAVA3ftNVFhmcfIo/GZdA1pqZkuGmrm1sXtRh97kFX9u
X-Gm-Gg: ASbGncusF+Wsa/h1nuuE1eDfVSFiv6wZ4jhAKafyto3ABiobk15YbqQtVXRPHMK/4vJ
	pmMq8wz3XGJUYyRWtToWJDz/uY8V27MAYZDLbqG6iigeYrvK4boHcH+kWxz0z4tBzoU5oApnL9I
	K1YKtNegBRnPRhbe/3Ytz77V6cHl+r269CTc9mpTEoxu+qAizHKsM4otbcyC0SrwvfCagdAyzct
	m0gLo2y3vAW90DcNHQRUXXW98UNSqFqS3lX7Vm/pJGiiq7j1jjfbbaUxBnFHsFn7fYUTZidqfor
	r0GjOMV0Fyln4RXuXr2gOx2rgnywnDpW78mLH4Omve6FhkhN8B6rnH0gx45arRf/Yh4emZUcmyc
	=
X-Received: by 2002:a05:620a:c51:b0:7c5:6dc7:7e7c with SMTP id af79cd13be357-7cd01116cabmr16250985a.26.1746718854964;
        Thu, 08 May 2025 08:40:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH++qSy1o2LpXKpm27+d087eaP/M5azZLvvr1IACNhrczohQ43CEn/1wba7dJLQRJIXoyzPFg==
X-Received: by 2002:a05:620a:c51:b0:7c5:6dc7:7e7c with SMTP id af79cd13be357-7cd01116cabmr16248385a.26.1746718854679;
        Thu, 08 May 2025 08:40:54 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc644fa48sm1857e87.1.2025.05.08.08.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 08:40:53 -0700 (PDT)
Date: Thu, 8 May 2025 18:40:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wasim Nazir <quic_wasimn@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@quicinc.com, kernel@oss.qualcomm.com
Subject: Re: [PATCH v6 4/4] arm64: dts: qcom: Add support for qcs9075
 IQ-9075-EVK
Message-ID: <k7xxfhkzv2cuoxnmcwysh5hdqsbwpwiidjgxumlgbhipcwujho@lkbn2poddg54>
References: <20250429054906.113317-1-quic_wasimn@quicinc.com>
 <20250429054906.113317-5-quic_wasimn@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250429054906.113317-5-quic_wasimn@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDEzNiBTYWx0ZWRfXyJ3ltnIFE9DQ
 hxx0lV2eeD8cfjH6IEpKEUyyeZ5/37IhYMjLn8U/W/19tKXwG87XciTGN5EU9Ck2Vr5xhoDourx
 DlJKERkKXeGWYvqdiGub5dm7gpl2l5+jRPo11meSrA4CbpfP+wnxmaVbpAptXCRiYUEVhnqW0aJ
 FnBUCjimDmv1euSPUICNlMivEStj4SIKE755IszscdbqwO0ubxUG09G0dqXfZTCyR4cPTIBXEJn
 wMjDK2ToT3Eo7dl9WLeuBCMYpCfy2srunbpTN9/L602Bs/XL9jp4nvRRxHutHhE6PdJuGanT0kZ
 jLe6R0GKB9a9XgBJaqCT31cgg5AiqlJvoIEtU+vVEnjfWfS6mO0eEteDWLFyGS6aiTBp6n1wUfw
 qOtkuHuATu9p6ZsiCPSJqcmoSE9gNz3lx/l1pPETqNUY+PvE1+wPRQKtuiLAYka/S/gUdQyF
X-Proofpoint-ORIG-GUID: eq2FfvN-N2lbgvCaMPzXdnWpRLrHdNOk
X-Proofpoint-GUID: eq2FfvN-N2lbgvCaMPzXdnWpRLrHdNOk
X-Authority-Analysis: v=2.4 cv=Yt4PR5YX c=1 sm=1 tr=0 ts=681cd087 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=v055IAusiqpEkrIEdyEA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-08_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 adultscore=0 spamscore=0 impostorscore=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=747 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505080136

On Tue, Apr 29, 2025 at 11:19:04AM +0530, Wasim Nazir wrote:
> Add initial device tree support for IQ-9075-EVK board,
> based on Qualcomm's QCS9075M SOM. QCS9075M SOM is based on QCS9075 SOC.
> 
> Basic changes are supported for boot to shell.

For v7 please include UFS support. 'Boot to sheel' as 'no storage' means
almost a useless board, which even can not boot the CI images.

> 
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 268 ++++++++++++++++++
>  2 files changed, 269 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
> 

-- 
With best wishes
Dmitry

