Return-Path: <devicetree+bounces-211485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEC6B3F346
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 06:05:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1309220186F
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 04:05:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C0812DECB0;
	Tue,  2 Sep 2025 04:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gP/jN5XW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B6C33991
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 04:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756785898; cv=none; b=tduy+h+NOabDfDw9QKAh6kll3GW/20mVRqp7tHyDgDfk/ZdEyDAuivsMuIwsTKQe3mjgTC1MxZvF1ZI/s2e/yTqv1NZjn+iaB3S9vwAq50VzFRyoFCG+ivirU6+8V6mFHCDwm6RZf2z4CD2Pw9sEWq1QihcwVF7ubaJA6I+jfuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756785898; c=relaxed/simple;
	bh=v/2+YAxpFamUsg/nWMPyIxlBsarZEf/G8aP+4cqfoxM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c+IFC2U5NIMMBbjLESBiSNYSOOX2uVYSgcTN/28mJFuJggnwfZtvfuq1VqHyAyeZao5IKYhIRrxX4S2De2DNqbU0zIUogGkkWFM3xLKhCwr1kGY1cWP0tYxynW11e1nzhumPIDZqor5VuIe+fpo6+Zjv7iwuGt+Qy/XXweIh410=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gP/jN5XW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822S54F010330
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 04:04:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FUbG3HJcyuVo1E28CzJ/QWui
	hMmGUR1E5R08lzHdUPg=; b=gP/jN5XWvMLs2zd9d6V46MgZe3bIzErGTzU4YfNg
	vJHsTcL+yGJEajqipi0uVENLvNkmWpRFlhrXozMkKaJNpHqvV4/mF/OwqAE7pLoB
	af6ZXmmhVzQpNYhBEsy29uATObgagA0RRcsXbcyvE50tZu/bv/cGkAN4Zj36yxNT
	wAXVyg+UKOaO5FovU0mdIl7PrV17/3XrAAZdSvAdfZXG2EmHsc5OG2+iyOG+9Fvg
	PvR2WXTn0sJ56aDlJlygvovjSOrIlT+bmchpGyH0X+K64sGCEvcAUHcKF1rpU7z5
	XfYtRwnUbL1KW7HI13iAeoiAmubF7RcADqggYkHyr8yGxg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjeee3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 04:04:55 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70deaa19e05so129608466d6.2
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 21:04:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756785895; x=1757390695;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FUbG3HJcyuVo1E28CzJ/QWuihMmGUR1E5R08lzHdUPg=;
        b=W/+56K7VovUnwIglCAAewjzefF3ZfryNiAMW+CkwjoE206b4c+t8MxggaD7ccIvlA1
         2GJxTNA8rRPFNJh8lPFAy+D5SoPECyEHRXLOh84xlHDPTzEnLa1/5u+tL4494kjqzN7S
         cYQYcVQ005UzZYc38L+H6IMMNGbY6mEdq9esPHC/5/+9avyCCen3LnzJduHQGMIVtSAZ
         I16vURx0OBr8qCydk/BTPTQ6l756QlUUg9ONLazrE7cNeeZqj8gy3KW3zWhcxVCLtVv4
         skdX2zo187/eR/Np3WndY/xcEH9sPAxJMGgvzxk8a+5iIw/fV2nFL3HScG3q5MZ+eAIt
         FygA==
X-Forwarded-Encrypted: i=1; AJvYcCWBE24shEoDtf3JCryqG8Hfz5LRqAlDiLdrC3msGI9jQ3DjgYcJk462K4J3SmNdlGJYcqeQFLg6C4Ly@vger.kernel.org
X-Gm-Message-State: AOJu0YxMR8P7/lPaQmArd/OD3hDCrGjnQj3XXUcxKoGZ4i/s2oPLhz3l
	JLMs8yZeCgx0AVtVnsX3k52+bUsihpm5JR+NNFidk4hnGqd+qtjG2GfAP/MoRtNQIPJO4OJfTn0
	ZUOI+qllo00hkgJOItFLNFRJxbGenQHp47cHQ+/cMzfdP3PxyGmGSlT50g5xaH7HB
