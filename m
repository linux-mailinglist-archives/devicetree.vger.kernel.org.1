Return-Path: <devicetree+bounces-253862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DD5D120B4
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:53:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6A1E8301A0C5
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87F7034DCF7;
	Mon, 12 Jan 2026 10:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KpialMrg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gj7rfta9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3519534DB7B
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768215196; cv=none; b=KS0i2ttxcxYbqPJNOA5AeXO2tyeMcUc43dyG4Jbq79SS33uoUuEkrqcVasgbe6robkboC1tuUpl7NKDWPt9QEvGe7YEirQzq2ktFfAD91+j/2xqM2viZ7oyELDYse05voQ/XgAew0/ABJJW3ElZcIsPeV3D17vlnuRlg0G6wxhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768215196; c=relaxed/simple;
	bh=rlpIv0ycJjkCAsKg+mMdi4WwvlUgHV7XC3sdtp0sf9g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CAsw4mT//QzC4zjkTDW1KM28/jjvq28Qmr0lvhGbSbiMCTD7suGofE0m4NrAonD4Kn95TIDpaiEa83LQW0qhnurvce4OJaKnqnduJeDEJT8L8B2nv3yEFIGPoQnaxk3XKaunwer1/prNkeV0kXPNaIuI7sWlFNh3AVB6bSmRXy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KpialMrg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gj7rfta9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C7Oewh555263
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:53:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OkgnGiPcXZE1+IL3sJO0MEHpll3AaDBeVk5e9Q9pCTw=; b=KpialMrgxgvEkQHP
	nFMg8Ih4zdclL8k4rCzcvKPx9G4OGDA6Ww1XrU5SlzrOmcM0wSNpkd7O00irHmSI
	Rcq24hYEaW97zNQFsSj2NV/ILL21pNcs/S+qhOmxUSZnUCVjfT6c/q1Uf2vqJTSE
	oCXqHPrcbHxa1ieQ4nM5yWUUGbupDJOjPUTwQ5Lrb8h1IxaitOMrUvDTWvi62kHL
	AsXEos1OX6qg9H/ecpnEM0diL5qFyNevv9/R27++p7UfVYlpN8fy6PNwC7Qj65GI
	sAApmQpNL5SMAFOxdieK6oPQM+bHHOf6YL+9uN622EamCLWD47cC63TuRIQc+K3m
	8YxOHA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmvhw0pkj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:53:14 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee05927183so11566541cf.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768215193; x=1768819993; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OkgnGiPcXZE1+IL3sJO0MEHpll3AaDBeVk5e9Q9pCTw=;
        b=gj7rfta9y70gXKSlQksQ0mKPJvccIXW9dDu8Aeh0YF7SbLHKmECd65v6sdj/gs+RTk
         TA/sryyQox5hmF29LKEsEOD4usVGjOAorwMLjnyKvsKVKEgG4x72gmPheiLGbuAQMR7u
         ReLiuzduHoiTVxGMzsdtbc+88b2T/jRbaEBGP2WAvAOeRXFO5P0Gs1HnV1ixaew6z9iS
         UjZO0QOFhiN+q+xxn30kndtUT0hwNnyur3wqacF/rqKa551eBkzAY8thN2URr5jBMIkR
         mxxw3ZsX2oG9JPkZvPXBsKsBxTYpF3IKGE/JdVXC4r2jjXWVPxeXH52NxDjSrZ48kC1c
         h+hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768215193; x=1768819993;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OkgnGiPcXZE1+IL3sJO0MEHpll3AaDBeVk5e9Q9pCTw=;
        b=Q3MaZCpA+VLTlXvB7fODZOoDCMbQ1v0CrByy8ducnAS/7NjyhZ+uiGyqeqNfL+XKq3
         AIPlLrqdQX55UTqbVDEW+bKjduTQ3R6+tbZbbbyL2CeXtopQiVmJVwaJJW2Zs9Ij9geU
         RDKGcOh/FvYvs50yNDggvJgm0n+4uxOB7FtC0/2ogak7ElTQ/db6mR81t6YnFyaVxRW0
         009rnZKe4837JHpQtx0kRod6vjhlJ9yl8fQENJUzjEIq0wgDPWT0rKqsBh9zl1+TAi4N
         TqFhI52M3V9C4t591cIFDqvrH0mSxE/CqwQDJDVYq0g3EN3eXSYwYiXVw4SLx6GeiFTV
         Gz4w==
X-Forwarded-Encrypted: i=1; AJvYcCUfMlZMFVefmpnidU1yErs0/zUT2cF5UPLx62/g2CmmJLQVkN6oEo5xnOp4D7PlL1wcT8JMfys1PF69@vger.kernel.org
X-Gm-Message-State: AOJu0YxLUsxoy/VgxfSHf9ZqB7DQKOo7eOo3bWdMoKTtThTppeGziZwU
	Jka+jra58c21EzWg/vGjg0qjauf86a1yOR7Yj2wrhXX0qH9dQk7cXccXkFS5AB8+XrFX3152qZY
	ltt82Y0VsfdmkBI92YFfy6xAskKQB6wudCceVOcx2BfpUtVA7d9TEo3nl99ful6/sogXtH2Zb
