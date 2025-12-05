Return-Path: <devicetree+bounces-244631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDA7CA742F
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 11:52:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B64DD301B76D
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 10:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 715843254BB;
	Fri,  5 Dec 2025 10:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JGOjW09O";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EV8DFVLR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762E2329C59
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 10:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764931973; cv=none; b=E6WlHQwYXeJHtdmQu83HtqUinftoT2vIAc1TvoYSsOWjK7cz9j4wnF1dPEOBd3gcJsOD4AB5gztb29x1CmvM0hQWvz+132BhBhgf7BgkXWSdZDDGcZXc+DhHYjdieb/rCrjxxH4wmd430FuEetsgU22+S3+OikZU/9YUHuE2a94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764931973; c=relaxed/simple;
	bh=nqcawpVkiwPEsJ0F03SaS+EheZYNnxy0lK/qCyEJLNs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L0q0t0uC5ZSjGBGy2viVbF9d2YFPlrzNBVBRPaLlGK1HYuPuUZAN0C+k9JInSzEYtdXLirGNyp+9c9E079r35KZAUaxPkOMTStkVK6pas7Uz9EzRTqpkXzD8FwdZ1tuQkOkLGkU+lx+5MdhFMKH7FrzF/Rffk+2NkiJyJoPYiMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JGOjW09O; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EV8DFVLR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5AOjjJ3572474
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 10:52:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7/Un1GmZYJ+koS+OuHzHOv0o7FqfJp2R3Y4bEKI04Sk=; b=JGOjW09OLA4UM/yQ
	9AKKw+pskOmT6/OSE+gHQQIwoTzN69P39s2v7ffxKX/+W/n1IkWHnIL4mgknVUET
	fBV3FSOkSv4u3EqREEC+y8MO1OEE0f9dF5JNfFzyrJrOXgsfw5idMn2iZlitQgxI
	dP7KT5OQ0iYNZEFJmncaYgJNq7m2J1KUkTQk5/LVEJFjgYvQk4FjwIFxg9JRRVi4
	pioi4rS/NMZ8OK3gP03cLAobyAgZWbwf/AeC5ldWNfBWpGPL/Ysb7ti/WjIojfLn
	zMhA3LoSH5ITCk99S56TCAf/14jTYnivbOjFYt3rO/zj3UEAkOjB3VlelC4mwZ+D
	Ohdi2Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auwm582ht-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 10:52:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ede0bd2154so4932771cf.1
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 02:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764931961; x=1765536761; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7/Un1GmZYJ+koS+OuHzHOv0o7FqfJp2R3Y4bEKI04Sk=;
        b=EV8DFVLRV2iVXwRDcMzN7V9MK4HNTyNXC4EJcz/mZ+IPt4gq1Cit6m10q6brnnfrQa
         mnJhIlo/TaXie5JhAB40yn5IReiIV18PEgEgYE5xd2alTpyMLtDisTSb2RtoTqDokpaa
         aaE5y0moKj/mxzpPnWMePSwtbF2N0H1LkKok46+5xFSj88ma8D1GVxy3Oe62B6VDv935
         M1dK0YvHde0rEvEZXOYItvvihRp7yAimk4m8MWqCUffiQw1+GXkarDxDOxLdlomBQb7T
         dvHkEZUxCL1mqQ5Oc2gAkmCY2aJIJMwkd3szJIxLe3r5VoHVZccUM14/xQ4ko+M4Oujd
         x83w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764931961; x=1765536761;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7/Un1GmZYJ+koS+OuHzHOv0o7FqfJp2R3Y4bEKI04Sk=;
        b=iXfGA/o/N/VpxNwvFViGocsNNtSArDopDf6ix2FQk7BLik9o5yCkYBP6eKcOCjmAPF
         8u/7m+ldVa5IT6E+4RVLSxGnyZeszWaSmR7DwSpPM1oZtmGq/6dG53p9S5TfYXZvNtqB
         4+o1uLGQzzlqIi2gH4Po1lXY43sp296IXvyDlwMuP0vvF/JJV+UMgW78eah/7+mj80UB
         Z2Kz6jy30wR70G43Xj6yrGqWkkJRdnkl/8u7QgpWLbxCfgko4AAxo7zgS8mrgsFQFIkc
         nyXb8BXpocnAaJ9sBDzB4ojdU1v1W3xd3JcUM2hxk11BZXP1ECfQovSy+4+aRCD9olpr
         aQeA==
X-Forwarded-Encrypted: i=1; AJvYcCWBI0zLXWNtN3DTtwNgjaJEOUeDM7HIPVyIzgCulU6qjw1fEGr1agOFKitBJ7hGI1oSZ92RFEkVmUa9@vger.kernel.org
X-Gm-Message-State: AOJu0YzyfNADgehih4pwiQRggDQTNRiXyq4dLHgjIPm4c6Vg476hIXEq
	9Eq7sLxo9ChthEetn5C/z7/T7gxvJ/thaHg4BkVS4YVbdfHk7rKk2VejLaUp/ZsEeE3ZNjAZJmU
	xJrzjGJR3uzv/7Ih9Qx2YMam9+4a35K8tPJjc+aZzCmevz8iknybKW8t8mGW/660H
