Return-Path: <devicetree+bounces-208043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF048B316C8
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:58:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 796BA622560
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AEF02F8BFF;
	Fri, 22 Aug 2025 11:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gn1DLx/g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6672EC576
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755863852; cv=none; b=f14jMGTb3YwMiz9Z52iw0MseHYJ+txCv49klGzYVF7BA9NRd13C49Bh/KyT7qvTvRrdpP00FxS5yjOk/kE847HxS/ET+8sxPTfylECTnVLbF/H7Gt8s7Ad8iB8pxnRxwlVaMiuW1e9McteYSF4csQVmAGUJJFjbvdgsMUg742BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755863852; c=relaxed/simple;
	bh=nSefmbJNLEpNd+HiuHfMnSedjNJWSWzgoQMTsT+oEOM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JisMcor0stnJqGp9WlANq0TWCzlSVFjAXg3a4WIR8LBnkmj66NhxWcZqB1tERjoFauCo2HS4GJePkqbgh2ry51rTL8MC/Iuir9za+Hq/ISWWH9DfgZfeMBDrvaOQdEt4roQHimJw32FklTRqgtvnQxSB4jRuPCuF82TFn+95J54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gn1DLx/g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UZ8q006760
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:57:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IteKC1aYtouJKzTP53k7aPmd
	vVmyIyP/U396Y+IO0Mc=; b=Gn1DLx/gnD1F2d5PojLp0fimH7NVCdpKR4v7+ODa
	e/r30sdNxOJQwpJCxPkDh2IyQ6X9eL32z53S74zncE9skzscDQ5F+8FgeUc3e3tk
	m4OGIQLN9GalUPhFRWNBr1IloJiWy4V2qARkq/LVImFej1PK/rhgduge19TUaPeE
	wWLvhhnHLOp0nPZ6qbToctNqcK5t0yOe8WDRVKTzH1RVNmvKDOpgT7va5rPY5pTu
	X3sl6TBV0+KoO5bmw+MRfUmY8yh5rOJLW5KGpO2gF1B4p2LaevwfiFOEv4KzRm4A
	r7hgoZNZcnRimtBIAPMd6DssapM6G24pLI9BspffA8ewPA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52912yv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:57:30 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70d9f5bdf78so5636776d6.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 04:57:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755863848; x=1756468648;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IteKC1aYtouJKzTP53k7aPmdvVmyIyP/U396Y+IO0Mc=;
        b=EF+XLko4k9JTVh2WiRj/ulLGMFOg6wv6V0BMz0fEaaU5/a5ctKuXSGNOG2BquRhngP
         7n1MqyOMcfHM6LO1J1VvR0l+SgIi8Uxmopjl7aeaf2XD4sJbuDzABlZXHojwHetGNud9
         4N+djqcTn9rYeiPC1/XXsazf5kgeOP2CcnT4HnxdRt4fTMW1vyAqjiujul5ZKLPhHN+s
         z3fILvfg+cg/3B6OYwyFUCtEG3588FBGiqEIqvm3HcTyrTvMUEoj6BEtyVIApJMltnjz
         f0zvfBytSZm7qoqT4wZX9IR50aHnQOj4wb93Vc2RMthNoAykNPYMKs+s3vfEAK7UQHwB
         V4Jw==
X-Forwarded-Encrypted: i=1; AJvYcCXZ3iYgy+FMzwtmBjdZ2J8DobGbqcatfalTgEb4t8WpQUlS18js42YDZLN4JHCCltYY/FtgbcP245B3@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh69Q9PFO9LKv59i+NJaW7IWEkp5BF3HnAyXQ21D2dbuIjQ8Y3
	H9Fj4fdrlH1AEIUS4ol9OYW0Rq5xTIf6+gW6PzPmjpZSMpFVZZusIPCHYm/R1LTZGqtDO5Nnu85
	Ww1zIfuCzI9hUSLPNicRt7Ois3I9QX3coeyVFptrzUhttnrlSpBDNiSAUvH5lthgu
X-Gm-Gg: ASbGnctzhgjHUWE2xmUUh290jbs2ns5ajpdEUN4CTeKeYgoUO2UGk41zVmCpqhoW7p7
	jllngltc26C1+XMPUw2dZs0DcJu3PZKrweiLfEeTvkK7GSwU3D7XrL7jnmC2EzeojfKVi21iDKz
	sLl8YoxAS6s6DKsAHugq0ZU5YFig6ZT0+Iox3PgtauN9PIVs4dnmXLo/M9aPX2hqkezubVcM/a1
	X7wFZj0fBCVwwG5gxHfDFaGuR2W6s1Rb2sHFOBxP/JCeAyPK/vhJmI+BkpgIUvfvMe7M5nYC6Sr
	A+3P9vH4XYCIVNEaAmVdF/fZOPKN9q0a5/w+J8Af1JKHKGTFEu+NmT4PkrbmyCFSwSd6Qknnjnk
	JCD6PDag4llG5MlZrlC7PKZE0M2jN6Wqf+t2xoz3yj00ke1yNEpAO
