Return-Path: <devicetree+bounces-225072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 694E0BCA2E5
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 18:28:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8EF5189C1D7
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 16:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 557B821B9FD;
	Thu,  9 Oct 2025 16:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NJoSqlVN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F041A9F96
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760027298; cv=none; b=qBOIwC/+r5PFln36cFfXzafOQg8r+cKd93JFnkYB3r0oF5j1+SGb2DDL8r030aomD8L5YqABOTUeqEdZ0+p+Sw+5iTY4BzfVlnn5sFxhXX20zqBfKEGp6Knclm5Xjzdkonz2DL+9aP0HKLCZKpGM8zogEQqYZrGKJa675hPPLL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760027298; c=relaxed/simple;
	bh=fqg3g5ZmYuV22v5Z1zMCldKZvaxyeZikhZJzA9NLUTY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AZm+DXf+eL+uSWdxRQRdE71V+hMaE8zkQwrlZJGexuLc36t0p5Zd0r5zbMdBQlLjlXXJKU9HPw8gjoFwcbhbYPyKYsJYDLS1awZn+hTA7EjXy9WocFHz4YXV0jSgO8mgdMAlZxYqwXgaqJkWnUMAXMLvjAg+/85QjxRRiRsHKYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NJoSqlVN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 599Ec4af028592
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 16:28:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZnXpFZQ4U6DhSA1tPT9J8U9x
	/9Yu9OLLvkeFfqxAsdo=; b=NJoSqlVNMOKWY3a0Z8om+XkzXR1iInrqnj0hMDKK
	bEBrLJVk+uXZ3JbJNTrHfhGkpD9prVO90x1akiNoyfbHmts8/0et/B1zCvbXcyAW
	kDp4EQHza/JUC6PbpLuZN9/S3C0z2icB39A9qSgFTlUlkGXXkYhL5jMcpm3qj0ks
	1wny+Goqbli8hx/1Ck/e5XYH+CfvneVZQHpHqdSNcoUHypZ7FISyiPb4DFAOLXNP
	98kpNEayE8oIpvdJK5BBiU+nSZFf3pRBcWQsyG+4tAcUcFI/5G5pPnwFkfgEY0J3
	j/1OWMp0XvHiUklN+epvkOMTOQ371Sxd7ybNpC3o5R9f/g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kukhm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 16:28:15 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d91b91b6f8so22735111cf.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 09:28:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760027294; x=1760632094;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZnXpFZQ4U6DhSA1tPT9J8U9x/9Yu9OLLvkeFfqxAsdo=;
        b=MRF2qvls8Pungly32YaRXpbVXGUWgL+BRYbIs4sEv0wRrIsIssKkTShK+sBJ50MpxO
         JUkBWUye5ZNGlzyfbg/AdUIDY6z/ekMn9WLDngqr3przU17RCTOGaojrASeJrvspfQVg
         U0ieBgT4UuScIDNs5hYtT21Qk4qoAx5zFnk/z6B5I15oplH0jsOHwQYmWS93F3E5VXEB
         U+KIC/VxhqHpzzRlcuUZWi+lufrEfzgsF4GFdvXuQrTzI7UYlIU9Ne9hE7HEQpkyHfYs
         4HBm80odR9cQJKLDQ31Az4EEpMXcMnrzAp8ooaYPH96M6QKSIsaW7f7TyrmXde6OF1GI
         qjmA==
X-Forwarded-Encrypted: i=1; AJvYcCUkli3uALggXs9/Tmz79J2wBIqXbaA4HSKlE8MnblnqQa6d+YEW6x/6i9G6TfjtZ/0L/2d8Sa8VA3ok@vger.kernel.org
X-Gm-Message-State: AOJu0YyxdVwi8HQ3tcttSzeM865O7pKzLD6k01awPSERnGbjQKk71zWO
	4w1fmRY1DiVlzmMKUm0gEKehR9ZJbXcCvAJ9eJW/aqbBoKdbmBqc/EeuRhEqB3HqicwmgtgDS8Q
	iSKRn0L5o+HYJ8QVax12I4oZnZpMhd1rdKG+4L36RLDEcrLeVovILMuW5Aad0SIq2
