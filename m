Return-Path: <devicetree+bounces-171084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9459EA9D2AC
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 22:06:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF9EC461103
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A678B221731;
	Fri, 25 Apr 2025 20:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oUKhVsLY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235791DF971
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745611574; cv=none; b=j63slbvn2Zdn03bRgzRxGN36QgeQjoMPECs/HIellPZ8khivXitdihTnQI/Nb2ECLEngKP+8TrSJsTBHLclCdx7DGJpRA0Q4auVTIdVvpAZTLD9EVez5R2UiVNpDF141EwswzKz65M2VmSWgAzWgvGABJdPjGkDpDQaCA/abJL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745611574; c=relaxed/simple;
	bh=oSnWoBvwiL8zXIfukoiTiTzqEKDcbv0yN7J/kywW3EM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KHxybFF35czWGpkvoMfkVG5czvt4OxAfEXyDX3slE83FDKhcd7xWVOJl6Z5ipSNFyVFQRODtxK2zJ4RjWhX9oLMSpD7+bGqqGqoG0xGDwEvlIe2wJRip1lFuqGXmoNqfFPjJ157afNLIRcBlUT1+shnk31bbOzq9S67GRtIacPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oUKhVsLY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJuc7001355
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:06:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JbkzYlr9FcucS7S5VCQ3UfLEUKAWk1iYNuI80KBt6hs=; b=oUKhVsLYbYpS4gsG
	Jo08Cx5fDePu9XX8NoSq5zbFvEp9MCchBV52OU1EEYxMRrsHhDDkD4a4tLDsKQ+s
	JSSOB9swc/ZdirF1p/Tlf9N6Fhwbw1j+FTMvfqx9xHsluiHRi1X7FGdtXpgw4akc
	qFb2GxQ3wLUZVPYwHPxXEktHjO+9pq9n0GFaMLzBhMVb4evvOF5RAb/06mBlrPim
	jgYO8KA16bGjkGOe79jvFwZbUHPkqbiJ8NlN8Mmmr6pLdUHrhFW6sfpF0EGhrmKH
	QindxyjxDKlW1MMTdvXQ0nBFO8aruSQEPq5EuUr37VVsAdi9WYKMYtq4G4sFi3yY
	bEZtmQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3j6xm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:06:11 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4792d998b21so4181241cf.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 13:06:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745611570; x=1746216370;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JbkzYlr9FcucS7S5VCQ3UfLEUKAWk1iYNuI80KBt6hs=;
        b=h/64kGO2er+cZgp/l4/1bp+W744NTOSi/1omMlR0ydVGGOz73ZcOoS7ambusb5tcuO
         4/ezx/qJAPotRNg+iws3JFjfG1xHwdUj5St6JnAIQoDUcTsgvK+yp2SAajwQ50Iq/55e
         HoHgddDq4KGIYXK9hyP8TKPGplc1P5HGbdmhCML3QCNdySKlLGFl7rwoZki/dWKdmNWI
         EB0FxzoaWPCg+Z1juRLMExBhiLQ+3i5ZJBPT2qLsZQ17OIE5ikiCWjChJszaWnHQ6GTX
         lATU316iyOwzyu9wlSt9fD0SA6V7yAdtKF52N6DpWkEefcDyTKTFz42pOguje3uxl2bq
         s+4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUNOGKLqPpVdIYf5UzKDrNllOmO9g5XN5Wn2Eh89UE4DSmDsjBKb7Q0RML/TZEWhIjSHvOaTUDjS9mB@vger.kernel.org
X-Gm-Message-State: AOJu0Yzug4FdYlnXOkvLASSyuEHSIE91Wdsv7V6+W2dP+ecocSBC0ene
	+VvtyAvPVeTXhyqxUOfKAokib1JGJkINMwdJQh+mg5qb604uDCz+xQOl9qfnTBjz4BYVZqJgTGK
	l4MR36CmV3cSNGr0ciZKw2uB9t+UVkiaXsMqD4Vg3qA6oCKK7ebaeZqtO3ogc
X-Gm-Gg: ASbGncsmz1tq2IJ8ZOuAWYbqOJGQ/Dq2YiDHgz9cJPl4miG4wPxYFmHakEIYF8+5ynt
	/8p9C4+VOmXun2ltMTKGhZ4xmJyIKRdS8OddYk6EaLttmHVMNDrr0edIwmJbzqh5exx0e2mIzSY
	NnSvvF0OEok6klKSFYklGVz4UP9kNi0pv0UJL/UrkMKDWUVd8ggYe26EoUanjjnjEZl7MXtWgdT
	KOp7ZYyucWkupe9lyJ8kQXUWG0fr62naDjMx7Q7GPbSw8uKvj6n+SouFhwHGl37JYYQu7E7j9qi
	t9zDlh2jhkCbumBBBEYrCMB2poXc/Zovo/7oyQvPxdJz4IUr3miFQXI71CbdyBkcSqo=
