Return-Path: <devicetree+bounces-217814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9794CB59495
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:01:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EFA7169804
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 925042C0F8C;
	Tue, 16 Sep 2025 11:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hWrnFyFJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292D528C862
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758020482; cv=none; b=tkO5N3oJgpCbmv8NZ9vzEQ+CKeQQCsiQWSqW8OZQafScukf/VfHN/h6nZRhFTzP+VmQVF8namoIakZKTEFs7k2R/G+D88ADLg0SKJHlN6lgx/wRBYxjmYWYOc7Hb9CcaUm0jWFFC6zh4YApRKeEyXO2neCQTw/MaqGd+B4U93Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758020482; c=relaxed/simple;
	bh=NCB9zn+1OoC3HfwDpn00j2J+X9Iiwehic5Jfs6gBc6o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hS/BpBADO92XNF5wvQVa7p5P0/AYQKGwiR4XaySN38y+iHijAkTXS8wxlrkkKbZnbTpje3Me8slTd91RffYHEYQ3OOBeGQtrsL47dThNzoQljJnHRQHITMf1i1WeFTwEHf7jBulFBVddhn8lrBifRmIsx6RPqCtrvCQ8cGgcGy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hWrnFyFJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G9tmAN005497
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:01:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kVUremSztL9SXw9vrpclbs+f
	CQ2ClcMRdwOTbzI7vMQ=; b=hWrnFyFJvxm6g+Lift+rgcEvVLmDxPebCs81lC9V
	M1SQ2Du/4aHvWlV+iYY6FitiLKOefbQSXdy3nQ4KgUkZX1zgfKNn/5CymZVnHPQf
	/ZDFCruMcP1nakG0b3973jNJKnLj6vH0culupLgKoSXM37wK3mhSwRXU6tnzDrpe
	j08KJUyTXA0vp9yPWyA9+RSsuEWQAFIcdaAsJJCSWhdwUV9+5lSa8DWKelV4kcfU
	bymx4QqGW8+HCmDYZKDZx6nbM7GxcrX56+JMfUqSgjria5FX/lMhCo9b5rgAo/Cb
	Xz82PeTIxro8i9Ac+C90NeyZ26Ep+Fti4W4/GGeu/Dzz5g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950u58hj0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:01:19 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5fbf0388eso70814241cf.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:01:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758020478; x=1758625278;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kVUremSztL9SXw9vrpclbs+fCQ2ClcMRdwOTbzI7vMQ=;
        b=Z4wimi44HPf02IXhEamipxwxedt9r2jxdF2HpsKCaIZEVRRUPikdegt7252ZeTuT+N
         oOB/bAO4knDgy9860a6AaCovnz+3SOaVwlMeodbsdj6FIAjXnW3CiJfXXSEUerybOt0W
         x33UfMARQ5ZTMQSUAu3Wrj7I1F6/RNPDTSoHNPUjbv+3Fgc0vH5FEET7hTG2pJadjGYU
         ufX/VyZyJ5jEjRKXb7LzKDNoAO0Oz7EloTuHUB+qdmIZFyofKQWxYveadaTsD+cDlKuL
         +eROJ6RozV9ZcMapAk/YGxPZo2STX45mtQuUXA4yLGMQjEPJMm3eXTral4WTL/VA0tY4
         TQOA==
X-Forwarded-Encrypted: i=1; AJvYcCUe5Y1NUtC2xibbN06pE+y+tG/AUWC5lIStw6/eXVrKNizl5N68vprDsjB7z9MVtqqGbZvgf935Z8WZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzOxEK0fgtWq2mQ8Bbk7tO6bDFY38JmaF/PRAgPrgB/lbE9E2wH
	9ytgRcO5HAH2Q0yx+lPEyj29sS3JWnJmnOToE/4YqX+TAInlCOM6S9TA0rbgoMkVE2MsPmpn7b7
	mvFjdyzpzp1WLb0nKE18vSXFhlR2tOowP9RgyBcgGHchOd5y0NbPzNShvCTgKREBl
