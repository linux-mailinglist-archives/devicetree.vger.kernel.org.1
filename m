Return-Path: <devicetree+bounces-197784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F23BB0A9EB
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 20:02:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 043181C80609
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 18:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 349211E98F3;
	Fri, 18 Jul 2025 18:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RlBv1BDj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2221E520A
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 18:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752861768; cv=none; b=mtxHfiLnejqATxqHFLLRFW9Y0oHaunAaClq/2GNdOzHpdmw/o5aUEzdXchwLsQUarULEJdkNEW8yoQeu5C7uswkJaurQDreYYGl6bxik1KcXnLUxJtxCr4GICIGe9ravTD0sktY6msGAl+X+Gx+1Yf00i5tDBIfaVnG/XD41fDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752861768; c=relaxed/simple;
	bh=ZMQVxjcZ4u1K9IUYXf5lFTqRw0TDlpBU1zJv1xX7b6g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VXFEXretCYm2D/2rMXDLR/wrZpmONRMYOTF8tR+t3q9SPP7M5k+7y3smB4rVX+CYxPSsdE6nB0C/zYepcHA0LSrIjxpFUyta42dWo32SqdrKAd8NBx2SmbekVjO2PxqAl/cPE12ew5116lnl+t6CQuMp5NsF88X8N1B3rbU+bmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RlBv1BDj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IEK9UO022220
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 18:02:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SFlicwMuaMl9H1w874hFttUH
	ryovYPVC6D6myUsxgMw=; b=RlBv1BDjcFuXbXDYbk6FXeHa0StMwFFzr3+UP3RW
	08ta8xXbk51wb60bVnp8nk7grsSwYVcvlsJLwwJ7k6bC4TQ09iuYljD8xJJbB2XW
	A1/877F2AV9yjN4zUHokhRfqfZdCz0oV6h5nm7W/QkpaWNUOYTEUgwrRfJQscOJU
	/C/71/roxi++lqtMUXC4jQKrJF8OE0wT3sYXBF29hq4Tmq9OVHHJRY6V2nVLygcx
	x/Pu3DcIIBehojMPZ7VDVRsoeTe2S9Qjb0RHnwP+0KBVIAiF1jbzttRrvW7AjjsG
	md9Mbx3QSt+WmS8o0//bayF9mAp5uFYhhoYCXljWDp//lw==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wqsych75-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 18:02:45 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-73ac5fbfd2aso1312290a34.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 11:02:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752861765; x=1753466565;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SFlicwMuaMl9H1w874hFttUHryovYPVC6D6myUsxgMw=;
        b=eonTS3jWle2bpPEY2Cw7Shh825X57o8bsU5fD2lKM4dpvD19C8Qg75xKGhSWvriGZ9
         DqdmE29ScuyjqzYFvi/eBFerVJLxOh/MsbI/Tv924eODC35SlVWK3EtLIE0EpT9MjaY0
         KgK5Ccp2dPI1qA3y79tqMfXlvgYAGIbrMZj7QpbjkP+tQMRWYgYEGq535D7Lh+rsUdv+
         /wGYiD7PS5Piiqq/cZo+K9XkX4RqCtewrZgZ5dnc3Sno1cArSoA2FrAAXEYC6aon/0hk
         WBTdkUQUtN3fLzEnEQj35U9R6Na2nLnJO1UcWmwIwsh/PgDt7pVuHQw97lQqS2IrNg82
         ubBA==
X-Forwarded-Encrypted: i=1; AJvYcCUyp7T4vEDj/JpyOaR8SthSU/Aw/NCv2qDu4wfU/b5hu050kicJ0Q/Iry/s7GTriyJYW0gD/uMUNtpX@vger.kernel.org
X-Gm-Message-State: AOJu0YzYfaOkj9Ao+5WC+JYuyIhV0ZoHWmiGElTLABvPljrDwrX8bEWj
	3T2WdeJgjDS+QNzfCB9ZMsUxgDAV1Mv90osLI7e+SHI0lx8UFLcE21h+cwp8oMd6bpuZ2qRkoXx
	0YYBhx1rMZfff95TOz/ykKmXH6peTRlL8sQArrQsBUDfGg/xP5Jb3H8CiWscRG1vQ
