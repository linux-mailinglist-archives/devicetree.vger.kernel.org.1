Return-Path: <devicetree+bounces-254490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 30576D187CB
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:29:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3144530141C8
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3AF38B9A7;
	Tue, 13 Jan 2026 11:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MXNhj1XU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dbhf3D4z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0075B36C0C8
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768303756; cv=none; b=OobdvjIBMKREMpy2ZL++lvEQYo+1wZoCiGkfcEKiz65RvCqRPF+Hfo0LpuI0zi3bB0wHKW3RwntU+2YPObpn1NkZaNSWm3apnpnGKWhbtqWiQKEVD3chWeXktLDsD8AEr+WVk4WiL1tOnpmn3G8XWA+uke4Nl+CQBv1vTkqsNIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768303756; c=relaxed/simple;
	bh=eGZZgccgcpR/JaeVYh+J2xthh+WiSwa0v3WELSPPNM0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gsm9HsSAojHFf47hwVsVtRZYwP/+Dx3xdYO3q9ZqGGL/KfXBINtzPKwxTWEkcsSrSSX8yqS23xiO7u0q6qipSm2Q0EvBNhLKZLdcMIag+CaHsgskerBL9A7hvkpEMhJDfmSEFECnFp852JUMu/HAhK7oKe32jg8x/3XPO8BrGgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MXNhj1XU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dbhf3D4z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D5gxan3815236
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:29:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vF9l+fb4e/cYG5xTYkEhk0Sjq46FyphuySf0LqafbSY=; b=MXNhj1XUd9fkFqWQ
	wIcJ20ezuy58f3C/yZJuMhAnTbAV7/aNefHmX0mW1wQjyE//szBQGXrseEkZuyOB
	m1MIYN+LGKrFLfXZV6CA62Sem6fViVRfOIcFY82JaWDA22QuLXvk32x4tPNn8YCB
	mlgzbeskuj61oEaFyI5ezY8dTgsCY4TWz01nCflWKdIDCXUxcevkL1sc5VxrJP/I
	9P1NDkzpaW/jxAn5kDxEVsIGwvs4+K1f5yJ+mXBSdNbS8b+4+9gU803B9LBcOJ3m
	qfRzYGTV3d+kwmsDR3XIaDM1S8F8zTxP2EhlCFmyUceDafzrvPKMRlq9YRgS2HWA
	i2PzCw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bng55s3nx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:29:13 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2de6600c0so2080914885a.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 03:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768303752; x=1768908552; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vF9l+fb4e/cYG5xTYkEhk0Sjq46FyphuySf0LqafbSY=;
        b=Dbhf3D4z1VaQSg1IgDkfZVsz4Y6RRZOPktLMJ4/maeEBLmztslIRBHpll3m4AEt7Vc
         PrdXIoiLDsmh28hOnab+R7TisH2VIQZpIcoc+utXEqCtYyL1lyk5Q/2qlVhhkHBEnu2P
         Y43uHArwcBELHv3ImExuvrV+3CGV6q3hjFNwsqhYkn1fqd/zfCfoX2GIey/wV2H0EdZv
         dKmj3KXVoxtd7Tuil8o91TXKldJkJSkYhDFBV8CaclV+GirnvBtSBtgFa7S746hNFWbM
         tVJ7rEpoavNWK/nWiI+nZM2Ss2FUA4kd3nQjBM5DYCYTQ9Rm1qQuNp2mhQaY/uJG+H7h
         Pi5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768303752; x=1768908552;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vF9l+fb4e/cYG5xTYkEhk0Sjq46FyphuySf0LqafbSY=;
        b=RiPRxIKSxQOubh+TjS5Gk/NGnGewpxTkHIy8GexDtDgoLqnjGHudx2D7dVixAEOiiz
         ysfJoKq2VYO21LnLqZ3icGXBlYA9kr9thF6RUVk9G3N2Qc24f+cxKkAQiX5crt2zHUxW
         5Zo5aZwDX/Eny5FxArsRBwU8UGXXOFzaoPuzdshyQG6B8boWOgyd4rh9fPtavtlIRlOX
         8DxUruK1OdWATZo6I0aSyfwI8LWvyrGTW9hFQPHo9rjFuIe4Z9OdpXL4zZGD+fa2QhVY
         1cQ9CqPo7ILZA5M1xYLIoI8DGXz5K/WC8Ntx9Lozuh3d4LVUmj4hDCf+rpgTKtEo78de
         gp4A==
