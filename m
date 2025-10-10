Return-Path: <devicetree+bounces-225250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D3CBCBDC0
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 09:08:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F32A83BE31B
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 07:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00F4F240611;
	Fri, 10 Oct 2025 07:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ePi0qupT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861D9C2E0
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760080116; cv=none; b=o2ZuuNf3bftMLZv+SoeelR6FW828XuArgLdXZ1zBoi2GTRomAsTdmFhfKB1A/crQy5Pu6vrnuHJfX7NlShxH4rjlIhxCsaEeds2fezDqKmA18S0Wd55egxmeTZU6KNmIkcTCG4cemKv4Y6iOpVSg7X7woFjL5Cgt4J2pH7NJTP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760080116; c=relaxed/simple;
	bh=Qah6LtuAX2j9QhShtLOQTOP9p04jYYw3IQ7Ejye1OLc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MQ/nZzmxO7TIyGTRtsaGKT7zShj7RZDypwg0/gbagnLZdiZRw266fHZidtafGvLDh8sY/La5bxrZza3+8zRtdJrnNvWpvzMZ89WcMmgm2y9XaDKu5cM19TNxLET8ThFHnv8FSlZ8V2s9AMFBDcNNg4eVydOJGJBF+724Z49BTAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ePi0qupT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59A6X9F9007058
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:08:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Xw2joKvpmYxeQiWj5Qkkalzu
	uu9OHAViu8m2lKPfbr8=; b=ePi0qupTMVKure/+v15XU5VDZVhvBtlXo11+ouuo
	GB5tJp50JW0F3Eql1t6CTeToLy6fphhu1s9HPc+bP+J/xg3FtS50GNXU4IjMrofb
	9w1ayYENruIdPR5mdlkRBtd+Uh3LZSc4uk59IEVxWuVXKcr1RL5euH9AYNZ8ulS/
	6aE7j+gre3OV03/y5KkPRA0+f5wlfMIAtfqHgpH5yb32e7Wa9hz+kGqS/XWGZ+dw
	ocVjh7AHaXCiuP4ea6uXaWZDJO4exRsgC7k/9kHzjc+iHNrA/HkNvr81VGFrwKLX
	OvfsO/4GqkbQcMhHEjOQzbNJ+wJECXwOxTAayEb8Q7kv8Q==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4j5frx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:08:34 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-780f9cc532bso2651635b3a.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 00:08:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760080114; x=1760684914;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xw2joKvpmYxeQiWj5Qkkalzuuu9OHAViu8m2lKPfbr8=;
        b=ugh/ZphaV8++49bo9cI90SmUn1fZurbfWSf9GReoMSv+YgEsvlkxodlRxp4XN8Db0Z
         593zDe0j3JJSFLkVaCuGs0CNADdXn6CHfOlDy1pB2T1J1ucZnGnQw2YEaMGw8+xSUs4L
         Mz8fD884MTo3ZYxC8G2/d+/5lZ577a0KHlA7a2nsN2pTuIpX193vIiW04HnhyMD7cDj/
         k4QHlkrLhqMCnwMoycaAUHiewb6XZ/g1bcZxsunfZQcR2aCJSUSlKzTjB14UpJPvXJue
         VrzqIofKDgv5qRu7YGJDxY0Bc5LCsjBcb5HugSebupNFFJvogTLa1Q8BxeGMVIsyO7Go
         33Mw==
X-Forwarded-Encrypted: i=1; AJvYcCUpAJ8yIh/72C/3NiZzKG7O+IYGZCCA4GB8up6Ku8uB1T4CsxgkX+7bVw/BTTsMmcE7O7BC0usvJukD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7w5+SQHU32B6sgwt4sIAKog+4fFuuyf2vVN3nPgeDfRuCIfIA
	OBQ8sfl1xKYpAV+eu15yFTSOAZVZnpUKL6XPmatEjNlMcz5nn4Wq0XxePb0SNESKCSOnWXl/pWh
	Uw1Pc2yGXf2VMxGh9V4jK59642vHaykNyR8FHdkP2Ux1H/lf1Ae6jDCwP2JwfXXZz
X-Gm-Gg: ASbGncv37gK0zHUnxUfd4aYOLFxKulPl31X69XjJnt0LT8q8QG/kVt2UdsxWVwisvOU
	Ajk1KyLYzAEuLqFRV7ETEKR0VuVeRIHUaRVavNUB0fErCiS3qMyg9mp3t/RrsR6z/oSrz+W1u7w
	GD3wYWgu2csPRwG1hkGhchvsX9KgXWx21wyzJtmvNvdoDrLnNLMDNwaWU8CAjqIdcLuP9irvKxs
	9JMKlRJLKafqcYAzip8RCa5aToy/O6i2PVCoTink5OUBXHbJj4fdAOJDnZEuQt+4ImTLYwb5z9y
	6+U3FALyTY3T0N6ba1I8T3FCGwIQUVwRlqCkErsZbr5+YTHUvr03yGi1qJUniZ8Sna2zc2sXvT0
	vfFIIOUUJD/U=
