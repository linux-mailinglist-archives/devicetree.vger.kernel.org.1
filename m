Return-Path: <devicetree+bounces-178976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB4AABE416
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:52:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 075CC8A2A5A
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 19:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 288D0283137;
	Tue, 20 May 2025 19:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KTYOeZvH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC829275117
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 19:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747770753; cv=none; b=teVelndm1iEK0UxtO708JPTO7D65BNQyGI3nPotqphJpqZ6/Slb7JpRo8u0/y52+JL4MjH0gIRBD9s/vxKbTqC+bBOp5KdzHVGtmXWXOenkP16288ODnKqpYiFrcu/HsJTESfXThKxAIFmwKihLs+RYyBTh3Cw27HZTRXG3an6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747770753; c=relaxed/simple;
	bh=fhwrc1tbFQioZ+O75VVgYeJFQo/oxLMljz6u/pC7sPc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=srow02TFCuZ9rYW0kg2BmzDApYn07iCl3wHKenI29woSorct8Tzwr3rB7D/9VEfJ+AxMGMa2RbfZwfbF/R37hD7j0Ej5t674+Yc54hV5Ul66FOg7/MO2q1hN3vSOG2tdNAst1sBAc7fXKTgOPeNwW2GquNO9yM7WqbG507EsyJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KTYOeZvH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGf64Z017327
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 19:52:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YFL2XC8qzId5Dd6D3sundaqd
	2zkC9xDf5x4zzleSYqI=; b=KTYOeZvHmpbm0b1biMqZxWJQBdNnXPFYO9mTYhsT
	YPWuEUZ78DJEGA//OB9ZmFNK4J008bld10zwULWTbl5EwKlw9y3RyLVMPixW/vCo
	WxZaBXkqaa42wX11EirEuqi1VUen5YAMEl7+P5zwo7SxUqo0scO2tC/foTx5AMWm
	G0+4iT2ibWXTylRobSarSg9/5ivuAv7ywshzMgrDTsrppE/rGpOv4Hzu3aw7UlCi
	aSGrkcA5LHta2RWzukcQajKrbb9JchY4ETBoD9GDOOSbnVLIg693gmlLhMHSXYVt
	ZnU+vIE28wKqHw4XDzG+85Xw3j0cNT8CbzF+UVbiUZ/GIw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwfb0fw5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 19:52:29 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5e28d0cc0so996913185a.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 12:52:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747770749; x=1748375549;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YFL2XC8qzId5Dd6D3sundaqd2zkC9xDf5x4zzleSYqI=;
        b=mXs4h2crM5nAdVMJV3gc3IE4XFNlmDEDkvdte5W1sPiQNqHLn3lgux5SnpK3yoYtxZ
         Qs7BVJ4QMdvi9AkGpfjfZQjAlar0eV5493+Nr2wM+gOUVgSEKkhq5iNvSJNNCWVSyEvR
         3LNgG4Y1HXC558VOuEYZKVzjpE6WaPjXQxVh1EuiTEenhGBZtbTmKvgFQHDXF3OwJpy4
         5+5rVK9jBNEelqgzhBe0H8y5Wb+l7+So/t6+YfZvX6dsNNLNNKpFqJOGuDiGaOCToHj0
         G+j671qxshf6bgmTD1ZK2j9IMViwsD2UjEeBYXX2pym7KFq0TxR+HPYmmUROI8zkcuKh
         pg3A==
X-Forwarded-Encrypted: i=1; AJvYcCVTtPftAU198QNIMejSHU7M9F03EG6F2jpF/2a79p8BCTctjni3Wxw/k5rRUkBbrdX+arPDVTyjJefU@vger.kernel.org
X-Gm-Message-State: AOJu0YxN0CFOWK2C3x9Jqb0E+TmaHFDGGZMx//aZp5UuItf93rpTkVk1
	5jGqP5dObgjXcgH5pyfR1j9zzb/fJ55J8lZB4sJ1KZsjMCJ9ypEa4aR88torVpuukaHXtibSf9t
	+MXU+d9xup6PVbbtkZVNgCKyxXRu3HqofIqCBKxsgZa1C0tofDl4viR9p8mBe0WMJ
X-Gm-Gg: ASbGncuGiq3QpJSgw+BNYG6pFGRm4DpFESFtE2qiIzVaJVe+kk3fHEwvXbyRbZeC3S4
	v7Z4bkyYjq38iRF1D/IGwYZenHL0q/Gt8K5OtZnRO/+Mjc4cfTZgKh4EhkVzzKZ0lIKAmlpL9+d
	J7ACZtO2sIMFrcAcNsrb98FcS59kS7tw4dOuK0K7fOPObKfudsUfQz+tBoBk7+8LDZU5vVlZsOe
	2oWNtK0aX8rrUqbivbvr4hE8I0XlkmVQ+kIHAYkczQnDXcCFyPa3NvaktiByNJFd6Qej+muff8I
	H92EznOX4XFT8AYpHGfb+uD2e1BxXNtQMf/1Uam7wI8VDfaWfPl1rRA9MrgP9Np5GWba+c3C0gI
	=