X-Forwarded-Encrypted: i=1; AJvYcCXyxa9LarbC3jFP9vkZZ6vUldR5TgYkH7Q2FujLgZTDXJhuuNgkRCtfYtxAIrUUEw1Y0N4olem7uLIq@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7pD01trL9fKWD1NqU5CR6BT0uyB20EjL2T8pJQVJQJuU0+cJ2
	ocSjYOBjDu5iY4OUrEv4xCxdJTjhTuryLNtSmyqrbMytJkK54alzuAomO0ETZ904MZ4TMuo5Y7k
	kSVKFRlt+xZgEgWR8u6NGRV8x1W63WRW4+LoRM4Vyh3hUfZMEhYd3bxnz745z91fR
X-Gm-Gg: AY/fxX7z9YTpxZepbWDb47HnAz/P9PFWe+AutllRr+EOpfQ4x0Ip740M9ioMKNbskCf
	WHV5/D8M39lyPT9BfZ4GVI/P5zyYz8YM0wUOCEopCgr4R4o2sJrYjgEK87oDO8uliG3dITXjYlT
	MPYA7q9UUvs+9u1CnV6Y9MdTfLcvpqz/g0B1lc7UON04AmUdqY7Pe+lmqvoztg2d1bFbE3TXX1j
	clniEQuKtAAdQUpPGJzUg6MgJZjAoIiXwQVrged8XfdT44EDROvKo65DnALTzUWD75mSbRuxnPT
	RnrhxfA2sxX0qQNOsV9S6ETVnr8Ozob3Ki3GuscbbwitN9zJC5KohfPxZfQWvDrdOd+evpont81
	QW/0OhWq4DYpOZw8cO6uXq33iB+nR0IRkFe+tPgYw/Ev/VJvB6kDEfS30i++UGdSEzNvE3FWf1i
	tc87Aavscu/s5dzvt2RKp3ijU=
X-Received: by 2002:a05:620a:414f:b0:8b2:f2c5:e7fc with SMTP id af79cd13be357-8c3893757femr2856796485a.7.1768303752096;
        Tue, 13 Jan 2026 03:29:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpjrF4n+gdyf96X8il7mrinkoUjfQiSc/k+X+vdYSmWzaD8NIKkyhZkIC4RqiENTrPc+Q/8g==
X-Received: by 2002:a05:620a:414f:b0:8b2:f2c5:e7fc with SMTP id af79cd13be357-8c3893757femr2856793885a.7.1768303751609;
        Tue, 13 Jan 2026 03:29:11 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b6c634631sm5129949e87.13.2026.01.13.03.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 03:29:10 -0800 (PST)
Date: Tue, 13 Jan 2026 13:29:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        J =?utf-8?Q?=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Pin-yen Lin <treapking@chromium.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: lemans-evk: Enable secondary
 USB controller in host mode
Message-ID: <ftqb2uxp6yk73djyo3psehhqq5wamimtissgfehhziwbkprl4c@phftum3m3sdy>
References: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
 <20251220063537.3639535-5-swati.agarwal@oss.qualcomm.com>
 <qy4bp2hz3ivwydsk4sblxpgthz5hw4rn7r3ezaim5wf5fgm4sg@meispnp6wthj>
 <CAHz4bYvVfQke_aUx_mVO2QkCc5yr_1Cn35N6hPi1if=X7iM3+g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHz4bYvVfQke_aUx_mVO2QkCc5yr_1Cn35N6hPi1if=X7iM3+g@mail.gmail.com>
