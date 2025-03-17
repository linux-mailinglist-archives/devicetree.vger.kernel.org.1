Return-Path: <devicetree+bounces-158138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9163FA64C84
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 12:29:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7325E7A2152
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 11:26:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D82B7236455;
	Mon, 17 Mar 2025 11:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b3xYLOo0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F39230BC7
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 11:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742210861; cv=none; b=Gr7BzQWuEBcxGkGR0c4sk+ZvFo1+ASpgA78klOV0BOc1m0ZEJHCBWOS7/GUysJOOEzmUS5Y7k8suhH0kokB0+GG3sXC4xa0IsEX6QuSZOfVXh6yEQUJBmusLbwzYEmCXLQuF4VkKXmIFfubmfeORHBLbhGxSAKRGMbX/CXLYwvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742210861; c=relaxed/simple;
	bh=JiU79bmCJxOwRp4oAbETla+RO60mQJSftJKMO9L+DTE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r0G4Er4o7YMc1wbDDJaPZn+AgWFjzNJEBh8mMB7S4XOQAprq1zyHenmhRrqkMGdJBwWau4qb5dX4F+mFitCtlu+qGxBKH7Vgso0sQXPteGnBSywXr8RUUHFYznGu/kvyh0vHLiLVVLVAKXbAPAAgjI5XJK6dhxIR/eopfYfAGps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b3xYLOo0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52H9tIDB024780
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 11:27:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ks6H1Qe4LqVgg5DG9PYOBphr
	rgmZjuWkDZ+NJuoP5cU=; b=b3xYLOo0wdLbXGQr07iIEukKPKy0hFn8wL0YPyNs
	nqGjRcsC2lSNX/7+wXy9tzpxJTvOFc3vENEb+dPZ6j7AA0RIU36UN2aPY4kyDilZ
	Vt8EO1SHDBhS3Uwe5ZSfVSyQhNk5cf5VwQfW+/chuXu+qG0MqZxmwVxnw6NUKy5J
	xm2fXaKR9cYjoJZ832RaQTauti/YNG1MeRcnwQv0644XuX722m6uky8qTqgQOgIp
	aFwrZvg+IxUOm4bUJSmY4qbCDDD8ezeJTsI2fzHQieEfP8dxJuKx86cCDtQKtTwv
	NM/4Ywr/it7G6mJAyGfllLDcYK0/HPOruyuA7uJAl53a8Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d2ahcguu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 11:27:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c3c03b6990so769197885a.3
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 04:27:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742210857; x=1742815657;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ks6H1Qe4LqVgg5DG9PYOBphrrgmZjuWkDZ+NJuoP5cU=;
        b=AQ+84wwLDeWgCGHLFEvGjEHmZM1cqRud2WsuIzYMiTp1XxrNi35dFUWrdsDg6snALD
         seuqedMD4mh5+EKs7eRpR5R31iA3EADPJ7tDLQNxmRNpyH0zPNHBX5zAKz+qoIGxPJoA
         j6Mp6e5taW3+we4B6PowYBokigRuMBCFoNRl0e5qYBUVICUtAiT6gyjarggON5nVpJLr
         8OZwiPJols9DuInhQ8o1kNgAdzPTsouRu9VMYlhZZnKXYuS0WLzsgC/MScjpb9PsWZAV
         1Oa+1ZKIxkLcLmArma8p0nnlBVneGILsNr37i3AvbcKpbKDwSDaEpa1ttQ8ueGhBOwg4
         vdsA==
X-Forwarded-Encrypted: i=1; AJvYcCUWNyrXZkhf6aPTkQifHcX3o4RLtQlvBhGBwy8zb+XYN4338oolmWMriyIjyxEs+c+5blzM8buy1gIq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4/z/ylX9qtOH7FA24RkmHQqnRLwqk563FEr5gs5IEkonLyA8z
	pWIveKbJABFBOY3ilvydEsEkU87IDO/eV6h/5NsMoF4lagxUsF9T30z9JJpCHlZu/lSHrYEC2xg
	nPvaJmGf9CfpoASSE/hQss6Zrl23sJSe57EsvqZVsdO/75Q1lP0qtmtQlKR+p