X-Gm-Gg: ASbGncszCPSAGFuxHYRy9A0mDcJNf7AnaPUVMxbElNVfDDEpJjPNAPbRXEBzzXAAAjs
	dkvZs8TRlKr7TpVXZLwjc9RDBKrHlputNQQfRetXZoyu05KIQ0HI4tKjsRKw9p3y/bffHwMLAde
	iUE2RpCtvIoY4JXbwtEVWQtWu8d4JKeHZtCrV1OZefRvRWXFRzeF87Y/Aj+9hj4SLrKK9lVwilP
	DGmw2PMB4Xe8+zorRtvwWbi1LuX97zrLbUfRRAk7J9e12XmzBseAhu+H5qpITsTuK+dgY584Kyf
	Q89G/9hAviKUgRkudePjNAydflamRpGEUNgXsQ7i/rPOgOp5EPuINTFwiR2+DF/GkNf2x7/cZF1
	5GapeWNfEVgGy/3ax6UmF0Z9TNaPrm4hV3Pc7BTJ7kecMVVpwZUSwUTQZ+Q==
X-Received: by 2002:a05:622a:4acd:b0:4d9:4863:f4e5 with SMTP id d75a77b69052e-4e6ead6714fmr101251801cf.62.1760027294452;
        Thu, 09 Oct 2025 09:28:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjQJ0wOBwgsaJrRS5HHNu+KDYVK2dVDJgniqV9gP73jMPAU3sRYpuRCv1KT3nf4BpbOlVV5A==
X-Received: by 2002:a05:622a:4acd:b0:4d9:4863:f4e5 with SMTP id d75a77b69052e-4e6ead6714fmr101251071cf.62.1760027293700;
        Thu, 09 Oct 2025 09:28:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f3b63fc6sm29450151fa.36.2025.10.09.09.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 09:28:12 -0700 (PDT)
Date: Thu, 9 Oct 2025 19:28:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Eugen Hristev <eugen.hristev@linaro.org>
Cc: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 14/20] arm64: dts: qcom: kaanapali-mtp: Enable more
 features
Message-ID: <kocj7sf6jgj4uynvlxvbsojc4bykyj2ipb4ex56fagjqoxwcie@2trytltkhd4a>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-14-3fdbc4b9e1b1@oss.qualcomm.com>
 <588a7b68-2e2e-4e65-9249-fe8b18b67927@linaro.org>
 <831f6fd7-b81f-4d6f-b9bd-5a8fe514befb@oss.qualcomm.com>
 <0c9ca026-9986-4347-a86d-8bf65e2d12e6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0c9ca026-9986-4347-a86d-8bf65e2d12e6@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX4RKjD61DI/Ef
 zEhS9kpNVCBGhsvK1Ymbz1GJHeZc3BKDSeZkLWAT6etRx3TMp+Zny2D7WaXRcSPre1PIvklfDnQ
 Ko1w8Fy4qb/fyOWNPDx8586nigT0WH8T9sDguxXpwLjt1kZE+H5Yl34xJkT5nmHrpnneV0nD2OD
 SGRz7blxywwOyqnHsohZlmIRm1Izb38mHPXIOU1USprwG+sIjZf9nCnR82HcWISl62T8eGncFtf
 Qixsa6TO84jOKSieWEYkO00ZaJUlGvEHvlY2vd1VZpoYVfQ5a2v1N+xaW92kkdFT2hhRcLGWHhe
 avL+Kw61XyKPoyuT64qS53qgrQXURgXOAIHbjZhCVS+JpWb9fBsh3GoPp/0ycMYGDfZUZJA+Vpa
 t2x9BO0CF//3OgqDRoaaIzD++CItZw==