X-Proofpoint-GUID: ixMvUA4p6ivmA1_cmUzJP4s4fuKaVyER
X-Proofpoint-ORIG-GUID: ixMvUA4p6ivmA1_cmUzJP4s4fuKaVyER
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA5NyBTYWx0ZWRfX7akRfRib2cEK
 IYtXso+O0W3RE5XeU3Bo5hm7/Z/K2srtWbymavVYfYgEsnLvSFz9UQdpH7udHoiW3bURSqb/t+v
 JtmoCFPzNdznRP0zyc2Upf0/lCh+jthkozMWcpk08yl0J+vvBmCdQ4UIepeAC4NYVlzSL6dtBd9
 EXnu5/Aork/EH3pfgcXlGKirFu/B+6xtB7d2vMq9vtlWSfH4iQBtRvq72CXc9mukxa2NAqlnT6J
 0qYjARKd/VHwBJkyTlqvLirtZaEOxW0i47oSO+kONwFD94Om5pezWlM+uY6OVWUS7lcUqrQSXjc
 +RlCHSTCtcZ/Eg/2DJyamMB4yxR6vDEbqZZSVSSSp4FRP6Tw9XTyT9zYCWHWc8ly/fLlxJuP1J0
 E70GtWCPU0sruFRfJgIbgJgMQoLdeqfn3ApTSPPWLwn/2r1VHYQNsFEd0gwSuETXaOA9bY1GzY1
 gsUAdrIl5cf94GpG5ug==
X-Authority-Analysis: v=2.4 cv=IIsPywvG c=1 sm=1 tr=0 ts=69662c89 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=o7B0pVO_YLVwEXfCrecA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130097