X-Gm-Gg: ASbGncuiHzqA81o63EJOlE7L4V8QS0BebL/uoJcnYAHqKIyqu3OoaUXxe4D21eAapge
	V5cu4DUcisgzQZX3+YbmL2VfdNDMWED4aExPi+N9uGfa7kkSP03BQLF1sxQDSBhM8JJ/EYD/EX1
	CyRkibaN2arENsUvqObckk4YCEDa+H0Q/tPTwu91eWz+ennAMW5DVPHrzMt3i2yTBcpuBR3PjoP
	4PLeXieNnQRxOayyCm1QpQitoWa2j3ysYTQehHlHpkiLw/71FYmVcOhlrFOgUnhc+n7xGXuaDXB
	xFeVlCj5t5iaAVlDQmdhprOIqMNL7NMtryve7iaD8zys2mI+1sYDVZIPl5UsKL9PAZFSA8w27A+
	p7GNgW4zHWUPfGhivTSg3CDixonAT12j6CpcDIK5FE1sZx3wLMKnE
X-Received: by 2002:ac8:58d6:0:b0:4b7:9313:a35f with SMTP id d75a77b69052e-4b79313a964mr132544681cf.2.1758020478362;
        Tue, 16 Sep 2025 04:01:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLAF3UeE0KRBiIqMl1GqNbWZHZDnQRL51kIuIAuObbsA7nu8iKYJBvUfO43iyEhrcGCg745Q==
X-Received: by 2002:ac8:58d6:0:b0:4b7:9313:a35f with SMTP id d75a77b69052e-4b79313a964mr132543501cf.2.1758020477568;
        Tue, 16 Sep 2025 04:01:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63cc6sm4391757e87.66.2025.09.16.04.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 04:01:16 -0700 (PDT)
Date: Tue, 16 Sep 2025 14:01:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, linux-i2c@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Subject: Re: [PATCH v5 07/10] arm64: dts: qcom: lemans-evk: Enable Iris video
 codec support
Message-ID: <uega7zdkprvk3ediiu4lykiukf7iz2wgk56c3pdloqrpzddt2c@yc37f6payhca>
References: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
 <20250916-lemans-evk-bu-v5-7-53d7d206669d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-lemans-evk-bu-v5-7-53d7d206669d@oss.qualcomm.com>
X-Proofpoint-GUID: B9ae3yBmtDA0mmFkHWXIJYL5DI1g7ieX
X-Proofpoint-ORIG-GUID: B9ae3yBmtDA0mmFkHWXIJYL5DI1g7ieX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzMSBTYWx0ZWRfXyhAKtuWYbEZP
 r1U3XJk0rbP+L4uQF3WF5jsOYY5+OxazbtTDsbN6KJoGcB7bSXs+7pANG2EDt3d1GcT4ZNyq5bc
 89dPZ1DGqt3cznEZg6LKvfJUqC6v17SS49zWQlEWjrrpNQQXgKSQzlXqyDxkiqGLZC4kJUfB1XQ
 UPUFt+Hx7Jip3fO7JAHdsvXmrpwMPcFRAuQNreL9cRhQK0oxKDb6mDHqeqpChMKKcrxsfHa7QNf
 RHpVvNhZk69KxXu/kMVhGLF+bOxUy8ndFxK01EzwOoIk1unduH+xenF3vnw2EbFYxJYD8Li5L6w
 uNypi13lMqVqwuap/QMDztfUh2+oDjEDGoc/g1GHbSJfKnEdFLbxi/DezaG7OZc/hwrf+JYMKfW
 WAwNci/z
X-Authority-Analysis: v=2.4 cv=JvzxrN4C c=1 sm=1 tr=0 ts=68c94380 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=yPPeNZB_paKBOZgJB6kA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130031

On Tue, Sep 16, 2025 at 04:16:55PM +0530, Wasim Nazir wrote:
> From: Vikash Garodia <quic_vgarodia@quicinc.com>
> 
> Enable the Iris video codec accelerator on the Lemans EVK board
> and reference the appropriate firmware required for its operation.
> This allows hardware-accelerated video encoding and decoding using
> the Iris codec engine.
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

