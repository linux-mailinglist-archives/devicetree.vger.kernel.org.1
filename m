Return-Path: <devicetree+bounces-216408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9DCB54ABB
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 13:13:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D664D163E89
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 426042FF16F;
	Fri, 12 Sep 2025 11:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cGl4kyBQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49872FF142
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757675604; cv=none; b=VwMljRcUjBugb5oD+Ykv1SVBUL6QaQZTlH9ybsTjvJpOP/E145IegB9eP39rsaYpJazh9H9TrwqEiJW55SpXtuBxKr/ogr62x0HiGXVbU/OreKtdkQ5kLHZowvg6dmlhgqjgvg2zep8eHyCkgwcSJpBX3/Q0nNfFNC1eRFkQNLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757675604; c=relaxed/simple;
	bh=lszRYL+Ecrj6hfbLW3rI/V8o+x71pST7A4pgIK7ORtg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KcQYd9P31GWvL1VYb/TThBkCSU1dJocHK+rf4drys/V3qKGIxOkyxWekZh5eu+/p5u8vgOniwkR7YmwPWOCMDdMK7IX4Xp4ttT7l0rly8lAWWLHrnIpJ7z22nuG7N76drQKtvCGGl/FBCU4Yb9k8qtktNBzFwqaO3M+YRGwwDwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cGl4kyBQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58CBB6sF017140
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:13:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qxXLgShVqwLGUck55r1aiE1BCAAIyCD2UObsyto7kis=; b=cGl4kyBQUadgXMKN
	r/Kpk7zQoOLgT6yLqdil6OEl+Uj67NiXb64AzHo+RUkoeY/fSohHUEpOaAI683Fd
	y6WtlhUCyhQiD1RMdbNC6D4RL79bqXSWMfEkJXXl1NzlGK6GUDLMpIZyx7aFfqHM
	IPx/aUFqtkzwB2+jnldQ+QnsjlUPs9vvXy7WHb/XHtd/lb5QQBdVqDUuiK7oIFiv
	YfdnUaLM8b8YbC5NJctqtmBej6nvJoEBCbJUTUR1+9mja1MnOMKEoXSQB+KD+zfQ
	4PCjb3m5ukcObS+KZihMYHaCLBfgvBHIJbnaxhtZMAEXTzCpiAvVL65rrCgnuC7F
	8MDN7Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494jdx0052-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:13:21 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b33e296278so392921cf.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 04:13:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757675601; x=1758280401;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qxXLgShVqwLGUck55r1aiE1BCAAIyCD2UObsyto7kis=;
        b=YacdML5bFth5l2EKE/eRf0X25503P5mcbnXxc/5DLhLOSIw0/IkfSj5/UJVLYt6lEZ
         3mzZttZc/bSOU6+b82mJwgHMRo9YGjKTpKCiNK5SUp7hgnzokvbDK8BN5OkppTr1IJAI
         fnuej2H9bVVf9Oe8rTPs0R/FEVq5uM4/RM3dO0Uw6uSAit+DDVf1P4NP/S1/DIjQW2/M
         dORRvhmdp/Or3EyqMNA1SkPmdLxJAJxpzrNgIiroJaAj0ATJhUlfQNJ1DztFPVqp9Rq1
         o7BaR9siVV6d0079k5lxvXRCK08McDqRYz7/C/LTZYULaEyQV9ReAfyw3SnKqU8xOGgr
         82eQ==
X-Forwarded-Encrypted: i=1; AJvYcCXil9vEQfBxvyFtcqV1+yBWWumr71cDXNQ+lBRI/DP37kWgiSjzjZPGTLtW8WHpfmPtHkLu6EdXGKCw@vger.kernel.org
X-Gm-Message-State: AOJu0YzhBHAEFCvvf4WmYFn7u6JZnewZlgIy7tPVymjq2rcdc1Vd2rLW
	+xhHfsZyqQ3vGfRPbRpo76ArJ1yPxUbQyPtKuBQ6HQs5/sWTYHkPwfw+pN0wRS8DisWRo+f0Qha
	BbOt1HXicHexhTEq2ZCr+QfzgRojJQ1g1I146yeMm9BtXu07jmdM+48+sskD0IfK4
X-Gm-Gg: ASbGnctEV1iLPvewyxqI4o2cyBgWpbDmRQRGz8BHUNl+aCVEl9p3YQRrBYmU9xNpvw7
	XQm2DWe8lrnyzFdGV88TXxbJntNH9U/moNq5qR8P28Qz7rPZmDs/tO6qPlVaVcilkSueqEqmcRj
	4qfQrIhmFcGGeAgNhyn2h3RTEfgDyAZ0ObI10fi52QUNayMPPeXLEAnATf05l4OC5hfF4h2mlJx
	6fE7z2qLyC0pwLaGjGpPbJYfkNAx8fsNCF+dqR/jNIkB5QXbCMUw2VhUyAwrOuwkrq7VMvO4R7C
	RY9L6qMhJ6iWTXGGX3/3X+YSSONx6ur3Be9vMjEJXpx54cWrQ0foOurI7ka7uBSOfxQAWBSJ4y5
	yLfkIE79E4ND1rVe7Xn0KCA==
