Return-Path: <devicetree+bounces-197747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E64B0A7D1
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:43:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7D804B412EA
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 15:38:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E47C52DE715;
	Fri, 18 Jul 2025 15:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yk5do/aa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845C62DE1ED
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752853160; cv=none; b=ivXoQ04K6QFj5xCLrs1dF0aLII/m5QoeQ/ErSPSYwDFh+lBpfK4YSUKhxr3FqBzkwB7nmxI7DrSrRHbsOmzbIM8NbTdKcWoCqI+V58Oi+twWaO3Sdk/10oCCbYAfxF2HGliBAUAEhYWpIFKohk5iaFEbnjrp8cjKl7DgREmQPlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752853160; c=relaxed/simple;
	bh=Yexg01c8qAXHR9qOdv5Ggo+N164p2TucG1gvimWownQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cxb17XR2IxyojEwmOVSGdPME0S2EWI0UHvSH3jf+sOin1my4eS3Go9sv8eEZgoPwUvzZClmFWt/N+7Pbfg/tFjl5mgxeLw6Oyl+CNBulhuXX1/Ufe2Qna591Dz3b4g2xP0IP+3+O8sRPvxmpj3zcuNXS3l2lJohp9cPfAri0enE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yk5do/aa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I7RibW001312
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:39:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=P6+RrV5N6b5UIHIYz7u63iYh
	pmaqRZCMbsPgsoyq814=; b=Yk5do/aaXxXgyXWXtPTqhw369JOW3lM33wSsfvUo
	mMwHda4cGAn5H7/UxU1XA4Ncl4p+Rc4nBrnuyu2dB5Dj/GPO/nMWBw01WD4WBWcH
	DCsD+XXKpz98DvH8NM+Wid7DCjNZjzfXovw1D8mKyLNvTllwvmKhqFdM8pmDqipQ
	iPjGSiWgWkptRpd3RCK53bMlZIe/UF/pBlcblPMSC2q6azx+UG1oT86eVok7Q1D8
	JXld/ddNMaDDfSkY9xzPhrn2Q3TafgRKnzgDeu4LJINBQnciediVkDsv++bqm7/g
	LIFxmeybDQJENMTGiIplv9GfW9croPQjEOGssQIbTNlXeg==
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com [209.85.219.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dry5gw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:39:17 +0000 (GMT)
Received: by mail-yb1-f197.google.com with SMTP id 3f1490d57ef6-e8d734d4beeso1884888276.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:39:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752853156; x=1753457956;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P6+RrV5N6b5UIHIYz7u63iYhpmaqRZCMbsPgsoyq814=;
        b=QTrpfZlxKsBOS5drtmaKHyy8L6kdxgpWmyv4CtF+N3/34RQ7/sma0IHB77Hy9GZqrO
         lFbGBjMPL1iqpC6kO0kBrpStNnlYK17+CpK6zlxMo933vM9xHYn6JCaXc1EHw78f0fYd
         pgyzaUoLz5UbPV5znxDUeQao7QcgWEoBzufz0WPmeOB0bgxeG3s5G0A8eVO2g1mStgJ1
         K1TF8ivvCvXSewZ9UFavWRynwdIW/QRY2afLx5EWKtCq+d2HT7ly3Gj8U6YBoL8rPdYl
         6Gdlz6siIjFLVHhkapjbwBL3ohOYcdVcF88LT1swCYjFEFZftWdVhT/SFN2tI76Vt3NZ
         y65g==
X-Forwarded-Encrypted: i=1; AJvYcCUJ8e0hfrwhOpbhPfaIz9bGtnmaKQizQtwr8pUoPwIsBPcniCMJLT9q41eGtfuQ7YGrWgQu5WuCf4Uc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3pUbR8IEyNMa+51L0O/RhdZJJyDAmOfsZUhnl0rPDCh9rRfPP
	vjVKBcgmHGrVsvhm9su1vgqx6HUAZqE72/QEA0P/qdoKfIXtDAAE77Fcz93UcdXn6GttWVKHieU
	SbTXIia5G3dzk/7wm+K8rGFzgwGzaFu4jblhekvt0kxuXMZOwcyXpYioyrA7ZVxQucsJHjaDL
X-Gm-Gg: ASbGncvwL/fRhzAMH3t+yS+7NHHu+OWpf9Oh+yYDehpzhnwZkEA+42qIZH8TMCdSiIE
	DZQlqbmIVSo//8/tzZYiNtAhXW5V16bcvXrhX8FQzdFYKPdrAVb/QfCBGOHIa3X5OTLEgbXns9e
	0eDzRngIUUPNDw4lGVI6ISpnC1B0sQc0HghsbTrWPyOdyTKV93oX6UmCrjEpx9YljXAE/o3UF6H
	xCrYwdONIoT2uIs5bVeWwewH2ZyQt2WlybmOXIOVXt2EqVLEio5S7CoTtVi6K7DlFDNsG9McV4t
	3kAjahzD+exMUayyPPuGSO9B1nFeyMHt55okmcYB/9oxUPoW0vgevDEGNN3l6Qan9g4QkjibJNh
	SsgU67S0NziBDt9KBDckESMDqG5iGszZW3hPQDVILSlFg5EWLKR1u
X-Received: by 2002:a05:622a:1a8c:b0:4ab:7a03:dc59 with SMTP id d75a77b69052e-4abb2ca964fmr43145861cf.16.1752852647771;
        Fri, 18 Jul 2025 08:30:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhdFZv0OG6o7Eg5mDKIE8QQIGFm51wq0J8H1lXv/eB6mvbVUlAvHR8+/JMoHeLGeFKXURm+Q==
X-Received: by 2002:a05:6102:ccb:b0:4dd:b82d:e0de with SMTP id ada2fe7eead31-4f9ab36d3d8mr1698721137.17.1752852259972;
        Fri, 18 Jul 2025 08:24:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a90d5925sm2572821fa.1.2025.07.18.08.24.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 08:24:19 -0700 (PDT)
Date: Fri, 18 Jul 2025 18:24:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Ling Xu <quic_lxu5@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: qcom: sm8150: use correct PD for
 DisplayPort controller
Message-ID: <jdzmyxotemxufamyemcotx5tgkuotn5ywez2mbt42v3thajbum@idgrarw542ic>
References: <20250717-fix-rpmhpd-abi-v1-0-4c82e25e3280@oss.qualcomm.com>
 <20250717-fix-rpmhpd-abi-v1-2-4c82e25e3280@oss.qualcomm.com>
 <2ed06cfb-2b06-41ae-ace6-b404878a97dc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ed06cfb-2b06-41ae-ace6-b404878a97dc@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: mKNn_5AGGwPJbtaBmIHhLgzew5DM8NTB
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=687a6aa5 cx=c_pps
 a=5rZgxjGdQ1phXw1xqkF1vg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=gOKfhFuQloHwmF_bC4QA:9 a=CjuIK1q_8ugA:10
 a=FvMT9AR2qkiEEVpopuB7:22
X-Proofpoint-GUID: mKNn_5AGGwPJbtaBmIHhLgzew5DM8NTB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEyMSBTYWx0ZWRfX+1gFl4QlxlOq
 eO9yoYeWhFR51GCOwoRa7vaqUJ/uUtdkvUep2D8thwaHYNk7KF3yhZaK1EzevcPywZNkx2xGmjI
 kFDimTm5ECqSYTY7RN+Y1aa4usfDOzBgq4ij722U+h33AbXsdgk7vKcwuKYx5w6PW9n3pwxkO4a
 HUeV0Ys6b/a5THxpE2gBhexkwzQjU1cEvKSQ2j3F+lwGxGPYCU/mToMkVznya5jQ6rMnwTVOzBV
 axdwEnO9+2qBKW7MOOlrxKT3TEj/LzYpxzVQqTJ6/w9+Vb2+Firva6QWSomzJfsWS8Rtt/p061G
 7k38wZaaO/+R8fFF5aoxhm7i1FKCTmGhglluyORtsCjYk2eTeCGf+HRfz8IgxR6Q+gRCFCG1G8h
 rFktbffmwiIja7oVNWNWT3yb4Wj3JDm35Tyutvdna4dqriINYQrbNA9CQTeejaoMDm8Q53GU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=723 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180121

On Thu, Jul 17, 2025 at 04:27:33PM +0200, Konrad Dybcio wrote:
> On 7/17/25 2:48 PM, Dmitry Baryshkov wrote:
> > Commit 5dd110c90a50 ("arm64: dts: qcom: sm8150: add DisplayPort
> > controller") specified SM8250_MMCX for the DisplayPort power domain,
> > however on SM8160 this indices maps to SM8150_MX_AO. Use correct indice
> 
> 81*6*0 typo

Ack

> 
> > instead (SM8150_MMCX).
> include/dt-bindings/power/qcom-rpmpd.h
> 90:#define SM8150_MMCX  9
> 91:#define SM8150_MMCX_AO       10
> 109:#define SM8250_MMCX 6
> 110:#define SM8250_MMCX_AO      7
> 
> (i.e. the commit message is misleading)

#define SM8250_MMCX     6
#define SM8150_MX_AO    6
#define SM8150_MMCX     9

I will try to make it more obvious.

> 
> 
> Konrad

-- 
With best wishes
Dmitry

