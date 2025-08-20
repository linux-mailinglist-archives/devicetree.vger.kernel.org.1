Return-Path: <devicetree+bounces-206842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 657C6B2DB9C
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 13:48:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF4231BC26D2
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5BDB2E5403;
	Wed, 20 Aug 2025 11:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f+ArhmI1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C572BE7BE
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755690387; cv=none; b=aPInRxdko0f1rdzrmkZ4DNGNUHaYofSN3WIgjrf1+0R/mhR+xAll0qa7bWaCrzvqL+D8gZA7gsNqaMUu88740wD7pNi7aE+2H5cU9mQf/qDJqSL2Gbi5FWE62aI74B502ADPvp/tnGtkMss9bNLD+OJSfI65N8r54ntKMww2bfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755690387; c=relaxed/simple;
	bh=vGFR3vP8nyO82cAmfCuW+hvuIZljUq1p0jyyI10ddHY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q2kIbs+eapz41KIefkRBgZ27Tc3auErTHdotMiWUW9tNw2Af7vUPIj+dJGfGx1lMmIGNC0yAzlJAYSW0jny4vXmCM0S+JLTqVAiAFSWUs7jXJWkd+vipqpnJsg+cvEeFTlP5vhupI70h8IArJj15aupSEMCUOCp8w37TKtCfjLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f+ArhmI1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57KAVVtW031108
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:46:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=75L42tl0MI8KDN3dC/5xm80p
	bNugX+cDtHPbn4TsTaM=; b=f+ArhmI1e80n2E11S0VAGAHBmTj7HCLAeDvtlL56
	+k4LpOIw3P67j6da/lsVzoHX+IUnXFXe1GQ1pdLSdyzZNIWh2S5mDJMJXbxxAGx/
	3HtprMmldnr6sfITJY7LfmQwx838XN2D+yhlDylMSYdOh4mkP0NqzRllWF8rZinS
	Pd+IXCpQKKojyrZDd4waTrWOVWtOPAlVlIPrT1srooK9IcXftGSt+1mrG6RpfH06
	KiNEJgkUWbMeaaUG1VzwKUp5aasgESdXV2uURKnfRWWQLhZlEze7EDRAVXH+EqM8
	NNjCp9eOQY4JHk5n397t3haCiQQsmELZeY4aBmcrgFgfUg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52dhhmc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:46:25 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b295536c25so7912811cf.3
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 04:46:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755690384; x=1756295184;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=75L42tl0MI8KDN3dC/5xm80pbNugX+cDtHPbn4TsTaM=;
        b=X9V3xx+MH8+HDoX3Hij+ZXQPVoDRjPGfmaUm1lmaSgl33dep6jbPCUjLEsI1kiVtWY
         GQw4HUmHKP2nZbt1k7wdV1grRGDUnap2YQGhylL7FtKsL1rbVGEV2bDcb9IePMCuNt/+
         iMUeUvZuOF0bQWK65NgTwqjQR2DYPopfc1fMbyDDG//pqEBkj3JITnVLgyTqP9JcGZ6u
         VT03sB6apNhzvGPA9Nn5OFhbv3qFUMY4JK39O9SyQNmpqLFKXokz8Bct4l1LvIRh7NDj
         e/mk4BaHzk6j9HMXd5VhzE7jQ4mbqcDEzXhpapqF36Xe266jNQjKuneO7c+TV81yTDzr
         Vw9w==
X-Forwarded-Encrypted: i=1; AJvYcCWeqdWV7reSwEwPt17h0vM5Vwkguqyw3p4RCnaxd9PswoHiOKF8PaTJhcdYbOeLv0KID/Q9rX6M3Zbl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8ToSuhqTY71lif04SjB+VpAVQi1+0/AgDSak9j0cEWmp7hVFZ
	akWfmWaHzjv7nkRXbDCk6Daxm1DdqSW50HzhOSXVq/M392JqG2OSi/I0zTNngnlc0+e6+02xbwZ
	TDBnVaanJA+7dkPIeZPzZCWXZbIoswe/Tu4m/AM8memveY1Pj8LFBcxgt6/Smm+3J
