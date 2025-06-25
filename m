Return-Path: <devicetree+bounces-189242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6F7AE744F
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 03:26:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E94A16E312
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 01:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B23F156677;
	Wed, 25 Jun 2025 01:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G/bIgZDd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD86A1519AC
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 01:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750814797; cv=none; b=qPYtvAdC5je9Ta18rU378y21BuYBKIc+IBUBVIdSAOiVaSzlr9iiaTpdGEaeng3qlYQ7pNY4zKNhScyi+9nQN5QqpmY3daUr1JLqfZ0cEljGRkHplZbqHzhZ2hCfdANZ1iw2DGyrCWxMDr0AWCXB+qz4ml3FdieOQyXL2fXMM2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750814797; c=relaxed/simple;
	bh=SuHl7o4L7AbswnbamqjbFE0wNR+4JLv2OKr/8ygUQdc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gz/IoO5TUxHzHFEvk9T75YCGT/cIuoO2usr1zgGloKHZreHCyguiRHaPhYC3lXTB1M4KhhPArV0shwtNNKM5vhPeUETwDoCcECK9BeoYJCyGrYZJ/MZk+qwD+85iXo2O8tx10NiwURkiknwUPm9pRqZmHIZUIjCR1Z1/nVnWGtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G/bIgZDd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55OE7Iqa021793
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 01:26:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=neS6pVbYsjxvaqbgnbCdrETG
	LYElrBS3ThCl68fWGKI=; b=G/bIgZDdzNsWRuTdtXAaWRLV0s4nPFljziW6oGKz
	0050DcsyJfNAz5v1+EcS7HIqWdqSCojjY3Ma3EI8vKQdCUD8Yn4SS7Vhf1TnL8st
	sSkPfJgxdZ/NhirsuWZBIWMbxkwntJ7dOSgfaselBaOBFbsMF+jXrDX6t0EiK5OL
	7xVIbZU2C8wvj4eBglYS0n0W7ObSMIcxEiiOhBkrFLwCYgXW1PSDyYBG8iPmuTzb
	usW+LR8Yjb/2m4Ip4L0NafnmlyYm8DK63+MmwDrkUZrrXHE9S5yaz6LGSNK1kjU4
	JQmAwGCQJ9FpoQC+iYEys+yZaTcbliTSivqXApqd/y0yyA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f2rpxbdj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 01:26:33 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c790dc38b4so74366485a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 18:26:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750814793; x=1751419593;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=neS6pVbYsjxvaqbgnbCdrETGLYElrBS3ThCl68fWGKI=;
        b=cBzrkGKjENAhUC3+584Bf05xva9yzEbcZAL+JVipi2wIpD6geWFVlstsnXhm4wI56E
         ZvIkwvKH4JgxRY6xJfbtkla6P+aWS9BA1KjiCBcAtk2PRRffr5E+MT3dbFzCKkE2kc8S
         Fj+z6RB9ErTemRDQhq0lNyE7u4PnSeawccK1aJw6nH+XOizl+pbaklp039PHRQxkQDMn
         xICs7Rm5ezoLlbv4vh9e9lp9FQLcxBVMETvKfW66yIB42jMxCOc3S+7JOC8TukdK6TV3
         LGlVgD0Dnr8LtSdWMm6GNamx0uPUIQufSj0oIGOtZZMcAxF+NJtNjXshEeeAGVw/LE2U
         YTmw==
X-Forwarded-Encrypted: i=1; AJvYcCVPqpAxfTqviw3Krit0ATElatDvdoZYnv/osdvkUPISGHHSQIBMUMTgbqm6i8m7Avf80yU102DkKN10@vger.kernel.org
X-Gm-Message-State: AOJu0YyZafNJ7A1Y8Zi5N9t31hArbHxpRHfD/3jqF/1MmZNUmAGLzDKc
	fF/hDoTBGS5q1XrM8VVCAygT7WdN3SHd0u2lWXrAZzdFEvbgrJDBQg7wwJ3Tk2wa8thbqKN4uxs
	Oyge5iP3+RaSnhc/O5Snb+S895ci1qk6ppFoxyST90MahoxSq6bFNx8cZ9RS5zki5
X-Gm-Gg: ASbGnct3PXis5vsotpgN2TlBmMbM6sIrb6kArT9mlt0WTZC5VraGUTK5v8ry2WTqJtm
	WyME4mECLzJEb+F2gPOGR8Xfe2lyXGvN9Di519Jcky6OJxG6CbRaCXgmFVcr0XlRAwgTsy6/0tM
	gLcH7hVvgjX3k6XC5wOBpniI0vAt8qrupJbI+jVHyxwer92Jzo6+adCueCJ/87gbETlPB1caNoT
	5BXnmFxqI4SOgXTYHW0N1ufsWmGMAHH8Z2Vb+D83f06Jhw4x+zus5lxkSzWn6fJqNpkRyTFm4JF
	wzy7xTXy5HnmbKQvJ0Z6vl5EuyITB6jXhprCaFYSA/vUCQBvJ89QNRcFkiY5Wfn1yVRqbRHXrPU
	i+LxvfeYmCQtnCduilj5boFdaJXz5CEKrGYQ=