X-Received: by 2002:a05:620a:4248:b0:7c5:94e0:cafb with SMTP id af79cd13be357-7cd467ac226mr3064509185a.48.1747770748643;
        Tue, 20 May 2025 12:52:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEldE9RxymngN0SkiNE/w7R4kBGpcHXriCXVbNFCA/wbxlYIebBJIZ4sUG/sX2j3pgpIKH5w==
X-Received: by 2002:a05:620a:4248:b0:7c5:94e0:cafb with SMTP id af79cd13be357-7cd467ac226mr3064501685a.48.1747770748082;
        Tue, 20 May 2025 12:52:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f1637dsm2462421e87.35.2025.05.20.12.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 12:52:27 -0700 (PDT)
Date: Tue, 20 May 2025 22:52:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        =?utf-8?B?QW5kcsOp?= Apitzsch <git@apitzsch.eu>,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 4/4] arm64: dts: qcom: msm8939: Add camss and cci
Message-ID: <ggx6kzto3qy2blhr5yiqhy37wmgs7c2hvvp4wyfuf4iclk3bkj@7masdrxeaddf>
References: <20250520-camss-8x39-vbif-v1-0-a12cd6006af9@mailoo.org>
 <20250520-camss-8x39-vbif-v1-4-a12cd6006af9@mailoo.org>
 <ba201739-36ac-4586-99a6-bc96dbf4b0e9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ba201739-36ac-4586-99a6-bc96dbf4b0e9@linaro.org>
X-Proofpoint-ORIG-GUID: 0z0fYhzNpf_JYiVxWZnjy8cNKKlD-tDU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDE2MCBTYWx0ZWRfX1uEQe7jDBKlr
 GHbp+aCXO/ipl0HQhw7r0i8AToQ6cwaJULPCnrs4f0CvGdkBSMGE4ccK7MzHs4pKI5IMbheVrlB
 qTJNvIsdaCVJ0bAkyIVV/4GWOfzLLVSmN2beesYOzfLgEMfqZ18TkpULowzwnSi0QA7V/0oonKU
 7qwDUMYJifTy5VUtXp6/cOvliO6RpB7h3I2T1f4gM3tBGKFqS/rOc7JxZKHwrzTLZe0slx4JW23
 6mtNKL+YuYH7wrEgN80oRBgrcTjyP6uX4MU/yiI8SSROYmIFa1JJo1opFJqrYAGPHBvvItmaI7Y
 ktU8tOBGUog3ti2WaExwPlhDXf9DEkt3PYa+oywWCZSte9hffaatv6FL0XH8i1q4WwF7cli81dc
 4WON3RkLMLLoieEV1H+RLLDwvzC/iiKdmg7GeDMcF1SdWk+RZ9ZqYx1fmLTNdCLnjKMFWvub
X-Proofpoint-GUID: 0z0fYhzNpf_JYiVxWZnjy8cNKKlD-tDU
X-Authority-Analysis: v=2.4 cv=dLCmmPZb c=1 sm=1 tr=0 ts=682cdd7d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=TqukyxIwAAAA:8 a=ngZlcTqnKCSXXy_N_KUA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=e_wvXvRcY2B3oMitRgDS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_09,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0 suspectscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=761 spamscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505200160

On Tue, May 20, 2025 at 10:30:30PM +0300, Vladimir Zapolskiy wrote:
> Hello Vincent.
> 
> On 5/20/25 21:39, Vincent Knecht via B4 Relay wrote:
> > From: Vincent Knecht <vincent.knecht@mailoo.org>
> > 
> > Add the camera subsystem and CCI used to interface with cameras on the
> > Snapdragon 615.
> > 
> > Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> > ---
> >   arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi |   4 +
> >   arch/arm64/boot/dts/qcom/msm8939.dtsi        | 152 +++++++++++++++++++++++++++
> 
> Please split SoC specific changes from the board specific ones into
> separate patches.
> 
> >   2 files changed, 156 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi
> > index adb96cd8d643e5fde1ac95c0fc3c9c3c3efb07e8..659d127b1bc3570d137ca986e4eacf600c183e5e 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi
> > @@ -11,6 +11,10 @@
> >   #include "msm8939.dtsi"
> >   #include "pm8916.dtsi"
> > +&camss {
> > +	vdda-supply = <&pm8916_l2>;
> > +};
> > +
> 
> What is the benefit of enabling CAMSS on a board without any sensors
> connected to the SoC? Likely the board specific change has to be removed.

This is not a board, it's a PMIC-related include file which just wires
the supplies.

-- 
With best wishes
Dmitry