X-Gm-Gg: ASbGncuaY5GGsrjAEsDY5HNKaxvbUAQhHwJc1XCf1mwnuhqEILfCZjiYEWtOcA8zb69
	2DJf+UrRxfO75gZOjezW3L2XsHyPsdC8Wubty0y7kOoOV8F8XO7eNM1V5RsvSyp/z75fWDmyYwR
	2cvze4yoS4qufojt2Fhoe1WSKA70M4ZX50XekcnDgjmPxv+9v9mNrQEL2ogS1M6muDWPz++CIYq
	cYTfU5LyD35pjX+RFn4ydoLXne4vnvMsMindbo0W1SrobhBz+CFiAIYgowqQBqVv3v+8+EoBLfL
	Cdouc55b0E7SwB7ZrbeC/tgmveYBLExgHKPS1VBNt2bXbdy0Dx6zm4H8N06V2Ur/lR610VYABww
	8YapA5dJTyZqDqmiuv06SgZ4px37wpgRdomyreLthU9vfi2XkuEr7
X-Received: by 2002:a05:6871:522a:b0:2c2:d2b8:e179 with SMTP id 586e51a60fabf-2ffb223dc4fmr8946874fac.4.1752861764539;
        Fri, 18 Jul 2025 11:02:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEVjjKezrsu1NYnvqFe7iGQyTNkmq+wUMu6RiaT0vvLy+hq3N4akMOiv69zLcknV3GFGKHFw==
X-Received: by 2002:a05:6871:522a:b0:2c2:d2b8:e179 with SMTP id 586e51a60fabf-2ffb223dc4fmr8946814fac.4.1752861763913;
        Fri, 18 Jul 2025 11:02:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91036cdsm2993051fa.26.2025.07.18.11.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 11:02:41 -0700 (PDT)
Date: Fri, 18 Jul 2025 21:02:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Fange Zhang <fange.zhang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Li Liu <quic_lliu6@quicinc.com>
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: Add display support for QCS615
 RIDE board
Message-ID: <qedgprcfzy3uclerm5atesk5wvzjchgmh6wztcibkpmbonvyzz@rgbc4blhcgcb>
References: <20250718-add-display-support-for-qcs615-platform-v5-0-8579788ea195@oss.qualcomm.com>
 <20250718-add-display-support-for-qcs615-platform-v5-2-8579788ea195@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250718-add-display-support-for-qcs615-platform-v5-2-8579788ea195@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDE0MyBTYWx0ZWRfX6UbviMavaaJR
 sSn66rWf6ZlKyz2E0FmmdcTqJ71lMiv4+bXknvDkqXOqqU/eNKeSN3NguR4VTxbS+f6c/PJitJv
 xgznaVeOCStC/eR4Yhu1jwjR6QNYrDhDvwPeRhxpfS56U1idmg1NiMax3tbVzKW9usd+TpzxYox
 uL35FW5D1d2d0wbBgn9Hpxv56a2pVMW/t3ObTNghgf3RcIdRyOuKLTtiPioeN/nrqBy0bTKMcbJ
 ZbIOS+l3JHYexDQMqKML5CrhZtVny2d4D1ErVHMU+/WyOn/jIl9tyZpiG2Ub6AO8eKHjq7FJY9M
 lS55to3n5hi2bKXWo9L+YBzzobXD5MLCapyB05y2gnaUx+ZvyaaJYlItyIbG5eCDF+zfnDQTJ7D
 fgUJxGMWgQlKUhVADt22SYGWxoU264v0aHeuXPMHCdraLvlP2Y8jZdEg02h54JJ7/LpHYemm
X-Proofpoint-GUID: ooh9lG1Tbqx26D44deyyZb-eoGvfbFlJ
X-Proofpoint-ORIG-GUID: ooh9lG1Tbqx26D44deyyZb-eoGvfbFlJ
X-Authority-Analysis: v=2.4 cv=McZsu4/f c=1 sm=1 tr=0 ts=687a8c45 cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=b2IyaSue4eXt-_9sqM8A:9
 a=CjuIK1q_8ugA:10 a=EyFUmsFV_t8cxB2kMr4A:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_04,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=996 impostorscore=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180143

On Fri, Jul 18, 2025 at 08:56:33PM +0800, Fange Zhang wrote:
> From: Li Liu <quic_lliu6@quicinc.com>
> 
> Add display MDSS and DSI configuration for QCS615 RIDE board.
> QCS615 has a DP port, and DP support will be added in a later patch.
> 
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 90 ++++++++++++++++++++++++++++++++
>  1 file changed, 90 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

