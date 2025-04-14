Return-Path: <devicetree+bounces-166626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AB7A87D64
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 12:20:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA11616C8D5
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 10:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADF90262D0B;
	Mon, 14 Apr 2025 10:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aeUMbZlQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9C419DF5B
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 10:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744626000; cv=none; b=mhoBkO1XhT2/QGooEon0cRJfIV3NHYeQuMDpRXRlcVQsjrkaz9ULpLDE2sOKspGHLedTJnpSU75Jy94JgWC+I0/uPSEMtWkdZY3DC9LCPQuRmg/tNwq4lvfwt0tt+9arKPHpI1ZZD3YIj2Sg8tySV2j+KoeMvfjGTGCUlv2gGQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744626000; c=relaxed/simple;
	bh=6LdMwrsc0vig5nRzjKOOFed8q87TxEDlzdFs0pRtqVM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RGDRTuRmnHoKualbjRxT9s42jEBAU+1UDCv1bNwy3BUzFY0/3rNRkQ8hz8IsTI5tnUtQdwV5rOSM9YcqOOu//R6gsblMhrPG+wRHmBRJZW+2bs4Vv60LDBDzoTyOEXd7rfViQuP7uWHizc3YA/H99KeZOzb/J4Yvd17ooYgxOrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aeUMbZlQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99q4q001760
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 10:19:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DLAhpetcd11dpwWTT9KAow1P
	FzBjgslBEESFhVk8JwA=; b=aeUMbZlQouwDEG+T28DbeQ9Th4P97Djhacs9CMnX
	NnzlDGF6mEDd5sVPiOcQeMxtQnEe9bCLWfOh5YNzS4xZ8g9hlMtRWQWWyRqAoXmo
	rDNbZxFNTDfGpdFHG8zHWf+XrrAeMdSEgU77E3N7YG9P2PpREjcfLVw0RAW9kjhc
	NKJNIbgq9TZuikih9pfxyyh9yJVYnn8MIy8cen5uz/xR8zamwa1b2kYD/c9KapIl
	Ho8xHCimOBvX2igIl+vK+q3XGzpqAmSsstxOin34Wz5qXIcIT5sgiD4xoiJzfxf3
	9i8BfkscW8fOTj4u6Zo7D3vDcFEiqyUXu9Fe50+UKao4fg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydhq4dmp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 10:19:57 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5f7210995so735293785a.1
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 03:19:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744625997; x=1745230797;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DLAhpetcd11dpwWTT9KAow1PFzBjgslBEESFhVk8JwA=;
        b=Ny9cTH1gydTJ4tmmlEmv7klNUIAdqvUPUlmtkunElioxGzPk0uoJy970oob9zmnL2D
         sadckmgGPI8976dvbmziOHBB9mEfwgnsr48PMl0RKrv1yFIMM/Vh9VYkYxGqnm7XE0Uz
         tHmGOrDxABVSOhUf/Z2Kz5d+VCAIczFq3Rn/9Yq78xCmYb6+ajQcv/5c49yYhRsaaR6i
         s5lypb38Z74KKq09nL/VE02ZUlmCFSDBaD0BcpT+nVRQR77HYUTsqP9IbRCxVyYuLfTI
         l2XLHC/QE60NAV3rGcbZMbJpicgtKsTq9fwk8zBUr6CpupLawk7eXOVuF/rlcp0CVPhq
         HckA==
X-Forwarded-Encrypted: i=1; AJvYcCXDniZQaFfdV52GBgE6aS6G2pzNW9qOm+TI136cpGuj5i1eAuhs0sXimV6kH8y1jX6qpJNrwiBu2OWV@vger.kernel.org
X-Gm-Message-State: AOJu0YymujXo1Z8ptfj3UbA646oEIvkj6yhtbWrLujfCR8TU9kkUxiiE
	+xWmoIv85q3NLvQ65yDPS5J2bPvofFHLkP4PnQ6AgfC9D+GDhfiZxs2Gs7hEb+T8rxF6XqSLL8q
	m4azsRvmS95eKGV6Q5aDShPIRa5i0n3WXueYUuBviUWWmILf7rHxTgF56qIF/
