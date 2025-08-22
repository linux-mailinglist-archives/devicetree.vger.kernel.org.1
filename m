Return-Path: <devicetree+bounces-208034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0FDB3167C
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:41:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7E7137BECCA
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:39:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E39102F8BF3;
	Fri, 22 Aug 2025 11:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ut4ZmXNN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CD42E2F03
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755862846; cv=none; b=b32F7fckSzN93AglRFuAUXVdU8MBWN+JuP9RrZLBhtUHK+0WbRGlyps68C3PF3OD6h/KomZaziEYZGhvqUAUYx6BbpOh9ehkyLSPpuOzOX8kbGHwapa7GSPk4e61PaT6X+Ns6A6tERj0mKAi0jkH1TTW+/YR+T6YXb+W7AZe+qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755862846; c=relaxed/simple;
	bh=z3dg3+uFGdtg0oNaTcQ0qCnHDKy+RCFkNf7fAl1o4fw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G9x5S/olXPrRJDJswTg4f77Rx75/92nsAn3Wb5UAaAcHpoPlK8G7HS6JGr8pkEveb341SPp8K29BHKixBXnMtihmcIy4ecyGP8Yx+BQWA1VBW2ynr/VYiY6+Hpq+2QcTzJG2rhbHzNrn5lSeTxL0cPqHVKS8enRVdMG5e0AQSNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ut4ZmXNN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8Uh8x028185
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:40:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=R3VBpF5unS5o4qUNQOe4EEFU
	h9fh4aEIJOsFeee/U5g=; b=Ut4ZmXNNyrfpyfc5sOajrSXqKleaNdKErZTKNrYa
	hhfX4lFu8Pwk39eh2dml0oUoi5eAY9Wa/aqCJ38bUR4Yc/h44ah+Kiv1+KYjhUVw
	Hu4u6BNMBJnOVcqR7HNWRVed7m7TLTkCxwzU8M+IndULAsTPZnujyh58u9fqRQUb
	7EweY/wk6S90VWr8dREaM6dmdu9DWMtyNf8a6EVQvneiP8JoKdBkBNas6NUZ1Msn
	gI6ymC9IHUfGYl1g92YOK6DDzozIcWAS0bdQRWgEgsjRSDdqc8uhAnQ5fgTqRFgb
	XaKJmhM3fmwpbCgEjkWPKN1CsZLYAZGH9l8olNoG8Gqpbg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n529921w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:40:44 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70d9a65c386so11339646d6.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 04:40:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755862842; x=1756467642;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R3VBpF5unS5o4qUNQOe4EEFUh9fh4aEIJOsFeee/U5g=;
        b=LUweJq66Y7T6o7EpV1F0ANfdNC1OMkp5H0BoQVVIvHdmcrJnunYsKQHXfzOYlOETKU
         Gegevf/9uilqUfXzksB0MvS3mc6EVjYbRZ/br/kAT9R0F3s6c9LAVLUZpsE9w5RrLmxl
         u+JdyP6bS5l7w89j3w6kJrzYTWl+BiBUy32dQL40h/ng68+/vqyDaMdYIXVv3XE2OqEv
         2Hk6Y9WJ/BhCjSPXfptMcz9E6G0JggGa53BgLRorbQj4ydZ13mzWvCYIycsbCEv8A7id
         UmL9c+JaaGrKT2nz8/O2ywQzD6q3GmT3CVPRUBh4uP3dTBX5id80zNi0gBMb74pfe4l4
         FW+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVX5g2VG3XI4wn0J6+hVx8kqof0qqrIr8fu1Rrk/zlBphcjYkKFghFzHhi0Ux3Z+YHwQ7GP41zU+3cC@vger.kernel.org
X-Gm-Message-State: AOJu0YybBvGUG2Sajxge9DWBxkd01YOCw6ExPb7Mhou/8F5HskwnjCEF
	U0Z9aL6twoy26ix6vHOs7CCSwf61XeOBErQUO832RaVKAhA54w7ZKzPTlH6qNRypHHFQuWBEY0C
	vsENkzPAdFUPgQfEdSa+ZTwQXfj4+1sJTD5FIt4GArY4CHMSjBsyl31kNjyGPHIrB
X-Gm-Gg: ASbGncs/3hhXzBrHAIFY1apdkrY/V+5lKNHIcznVtDrLQJaCN5c6crEG1s7W8gf5eBN
	ZYDu3z4gOI78npxl+R+fKiU6Tt65nX+3ABH/qJQLX3qQx69tEeFSJVmNI8n2W8/nnsHTuSCE2fK
	cD6/cHY+yFVbRCcxWx5DfNcbMjTiVJLWv/+LgGudMXf0neyzNGX/12QPUXdhTMhKykYDVcrFr6m
	uKk4BG+Yc0pghgiEq7YNrgKBBvIQC/sGPQobFXp2efFGVnC30ImNp/hSoBhViePZ3bg4YeIZOQB
	Y1KLZC90ag/A8OF2slxMznYub3fpSuwMabTaTzLma22+h+s54SE6sh+NTuP9sBmqmk/JTMgfVYw
	3s1GOZ/nMAVECZvOmJSKI2JO541d/40qBagLzRZ8YoCv1ML4JykuW
X-Received: by 2002:a05:6214:d6d:b0:70d:8d5d:59a1 with SMTP id 6a1803df08f44-70d97205d99mr36224796d6.45.1755862841797;
        Fri, 22 Aug 2025 04:40:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqTyhMMs7n5KY1lW09izaZu/eTxO2Ydf4e+xDEopme0nS+sjhxdykVOhMlGGOSceWoiv2AyA==