X-Received: by 2002:a05:622a:216:b0:4b5:a0fb:59a6 with SMTP id d75a77b69052e-4b77cfb714fmr19387131cf.1.1757675600681;
        Fri, 12 Sep 2025 04:13:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHd/y9V7JIR0J7uzETTEsfcWKwZ60LOjy/zwNmRMp4881XwtyUxBdsIb+OOjUIc/XxzrjG+Qg==
X-Received: by 2002:a05:622a:216:b0:4b5:a0fb:59a6 with SMTP id d75a77b69052e-4b77cfb714fmr19386931cf.1.1757675599937;
        Fri, 12 Sep 2025 04:13:19 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07d09e5414sm38020366b.18.2025.09.12.04.13.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 04:13:19 -0700 (PDT)
Message-ID: <ec31257b-fe10-4de7-8fb6-d649677f680e@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 13:13:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcm6490: Introduce the Particle
 Tachyon
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250910-tachyon-v1-0-5090bfd133e0@oss.qualcomm.com>
 <20250910-tachyon-v1-3-5090bfd133e0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250910-tachyon-v1-3-5090bfd133e0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEyMDEwNiBTYWx0ZWRfX/lkuZnX+R4hr
 fP8FuUCqXcnSxP2uj/vR97xFZLjWJMBgCJfQH2AkyKO0DT6ZhPnIphRkguDQF650RaAPGKiHAeD
 m6jNbD8A41V1tGXfr9ovWBy3RG8dzflYZsWJlr9xy5Od8pOdkJMEw3TVR1E8wdtphdfRSfDNCcz
 JSYjysCq7NoVTlSe08J/sBEHz2ZgStBN4rFxkoh1xXskUEcdvP4nXXf/yRoJLTAxx66gBpwGmgG
 0DSu7LetgBEKW8nlcIb68Z59agG8rz7R5HflLmnIJGs24PErYbEnMXY9IUatxTQMNQpqmznqjss
 AKDUvYfji3CGxmNUIeQp4g2vsk9z1pPSRosTTJHn+4ikqUhReJCcwQZBA4zVwC++kvGMMvcg6x+
 ix33IBcr
X-Proofpoint-GUID: Be0TZFiXh_quBgASaypZBRJDmlEXWR8k
X-Authority-Analysis: v=2.4 cv=JMM7s9Kb c=1 sm=1 tr=0 ts=68c40051 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_Hxo6uU0jCpJE4KgPD8A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: Be0TZFiXh_quBgASaypZBRJDmlEXWR8k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509120106

On 9/11/25 1:05 AM, Bjorn Andersson wrote:
> The Particle Tachyon is a single board computer with 5G connectivity
> with AI accelerator, based on the Qualcomm QCM6490 platform.
> 
> Introduce the board, with support for UFS, USB, USB Type-C PD and
> altmode (DisplayPort), GPU, charger/battery status, PCIe shield,
> SD-card, and remoteprocs.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---

[...]

> +	leds {
> +		compatible = "gpio-leds";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&activity_led_state>;

property-n
property-names

is preferred, file-wide (you currently have a mixture)

[...]

> +
> +&i2c1 {
> +	status = "okay";

This likely results in a "falling back to 100 KHz" warning/notice,
please specify the bus speed explicitly

[...]

> +&mdss_dp_out {
> +	data-lanes = <0 1>;

Is 2 lanes a hw limitation?

[...]

> +&pmk8350_rtc {

I see no reason for RTC not to be enabled by default

[...]

> +&pon_pwrkey {

Same here> +	status = "okay";
> +};


> +&uart7 {
> +	/delete-property/interrupts;

/delete-property/(space)interrupts, please

(yes we desperately need a formatter)

[...]

> +&usb_1_qmpphy {
> +	vdda-phy-supply = <&vreg_l6b_1p2>;
> +	vdda-pll-supply = <&vreg_l1b_0p912>;
> +
> +	orientation-switch;

This is specified in the SoC DTSI

[...]

> +&usb_dp_qmpphy_dp_in {
> +	remote-endpoint = <&mdss_dp_out>;
> +};

And so is this link

> +
> +&usb_dp_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_ss_in>;
> +};
> +
> +&usb_dp_qmpphy_usb_ss_in {
> +	remote-endpoint = <&usb_1_dwc3_ss>;
> +};

And this one

Konrad

