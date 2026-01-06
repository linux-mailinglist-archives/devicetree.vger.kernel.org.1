Return-Path: <devicetree+bounces-252067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7A0CFA841
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:11:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79CB632D9472
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3D4135295C;
	Tue,  6 Jan 2026 18:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hcsvUPbO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DZr5z+7P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218873016EB
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 18:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724174; cv=none; b=VUJp1hPsNG/M1FH+PuqvcOQ/Qj51OBT2Pe1TUVCFml8PuzTdybGhUoaSn5A4lFUbZtSL7H4p8G5vtMQWCZ+Ji1kaXMfeLIGHWhYdKLs1O+q6AdRyGs2eh9VeqIXXFT7tMTeEuMyZREeEpR1+S90yXREgsgoQKc0zeJRUt6ibevc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724174; c=relaxed/simple;
	bh=EKwgbRjyFc0r5AWUEnHVthwLynoqvUWqfKVMs30yVYc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kquXIL0n+DCssg1EzK/DGjAtanLlSMnzyPm/HVgA+rZHqBl38EAA/ioFyzSaY6XcUsk7NM8hkdHdGX23ZJn6B5yP7n3LI6oyBHl9MXYduLOdb5juyUk1wlrNh5WqOar9wMTR+S0+ToED4dbNLKZookv7G5vIuwuhL1jxjapIfs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hcsvUPbO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DZr5z+7P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606GqUXc3889118
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 18:29:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=df7CCdKJkxiAg99DIee87WT6
	5pqufwMeHAjkXo8qe+o=; b=hcsvUPbOLiqzS7Mn7GRcL2+0oDRo3kzwSl9vzTHx
	NCgsZoj+3HjQN1SYvAAwtYk3pE4y9EB9xRyiXWIs9+dko0cg5c/BJ25Tp2dMZ5qG
	MPlS7diJQvn6PwbfIKL8LhSwgKdjcd8GAZLl5fknjn1HnYBbg7RhIuIM5ibtn8P2
	wl1umhZ+XK5lvfFrAptRjQ9aYlNAclJAz/eu4xifLVFznbLUDQYiZmhUHGV44h7s
	JFmLVY6P4lppzdtbjV6v7Y8jfF+0lo8URmOL+uKT1gLTq4/S4ehyWgfIhMXRdytw
	ceUYdYRGYMKhVQFbr2afQyub0OQTHS2PUbfGM8Jq3wVMvA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh6a0ga2b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 18:29:29 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88883a2cabbso53104866d6.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 10:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767724169; x=1768328969; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=df7CCdKJkxiAg99DIee87WT65pqufwMeHAjkXo8qe+o=;
        b=DZr5z+7PNAdYSKAfJ/SfTbqUyIlp/xohcLw6yLktveFOrWxfIWzCI9eZO6ruz729+E
         Q8ilJJMQYAOXLsWuoxzHcnozHuDVAo6rNzK7wVkPnr7woF3WjAExA90yoPpycLxNb6mh
         3AgMKH9gMavMPqGMzcmg8J+DJ0QxSIyMF84/d29dEWApTW8PHEmUYgdI9Z3hhemmTykO
         /F4xRbYiQP0tKt9cXATfQY+2WyQSEV313nFKGp+h+35A4vRkDqgXR3C64FlvH0EAHwhk
         mpOsBZiLjxm6Kuk8oZij1qoEzi5gLm2YbflifDEEGbE5vTvblvQFkzQV8sypMPZ27mxG
         TCPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767724169; x=1768328969;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=df7CCdKJkxiAg99DIee87WT65pqufwMeHAjkXo8qe+o=;
        b=lMcxIeRkgTQuuAkplqFbhdL4BXzMxCAmlZafbbTS2AqJP0nFlC+6tllTkBSdAhA9uL
         UIktMI15VXk20WhyQv3ZgUBBaQKuZGQvzQHWOBhgJI4RGylUu2n/fpVMwpQprwTKTArb
         7mOEovgys6TU/xhzS3GDB+N3RsPKFTpw0Qi27XlvklSC4INonrDyA/x4sRBCvkp7Hbqr
         UhVYmR4lfr1xxXh0um9lTnTiPEJ6v1wsaDTurCfzMxV1d68Mw2qoyygMB3P7Th7K8jRl
         OuBvjIb+Th8Ejxv/MdKQYPnrg7VGVA3745ZdKb+6BlfzLflReqtR22T982Oqzm0r1rbx
         EsDw==