X-Gm-Gg: ASbGnctcSkC/Ul2IccZMVf+JfYGzHc8hxOJWhzKdU7RiWOmngI/RVyNr8ECfI8h+u4Q
	M0J5/gj1hyaEUnvV2II22yLPSyIHzDvQpZdyhL4dMoP2rsk631K0FccYre6IFB1M5tTYpuYTOwt
	h/0/GBo0Eswz/roUOLLt3i288bbeX2DgRGRyawYwXus31PpYi3Ug9iZsAW4mzsy/+AFKQxasbAx
	jl3eSgAj1bxN5jO6vfBhYdGlgry5CQWUkMuev1C35JRU0HQq+vNSE2If5nEXYMOO7XpHgSGoX3P
	Q8oQW/BIA1IckZZyibZjlO+qBpw/79lSXJnqY7xcq95rZsD3mSUDdOtJEaTcTPt2/VU33OARlWw
	q0wc=
X-Received: by 2002:a05:620a:372b:b0:7c5:3df0:48cf with SMTP id af79cd13be357-7c57c7b99edmr1608500785a.3.1742210857636;
        Mon, 17 Mar 2025 04:27:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgmKbqNlFcHOVK7QmTXPEEAfaypemgHDiFvZ5/SKCUl+uj1n4jhLXU7saD/jBY49l4D08veg==
X-Received: by 2002:a05:620a:372b:b0:7c5:3df0:48cf with SMTP id af79cd13be357-7c57c7b99edmr1608497685a.3.1742210857270;
        Mon, 17 Mar 2025 04:27:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f1dbb12sm15187661fa.95.2025.03.17.04.27.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 04:27:35 -0700 (PDT)
Date: Mon, 17 Mar 2025 13:27:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com,
        amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com
Subject: Re: [PATCH v4 02/10] arm64: dts: qcom: qcs6490-rb3gen2: Add TC956x
 PCIe switch node
Message-ID: <c4ompv3t256tl4qosapvtt5fkk5wwqxikclwwuyffvvbu6noig@y2y3hhf24mtf>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250225-qps615_v4_1-v4-2-e08633a7bdf8@oss.qualcomm.com>
 <ciqgmfi4wkvqpvaf4zsqn3k2nrllsaglbx7ve3g2nbecoj35d6@okgcsvfx27z5>
 <6e51e35f-78c3-5d2b-697e-ce4a7da7b15c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6e51e35f-78c3-5d2b-697e-ce4a7da7b15c@quicinc.com>
X-Proofpoint-ORIG-GUID: exGrXYYNQQwJ8Ns2fHv7BHah5LcMpcDr
X-Proofpoint-GUID: exGrXYYNQQwJ8Ns2fHv7BHah5LcMpcDr
X-Authority-Analysis: v=2.4 cv=R7kDGcRX c=1 sm=1 tr=0 ts=67d8072b cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=iBLCvXWk7JtlIUnLWUQA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_04,2025-03-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 bulkscore=0 mlxlogscore=999 mlxscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503170084