On Tue, Jan 13, 2026 at 01:32:41PM +0530, Swati Agarwal wrote:
> On Sat, Dec 20, 2025 at 9:47 PM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Sat, Dec 20, 2025 at 12:05:37PM +0530, Swati Agarwal wrote:
> > > Enable secondary USB controller in host mode on lemans EVK Platform.
> > >
> > > For secondary USB Typec port, there is a genesys USB HUB GL3590 having 4
> > > ports sitting in between SOC and HD3SS3220 Type-C port controller and SS
> > > lines run from the SoC through the hub to the Port controller. Mark the
> > > second USB controller as host only capable.
> > >
> > > Add HD3SS3220 Type-C port controller along with Type-c connector for
> > > controlling vbus supply.
> > >
> > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 158 ++++++++++++++++++++++++
> > >  1 file changed, 158 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > index 70d85b6ba772..d72639479d75 100644
> > > --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > @@ -67,6 +67,47 @@ usb0_con_ss_ep: endpoint {
> > >               };
> > >       };
> > >
> > > +     connector-1 {
> > > +             compatible = "usb-c-connector";
> > > +             label = "USB1-Type-C";
> > > +             data-role = "host";
> > > +             power-role = "dual";
> > > +             try-power-role = "source";
> > > +
> > > +             vbus-supply = <&vbus_supply_regulator_1>;
> > > +
> > > +             ports {
> > > +                     #address-cells = <1>;
> > > +                     #size-cells = <0>;
> > > +
> > > +                     port@0 {
> > > +                             reg = <0>;
> > > +
> > > +                             usb1_con_ss_ep: endpoint {
> > > +                                     remote-endpoint = <&hd3ss3220_1_in_ep>;
> > > +                             };
> > > +                     };
> > > +
> > > +                     port@1 {
> > > +                             reg = <1>;
> > > +
> > > +                             usb1_hs_in: endpoint {
> > > +                                     remote-endpoint = <&usb_hub_2_1>;
> > > +                             };
> > > +
> > > +                     };
> > > +
> > > +                     port@2 {
> > > +                             reg = <2>;
> > > +
> > > +                             usb1_ss_in: endpoint {
> > > +                                     remote-endpoint = <&usb_hub_3_1>;
> > > +                             };
> > > +
> > > +                     };
> > > +             };
> > > +     };
> > > +
> > >       edp0-connector {
> > >               compatible = "dp-connector";
> > >               label = "EDP0";
> > > @@ -140,6 +181,16 @@ vbus_supply_regulator_0: regulator-vbus-supply-0 {
> > >               enable-active-high;
> > >       };
> > >
> > > +     vbus_supply_regulator_1: regulator-vbus-supply-1 {
> > > +             compatible = "regulator-fixed";
> > > +             regulator-name = "vbus_supply_1";
> > > +             gpio = <&expander1 3 GPIO_ACTIVE_HIGH>;
> > > +             regulator-min-microvolt = <5000000>;
> > > +             regulator-max-microvolt = <5000000>;
> > > +             regulator-boot-on;
> > > +             enable-active-high;
> > > +     };
> > > +
> > >       vmmc_sdc: regulator-vmmc-sdc {
> > >               compatible = "regulator-fixed";
> > >
> > > @@ -527,6 +578,33 @@ hd3ss3220_0_out_ep: endpoint {
> > >                       };
> > >               };
> > >       };
> > > +
> > > +     usb-typec@47 {
> > > +             compatible = "ti,hd3ss3220";
> > > +             reg = <0x47>;
> > > +
> > > +             interrupts-extended = <&pmm8654au_2_gpios 6 IRQ_TYPE_EDGE_FALLING>;
> > > +
> > > +             id-gpios = <&tlmm 51 GPIO_ACTIVE_HIGH>;
> > > +
> > > +             pinctrl-0 = <&usb1_id>, <&usb1_intr>;
> > > +             pinctrl-names = "default";
> > > +
> > > +             ports {
> > > +                     #address-cells = <1>;
> > > +                     #size-cells = <0>;
> > > +
> > > +                     port@0 {
> > > +                             reg = <0>;
> > > +
> > > +                             hd3ss3220_1_in_ep: endpoint {
> > > +                                     remote-endpoint = <&usb1_con_ss_ep>;
> > > +                             };
> > > +                     };
> > > +
> > > +             };
> > > +     };
> > > +
> > >  };
> > >
> > >  &i2c18 {
> > > @@ -690,6 +768,14 @@ usb0_intr_state: usb0-intr-state {
> > >               bias-pull-up;
> > >               power-source = <0>;
> > >       };
> > > +
> > > +     usb1_intr: usb1-intr-state {
> > > +             pins = "gpio6";
> > > +             function = "normal";
> > > +             input-enable;
> > > +             bias-pull-up;
> > > +             power-source = <0>;
> > > +     };
> > >  };
> > >
> > >  &qup_i2c19_default {
> > > @@ -849,6 +935,12 @@ usb_id: usb-id-state {
> > >               function = "gpio";
> > >               bias-pull-up;
> > >       };
> > > +
> > > +     usb1_id: usb1-id-state {
> > > +             pins = "gpio51";
> > > +             function = "gpio";
> > > +             bias-pull-up;
> > > +     };
> > >  };
> > >
> > >  &uart10 {
> > > @@ -903,6 +995,72 @@ &usb_0_qmpphy {
> > >       status = "okay";
> > >  };
> > >
> > > +&usb_1 {
> > > +     dr_mode = "host";
> > > +
> > > +     #address-cells = <1>;
> > > +     #size-cells = <0>;
> > > +
> > > +     status = "okay";
> > > +
> > > +     usb_hub_2_x: hub@1 {
> > > +             compatible = "usb5e3,610";
> > > +             reg = <1>;
> > > +             peer-hub = <&usb_hub_3_x>;
> > > +             #address-cells = <1>;
> > > +             #size-cells = <0>;
> > > +
> > > +             ports {
> > > +                     #address-cells = <1>;
> > > +                     #size-cells = <0>;
> > > +
> > > +                     port@1 {
> > > +                             reg = <1>;
> > > +
> > > +                             usb_hub_2_1: endpoint {
> > > +                                     remote-endpoint = <&usb1_hs_in>;
> > > +                             };
> >
> > Are all other ports disconnected? If so, why do we need a hub?
> Hi Dmitry,
> I didn't understand your query, can you give more context to it?

You have described one port of the hub. How are other ports routed? Are
they connected to outer ports? To some other devices? Unconnected?


-- 
With best wishes
Dmitry

