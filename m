Return-Path: <devicetree+bounces-170412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3043AA9AAE4
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:49:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42C321943615
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:48:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42D2C225776;
	Thu, 24 Apr 2025 10:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pmIPMZhB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36672288CC
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745491556; cv=none; b=cVeAspxjB+0tqDsMtpcdoVD9EEcIMTIB71FFFUkGWZ3kS5sqjsveiOyNXXF4GxWJpMsPYClog0mr2KP2hExWr81essrgUk1hBHTv4kzqh6Pki0p+GRtq5tvyhP7RizOjly0QWSTyxPSUtRDGLPbOqh372vsFY/XQ32pv5jEExjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745491556; c=relaxed/simple;
	bh=PGXPJri6Cw6siaeSinOaARRSx2I/HYewhIvfzmeUnSI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IHfT84gdX5bVDkJwqzuMKhQfbNKCiOyr3EVomDPlVQCEPw06d9QMUUtI9G1IXtKSpmaJGVTFRL4Lru87DKflXZjGvgvrQ/pBBXvuYgqWFYcs9VLZ7q615CfAznoarZbTc25/3Sss1XY5jwyk7fsB8PlggPJPuyTLYyXzJt5FcBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pmIPMZhB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53OAUgNJ002960
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:45:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YTvMgSnUIIGLk/Fpg/tiBLoR
	7OymWdRd8yJc8ktCLRg=; b=pmIPMZhBX/VI7UiQN2DS72PS85z5qkr8rP6iNalN
	HPEncBXMwLR9N86aNrbsSrZr2OHdWNhWQk/JDFcATDtqSKn28URKTfVM9KhpcfhR
	rWJNwa5C3/WG2IC8UOHxomfZD8TlW3DZjbfaFp4R8exsTRJHHAhNh9Ol9KVL1wJR
	ZDzf2ib8ztXLTB1Fn7IJHYeomWd9vVPXGask/yhk14+Q9i1yH/Q1T8igdSAxVU7H
	GD/8+ktSIUQPM71Vs70tmx0jifeuaLLW06GUGuwOnTlm8DdvKGr8gtRAPkqleWfz
	OHMBI39GNYqtgjfuj37+wlcpj9hzbdKtVVzAT4GOkmNO7Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3d82h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:45:52 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8f9057432so17210286d6.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:45:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745491537; x=1746096337;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YTvMgSnUIIGLk/Fpg/tiBLoR7OymWdRd8yJc8ktCLRg=;
        b=tA1dJKI+uCXo/4WUX3H3oLJytfBUzvsz6282LeK57+Z9nQ4PLjCNno5sSF2m1hQCUZ
         n0CS+4Dq4fpSd4ppSSmkunH3MGhrkCbfkeP4Q/HPrIUVLCnk24qTpipK0aHlIdGHBASZ
         UxD7rdh2jxY7EtBiXSrXcQcD2tWKWwSkUtRIhbM6gnRLr7aeaAuES3VgKtdeGwfEO0Xu
         tasB5khZjjI/jpMcVTHH6lIhxludobdFlK3OnlGwZMRjeey3yDSv39oR0vYb5Uu2Cp7Q
         gp4n/ghTD17DVhdtv4eH3uM6E7ZG2T4mYVbpoPe9DSALmel7lkDZmiWp3aW75aL2u97V
         cJ7A==
X-Forwarded-Encrypted: i=1; AJvYcCX7Fo9CyxSTxQse8hM3+pN+FsQHWkYhLIYP0mV75UEvb/TVAmzIfp9NERkQOY97lwhZ07OCQ4D0do0q@vger.kernel.org
X-Gm-Message-State: AOJu0YzwefRzs52TL1F9G68uy1IC1rSTeytrbpKgE74cjZzBGYJCuxbI
	EpQNvjVutFgRgVICNoAaH5Qpmqzm0SmaT3U8VUGhWcrOCeO2UCF8qUzO8aUOBO3HDkKZrOd/Lcb
	3LZUjk2TbN421CH8IpFaE+AyjFES2h6wzpEpjnZAkkpKnimlCPclXSbDRokVB
X-Gm-Gg: ASbGncvMILjW7DelGkK0yfCNac22nxYtqQ2SkY6XB692JDMwgVoFDwXV7x9G9Ac0s5c
	G4SlzS7yvjV13PyKty3fvh/mv/9gaxreM+5V0cuJRBYeThKZ1VhpnQ85MSGQpyPu4lI2JNrUq6f
	DK1Fw5dV1v2bRoKse5Dur0gZrFKHE8oWG1HK+KnMDRGppokheAHUGx+bpJuta/nw1y11XCjfVpi
	ftt6Dbiua41Y7MtoJMQzjWVlCJIuc+r2o0+cQnLtnsS3YCruH1T2Qcjd6rNGoy6a0R4vFQjTSIx
	vtTjnTJeeJYaxzo2qGK6rMNHV/kjqNf7OkgYeXRU9YIC873mH2Uo/qq9V9nOozXjZWmpQEL3jII
	=
X-Received: by 2002:a05:6214:4103:b0:6d8:99cf:d2e3 with SMTP id 6a1803df08f44-6f4bfbf09c4mr34154246d6.22.1745491537223;
        Thu, 24 Apr 2025 03:45:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEW9ALRiFj0PWw6i0JiIe2IjPxWzjJGDX1PP0wKX7qV2MJPeYhrJs/Xxya61v7OTQE/lz454g==