On Mon, Mar 17, 2025 at 03:05:17PM +0530, Krishna Chaitanya Chundru wrote:
> 
> 
> On 2/25/2025 5:19 PM, Dmitry Baryshkov wrote:
> > On Tue, Feb 25, 2025 at 03:03:59PM +0530, Krishna Chaitanya Chundru wrote:
> > > Add a node for the TC956x PCIe switch, which has three downstream ports.
> > > Two embedded Ethernet devices are present on one of the downstream ports.
> > > 
> > > Power to the TC956x is supplied through two LDO regulators, controlled by
> > > two GPIOs, which are added as fixed regulators. Configure the TC956x
> > > through I2C.
> > > 
> > > Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> > > Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> > > Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > ---
> > >   arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 116 +++++++++++++++++++++++++++
> > >   arch/arm64/boot/dts/qcom/sc7280.dtsi         |   2 +-
> > >   2 files changed, 117 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > index 7a36c90ad4ec..13dbb24a3179 100644
> > > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > @@ -218,6 +218,31 @@ vph_pwr: vph-pwr-regulator {
> > >   		regulator-min-microvolt = <3700000>;
> > >   		regulator-max-microvolt = <3700000>;
> > >   	};
> > > +
> > > +	vdd_ntn_0p9: regulator-vdd-ntn-0p9 {
> > > +		compatible = "regulator-fixed";
> > > +		regulator-name = "VDD_NTN_0P9";
> > > +		gpio = <&pm8350c_gpios 2 GPIO_ACTIVE_HIGH>;
> > > +		regulator-min-microvolt = <899400>;
> > > +		regulator-max-microvolt = <899400>;
> > > +		enable-active-high;
> > > +		pinctrl-0 = <&ntn_0p9_en>;
> > > +		pinctrl-names = "default";
> > > +		regulator-enable-ramp-delay = <4300>;
> > > +	};
> > > +
> > > +	vdd_ntn_1p8: regulator-vdd-ntn-1p8 {
> > > +		compatible = "regulator-fixed";
> > > +		regulator-name = "VDD_NTN_1P8";
> > > +		gpio = <&pm8350c_gpios 3 GPIO_ACTIVE_HIGH>;
> > > +		regulator-min-microvolt = <1800000>;
> > > +		regulator-max-microvolt = <1800000>;
> > > +		enable-active-high;
> > > +		pinctrl-0 = <&ntn_1p8_en>;
> > > +		pinctrl-names = "default";
> > > +		regulator-enable-ramp-delay = <10000>;
> > > +	};
> > > +
> > >   };
> > >   &apps_rsc {
> > > @@ -735,6 +760,75 @@ &pcie1_phy {
> > >   	status = "okay";
> > >   };
> > > +&pcie1_port {
> > > +	pcie@0,0 {
> > > +		compatible = "pci1179,0623", "pciclass,0604";
> > > +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> > > +		#address-cells = <3>;
> > > +		#size-cells = <2>;
> > > +
> > > +		device_type = "pci";
> > > +		ranges;
> > > +		bus-range = <0x2 0xff>;
> > > +
> > > +		vddc-supply = <&vdd_ntn_0p9>;
> > > +		vdd18-supply = <&vdd_ntn_1p8>;
> > > +		vdd09-supply = <&vdd_ntn_0p9>;
> > > +		vddio1-supply = <&vdd_ntn_1p8>;
> > > +		vddio2-supply = <&vdd_ntn_1p8>;
> > > +		vddio18-supply = <&vdd_ntn_1p8>;
> > > +
> > > +		i2c-parent = <&i2c0 0x77>;
> > > +
> > > +		reset-gpios = <&pm8350c_gpios 1 GPIO_ACTIVE_LOW>;
> > > +
> > > +		pcie@1,0 {
> > 
> > PCIe bus can be autodetected. Is there a reason for describing all the
> > ports and a full topology? If so, it should be stated in the commit
> > message.
> > 
> As these ports are fixed we are defining them here, I will mention this
> in the commit message. It is similar to how we added pcieport for all
> the platforms, I tried to add full topology here. And if we want to
> configure any ports like l0s entry delay, l1 entry delay etc in future
> we need these full topology to be present.

Ack

> 
> - Krishna Chaitanya.
> > > +			reg = <0x20800 0x0 0x0 0x0 0x0>;
> > > +			#address-cells = <3>;
> > > +			#size-cells = <2>;
> > > +
> > > +			device_type = "pci";
> > > +			ranges;
> > > +			bus-range = <0x3 0xff>;
> > > +		};
> > > +
> > > +		pcie@2,0 {
> > > +			reg = <0x21000 0x0 0x0 0x0 0x0>;
> > > +			#address-cells = <3>;
> > > +			#size-cells = <2>;
> > > +
> > > +			device_type = "pci";
> > > +			ranges;
> > > +			bus-range = <0x4 0xff>;
> > > +		};
> > > +
> > > +		pcie@3,0 {
> > 

-- 
With best wishes
Dmitry

