Return-Path: <devicetree+bounces-169078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46752A956B4
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 21:21:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2EA203AA2B2
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 19:21:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A61701EF091;
	Mon, 21 Apr 2025 19:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KyR8DsOa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217C81E9B1A
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 19:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745263297; cv=none; b=DY2KooJzjQt8LDrn5RydtRWQM5XALEwcFFNVdi9TMAh6RU50tJ6wC8TdKV5IKsnPbOTbWcoYIO3XwLKUfIACApjpsOrTazcmXwzmZUYaYZuoCqOxSNOgrqWD0U+U0rPH9pPXoVjY6+OssrIaStKI/nQ2THBhdf8rmZXpVkLzYb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745263297; c=relaxed/simple;
	bh=rk28eIe8cUsJd6JGPxM8wYcVeLlzBfqL2U6EcTaSL6k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P2EW05DdxTqDm3KNPnziFiL7ncxczmrtPrQbHpY1ZlYSivd8K2FPN0mAUsPmSNkVp9BHwJebXS4mhSXZ53iTVytGUcDAwd/kc2Rr/BoLtVRrdumrKOjoc85iQukJKT2ie8Euq9S5FVPLuVbe7iLuwkdBKjOOcUPSnqNHvf4S+G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KyR8DsOa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53LIg3EU009571
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 19:21:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GuwNQL7COdR6K7Wu0mEB7jrt
	g9au9uotOWdW3087MZk=; b=KyR8DsOa4kff5NLOokkO561Lhopgr669vN1aPhR7
	7pr7YTCCqkYj/zBzgEIFKPzRptdapbJHATcqJLXdF06N/DD4msmgVatevDSiZYof
	DIXP30+J+69GCmPj4nGoT+FGDX/OBsYWJVCHX5fnBp0lpa5D0YUF0cXlMzPfnE79
	HhgJFNZrjKOUZPMhUuRJyb92JLH+v23SfAp8hbWANs4ZVgoT6K0QiazTnwnKHY3n
	x9goIZs1sZD9DFIJmmhQBgYNinqQaSi3Y5vezPx7cH5aDnU0pShOwWRT+EBNr+GU
	Hj8v7uC3nXEP3+2VXCYT2/CtGnIGcvjmYvH4lgGnULii0Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46416qwadk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 19:21:34 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e913e1cf4aso117783266d6.2
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 12:21:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745263294; x=1745868094;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GuwNQL7COdR6K7Wu0mEB7jrtg9au9uotOWdW3087MZk=;
        b=bd1oq5gkP8vSk28nnxzGDD4elERPBxpMV9/foEdP3yhLFMgQRRHV4o4XI++2utq6FD
         IITz2PYBAeSPtkA9ajQUwntvh6FFcY63VUH9QPHRLCSDtJgnTRDWSEE9SFnsYcQChZA7
         Fv03D219rrUNTqealkCN9LoxdAh+jsBQdKxp02RO8Ohlgady0ORKuURVykTbXCnNg8aX
         yXxOoDXa4qfUIhLRcsQAwozGmp4bR8yzPeDO/JhxdWsktwUdEhW9cQDkwhNjT+e0hGNU
         nc9qndU1Reyx9TMeQcMerXiZq2FdPE+7hc4uPznzka7FnY3Kq+ykgHmVc6giSgrUiOJ3
         7JlA==
X-Forwarded-Encrypted: i=1; AJvYcCUdT3fmPMPWItQ2cKZ1yNQFKi8tNGreYzZ48pLuC/DlDSj9uKMeHQhw2O4+qPyyLq+F2WRoNjy3e6Cd@vger.kernel.org
X-Gm-Message-State: AOJu0YwvhDWWVqJ/SMVXlO2ZU0yd8Z2JejWxVictOnd0bCy27wZrRbKv
	UC8LXaRNCZntEwGMbXT3dbNHpwC4XzX3LPmxL+jMb7C5fO+Eahs3Z5nL/HZ22woc1K3kSR6qli2
	Xv7t6RTtbLESi/S7Ier8eaEd1oeMXUgGHzJRdnMLCKhhJ0/D/YIafg3iUa9J+
X-Gm-Gg: ASbGnctV/Qr0hBEAgTHuePvociul79xyTAUfkLSLVG7z0Y4U3/58S3OlRGaBpKnMTpM
	J1pHc4nmuuUO/lJrZkthBYUwpgTkxv/eyVUNk1Uxc8Wa0Z3YO6T24E0q8su79f24gbkup3Sv1jq
	XQ0xniehtxYZDqYwttsyZld6AOod2WmvIsPKQcdNUfbZbsrWJdmsej93V83ld3U2ksfsDR8WRgU
	AjjAK2G3SCpw3YjFPC+sUzBKOqJLHmQGDzXxCmp1IK4doXEqACMGMiuE5jW3D64udJH/kDIqhkK
	IelBd3FRR6UojhHnJSstZDjnhsBRSa5dEpijUG1I9yyY5SnsC5vHelSE4e250fXPB3Wyj8y50qg
	=
X-Received: by 2002:ad4:5d43:0:b0:6eb:2878:e1fa with SMTP id 6a1803df08f44-6f2c4688548mr234091466d6.45.1745263294087;
        Mon, 21 Apr 2025 12:21:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHjCANftnq5MsyzBJlMsyrsIUVpzmaMDTame740xj5QASOSOvM3bIvntY44xJmDpLFkmTi5w==
X-Received: by 2002:ad4:5d43:0:b0:6eb:2878:e1fa with SMTP id 6a1803df08f44-6f2c4688548mr234091156d6.45.1745263293737;
        Mon, 21 Apr 2025 12:21:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3109075f28dsm12536521fa.6.2025.04.21.12.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 12:21:32 -0700 (PDT)
Date: Mon, 21 Apr 2025 22:21:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] interconnect: qcom: sm8650: add the MASTER_APSS_NOC
Message-ID: <xtumjcqontja5nuaalh2xqij4g7e3bxhlqxdwkiwqxbaickppu@p33ym2w3qnbm>
References: <20250415-topic-sm8650-upstream-icc-apss-noc-v1-0-9e6bea3943d8@linaro.org>
 <20250415-topic-sm8650-upstream-icc-apss-noc-v1-2-9e6bea3943d8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250415-topic-sm8650-upstream-icc-apss-noc-v1-2-9e6bea3943d8@linaro.org>
X-Authority-Analysis: v=2.4 cv=N7UpF39B c=1 sm=1 tr=0 ts=68069abe cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=pi3gJ-yj7RBswzpYwZwA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: TiHTeO7gvM2qWfOqX6d4mCcqj9FAh2Yd
X-Proofpoint-ORIG-GUID: TiHTeO7gvM2qWfOqX6d4mCcqj9FAh2Yd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-21_09,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 mlxscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=748 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504210151

On Tue, Apr 15, 2025 at 04:03:48PM +0200, Neil Armstrong wrote:
> Add the MASTER_APSS_NOC interconnect node of the system NoC
> and the associated QoS configuration.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/interconnect/qcom/sm8650.c | 19 +++++++++++++++++++
>  drivers/interconnect/qcom/sm8650.h |  1 +
>  2 files changed, 20 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