X-Received: by 2002:a05:6214:d6d:b0:70d:8d5d:59a1 with SMTP id 6a1803df08f44-70d97205d99mr36224116d6.45.1755862841093;
        Fri, 22 Aug 2025 04:40:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f3153cddasm255874e87.125.2025.08.22.04.40.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 04:40:40 -0700 (PDT)
Date: Fri, 22 Aug 2025 14:40:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Message-ID: <k6n4ojdhsr2sjxoyrvo7qdoajdxbrjuuxfuhw76wrmpegdyayo@arumyjto7kpp>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>
 <431de5f8-2dca-4ec0-9b94-fcc12480e8c9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <431de5f8-2dca-4ec0-9b94-fcc12480e8c9@linaro.org>
X-Authority-Analysis: v=2.4 cv=ZJKOWX7b c=1 sm=1 tr=0 ts=68a8573c cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=0Y_XMaiD5XwD0HHrWAcA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: CfbQ328p4AGsbioeTJV87Jo2MdgfUrXP
X-Proofpoint-GUID: CfbQ328p4AGsbioeTJV87Jo2MdgfUrXP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX09Of7zZrE/Iu
 OojtRoRz8RyV8J3LsCsaYdgYaKVXzxEAfpvdbkeyndWAUZw7E8QE73qlPfkUIEF2kdIzI58hRrC
 r2woC7bCDKDJyuRWRsUWjO7VaBe26xUXVUqj4E42ZGMOT4/IiywLDoyb0na7IKrnYsTlF47Pv0f
 KM2il7FSwlKxd10lGjjV9KkmcFwrcYvtAbR+TV/ZArsVojAvDRPeDNwaz2+a9bceznRF4j85NOf
 NjpuDX6nIDiJOFrgzASEQpF5sHVy2y9phY3qiLINmXbtwsj1wZ/eF4tqDogUah8sGI1Zhoo1p9H
 XvvJcXM6ZvhIRRpEkJ9AynsbufIqLumNGybzdsW/nB5LV4mBI5w/QQGs+obfY1t3s+4QNe3YJkI
 FlwtRz57e3ZFYFI9jk7cFt0crnxiRg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Fri, Aug 22, 2025 at 01:02:56PM +0200, Neil Armstrong wrote:
> On 22/08/2025 13:01, Dmitry Baryshkov wrote:
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
> > >   .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
> > >   1 file changed, 44 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
> > > --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > @@ -62,6 +62,20 @@ switch-lid {
> > >   		};
> > >   	};
> > > +
> > > +	hdmi-connector {
> > > +		compatible = "hdmi-connector";
> > > +		type = "a";
> > > +		pinctrl-0 = <&hdmi_hpd_default>;
> > > +		pinctrl-names = "default";
> > 
> > If this is a DP HPD signal, it should be a part of the DP device.
> > 
> > > +
> > > +		port {
> > > +			hdmi_con: endpoint {
> > > +				remote-endpoint = <&usb_1_ss2_qmpphy_out>;
> > 
> > Please describe the transparent bridge too. It can be covered by the
> > simple-bridge.yaml / simple-bridge.c
> 
> Ack, indeed it could take the pinctrl thing.

Pinctrl, enables, etc.

But from my POV the HPD pin should be a part of the DP controller
itself.

> 
> Neil
> 
> > 
> > 
> > > +			};
> > > +		};
> > > +	};
> > > +
> > >   	pmic-glink {
> > >   		compatible = "qcom,x1e80100-pmic-glink",
> > >   			     "qcom,sm8550-pmic-glink",
> > > @@ -1007,6 +1021,14 @@ &mdss_dp1_out {
> > >   	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> > >   };
> > > +&mdss_dp2 {
> > > +	status = "okay";
> > > +};
> > > +
> > > +&mdss_dp2_out {
> > > +	data-lanes = <0 1 2 3>;
> > > +};
> > > +
> > >   &mdss_dp3 {
> > >   	/delete-property/ #sound-dai-cells;
> > > @@ -1263,6 +1285,12 @@ &tlmm {
> > >   			       <72 2>, /* Secure EC I2C connection (?) */
> > >   			       <238 1>; /* UFS Reset */
> > > +	hdmi_hpd_default: hdmi-hpd-default-state {
> > > +		pins = "gpio126";
> > > +		function = "usb2_dp";
> > > +		bias-disable;
> > > +	};
> > > +
> > >   	eusb3_reset_n: eusb3-reset-n-state {
> > >   		pins = "gpio6";
> > >   		function = "gpio";
> > > @@ -1486,6 +1514,22 @@ &usb_1_ss0_qmpphy_out {
> > >   	remote-endpoint = <&retimer_ss0_ss_in>;
> > >   };
> > > +&usb_1_ss2_qmpphy {
> > > +	vdda-phy-supply = <&vreg_l2j_1p2>;
> > > +	vdda-pll-supply = <&vreg_l2d_0p9>;
> > > +
> > > +	qcom,combo-initial-mode = "dp";
> > > +
> > > +	/delete-property/ mode-switch;
> > > +	/delete-property/ orientation-switch;
> > > +
> > > +	status = "okay";
> > > +};
> > > +
> > > +&usb_1_ss2_qmpphy_out {
> > > +	remote-endpoint = <&hdmi_con>;
> > > +};
> > > +
> > >   &usb_1_ss1_hsphy {
> > >   	vdd-supply = <&vreg_l3j_0p8>;
> > >   	vdda12-supply = <&vreg_l2j_1p2>;
> > > 
> > > -- 
> > > 2.34.1
> > > 
> > 
> 

-- 
With best wishes
Dmitry