X-Gm-Gg: ASbGncsfObE2eiwmmRQXnFS7kd1/+8Ph0Ak/cij9MbXOdNpUzRT8wTKqjF/6wJEWUGp
	5jmB4VOvoWSgYq6pngraV5iEheEB/aVB/CFOKQNZVAIT+HM4i72Sf8/lT3uzc1PAZe5cxDO7pQE
	37yA3AQ51a1JUY63wfvayM2ENW4TeFQARghofT6K+XDUK23Kt25IRhO+vfmjU6RkIGs1W91RGXT
	3XA84mS0SbtHLdMdr7/QitL0x666ZLMMzly+NiZRRJrD11WgI1+RhnaU9wKZ3uZ7hNSGEAtjG7P
	wPBklar8f2TvquHLxMC/YOdujwyu0KaHaDah7C63sRAXM83C3AkEosAB248rs7+bBmWUdM1ryC1
	w9AeaWkvUWRTtvebemOMn44RIcT9vM6dUIW3B15abEWOTbcMjsl0x
X-Received: by 2002:ad4:5c63:0:b0:716:856c:4a5 with SMTP id 6a1803df08f44-716856c0613mr77344076d6.43.1756785894793;
        Mon, 01 Sep 2025 21:04:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHprcraanQwhdW2zFPLdUXnmfkEq2gAsf7egUurUvHlfjuXEEHMuXLdIs7YBM69Sknlftw1mg==
X-Received: by 2002:ad4:5c63:0:b0:716:856c:4a5 with SMTP id 6a1803df08f44-716856c0613mr77343796d6.43.1756785894311;
        Mon, 01 Sep 2025 21:04:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f5032caasm1932141fa.35.2025.09.01.21.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 21:04:52 -0700 (PDT)
Date: Tue, 2 Sep 2025 07:04:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 8/9] arm64: dts: qcom: sm6350: correct DP
 compatibility strings
Message-ID: <abkkn4f7uca6tzjasltyysxecuuirxxvbjz6l6re5v4z6jlmuh@ugz6jtw6vo4n>
References: <20250829-dp_mst_bindings-v7-0-2b268a43917b@oss.qualcomm.com>
 <20250829-dp_mst_bindings-v7-8-2b268a43917b@oss.qualcomm.com>
 <20250901-defiant-illegal-marmot-7ce0db@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250901-defiant-illegal-marmot-7ce0db@kuoka>
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b66ce7 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=lkS1JMb0PDcYJWSia6EA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: bsecOYx05eyEtrBbGSUnzqR3PyYS6Hnc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX1l+4aR1HyE6f
 M7VBQ2BzkQzgj4llI+PCCluJzM56ugQ9RMTvmwyQPex+Xc8LjlCcG29xuL74OWkHShqW3hjScvI
 7HRPb+ZmW9H5FasZePpTIwcCD+YkDH35vjIrSTfancuqEWAwISM1EHFgGLN/uTw6XqdEEWsmlMk
 Fio4eLaOYam2X+s9rExGLVdR8HRXP7G1TNPWGjcbvrpHmHOhSwG5o+6CVaouHQDdAMv0uL9FisE
 WibfbuMOxxY2aw5tLqoRSl/S+njSKPHtbo7jONi6OkvRdDG5ACtosbLjOpV9jXTZ4H9lO2Xnk20
 RlijN2jIuS5dJimn87NBA7+zc+b/4nGL5R6TksbXd8FAFFCic5H9jClRoruh8RfGPjP6sY8LmAf
 s1j5gud7
X-Proofpoint-ORIG-GUID: bsecOYx05eyEtrBbGSUnzqR3PyYS6Hnc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On Mon, Sep 01, 2025 at 05:47:04AM +0200, Krzysztof Kozlowski wrote:
> On Fri, Aug 29, 2025 at 01:48:21AM +0300, Dmitry Baryshkov wrote:
> > SM6350 doesn't have MST support, as such in DT schema it has been
> > switched to use SC7180 as a fallback compatible. Make DT file implement
> 
> That's insufficient. You basically claim to do it only because bindings
> change. Bindings were changed only because devices differ, so that's
> your true explanation here as well.
> 
> > this change.
> > 
> > Fixes: 62f87a3cac4e ("arm64: dts: qcom: sm6350: Add DisplayPort controller")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> > index 2493b9611dcb675f4c33794ecc0ee9e8823e24d4..8459b27cacc72a4827a2e289e669163ad6250059 100644
> > --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> > @@ -2249,7 +2249,7 @@ opp-560000000 {
> >  			};
> >  
> >  			mdss_dp: displayport-controller@ae90000 {
> > -				compatible = "qcom,sm6350-dp", "qcom,sm8350-dp";
> > +				compatible = "qcom,sm6350-dp", "qcom,sc7180-dp";
> 
> No, that's breaking all the users.

WHy though? Both old and new lines are using fallbacks to bind the
driver to the device.

-- 
With best wishes
Dmitry