X-Proofpoint-GUID: 4_Q49Ntey9di7xu8XYYYD4nM1COq-yVI
X-Proofpoint-ORIG-GUID: 4_Q49Ntey9di7xu8XYYYD4nM1COq-yVI
X-Authority-Analysis: v=2.4 cv=SJxPlevH c=1 sm=1 tr=0 ts=68e7e29f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=SzOJWy82pAEjsAOwwT4A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Oct 09, 2025 at 05:58:03PM +0300, Eugen Hristev wrote:
> 
> 
> On 10/9/25 16:54, Jishnu Prakash wrote:
> > Hi Eugen,
> > 
> > On 9/25/2025 1:33 PM, Eugen Hristev wrote:
> >>
> >>
> >> On 9/25/25 03:17, Jingyi Wang wrote:
> >>> Enable more features on Kaanapali MTP boards including PMIC peripherals,
> >>> bus, SDHCI, remoteprocs, USB, PCIE, WLAN and Bluetooth.
> >>>
> >>> Written with help from Jyothi Kumar Seerapu(added bus), Ronak Raheja
> >>> (added USB), Manish Pandey(added SDHCI), Jishnu Prakash(added PMIC),
> >>> Qiang Yu(added PCIE), Yijie Yang(Added WLAN) and Zijun Hu(Added Bluetooth).
> >>>
> >>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >>> ---
> >>>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 663 +++++++++++++++++++++++++++++
> >>>  1 file changed, 663 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> >>> index 9cf3158e2712..2949579481a9 100644
> >>> --- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> >>> +++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> >>> @@ -5,9 +5,23 @@
> >>>  
> > 
> > ...
> > 
> >>> +
> >>> +&spmi_bus1 {
> >>> +	pmd8028: pmic@4 {
> >>> +		compatible = "qcom,pmd8028", "qcom,spmi-pmic";
> >>> +		reg = <0x4 SPMI_USID>;
> >>> +		#address-cells = <1>;
> >>> +		#size-cells = <0>;
> >>> +
> >>> +		pmd8028_temp_alarm: temp-alarm@a00 {
> >>> +			compatible = "qcom,spmi-temp-alarm";
> >>> +			reg = <0xa00>;
> >>> +			interrupts = <0x4 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
> >>> +			#thermal-sensor-cells = <0>;
> >>> +		};
> >>> +
> >>> +		pmd8028_gpios: gpio@8800 {
> >>> +			compatible = "qcom,pmd8028-gpio", "qcom,spmi-gpio";
> >>> +			reg = <0x8800>;
> >>> +			gpio-controller;
> >>> +			gpio-ranges = <&pmd8028_gpios 0 0 4>;
> >>> +			#gpio-cells = <2>;
> >>> +			interrupt-controller;
> >>> +			#interrupt-cells = <2>;
> >>> +		};
> >>> +	};
> >>> +
> >>> +	pmih0108: pmic@7 {
> >>> +		compatible = "qcom,pmih0108", "qcom,spmi-pmic";
> >>> +		reg = <0x7 SPMI_USID>;
> >>> +		#address-cells = <1>;
> >>> +		#size-cells = <0>;
> >>> +
> >>> +		pmih0108_temp_alarm: temp-alarm@a00 {
> >>> +			compatible = "qcom,spmi-temp-alarm";
> >>> +			reg = <0xa00>;
> >>> +			interrupts = <0x7 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
> >>> +			#thermal-sensor-cells = <0>;
> >>> +		};
> >>> +
> >>> +		pmih0108_gpios: gpio@8800 {
> >>> +			compatible = "qcom,pmih0108-gpio", "qcom,spmi-gpio";
> >>> +			reg = <0x8800>;
> >>> +			gpio-controller;
> >>> +			gpio-ranges = <&pmih0108_gpios 0 0 18>;
> >>> +			#gpio-cells = <2>;
> >>> +			interrupt-controller;
> >>> +			#interrupt-cells = <2>;
> >>> +		};
> >>> +
> >>> +		pmih0108_eusb2_repeater: phy@fd00 {
> >>> +			compatible = "qcom,pm8550b-eusb2-repeater";
> >>> +			reg = <0xfd00>;
> >>> +			#phy-cells = <0>;
> >>> +			vdd18-supply = <&vreg_l15b_1p8>;
> >>> +			vdd3-supply = <&vreg_l5b_3p1>;
> >>> +		};
> >>> +	};
> >>> +
> >>> +	pmr735d: pmic@a {
> >>
> >> Hi,
> >>
> >> The PMR735D is available in pmr735d_a.dtsi
> >>
> >> Can we find a way to reuse that include file instead of duplicating it
> >> here ?
> > 
> > In pmr735d_a.dtsi, the peripherals are added under the parent phandle
> > "spmi_bus", which was commonly used in older SoCs having only a single
> > bus under the PMIC arbiter, but in Kaanapali, there are two buses
> > present under the PMIC arbiter, with phandles "spmi_bus0" and "spmi_bus1",
> > so we cannot include the file as it is.
> > 
> 
> I know the problem. I disagree with using include files in one case, and
> having the PMIC in the dts in the other case.
> 
> So there has to be a unified way to handle this in all cases.

Rework SPMI PMICs to follow the approach started by Johan for PM8008. I
think this is the way to go.

-- 
With best wishes
Dmitry