X-Received: by 2002:a05:620a:4041:b0:7d3:904a:30c5 with SMTP id af79cd13be357-7d41ebf39aemr795527685a.4.1750814792679;
        Tue, 24 Jun 2025 18:26:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH/yWMEKNXkQ13xAyZYxnqt6e/Lh17q5mfQR5L0vqtyXb5a8XTw7F2B1T+XQ83I+IP4+2EpBA==
X-Received: by 2002:a05:620a:4041:b0:7d3:904a:30c5 with SMTP id af79cd13be357-7d41ebf39aemr795525885a.4.1750814792185;
        Tue, 24 Jun 2025 18:26:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41bd227sm2032691e87.93.2025.06.24.18.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 18:26:31 -0700 (PDT)
Date: Wed, 25 Jun 2025 04:26:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, lumag@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: ipq9574: Fix 'l2' regulator min/max
 voltages
Message-ID: <qbet26mwfas4ymyy3ozl6f3a5yhgcd2e3euvrn6m3gdvnyvugh@c6yl2u2pcshz>
References: <20250623113227.1754156-1-quic_varada@quicinc.com>
 <465751c4-a45a-41ce-ab65-ebddb71dd916@oss.qualcomm.com>
 <aFpA4mk2L/sxlpO1@hu-varada-blr.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aFpA4mk2L/sxlpO1@hu-varada-blr.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=NdDm13D4 c=1 sm=1 tr=0 ts=685b5049 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=DhCOG8gjuL8a17dk0cYA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDAxMCBTYWx0ZWRfX74I+DvnNCw9U
 2MO8Tnw8OrYRJUriURiq14Og8WIXIzXEm2Y4zRdKiPSeRfFTbLHWowmEB3+zSJfK7A1Kaeio2xJ
 k0F39lbYmWlL8n+0MR/2/5dlcBJXwxw+gqc79+Dipx9c8p5UDJ2tBZKZ7w1PCDQ6hSXwbED+KI7
 /U5jYNTZd19zlv4GtdXczcTmSmkkI3H5gm0vw4JPHoCjnb8SuobPbjayDwcMPqSZe65DJCZ8sY9
 lGCggyiNYNmr8xfgXFpaZvEKnLvZ0rxSONaBBgVoSW64FIpgqXBC6MD7bezwaZdlLc4RI22Moum
 63odR13L4kSq/cyjkhZAuV3NMPIByBlqFEj/IXfz/EjJRwYa3jZIgfxh+LTIElEcVb0TPoKwh6r
 CgLBwb9SfI0gi1XumJL8ezV8zNu8j3vspjAtJdPrCJCoaOWVG+cr93sWURmAQNlt6mnWmOY+
X-Proofpoint-ORIG-GUID: aoGZnKPpAi8ARu46Bb1AgWZ1f6hT81-6
X-Proofpoint-GUID: aoGZnKPpAi8ARu46Bb1AgWZ1f6hT81-6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_06,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=779 adultscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250010

On Tue, Jun 24, 2025 at 11:38:34AM +0530, Varadarajan Narayanan wrote:
> On Mon, Jun 23, 2025 at 01:34:22PM +0200, Konrad Dybcio wrote:
> > On 6/23/25 1:32 PM, Varadarajan Narayanan wrote:
> > > The min and max voltages on l2 regulator is 850000uV. This was
> > > incorrectly set at 1800000uV earlier and that affected the
> > > stability of the networking subsystem.
> > >
> > > Fixes: d5506524d9d9 ("arm64: dts: qcom: ipq9574: Add LDO regulator node")
> > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > ---
> >
> > Shouldn't there be a consumer for it, instead of it being always-on?
> 
> The uniphy block is the consumer of this voltage. The PMIC configures it
> to 850000uV based on OTP settings and s/w doesn't change it as uniphy
> doesn't do scaling.

Please express this in DT terms, specifying the regulator as a supplier
to the uniphy and then making the uniphy driver use that supply.

> 
> -Varada
> 
> > >  arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> > > index bdb396afb992..21b04a2c629d 100644
> > > --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> > > @@ -106,8 +106,8 @@ ipq9574_s1: s1 {
> > >  		};
> > >
> > >  		mp5496_l2: l2 {
> > > -			regulator-min-microvolt = <1800000>;
> > > -			regulator-max-microvolt = <1800000>;
> > > +			regulator-min-microvolt = <850000>;
> > > +			regulator-max-microvolt = <850000>;
> > >  			regulator-always-on;
> > >  			regulator-boot-on;
> > >  		};
> > >
> > > base-commit: 5d4809e25903ab8e74034c1f23c787fd26d52934

-- 
With best wishes
Dmitry