X-Gm-Gg: ASbGncsuu9/wAUc2DiWPwh+yVEG7vsQpHOwvezwGujZgC8qc+c33LdLaDaToLwPAfWx
	FGinjs8QoIxqel3lROHJXRPzuyZBIWI1gWy72Qd6fgU2YrMZw9Y0ozOD5V3yQfyKw7jgcVTcp6v
	Mk71fGj5RBzbpvqN5L2lZahlgNb4i05Eqrdp11rIhroUiSRcJnZNq2YvCbTH+v1HpJiVBDoH780
	nVeRQUHCupQRV7blwFP+GtQum6Ml3+XFv7r3DXZ5NhpFG1eGp85PYppQ3t8KmNvYi26Pjp1RGHU
	iWiIC3Kx8AtKUFmP3YzN7N6YPrKUxcMmc0xWqvvKpH24HsuwOSoDDKH+y9shoBI6SyEIdXuAJq/
	Uqevm8n+Kj+HnI5hynJY5NAx/kQ3aQq2f4aFZMeJ1MisqIZUTdIk6
X-Received: by 2002:a05:6214:5194:b0:709:deb2:3dcd with SMTP id 6a1803df08f44-70d76fd4c15mr24701866d6.25.1755690384309;
        Wed, 20 Aug 2025 04:46:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH83ZZdKQ60Ug1Lmf0IPGuUmaz4M2F4mxHsaVgPhdq8EvO/IDjNwV6zVABnr6KJ/OabGfXT+Q==
X-Received: by 2002:a05:6214:5194:b0:709:deb2:3dcd with SMTP id 6a1803df08f44-70d76fd4c15mr24701406d6.25.1755690383793;
        Wed, 20 Aug 2025 04:46:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3f3525sm2531156e87.108.2025.08.20.04.46.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:46:22 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:46:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 03/14] phy: qcom: qmp-usbc: Rename USB-specific ops to
 prepare for DP support
Message-ID: <ay4ss7cwpiz6zwiwiav4ts5hwhxjpc6ogc2uirwzfcyhi2crln@3azxsu5hvyhy>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-3-a43bd25ec39c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-3-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX84/imFwCgWH6
 PHQVT8qGkn301GtAtbZJ+oZWWQ38Y5MnkOREEp7Cm35jbR15T0gkk+d2bQKSCbOOyaogSDzhcVd
 fdMnkFSqPOBSCtMSjfa7zBjaeqSQRE7Lo5eRppZIGE1a8FZ6LtmyF5LqHH8Q+v3p/8HdAA10IdY
 yS0SeIT0AwLUCnFCOOqUUlBouPUoOWipfDphsQensxVIYr5lcVmU6RxqyLuECNPkvKQeVbNkqLY
 3O/rjfLWws8lW3rM4XJ6SUwJqFCy0GWqfLcdU/caYVVdIeq/qXQMtx/p0ntvcDJilAEW2xDcOVX
 z8rcXxFva6zmQetNwMXg5h1JzfqSwjTUitUykNXAsfCrgN+LuwBfEziHIsXoSjS/+oWilLmQUkk
 Ra2xb2BT0hMLQMoODBwT9mz9YkGiaA==
X-Proofpoint-ORIG-GUID: gZA8rde9UGQ968H7bfKHOWc1kannmrti
X-Proofpoint-GUID: gZA8rde9UGQ968H7bfKHOWc1kannmrti
X-Authority-Analysis: v=2.4 cv=SoXJKPO0 c=1 sm=1 tr=0 ts=68a5b591 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=H4SNA-w7Ihemelo7scQA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Wed, Aug 20, 2025 at 05:34:45PM +0800, Xiangxu Yin wrote:
> To support following DisplayPort (DP) mode over the Type-C PHY, rename
> USB-specific functions and ops to clearly separate them from common or
> DP-related logic.
> 
> This is a preparatory cleanup to enable USB + DP dual mode.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 50 ++++++++++++++++----------------
>  1 file changed, 25 insertions(+), 25 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