X-Received: by 2002:a05:6a00:3b8a:b0:746:195b:bf1c with SMTP id d2e1a72fcca58-79231afd0bamr12299738b3a.10.1760080113794;
        Fri, 10 Oct 2025 00:08:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmzhrFcPAMPGHBtZVt2ioi5eAMZgjgvwzYs//hswKwOgxEZGG1Cd23PphUugw3BHrPYFhivQ==
X-Received: by 2002:a05:6a00:3b8a:b0:746:195b:bf1c with SMTP id d2e1a72fcca58-79231afd0bamr12299713b3a.10.1760080113312;
        Fri, 10 Oct 2025 00:08:33 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992bc13674sm1903782b3a.36.2025.10.10.00.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 00:08:32 -0700 (PDT)
Date: Fri, 10 Oct 2025 00:08:31 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH 19/24] arm64: dts: qcom: glymur: Add support for PCIe5
Message-ID: <aOiw75D0RhDNLZLQ@hu-qianyu-lv.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-19-24b601bbecc0@oss.qualcomm.com>
 <da2vvejbqdteaszzwyktczqivjblyawzh2k2giyoxdxlxcdrcb@fkuqivjmaggf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <da2vvejbqdteaszzwyktczqivjblyawzh2k2giyoxdxlxcdrcb@fkuqivjmaggf>
X-Proofpoint-GUID: U_nb6Wtlcb9h9fN2AvgME1rRtDDsSv2t
X-Proofpoint-ORIG-GUID: U_nb6Wtlcb9h9fN2AvgME1rRtDDsSv2t
X-Authority-Analysis: v=2.4 cv=f91FxeyM c=1 sm=1 tr=0 ts=68e8b0f2 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=ylhLzIKeAnBU69OqGgMA:9 a=CjuIK1q_8ugA:10 a=IoOABgeZipijB_acs4fv:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX+6Km+LI1SNyC
 H/bD24pNzjgt8zhnuxXFg2zZsosN524W+m3/lnA3leOU5mCCZFuuJjFdM+VRejzDiDhMS/EKp9C
 d2c6gFXETKDJ0kBruno97c027YTsbAVq7Itg7kIAmgzKWOLpI8KZqBfYtHYviUYL7MWa25hdNw5
 ghxaJqusujEAZhwNNVqB2nwm9b7Fld2Mbgls4gCwGsyIYJnGjswfuFNIEiZWg1spZYOP0yEiR5Y
 +wwNAUhoaRgo19o1e+213e06xniggviaoR6LmzSQ4DmLqQjBh8oIfFKXW3i5rZmov+FIA7YmhDl
 9mbDw4rD6ZGCk09fWG0Msj3uql2DPbY2hsMIfQD+Ro1bDDjn47B05/gYZu0eEHflAzt/q9gNwVz
 vEMU6+XdZU+sOAvfVMF7im5IjSRVSQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Wed, Oct 08, 2025 at 04:36:59PM +0300, Abel Vesa wrote:
> On 25-09-25 12:02:27, Pankaj Patil wrote:
> > From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> > 
> > Describe PCIe5 controller and PHY. Also add required system resources like
> > regulators, clocks, interrupts and registers configuration for PCIe5.
> > 
> > Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur.dtsi | 208 ++++++++++++++++++++++++++++++++++-
> >  1 file changed, 207 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> > index e6e001485747785fd29c606773cba7793bbd2a5c..17a07d33b9396dba00e61a3b4260fa1a535600f2 100644
> > --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> > @@ -951,7 +951,7 @@ gcc: clock-controller@100000 {
> >  				 <0>,
> >  				 <0>,
> >  				 <0>,
> > -				 <0>;
> > +				 <&pcie5_phy>;
> >  			#clock-cells = <1>;
> >  			#reset-cells = <1>;
> >  			#power-domain-cells = <1>;
> > @@ -2511,6 +2511,212 @@ pcie_west_slv_noc: interconnect@1920000 {
> >  			#interconnect-cells = <2>;
> >  		};
> >  
> > +		pcie5: pci@1b40000 {
> > +			device_type = "pci";
> > +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
> 
> The first compatible is definitely "qcom,pcie-glymur".

According to Documentation/devicetree/bindings/arm/qcom-soc.yaml
the preferred order is qcom,socname-ipblock.

- Qiang Yu