X-Gm-Gg: ASbGnct9LdQbguKMD+h8Xg+lBikWUJwi4N5dv8dujMlj8Ggho27/s4W37zeXM2nGf3D
	XbzBNFqAYFGaczHCCuXnrsPPBEgwvNuTWlRgin6fDHnR1h60RIKNmtmhZ8wpVb33247aFQI3vUY
	rlDkVrEjJj4KC0Ksw99jUtDUsbIx6amSP3jp7YKyj7cdSK4GqpqTo21Efd6DifaAQotTz2kzLON
	+aQuZvU3pc14kKVcPEDVNn9nreYmdb44Crhyq3jvzVMkIlaRJOv4vnubEJaCDYDMcWSiYYWSKBK
	Ek7HwfrwbW+jVTbo3g9ZVeicfBN207ZGS8AAfH/efAjDt1DCGd7+SjKe7WaAk0rVjwCfmVHsqVF
	Ui6w4XjY8xkuFunZfhvWCkPCp9owlcLH0gFGOIrbKaHAiJ7MPkd+A74TQ1YliPcVnlw==
X-Received: by 2002:a05:620a:2947:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8b5f8bff8f4mr884870485a.2.1764931961421;
        Fri, 05 Dec 2025 02:52:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHZbHcNR6axz8tSp07KmmHDbe9sl3VQv6RR4qS119UiVIx0rvMgiLUzbQyHsRAay6CXXLQFKw==
X-Received: by 2002:a05:620a:2947:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8b5f8bff8f4mr884868685a.2.1764931960985;
        Fri, 05 Dec 2025 02:52:40 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f49b7177sm336592266b.50.2025.12.05.02.52.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 02:52:40 -0800 (PST)
Message-ID: <846a5cc1-fa0b-4952-ab40-852a07607eb7@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 11:52:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/2] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: Sudarshan Shetty <tessolveupstream@gmail.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251201172222.3764933-1-tessolveupstream@gmail.com>
 <20251201172222.3764933-3-tessolveupstream@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251201172222.3764933-3-tessolveupstream@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 507HqFJYnGKaV8sj-cekqCsxZAWp--RM
X-Proofpoint-ORIG-GUID: 507HqFJYnGKaV8sj-cekqCsxZAWp--RM
X-Authority-Analysis: v=2.4 cv=XeOEDY55 c=1 sm=1 tr=0 ts=6932b97a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6q-ckXwDscysDfU1ynwA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA4MCBTYWx0ZWRfX0/gHPQ1lhJ6f
 PImPWrRFSPqEIhTFGgOgdRtYyXYkJ17VU7ig0boaDS4Ux/mvhcpU0hOqjuBgUUimMb1gOEebBfK
 SVrPQyxOuu4q01yh/pvmoHyApASFBkTVVrlYLHXKr5vxiVslv+1FxaG/fXafIB4j4Urva2eNQVo
 w/acslfS6YWf+6lDbPY5l+mXi3cp/vvhUGbXOMf4hqwyVSNAq/gYAPHduVW3fD8HQBBQbkdT3Wp
 xyQY7epgAzjSsiyVBAeFS/KHBVo9ZesI4366KiZzXAFYQpQ03JUdLEdoKYko3V/1OdL47m0yhy7
 Pgg/csCPJUHL7hKjfbQlUKv0P57nUvF6PBi3WoWi6lAcEbhgged7MvWVVlgRJcI68LYEg0Oeamt
 lEiKpUVkmuozlrl8k3lrbM2xPi+GJw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512050080

On 12/1/25 6:22 PM, Sudarshan Shetty wrote:
> Add the device tree for the QCS615-based Talos EVK platform. The
> platform is composed of a System-on-Module following the SMARC
> standard, and a Carrier Board.

[...]

> +	hdmi-out {

You must refer to existing nodes by &label references - let's call
this one hdmi_connector: hdmi-out {}

[...]

> +&i2c1 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	bridge@3d {
> +		status = "disabled";
> +	};

Similarly here - hdmi_bridge: bridge@3d {}

> +
> +	bridge: bridge@2c {

lvds_bridge:

[...]

+
> +				sn65dsi84_in: endpoint {
> +				data-lanes = <0 1 2 3>;
> +				remote-endpoint = <&mdss_dsi0_out>;

The formatting fell apart a little here - please give it a touch-up

[...]

> +&tlmm {
> +	pcie_default_state: pcie-default-state {
> +		clkreq-pins {
> +			pins = "gpio90";
> +			function = "pcie_clk_req";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-pins {
> +			pins = "gpio101";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;

bias-disable - this pin is active-low

[...]

> +&i2c1 {
> +	clock-frequency = <400000>;
> +	status = "okay";
> +	bridge: bridge@3d {

This really needs a \n above
> +		compatible = "adi,adv7535";
> +		reg = <0x3d>;
> +		avdd-supply = <&vreg_v1p8_out>;
> +		dvdd-supply = <&vreg_v1p8_out>;
> +		pvdd-supply = <&vreg_v1p8_out>;
> +		a2vdd-supply = <&vreg_v1p8_out>;
> +		v3p3-supply = <&vreg_v3p3_out>;
> +		interrupts-extended = <&tlmm 26 IRQ_TYPE_LEVEL_LOW>;
> +		adi,dsi-lanes = <4>;
> +		ports {

And here

Konrad

