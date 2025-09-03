Return-Path: <devicetree+bounces-212042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F30D0B41A16
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:31:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77C121A817DD
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 09:32:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE8122AE66;
	Wed,  3 Sep 2025 09:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nQebEawf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2782DE1E3
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 09:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756891892; cv=none; b=SUPQYeo/LXvtmOh7HgFuT6z6yZMiyCDZTtUzk7DE36h2cW37f2ghPjo3AHSleZqPCuBVwSlEucO172IcinpHOqLVD5XxOjgQf77lf+jcQmFXVSt7aPtguRfy1bzdm/eIrS32g55j8H/V1nE3KqtcAxaCu5zgwnqXXamGkyz1xGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756891892; c=relaxed/simple;
	bh=6Rj7ZCcgFaQLZFfPj+MoHP0Ic6ExqyawNXwy1Rm5OpA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KHxKtGnMDdbJAEiNOhgKitHiN2wSAthVP1dURMnQA3hcmnDWgC3d1oJeuM+XlX3Q1kDloSCRn7eo6XYDH0IZubDTi4bzYyCecbLBuQLtaOdCgD502yRdogWWjq9BFwB00kTzczoyKoagQaROr7hPhn47xCN/Gfa4qfR5VJVLjLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nQebEawf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5832CMUM032378
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 09:31:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R11J2ZPvgur12OjpaY/ZBN77+0uB5Jyxu+Du4WBbtJU=; b=nQebEawfeJJnuXoR
	oYb9e0BDMX88zWnTCjsF7RF6K4CiWoG0eQaks94P1AOzf62xoxfRioKg//b8fT9X
	fP+cikewvFXxRHKyqCKbk6k9DsvyB/DbI679LULgbnnA5SDlCQvQxR2ywD+EtRFv
	dfdRvo4+psm8oJqYiISEjExTEU2olybDvUQT+EkvatX1rAakhNK+aFUDlaHAxqgS
	eGnySm59KpzSp98H9OMWwvs9kKvidnq3ZHMIMTDmWxRZzcTh7+XO4FilZw08cXEe
	g2sPvJq5lY6Q3oxlKed6nJ5bG8voYlnRsi/0MOfmZ5IaHVbDBalkp7eeI2Cv6uBU
	BBhlYQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8u0f0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 09:31:30 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70de6f22487so113189146d6.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 02:31:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756891889; x=1757496689;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R11J2ZPvgur12OjpaY/ZBN77+0uB5Jyxu+Du4WBbtJU=;
        b=i7FD787HsODOvBiMNA71k/A21KglSA/gKMV2z5jyxA0n/uw5JdW1tNEgZPLaQXo8po
         i5mFDZvOFrVr4cILwIiIqJwOo6Johh4cPjf0tVmpHP9sA6es/mFYyOlXCIX2gjQR4ZOA
         1Uporeo8IQkXYtuDKJWF+2byc7tXUi6Q7WbysjmCohr434ZPg5VBmPEqLa8GFTQLb941
         O7qVpKNbZcfSkVv5U3hBz/cPt81rqjP6qNnjSy8w5qhn1C/u6Sm1N3+kKChKcjCzWAFF
         bpa55OqbGnuR37VKJai9G8nHq6aBiUi1eY2yIRJUWC/qgYZgRVfQQRVq+F05L27L+2hv
         w2yA==
X-Forwarded-Encrypted: i=1; AJvYcCX5bAG4oWlmEKvrMOgCq710GDgqgnI22hBosDIdmRfGKq4gyZt83U2bNV8ywYpli0fC9dEOLLnvvfQP@vger.kernel.org
X-Gm-Message-State: AOJu0YxY0zILBISbxrPFYg+Ry72ngeK1mqv5esiPMs41fuAEGNaTT7DP
	pwFz7hgnrniluQ4JM61HaYR7VNr5bMSn/uSLkxDuHJv5Y1yk5rukustzD934FaWR5RYyBEEuyMs
	dYA2ZeQLJ/mneeKAZTNDE8sm9J+Ca0yvI+Dsu6l7IIz0tTLDEL1DkGIBEaOeIL+fK
