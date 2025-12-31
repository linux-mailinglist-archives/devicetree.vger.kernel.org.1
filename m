Return-Path: <devicetree+bounces-250830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D63CCCEC39A
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 17:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BC2323006988
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 16:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30912836BE;
	Wed, 31 Dec 2025 16:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y56WiDHy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R7hDBfOX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FECA280A58
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 16:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767198002; cv=none; b=ukY3DiCsvUeVg7HQEkgLynP3MyZ8azhFMtjrLRQlxWoIcWIuk8vkFEUZK5HN9YnI2/YIr/BIm5WZ2SuoOoj6I/AmZBfSna7IH/dXsZrOWYBEO9zedbXBeLr6SLgDFOOBMSHV58aEQEtD893tBvWXCIuEFf0CMsFLsfKBnwhvgg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767198002; c=relaxed/simple;
	bh=TjWyl/IKuzTstBsl5AwfCxuvTaP7c1/nmqk17o5zekE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aO14jvOfxdxd3bWG3KBMiKfC0sj4ohUKVVU+xwhakfjyYTx/ToYeMk7PBGQTL7GuVyfNfDUHhSGnpgAOXW21dbZqdOSAY9aGToQVUXvyCsbQCVryRtKk0dE3K/tamqBJ3WADu47r/kbqv52OKXUPnOZb1kVzVVzBMLb0+dTuVZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y56WiDHy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R7hDBfOX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BVGIDBA2872520
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 16:19:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=68Auck60GyYj13jsQrKu1d0p
	myBuLZkKakUCDN+kvEQ=; b=Y56WiDHy7zvU0OWvNzDvl3lFHBxgcjngMAAiMLl1
	+0lnLb+eNZ0BAQ+EAwqgX3EBHGSZnAKY4yPPdKbQxB/Mlu8vJ94/SJwlimPu0khg
	1R0TOG82MaUTqqWMyrUnGtLDUI5BtEn1DjeG8gVTs2XpcxtVrWi5HKPvq8ogxbz7
	8hxan3I7pKUMR2SUGZk14S1YgMCGYEuahfTmFnCTOgkCiXRW+q1K4ufkf4LonRUI
	K9hEUpmLOIT7lBgpFoJx5to/ei9oYHx14W9+lH28qlfG2UgC2zGPOsV3ISBsjBBR
	80A7/vyQ1UEH8qapElypV71/OBFAHyjDjPZtytge8VRmZA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bd77v002w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 16:19:59 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee0488e746so237747411cf.0
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767197999; x=1767802799; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=68Auck60GyYj13jsQrKu1d0pmyBuLZkKakUCDN+kvEQ=;
        b=R7hDBfOXE2gvli/DdVlNgn0McHMQt4YegVEZcgYxoP/kN8ExoktUGZUtN/17YxQr6D
         479GnonL4Z63HTE2bNYOae1MN1/CXW5GujkR3i4R/FyMsSts8nC5jkKQ+rRDubS0MMwY
         gyRk1LaubJgRbUTwVRWRfrE9uxfF7TSb69qq0CxK7HLBirPtbkqjFBQvsn+DkwD1AKm5
         ozDO18Mx/TO9D7+3RVZeYVsRdO4+pcgmVSJGxAg9lTXcqIgWewb853UGGxK/WtOlFYHL
         sG2qyaKiCMzd4mK6m0pRx6Tb4EJdkdYQ1ttuNkPefq+21vpLGi4j9LZpukObJZYRYvLQ
         NDFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767197999; x=1767802799;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=68Auck60GyYj13jsQrKu1d0pmyBuLZkKakUCDN+kvEQ=;
        b=N9y6tIyP65XHy8T1LkayBuaD63Eg2dd2HiOM0R0lQApzS6o+xA0k52J59eX/Texixe
         wB0xnk9D5dV0oKYrbxROg24Xr+0Hu5K++4CrP8JMD289jCZJ39GzmZwWyNA6r10NFl7M
         VVhyn6EKHPJNAl6naiwKp0uc/m/WwAIFdKVNL2EcbnJOMhSy9DVgRkVG93xOa0hDDmsI
         Avj6p2ck+hyKIIfrMPmu/6oXEznNrUeCv/hLrZ/qaOPahJYgXbOWR8Z3PLscrFOos0n9
         CpFfGjiaOm2jQ0saVPkJQeEIQFtihKGEOTgc6QcvRzuf82GN0cXyEx4HbV2Vw8ZgcI4P
         WLEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCz+gfrzFj4YgPEMfdibwBL4vRnyYRPENEwq4bUacY7a6jL9F6XxwgpjxnOrB4mtFUmNgNYtaLLpIx@vger.kernel.org
X-Gm-Message-State: AOJu0YzQKA7SmvmFosWAN0m8QuhImcNQWV9JkU33hiugLHyOyG9D9vKQ
	J9UAsm1JSgA7cN5HiZYo+oPDG91UUyp8snT8sf9veEEy9l6AO87Lcq3eli7pr9v2llKph1mO+Ym
	vS8NL0eLkV08uZ55qZZbEPptYKf1OtCF+HpNHSkoh2ycA6lZxqIPrJuuS53vGlIDm