X-Gm-Gg: ASbGncsA1n7kCv4ECHVE9Lf1hSGzFptZKzlU9/rQTWlcwekRJfha/vu6xJv7dn/rqG8
	Fs9TtQV6bfCXBaC40bARPoXWHccZD+NfVvlfEKFz3z3joiZIhSnPsHXaBb/Py6Do5RypAeCD53V
	LiMnh+/PSmpOrB5ItpXG9s6GOrwpBoNmxw4RsatYVeWytu6KD9qSQVLjpWNgAL57d4Mn3dQa7kJ
	zoZTYq+JCP8FhHYBIORuP2g6W/4kcPb0x/7WtiAwpZR1NDiTdr9kZSTL/DkhBZmxmHgMnVTLwBJ
	cuioZngMteqrmVTIoH8AJ0fAf74P0D8pR8Ltz3flekpSZJe4LNXttBiaDx12zZMHfVGWtzNc33c
	=
X-Received: by 2002:a05:620a:248c:b0:7c3:ca29:c87e with SMTP id af79cd13be357-7c7a76b97aamr2245095785a.21.1744625996841;
        Mon, 14 Apr 2025 03:19:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFz2lvRi5xYBSv5aHzaBCPJf25Htmry2/RAX+OhA7qGrMdkO/NDzUDOvpcFZ+lr31+ZTFkX+g==
X-Received: by 2002:a05:620a:248c:b0:7c3:ca29:c87e with SMTP id af79cd13be357-7c7a76b97aamr2245092985a.21.1744625996372;
        Mon, 14 Apr 2025 03:19:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d238b1esm1064763e87.91.2025.04.14.03.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 03:19:54 -0700 (PDT)
Date: Mon, 14 Apr 2025 13:19:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gaurav Kohli <quic_gkohli@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, amitk@kernel.org,
        rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, robh@kernel.org, krzk+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_manafm@quicinc.com
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: Enable TSENS support for QCS615
 SoC
Message-ID: <wkvfxmwta6xvia2drxsit67w4fwihuds55i6lhqoa3wykdih6d@23us2i6olk3c>
References: <cover.1744292503.git.quic_gkohli@quicinc.com>
 <76e0ce0e312f691abae7ce0fd422f73306166926.1744292503.git.quic_gkohli@quicinc.com>
 <7f893243-572b-4e23-8f2b-ae364d154107@oss.qualcomm.com>
 <46cd600e-b388-4225-a839-a6af76524efe@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <46cd600e-b388-4225-a839-a6af76524efe@quicinc.com>
X-Proofpoint-ORIG-GUID: sMmRDwSXWvRPsGLDylsVDBMsGTCNFjh9
X-Authority-Analysis: v=2.4 cv=C7DpyRP+ c=1 sm=1 tr=0 ts=67fce14d cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=5yKBnrlMSY8RUHeF2GIA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: sMmRDwSXWvRPsGLDylsVDBMsGTCNFjh9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=696
 priorityscore=1501 suspectscore=0 clxscore=1015 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140074

On Mon, Apr 14, 2025 at 01:58:12PM +0530, Gaurav Kohli wrote:
> thanks for review!
> 
> On 4/12/2025 5:13 AM, Konrad Dybcio wrote:
> > On 4/10/25 4:00 PM, Gaurav Kohli wrote:
> > > Add TSENS and thermal devicetree node for QCS615 SoC.
> > > 
> > > Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> > > ---
> > 
> > > +		cpuss-0-thermal {
> > > +			thermal-sensors = <&tsens0 1>;
> > > +
> > > +			trips {
> > > +
> > > +				trip-point0 {
> > > +					temperature = <115000>;
> > > +					hysteresis = <5000>;
> > > +					type = "passive";
> > > +				};
> > > +
> > > +				trip-point1 {
> > > +					temperature = <118000>;
> > > +					hysteresis = <5000>;
> > > +					type = "passive";
> > > +				};
> > 
> > Please drop the passive trip point for the *CPU* tzones, see
> > 
> 
> we are using trip-point 0 for cpu idle injection mitigation which i will add
> in subsequent patches, if you are fine i will add cpu idle injection cooling
> map in this series only ?

I'd second Konrad here. Please drop them now and add them in the patch
adding CPUidle injection cooling. Otherwise they are a perfect target
for anybody to clean them away.

> > commit 06eadce936971dd11279e53b6dfb151804137836
> > ("arm64: dts: qcom: x1e80100: Drop unused passive thermal trip points for CPU")
> > 
> > and add a single critical point instead, see
> > 
> As critical shutdown is already supported by hardware, so we are not
> defining here.

What about letting Linux to know about it and perform a slightly
graceful shutdown?

> > commit 03f2b8eed73418269a158ccebad5d8d8f2f6daa1
> > ("arm64: dts: qcom: x1e80100: Apply consistent critical thermal shutdown")
> > 
> > Konrad
> 

-- 
With best wishes
Dmitry