X-Received: by 2002:a05:622a:20f:b0:474:e213:7480 with SMTP id d75a77b69052e-4801e6f355emr20584001cf.15.1745611569847;
        Fri, 25 Apr 2025 13:06:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9Hh7yNKXMC83orMEjh4un0cdx38I27WuSPe2cISBmPqnEl2ZJLXpyzGB/8t69yh0ofQvoFw==
X-Received: by 2002:a05:622a:20f:b0:474:e213:7480 with SMTP id d75a77b69052e-4801e6f355emr20583801cf.15.1745611569404;
        Fri, 25 Apr 2025 13:06:09 -0700 (PDT)
Received: from [192.168.65.156] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ecf8955sm181397866b.117.2025.04.25.13.06.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 13:06:08 -0700 (PDT)
Message-ID: <891c7909-69ef-4d9c-a99c-8d6d08dbfd02@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 22:06:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Add support for X1E80100 Dell
 Inspirion 14 Plus 7441
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250424-qcom-linux-arm64-for-6-16-dell-inspiron14p-v1-0-ace76b31d024@linaro.org>
 <20250424-qcom-linux-arm64-for-6-16-dell-inspiron14p-v1-2-ace76b31d024@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250424-qcom-linux-arm64-for-6-16-dell-inspiron14p-v1-2-ace76b31d024@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE0NCBTYWx0ZWRfXwepbX87VAuPe tSoAa+jgSFOxDHw+H6dxrWvkD8vemrRcmidx+KbPsSmKft6Rm80dQRBUJxCz9fRd1jC6PRZ/3TW X0U1/pms+P+2ClUhzDOVG6DOAznqiZbYMwlSjtJAwFNNt1yLJxByg1tbiMqtZxTW2j9NZFKY1GY
 Vp6pCdH588Gls6Y3yVqPtNUvGCNgV45ClAkrMXxIc6Y7/apxriIc/x33QL1e941+DKgCiezHnp8 yg7z5NqapQRpynOT6bqSPTvuhS4FkRkqkWXxmvrfx0UbnLEJbLK8GcQwDjA1yP4V8XIWy2rIjCA beICkA8jxLVuQ56tWSAz03XrYZhFC/dAlOybFfIDLxc5y3LsE3grDO3bEZFBHcaTHH+7ln+NGac
 awNxlk82XL8mDWs1Jo1gbDbamf89xHFzb/vOjtImyaYU86Ndz2NeDYduHJNl3zB/puC7EJ5d
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=680beb33 cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=LY3U4cgvXuRfn2pE898A:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: fDm4KEEJoSpA9q2Zz8lniUXOuouitaQ_
X-Proofpoint-GUID: fDm4KEEJoSpA9q2Zz8lniUXOuouitaQ_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250144

On 4/24/25 1:53 AM, Bryan O'Donoghue wrote:
> Add support for Dell Inspiron 14p 7441.
> 
> Working:
> - WiFi
> - Bluetooth
> - USB Type-C x 2
> - USB Type-A
> - USB Finger Print reader
> - Display
> - NVME
> - Keyboard
> - Touchpad
> 
> WIP not included:
> - Audio
> - Camera
> - Embedded Controller
> - Battery
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

[...]

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&cam_indicator_en>;

property-n
property-names

file-wide, please

[...]

> +	/*
> +	 * TODO: These two regulators are actually part of the removable M.2
> +	 * card and not the CRD mainboard. Need to describe this differently.
> +	 * Functionally it works correctly, because all we need to do is to
> +	 * turn on the actual 3.3V supply above.
> +	 */

Well there's definitely no CRD mainboard in there.. not quite, anyway

[...]

> +&i2c5 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	/* Type A Port1 */

But there only seems to be one?

[...]

> +	/* FRP eUSB */

Factory Reset Protection?

Please spell out Fingerprint scanner if that's what that is

[...]

> +&i2c20 {
> +	/* GPIO_80, GPIO_81 */

That can be tracked down by looking up the node definition, it
would be however good to know what sits on this bus and at what
addresses

[...]

> +	cam_rgb_default: cam-rgb-default-state {
> +		mclk-pins {
> +			/* cam_aon_mclk4 */

I don't think this comment adds much

[...]

> +&usb_mp_dwc3 {
> +	phys = <&usb_mp_hsphy0>, <&usb_mp_qmpphy0>;
> +	phy-names = "usb2-0", "usb3-0";

Any reason to limit these?

looks nice otherwise

Konrad