X-Received: by 2002:a05:6214:4103:b0:6d8:99cf:d2e3 with SMTP id 6a1803df08f44-6f4bfbf09c4mr34153766d6.22.1745491536843;
        Thu, 24 Apr 2025 03:45:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb3bc48sm189292e87.88.2025.04.24.03.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:45:36 -0700 (PDT)
Date: Thu, 24 Apr 2025 13:45:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH v6 2/5] dt-bindings: media: Add qcom,x1e80100-camss
Message-ID: <krofzevprczeuptn6yfj4n656qsw52s52c7cgiwotidxmi2xo6@d3q5bb5zbccc>
References: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
 <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-2-edcb2cfc3122@linaro.org>
 <3ec3fd62-bf21-47e7-873c-ce151589d743@linaro.org>
 <54eeb470-cd90-4bc2-b415-6dea1ce2321d@linaro.org>
 <0ab31397-580f-4e5a-b9ad-d9bf79d29106@linaro.org>
 <36feffed-4558-4e59-97db-2f0e916dbfc7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <36feffed-4558-4e59-97db-2f0e916dbfc7@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA3MiBTYWx0ZWRfXwsU8ZY5kcYs1 wIzY/9AFvjt1vEKu5oJDcF3ewq44Ji4jD3Mcwhap3HYOvtBo9/CxS/R974/d2YvJVLKtyTOTn6D eGis1J+hpOSgvR14ZAWJD5ohgdGLy6KO6KLDPrEsdgXKPdE5gF7hYqHf0DPmjrvCvAeeGqUI09l
 OWprxUt1xInCkzIdqaN+wCdTSb5DyXa/UMKSFqLAYUeKdCgAf8+6L6EW1u13Fnpb1nvhNEs1eRD S4mo/ugaxptszKv6MbjJYzldgEpnuEgto7fyqfnKHdOgvdKzZoo8adXRzXVt8fnPyZBVSyCJtzo 3lpNhuZgF4xKe/zJaoc9h4b7Xyhe8kw0VBihAe1uwDzVohFw+jwm7lmfW/jlcqyb9dLDmo7HdsE
 ksvpQVUNpCZkenUWtP5xivDHZkfgvic/dAZPuU6szUXhxA4vTY6Yb8XTq+ejXVV5RKjhaqc0
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=680a1661 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=w3QZEHyxT3hpLgro1OoA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 4zTdHDc7pHt11iDZ5nAtbE0dYJtOjWbI
X-Proofpoint-GUID: 4zTdHDc7pHt11iDZ5nAtbE0dYJtOjWbI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_05,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=993 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240072

On Thu, Apr 24, 2025 at 11:17:13AM +0100, Bryan O'Donoghue wrote:
> On 24/04/2025 11:07, Krzysztof Kozlowski wrote:
> > On 24/04/2025 11:34, Bryan O'Donoghue wrote:
> > > On 24/04/2025 07:40, Krzysztof Kozlowski wrote:
> > > > > +  vdd-csiphy-0p8-supply:
> > > > Same comment as other series on the lists - this is wrong name. There
> > > > are no pins named like this and all existing bindings use different name.
> > > 
> > > The existing bindings are unfortunately not granular enough.
> > > 
> > > I'll post s series to capture pin-names per the SoC pinout shortly.
> > How are the pins/supplies actually called?
> > 
> > Best regards,
> > Krzysztof
> 
> I don't think strictly algning to pin-names is what we want.
> 
> Here are the input pins
> 
> VDD_A_CSI_0_1_1P2
> VDD_A_CSI_2_4_1P2
> VDD_A_CSI_0_1_0P9
> VDD_A_CSI_2_4_0P9
> 
> I think the right way to represent this
> 
> yaml:
> csiphy0-1p2-supply
> csiphy1-1p2-supply
> csiphy2-1p2-supply
> csiphy3-1p2-supply
> 
> dts:
> 
> vdd-csiphy0-0p9-supply = <&vreg_l2c_0p8>;
> vdd-csiphy1-0p9-supply = <&vreg_l2c_0p8>;
> 
> etc
> 
> vdda-csiphy0-1p2-supply = <&vreg_l1c_1p2>;
> 
> because that captures the fact we could have separate lines for each phy,
> names it generically and then leaves it up to the dts implementation to
> represent what actually happened on the PCB.
> 
> That would also work for qcm2290 and sm8650.
> 
> https://lore.kernel.org/linux-arm-msm/20250423221954.1926453-2-vladimir.zapolskiy@linaro.org/
> 
> So for sm8650 instead of
> 
> +  vdda-csi01-0p9-supply:
> +
> +  vdda-csi24-0p9-supply:
> +
> +  vdda-csi35-0p9-supply:
> +
> +  vdda-csi01-1p2-supply:
> +
> +  vdda-csi24-1p2-supply:
> +
> +  vdda-csi35-1p2-supply:
> 
> you would have
> 
> +  vdda-csiphy0-0p9-supply:
> +
> +  vdda-csiphy1-0p9-supply:
> 
> +  vdda-csiphy0-1p2-supply:
> +
> +  vdda-csiphy1-1p2-supply:
> 
> Which would then be consistent across SoCs for as long as 0p9 and 1p2 are
> the power-domains used by these PHYs.

This won't be consistent with other cases where we have a shared power
pin. For example, for PMICs we provide supply names which match pin
names rather than one-supply-per-LDO.

-- 
With best wishes
Dmitry