X-Forwarded-Encrypted: i=1; AJvYcCWRmDOuxTx0aufUWB7GaOJNQyAXGWRbV2emSGAdx+SptfYzF/1Ij2wcpNBlIgMGa5YxAzTzVghUzlnE@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx1aVQreVphokCE6ru6UMIfQT2yFvlBOhBD3kt2egvQKr+pnRN
	Lsf/Zw+0otAREIZTORYAZYZJaz9I0YJG/OAe/5V98SBl0lScwuSkeh/YXEaNP1ELWpxV3gfU5MQ
	f+vUIXhk1uXBhasFSqVngzQQMByRYZRxkVFdw9/u7P3Tt3gZZpZ0vJkbFFlxmKBk3
X-Gm-Gg: AY/fxX6EURoYnDzVogd/oOFWYrCEMc8+JH+77ZMyG78Th84fcWTTqt/eLi0cU7IHco2
	zdsmGSm3V6Oei+4JO+Ql0cLxE6e358cYvmmLFYdM6SYHX/hwRIvIKIO5EJ/vPrjRQR90UiC+gcp
	MsEfQs5MDwKsNZkEYSnC07tznRQi9+J/gJX/tU8kY7qPJMtzeeulHUCng1QEN6IchogDyF7r08y
	BvN7LggkSMXvyZNjdKQOTQxpmpBkat2L9aDyL2e2KYKyOgV7rkc/BmkAczswj8frC0jXjuKmHrA
	sCl0nIhFZVCcYXVcD1kEVaLlYfY2jEhoXm1xYOXa5ZQD8Ge3NJGmXY9AyKOB4aEdrBqREGC3Iw4
	3PQuOuINAb7/1aQQlSNpSGZ93OMqFwnKN0SWL92WUsY4MxCWWHHA7MtfX9wcSTZTh0oKAzs9EsJ
	9K2dZcOpl2Ytw3lhNB55Nt7K0=
X-Received: by 2002:a05:622a:124a:b0:4f3:4bbb:d5c9 with SMTP id d75a77b69052e-4ffa787bf6amr57406641cf.79.1767724169063;
        Tue, 06 Jan 2026 10:29:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHxJN/WZDh92ZrPdxWZQv073OHQmrZShWs/3kKOTTEht6iTJrhYMaZproAIKiVmgT1svYDhjw==
X-Received: by 2002:a05:622a:124a:b0:4f3:4bbb:d5c9 with SMTP id d75a77b69052e-4ffa787bf6amr57406351cf.79.1767724168569;
        Tue, 06 Jan 2026 10:29:28 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d5dcbfsm739376e87.59.2026.01.06.10.29.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 10:29:27 -0800 (PST)
Date: Tue, 6 Jan 2026 20:29:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: talos: Add camera MCLK pinctrl
Message-ID: <ihuiw4yxk7zqffidhbaixwzxmqgn5xcnt7ernygiuzm6gphud4@tkcuyqzgl6vr>
References: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
 <20260106-sm6150_evk-v2-3-bb112cb83d74@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260106-sm6150_evk-v2-3-bb112cb83d74@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: wntFR2vVDEMWFGEVq-_0USrvx75qp_c0
X-Proofpoint-GUID: wntFR2vVDEMWFGEVq-_0USrvx75qp_c0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDE2MCBTYWx0ZWRfX90lDZxprT020
 bKssQ8u+VijbiKwr7jueiC/lVunGCcr5VWHPAAu0O8Idox3cXyDzMQsuos9wV18GQlcR8rflkrc
 Bwzifn8lvqpLpdOEW6GiUHD35a/G6VKSnUzcbQPb9WQq0maKU9+HyN9CI53JFxAapHr9q+CSCHm
 SzF18QRqqSW0uuAK2R3QSAcZwoi0bWdRoPOJjSYnfs/r0KU9amrGlAN6zygh5Ocvnrl5MEA+O+s
 bV3g4lw6gFySmQxqaCDPxRPslnyZokh0IILGzGJ6dxBc2OGuusxmMFH8kYc+M1XJ0wafPDut4rb
 Sr8cXtHqiylPs1TvkxCvtmdDkDD98cl8X/BqThxSi4+pvKaE7shdjtBb5aci1poMy9JXUqy9Pr7
 DhyY6xYw/XHKInRumlfTmuaK/iOjh37DfMcCUOJWqGw11FOIvPwM75FMUiviYqOsiKlXZ2MmEfU
 ReRyJzVMsdFERcc6N1A==
X-Authority-Analysis: v=2.4 cv=MtdfKmae c=1 sm=1 tr=0 ts=695d5489 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=OD7J8LUZfBhgY_nOwAcA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 spamscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060160

On Tue, Jan 06, 2026 at 05:39:55PM +0800, Wenmeng Liu wrote:
> Define pinctrl definitions to enable camera master clocks on Talos.
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