X-Gm-Gg: ASbGncv5BFoLzayqh0bfsouWe1xomGWgb4xfU8ttRWIKY1LTkoKaftwPKkjMgj44oFb
	7K0w9umgQxv1TfmxY1ejnRy4T8tqVsizQDn9nAISk+STWp33ugQvz7hlaCgkoNHAkoxKdip240r
	VbWK4VzN/gv5COU+79syaufdIWbrDb+0wOtnKDlVuF3Sf4tEkTo9qjzVMYdyRhyJqcovNNyrurb
	dP7mrcWCmFKCxx4b5sdzR9Ewmcn/tg/FRay+2dfPK5bkUQ+LFfYXhf3n/vZbbWilowJWC6ceOvs
	2rdNQt+N+QAHqIwaAKzDTbj9vJM2ZFLwQcR4EBOOu4GTvcR3+wQLURmHLK8xKssepHbY8tpPhRF
	np1LkQLc2Evt6kF1waIWargCBvfBzsuiLRaY9WOoneMl55vswCaCJ
X-Received: by 2002:a05:6214:d87:b0:71e:d4f7:b43c with SMTP id 6a1803df08f44-71ed4f7b6fbmr81039146d6.18.1756891889146;
        Wed, 03 Sep 2025 02:31:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpn1OxrJPfcU6oHH4NoCR91bC/412PrDtsPmAKHu53l4V9VVcrDS9TC7zY3OUCJn7dGPO9ng==
X-Received: by 2002:a05:6214:d87:b0:71e:d4f7:b43c with SMTP id 6a1803df08f44-71ed4f7b6fbmr81038866d6.18.1756891888652;
        Wed, 03 Sep 2025 02:31:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f50b0e98sm9071431fa.60.2025.09.03.02.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 02:31:26 -0700 (PDT)
Date: Wed, 3 Sep 2025 12:31:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: qcs8300: Add GPU cooling
Message-ID: <tjdqt4pgagy52xncrqk7dkjjpsfqukjbthrgpddjatfkd3xd6g@7vglhah32f5x>
References: <20250903-a623-gpu-support-v5-0-5398585e2981@oss.qualcomm.com>
 <20250903-a623-gpu-support-v5-4-5398585e2981@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250903-a623-gpu-support-v5-4-5398585e2981@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: ZWcySRaJgPO6mdR7b8v5ZBYkDrR7fSvk
X-Proofpoint-GUID: ZWcySRaJgPO6mdR7b8v5ZBYkDrR7fSvk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfXynuace+pZyYV
 X+h4BQ/lC7J5nAWr707hbCcQzT0OVZbo0U0UVl4ODVvnk0YyRlpJIfuJHdizXqUqGfjFu0dAXIc
 RD/IxxcCc/F4LzSSYjFWCruVDWZqhYLGuMVD0kQsyT5R7wpql9RJClnpQmZ55R1p3bZUSJ8zyx/
 16NE/3MqSzYDnLmbxAuP1ZRSY5SoTE94gOnb5gyV3H2XbKrI9Ehsw3WkU78VSibT2+zTuiJIg6+
 HA79nViCkGS+sXWl4q9fUY8zLlngDFTeYBQ6oP1/fsDbc92x1X1gaVY/c42gEA9UrtGKLOn3rG6
 dLRoZNzQGtlBDQzht5+QjcAtD4Vx0abys1RjkXHNVXB9ppvJwAE9XSYmu0jqqhwWSL626aJP8T6
 XVD194aC
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b80af2 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=8h3n1EBGBd86Ebf8828A:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

On Wed, Sep 03, 2025 at 12:49:55PM +0530, Akhil P Oommen wrote:
> From: Gaurav Kohli <quic_gkohli@quicinc.com>
> 
> Unlike the CPU, the GPU does not throttle its speed automatically when it
> reaches high temperatures.
> 
> Set up GPU cooling by throttling the GPU speed
> when reaching 115°C.
> 
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