X-Gm-Gg: AY/fxX5/64K0cLxbZSc17ZY6JZpy1iOS57oli5+kh6KOScAAgN3NmqTX1SqvV+9PCjD
	KP3e9cDkYHLF1gDGRf+zGO6y5qAmPuoPHrTa+YJTgIpMGsKEyWP7a0qF5vuUz87Q2+gN2fw6jKq
	PaUmQLXfpdWjMeDXj2Trm2yFSvdma2tqBf99jg24RBHTQzA6p8cYQzXom6AFc+B2qrqx+vxF87T
	E8dJhEkhfzEMcgHIQgiRo6V52+EiEEKWhZBSLxdRulKroubkv3arBNUWIk5+0bbfiddnq68jlHJ
	FhsIuNK8HkNBrJTgsTKXDpe/zujo8EAZlb4/abijEDCf0P2pX9WdNkq9tyZr4m5j8od2x7WaOD2
	G9bhHKB3+kM7DJqD4NHW5xJmPRrt1pqEJBpErEoqbpCKTprcfQu38esIj6DcM0Jh47KLAPrHniv
	hhQWqLH30d/kPL0rGwLt49qcE=
X-Received: by 2002:a05:622a:510:b0:4f1:c1d5:e37e with SMTP id d75a77b69052e-4f35f2b5da0mr569786011cf.0.1767197998968;
        Wed, 31 Dec 2025 08:19:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHTdCBy+pVg+IDVoeUL7VU7D/QmJWesvdotmIF1p1sLqgL4Z+uXs6v2Khhhh/si8HOFeLlgxQ==
X-Received: by 2002:a05:622a:510:b0:4f1:c1d5:e37e with SMTP id d75a77b69052e-4f35f2b5da0mr569785601cf.0.1767197998547;
        Wed, 31 Dec 2025 08:19:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18620337sm10855511e87.86.2025.12.31.08.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 08:19:57 -0800 (PST)
Date: Wed, 31 Dec 2025 18:19:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, linux-wireless@vger.kernel.org,
        ath10k@lists.infradead.org, linux-pm@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 08/14] arm64: dts: qcom: sdm845-db845c: specify power for
 WiFi CH1
Message-ID: <brzdqbu3uiy3gd5a2uyzcgx24wvuhjrrs3fs5b4qbnj5jvmra3@rfbiy5kgwlbn>
References: <20251231-wcn3990-pwrctl-v1-0-1ff4d6028ad5@oss.qualcomm.com>
 <20251231-wcn3990-pwrctl-v1-8-1ff4d6028ad5@oss.qualcomm.com>
 <ab7d6780-4328-4c77-9133-402dd1c4fcaa@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ab7d6780-4328-4c77-9133-402dd1c4fcaa@oss.qualcomm.com>
X-Proofpoint-GUID: L70EB1v1DlR9Mb14x1XxKPkByYcbQwcJ
X-Proofpoint-ORIG-GUID: L70EB1v1DlR9Mb14x1XxKPkByYcbQwcJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDE0MyBTYWx0ZWRfX9Fm+rqnsJWc0
 voSxcR9v0b+F4CsU+GNdoofTEOOX0LQlPixP+L22Qd0/CQZpuMo/t/zM8ERyAhojpPvrj/LBYRc
 XIYqKpjNcmdMThgIbQqQJQVzwjZCnA8UAUtRR1VrcodABYnSwmdStLhCOY8A9eG/UoQ7a+L2ul8
 ieun0Z+7a/oEqyeCH4AxTrR/hxM/OCCqlaYC13IpeG5ynon0Ddr4fhecFIKMsO+C+nU82zoCpsM
 8YTkbcGIX+0jfX3MfYhhhX+3GTUMAMqRZvl294JWLbipn3ENFb2phuOGFSs4Gn/oztZAGsqdFVO
 ZE3vadA9kFp6FQgzxnFmJG15TU/8FA4BCuvLvRWsd7qigXOx658qpBm0PU+EdYz4JdMiFe58B2f
 iNpSd+eQxXgXG7vUcSM0oia8TEQpJ5jGKeJZ9cLmjQp54LZ6C2iNWJXF7zmHuY4cfyz0AESO4X+
 0R5rdWPSvCrQH10a1LQ==
X-Authority-Analysis: v=2.4 cv=ev7SD4pX c=1 sm=1 tr=0 ts=69554d2f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VsWXYa84w75D6ua-j4wA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_05,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 malwarescore=0 clxscore=1015 adultscore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310143

On Wed, Dec 31, 2025 at 01:09:49PM +0100, Konrad Dybcio wrote:
> On 12/31/25 12:35 AM, Dmitry Baryshkov wrote:
> > Specify power supply for the second chain / antenna output of the
> > onboard WiFi chip.
> > 
> > Fixes: 3f72e2d3e682 ("arm64: dts: qcom: Add Dragonboard 845c")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> 
> I don't have schematics nearby, but jfyi downstream doesn't do that

I checked in the schematics, it is L23A.

> 
> >  arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> > index ad283a79bcdb..5118b776a9bb 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> > +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> > @@ -379,6 +379,12 @@ vreg_l21a_2p95: ldo21 {
> >  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> >  		};
> >  
> > +		vreg_l23a_3p3: ldo23 {
> > +			regulator-min-microvolt = <3300000>;
> > +			regulator-max-microvolt = <3312000>;
> 
> Do we benefit from the 0.012V spread?
> 
> (i.e. is there anything else on this rail?)

I must admt jere, I just copied defition of the ch0 regulator. I think,
they should be the same.

> 
> Konrad

-- 
With best wishes
Dmitry