X-Received: by 2002:ad4:5aeb:0:b0:70b:43c2:3890 with SMTP id 6a1803df08f44-70d97208655mr31235706d6.49.1755863847776;
        Fri, 22 Aug 2025 04:57:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCkU8ELIIGHVUoLs0oCCVGOKRw2eAWAdvzOHisLhC+LnbkmMk8bUy9Y1FCe4SEL5Mw4GbMdA==
X-Received: by 2002:ad4:5aeb:0:b0:70b:43c2:3890 with SMTP id 6a1803df08f44-70d97208655mr31235366d6.49.1755863846801;
        Fri, 22 Aug 2025 04:57:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef351806sm3447261e87.13.2025.08.22.04.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 04:57:25 -0700 (PDT)
Date: Fri, 22 Aug 2025 14:57:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Message-ID: <26j2trl7lypmqzjnw6kwgqz32eqcags34qpgaua7zbwxd4lbgx@n54gemj42xbd>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>
 <aKhYYjUuOQ7H1aPm@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aKhYYjUuOQ7H1aPm@linaro.org>
X-Authority-Analysis: v=2.4 cv=fpOFpF4f c=1 sm=1 tr=0 ts=68a85b2a cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=3azC0ehC7UzJKJg3NCUA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: qF9DPqD9zsciEi7DU56gpgMonhHJ1I_R
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXxQlfY/2HTd1v
 gCjbuMHQLrjIH+cb6qPt0ioXOUU9K2H8HnQ+J/zKkdtXYATN+5jadZuqoGoMHjCqzsWvlzx29qM
 U7Ht1ibhQdxk3XqkrcwIFE86Zj1jLGVmxS8R8MV7icOAC95O4deVugMMteqiGL0DAVtLQab3jgb
 JMitDR6bnqoRigOsMqkjBGcXLOK27IsdATfDncRrAL5c/tAsIZMQQ8XhlR+3ZIrwQlewvS6YRWd
 bEIefFl/inniN4ICl63DwkFZpg15rARbjtGFx0AJ45OktUR2xzy7tCNeNNKP26HHTx6IDEB9DP2
 T+J6Qnz5WmvKlH4pTYEPiRRRidB0+jPYZUPWi5ntGGXBrMszX5Aw86cYUB0CMUYGgR0wWqk+Eq6
 PXsq/70AtbuMSBIXpSVgNb3R9s9JpA==
X-Proofpoint-ORIG-GUID: qF9DPqD9zsciEi7DU56gpgMonhHJ1I_R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Fri, Aug 22, 2025 at 01:45:38PM +0200, Stephan Gerhold wrote:
> On Fri, Aug 22, 2025 at 02:01:30PM +0300, Dmitry Baryshkov wrote:
> > On Thu, Aug 21, 2025 at 03:53:28PM +0200, Neil Armstrong wrote:
> > > The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> > > connected to the third QMP Combo PHY 4 lanes.
> > > 
> > > Add all the data routing, disable mode switching and specify the
> > > QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
> > > the underlying DP phy.
> > > 
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > ---
> > >  .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
> > >  1 file changed, 44 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
> > > --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > @@ -62,6 +62,20 @@ switch-lid {
> > >  		};
> > >  	};
> > >  
> > > +
> > > +	hdmi-connector {
> > > +		compatible = "hdmi-connector";
> > > +		type = "a";
> > > +		pinctrl-0 = <&hdmi_hpd_default>;
> > > +		pinctrl-names = "default";
> > [...]
> > > +
> > > +		port {
> > > +			hdmi_con: endpoint {
> > > +				remote-endpoint = <&usb_1_ss2_qmpphy_out>;
> > 
> > Please describe the transparent bridge too. It can be covered by the
> > simple-bridge.yaml / simple-bridge.c
> > 
> 
> I think this isn't the case here(?), but how are we going to handle
> devices where we don't know which bridge chip is used? I've seen at
> least 3 or 4 different chips already across all X1E laptops and we don't
> have schematics for most of them.

Open the case, inspect the board, identify the chip. Everything is as
usual.

-- 
With best wishes
Dmitry