X-Gm-Gg: AY/fxX7Ouz1WCBlgUgsAGSwt4O2LnY3zQ7YuvH2i+ehsSDlHMn/Lg/QjKn5xX0Xi/lN
	JY2lu9S282ZjhbY8Vp7m1NL1hJ/S8Y/BjubBHzS6P5YenRXIX7fVTPsovNYlf1gTig94On7z5hx
	LZNBkND00UN8+YSrfGcP5JE5gfSGpShUHF1eAxFo863SLsWpzboIBbbN6DhW5B0YLA/oOMUMbw6
	v9Wp1QOcV4s3dCBsy1LQ6VFSklrdkwhmLZqAAi1z7SFaBN1UExHvmU/xH0S4q5jQCKBeJSQs8bo
	vew+rLxxxiekuqbumByaIfgdmWJi9PVcjF5jV3jQiXqnLvrpvug8+uR6tM5MHx5mRzyRDI9bRSS
	N4LDS8XfM1hDsY11pz9PUcICjXDOy2DYmyuOqBbykN/q9TDO8wWGYOhY1CjP9/GMyht8=
X-Received: by 2002:a05:622a:282:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4ffb4a3ff5cmr192922011cf.8.1768215193411;
        Mon, 12 Jan 2026 02:53:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEBBDe3WY5BWTxclmarfUgDXSl0bKvw604XZyLa/A/MdaMvkOzX7Nt+RyRpTimruxD4LgaGDw==
X-Received: by 2002:a05:622a:282:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4ffb4a3ff5cmr192921841cf.8.1768215193033;
        Mon, 12 Jan 2026 02:53:13 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be65197sm17379733a12.19.2026.01.12.02.53.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 02:53:12 -0800 (PST)
Message-ID: <f562ba39-ebbc-4ff4-9ae2-f49c1fe82146@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 11:53:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: Add support for ECS LIVA QC710
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-6-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260111085726.634091-6-val@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4NiBTYWx0ZWRfX+VRgBZpA2I8C
 xGCR/ntyGEZcOgJCmLyaaVH8bgDHHlxspPTgWR5p+cW2TzkqKYzDAXttj21h3uxdO1iuG69WFz0
 TdhRCEu5QARPdQXbj6u9pK3KuCXhxZOwX/5NKXgjaylaB2sx2Gn7GKHdgDe0SkuTbHD/R/Rqm1R
 H4Od2IVbZb8zYCtmND4htHcd2INqlIBkyMIZezAA3Rf1djxVnWBrgFiF/Vdw0Wom6zRFxd5YSZ6
 TYRLyr6FwevH6ezJxVlPJqlZuYX9M6Q2Ln8WX7zyG/oZ+hHaih4cYgz344gMSG75tVLoKx2GMh9
 hScTkXtqgZMAghOnqFX1r/Ce01WlFEjxy+hCErRrR+Sg/NB+N0ChevfH/XsRd7g7iYTbuFkJeQf
 EXApd/bsj8wN37R7+TM0bpXKDTNsbnUQK76bEZ8zq08eGmLnBpNN1UuNEXchMDu24aJh7oKcKyv
 NQFaG2jfaorBs78u0+A==
X-Authority-Analysis: v=2.4 cv=JP02csKb c=1 sm=1 tr=0 ts=6964d29a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=GqzvmWBP9S_r8vv4g3cA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: il7WvAZ5RRbwHkc1AGFrHfGWu08gtrLL
X-Proofpoint-ORIG-GUID: il7WvAZ5RRbwHkc1AGFrHfGWu08gtrLL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601120086

On 1/11/26 9:35 AM, Val Packett wrote:
> Add a device tree for the ECS LIVA QC710 (Snapdragon 7c) mini PC/devkit.

[...]

> +&mdss_dp {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&dp_hot_plug_det>;

please keep the order of:

property-n
property-names

throughout the file

[...]

> +&remoteproc_adsp {
> +	memory-region = <&adsp_mem>;
> +	firmware-name = "qcom/sc7180/ecs/liva-qc710/qcadsp7180.mbn";
> +	status = "okay";

And a consistent \n before 'status'

[...]

> +&usb_1_dwc3 {
> +	dr_mode = "host";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	hub@1 {
> +		compatible = "usb5e3,608";
> +		reg = <1>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		r8152: ethernet@4 {

You don't need this label


> +			compatible = "usbbda,8152";
> +			reg = <4>;
> +		};
> +	};
> +};
> +
> +&usb_1_hsphy {
> +	vdd-supply = <&vreg_l4a_0p8>;
> +	vdda-pll-supply = <&vreg_l11a_1p8>;
> +	vdda-phy-dpdm-supply = <&vreg_l17a_3p0>;
> +	qcom,imp-res-offset-value = <8>;
> +	qcom,preemphasis-level = <QUSB2_V2_PREEMPHASIS_15_PERCENT>;
> +	qcom,preemphasis-width = <QUSB2_V2_PREEMPHASIS_WIDTH_HALF_BIT>;
> +	qcom,bias-ctrl-value = <0x22>;
> +	qcom,charge-ctrl-value = <3>;
> +	qcom,hsdisc-trim-value = <0>;

Have you verified these values (e.g. by reading back the related
registers in Windows)?

[...]

> +&apps_rsc {
> +	regulators-0 {
> +		compatible = "qcom,pm6150-rpmh-regulators";
> +		qcom,pmic-id = "a";
> +
> +		vreg_s1a_1p1: smps1 {
> +			regulator-min-microvolt = <1128000>;
> +			regulator-max-microvolt = <1128000>;
> +		};

Similarly, have you verified these?

> +	soc_bkoff_default: soc-bkoff-deault-state {
> +		pins = "gpio10";
> +		function = "gpio";
> +		drive-strength = <16>;
> +		bias-disable;
> +	};

This entry is unused

Konrad

