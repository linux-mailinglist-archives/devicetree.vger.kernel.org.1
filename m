Return-Path: <devicetree+bounces-256716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CE8D3A1F4
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 09:45:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 944533017F0B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 08:45:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1898634A3AC;
	Mon, 19 Jan 2026 08:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dLZxPARZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZJ5YMLaK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9068734886B
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 08:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768812332; cv=none; b=bPBQWQEA2/YWwArCAVfYDJPfQ81c0mN0/QnFpZVIAi7+9VcKn9QISEI1el6zs71eAKbsJJF1i3RECpJjAG2e4C0bsrNuOzO/IBYD4LG+LFkQvrk8w2FFm+mXL+Wx/h2v2q90QkReNuyuvlivclzpLuqj5lZ0sjTmokjkvl7qn3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768812332; c=relaxed/simple;
	bh=ewfHaESyQdaQ7RSizYchr7OkxpvMgXkcPV4r28ALsN0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GXoLNn8WgOfL0ceHTocJnYMdScd8FdNu+hlZIqXP4Jh2Dle1wUklDGvBrJyxs1M4ckcYw/C5RFgvRzWlZKS8i07UpYxXkAOUAvD9AUvVfI0SOVrUcDrzf3YH3eNEinyj0QnIPinqDIE4ebeU+Y8MbVn4gGeNis1YQDng/WK0gzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dLZxPARZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZJ5YMLaK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J87aaG1786852
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 08:45:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zJ/WkhxGiqKNc/4wBHKonjzmBL6vC2PQiFeJeVHtZzU=; b=dLZxPARZJywEsxjy
	WA1iPQVIjaaX72YCOw6KJaeL8cSacCgnr8Qh7baWksNFAigC1aSBqY8NRSFTYmg4
	qODUVVDa23LdzmcQS8uFiOwTu4NxFotuAChQ0b9/Jx68/E3aVEk9Ytd4iBJwuCxb
	KBqXOc685AqhI2jKDGwGb3nPHn7kTogTIpeLzT/9yEYrKnXnBLnPF12vRG7u0VmB
	aB7Q4wxDnRYdzwGnLy0DqY9kZfdo1xGp/UxOcRqHlSLkxwEenIIvvrgyqfe3OOU+
	lLNtK0XRirPtx/EILk2d+aB8BbsfbOeDR6r5DCHd3z/RJ3nuSKbGecrbQufTOLXs
	2oj+Og==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br3kh4760-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 08:45:25 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2ae25c02e7bso2395635eec.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 00:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768812325; x=1769417125; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zJ/WkhxGiqKNc/4wBHKonjzmBL6vC2PQiFeJeVHtZzU=;
        b=ZJ5YMLaKmMq6tQJkPI4r8cK+GU1Gdpy6V9jSeixjdltkntTQ5i1y7lFJpGG1hYRMkn
         szFUVOs2/Db7MBXqChlXc7qFmJKkTvcnLSm5BvztfQfxYPak+kVdJc1EjkxWiaCGXNSN
         6+Ru78N4oNyCx4o1HXmt20hcT4qvmm1w/VOVxhLLhD8cFfypNlrOYxnwXH7WGeLop3am
         d53SWMDr2LUMUvQri3D6/JaneuWfyn5F2D7vHZLDcKTOVGYhnVKPQQeqMWb5qT5/wEyX
         GH2Wgja0JyE3mPI7nRKWEjhwdh6FRyO2cAMiPpOF4VQ4VzEyHFnHra9sB8JkSOGgCZLB
         osHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768812325; x=1769417125;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zJ/WkhxGiqKNc/4wBHKonjzmBL6vC2PQiFeJeVHtZzU=;
        b=G+SPnGjj5K4R2QwoO1P8WhaggbMFgawQYn010CZx3xfk8GZhRnNbs9I8GLacrWrfVN
         CXGRQ5PUawr5uPYxoNnIlArniLJf6gJK20p8XRmvPzDDOAPHkqwYoZXXFXu3SFGg5Red
         vf/9y191hB9d15RKbVqNUzlFJQSw0Ecn2/28erKq0O8riwkDRdj0mI7EJSXBsIZoQLj2
         IY27kAdkPcl9bI1yc0vrkCB3COyT4YleZwZZjv6N23oJlgv4ZLEAOOSASlc5psIDsAWc
         l6mFpSeclbxIfWJ6prg1p97Ad/McbMelCZ+6ULW21ZCV2+KTUe6EI0M8IF/J1O2g/N41
         +E3w==
X-Forwarded-Encrypted: i=1; AJvYcCVzaUuXDsHzn+rfqMMKRy09XI+CwpFs01hF9260A8s55LRhqj188idw9Zoto1/GbO/PMdEk1RFI5tVk@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4aOftwslQeayDxyw8H7qnCkx3DoJcdPOinhBaS8VENu7NJMDW
	rFoXA/j+ES/1KQMT31gB+RIi5fPnokzfmdxU7/QervM1shk45Yf1INAu1rm4meOfZL8uijwv1jC
	oaXJkKKniNUZfwCpTQXishZJKwqn5N82vecvUpRZk9vCXfW90dOV8t6C1EjxxQ7rq75kKEcZdsy
	I=
X-Gm-Gg: AY/fxX553qigeQdVHpecRJwc4q+n6gNOOuUkR8FXUisQf8qJHrNS6Tz+WCeitr0LFWv
	eHe3WOVZc3VCZA4UjaZKXzkvDCMGr4qPgnQK/GI0Z/aVGIa0q7cLMWimkq1x5nuOyle9T9sYwbv
	sfqc1OzOj8uiahaWK4c7NscSWh1L+2VwnTCwXguh57URoe4wbT478jyIv9oOWfmtWsltnHEMZ/J
	GvKl3PgkJdmCJUXUZMqBYXQySCnV8KXhlBCMPmjnTSPvcPx8XNBjPQFtUsXE+TkdLC8VUrvfMow
	q9IQeevhSojndrIl/sRrBgOmv4o1Wp/qE3tLKHd/aLj/Cbq1/SQBb4yd7XZg28TzqA3V5pzWVvS
	1OFzH09kThiaMSM9i7T0zEV4GnQlz8kktMq8z4Lq+rEdPsmEBkWKJEE0Q7g==
X-Received: by 2002:a05:7022:e29:b0:123:2c98:f65d with SMTP id a92af1059eb24-1244b335a6fmr8479296c88.13.1768812324785;
        Mon, 19 Jan 2026 00:45:24 -0800 (PST)
X-Received: by 2002:a05:7022:e29:b0:123:2c98:f65d with SMTP id a92af1059eb24-1244b335a6fmr8479276c88.13.1768812324115;
        Mon, 19 Jan 2026 00:45:24 -0800 (PST)
Received: from [10.110.3.4] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ac57fd0sm14129605c88.3.2026.01.19.00.45.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 00:45:23 -0800 (PST)
Message-ID: <8a17f04b-2bae-49e4-b777-7c9cfd5d610f@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 16:45:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6] arm64: dts: qcom: qcs8300-ride: enable WLAN on
 qcs8300-ride
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260119080125.2761623-1-wei.zhang@oss.qualcomm.com>
Content-Language: en-US
From: "Wei Zhang (Stone)" <wei.zhang@oss.qualcomm.com>
In-Reply-To: <20260119080125.2761623-1-wei.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA3MSBTYWx0ZWRfX5Rc3B87an5uP
 yMOvswSaIG811H67PZMld3RZQj/+JmF0BGliRCCcl7io52firpkDqvL9rB2JF7Iaft+Ehp7dNVU
 twYG2D1a372AKUPj/qj5ldyFrOlsXpAi4Frs6bAbdjDKyy7zXIQ6F4Yvd7lAkrFi6+2OeobVe/R
 xFKWvBYTJYibNAuoB5q69YbnuEHcX+e9+71stux2hfJ2ibJDuTw7Hr/vgJesbTBu/cB+CvZcYCn
 9Mn9XkSFOHlKzLNB/eJ9+mfGVZjN8kjpXfS/s2Jv32f2Xl/KEU+s8qZms13hORWqj/4DjLjBsFk
 QNy8lNCcAS0UPW8Gqc+e0zSUyfF3EVw69rPVMX994ZPSU3lKGu/QcRgXcQcYhdsAJ6b7Em9E6E0
 Br2TAOUs04S0ZMS5FtPKjDiSJmde23dPNl/w0O0KPIKB1ZmmmPVO/AZuAHwGoQF8DaD3M/o0PeZ
 toAiBX6tgCfEhjNFEvw==
X-Proofpoint-ORIG-GUID: BcMNCOFqhiutSXiFVqJHDFrocDCq2V59
X-Authority-Analysis: v=2.4 cv=JcyxbEKV c=1 sm=1 tr=0 ts=696def25 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=oYwhgj4Yc3e4-RwmJjMA:9 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: BcMNCOFqhiutSXiFVqJHDFrocDCq2V59
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_01,2026-01-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0 phishscore=0
 malwarescore=0 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190071

Please ignore my previous patch. It was mistakenly tagged as v6.
I will resend the correct v7 version.

Wei

On 1/19/2026 4:01 PM, Wei Zhang wrote:
> Enable WLAN on qcs8300-ride by adding a node for the PMU module
> of the WCN6855 and assigning its LDO power outputs to the existing
> WiFi module.
>
> On the qcs8300-ride platform, the corresponding firmware and BDF
> are QCA6698AQ instead of WCN6855, which have been added in the
> 20250211 release.
>
> Signed-off-by: Wei Zhang <wei.zhang@oss.qualcomm.com>
> ---
> This patch depends on:
> - PCIe
> https://lore.kernel.org/all/20251128104928.4070050-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v7:
> - Align regulator node names to match the existing naming style in the dts (Dmitry)
>
> Changes in v6:
> - Rebase patches
> - Remove unintended 'output-low' from wlan-en-state pinctrl (Konrad)
> - Link to v5: https://lore.kernel.org/all/20251113055148.2729943-1-wei.zhang@oss.qualcomm.com/
>
> Changes in v5:
> - Rebase patches
> - Flip the order of property-n and property-names (Konrad)
> - Flip the order of bias and output property (Konrad)
> - Link to v4: https://lore.kernel.org/all/20250325075331.1662306-1-quic_stonez@quicinc.com/
>
> Changes in v4:
> - Rename the symbol pcieport0 to pcie0_port0 (Konrad)
> - Adjust the property order in node pcie0_port0 (Konrad)
> - Add to the commit message mentioning FW and BDF used by QCS8300 (Dmitry)
> - Specify the calibration data using the correct variant (Dmitry)
> - Link to v3: https://lore.kernel.org/all/20250318093350.2682132-1-quic_stonez@quicinc.com/
>
> Changes in v3:
> - Complete the nodes property definitions according to DTS binding requirements (Bjorn)
> - Link to v2: https://lore.kernel.org/all/20250227065439.1407230-1-quic_stonez@quicinc.com/
>
> Changes in v2:
> - Rename the nodes name according to DTS coding style (Konrad & Krzysztof)
> - Provide regulator-min/max-microvolt to the regulators (Konrad)
> - Link to v1: https://lore.kernel.org/all/20250210062910.3618336-1-quic_stonez@quicinc.com/
> ---
>   arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 107 ++++++++++++++++++++++
>   1 file changed, 107 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index 68691f7b5f94..57cf1edb2d19 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -33,6 +33,88 @@ regulator-usb2-vbus {
>   		enable-active-high;
>   		regulator-always-on;
>   	};
> +
> +	vreg_conn_1p8: regulator-conn-1p8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_conn_1p8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		startup-delay-us = <4000>;
> +		enable-active-high;
> +		gpio = <&pmm8650au_1_gpios 4 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	vreg_conn_pa: regulator-conn-pa {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_conn_pa";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		startup-delay-us = <4000>;
> +		enable-active-high;
> +		gpio = <&pmm8650au_1_gpios 6 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	wcn6855-pmu {
> +		compatible = "qcom,wcn6855-pmu";
> +
> +		pinctrl-0 = <&wlan_en_state>;
> +		pinctrl-names = "default";
> +
> +		vddio-supply = <&vreg_conn_pa>;
> +		vddaon-supply = <&vreg_conn_1p8>;
> +		vddpmu-supply = <&vreg_conn_pa>;
> +		vddpmumx-supply = <&vreg_conn_1p8>;
> +		vddpmucx-supply = <&vreg_conn_pa>;
> +		vddrfa0p95-supply = <&vreg_conn_1p8>;
> +		vddrfa1p3-supply = <&vreg_conn_pa>;
> +		vddrfa1p9-supply = <&vreg_conn_1p8>;
> +		vddpcie1p3-supply = <&vreg_conn_pa>;
> +		vddpcie1p9-supply = <&vreg_conn_1p8>;
> +
> +		wlan-enable-gpios = <&tlmm 54 GPIO_ACTIVE_HIGH>;
> +
> +		regulators {
> +			vreg_pmu_rfa_cmn: ldo0 {
> +				regulator-name = "vreg_pmu_rfa_cmn";
> +			};
> +
> +			vreg_pmu_aon_0p59: ldo1 {
> +				regulator-name = "vreg_pmu_aon_0p59";
> +			};
> +
> +			vreg_pmu_wlcx_0p8: ldo2 {
> +				regulator-name = "vreg_pmu_wlcx_0p8";
> +			};
> +
> +			vreg_pmu_wlmx_0p85: ldo3 {
> +				regulator-name = "vreg_pmu_wlmx_0p85";
> +			};
> +
> +			vreg_pmu_btcmx_0p85: ldo4 {
> +				regulator-name = "vreg_pmu_btcmx_0p85";
> +			};
> +
> +			vreg_pmu_rfa_0p8: ldo5 {
> +				regulator-name = "vreg_pmu_rfa_0p8";
> +			};
> +
> +			vreg_pmu_rfa_1p2: ldo6 {
> +				regulator-name = "vreg_pmu_rfa_1p2";
> +			};
> +
> +			vreg_pmu_rfa_1p7: ldo7 {
> +				regulator-name = "vreg_pmu_rfa_1p7";
> +			};
> +
> +			vreg_pmu_pcie_0p9: ldo8 {
> +				regulator-name = "vreg_pmu_pcie_0p9";
> +			};
> +
> +			vreg_pmu_pcie_1p8: ldo9 {
> +				regulator-name = "vreg_pmu_pcie_1p8";
> +			};
> +		};
> +	};
>   };
>   
>   &apps_rsc {
> @@ -355,6 +437,25 @@ &pcie1_phy {
>   	status = "okay";
>   };
>   
> +&pcieport0 {
> +	wifi@0 {
> +		compatible = "pci17cb,1103";
> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> +
> +		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
> +		vddaon-supply = <&vreg_pmu_aon_0p59>;
> +		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
> +		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
> +		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
> +		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
> +		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
> +		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
> +		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
> +
> +		qcom,calibration-variant = "QC_QCS8300_Ride";
> +	};
> +};
> +
>   &qupv3_id_0 {
>   	status = "okay";
>   };
> @@ -461,6 +562,12 @@ perst-pins {
>   			bias-pull-down;
>   		};
>   	};
> +
> +	wlan_en_state: wlan-en-state {
> +		pins = "gpio54";
> +		function = "gpio";
> +		bias-pull-up;
> +	};
>   };
>   
>   &uart7 {
>
> base-commit: 24d479d26b25bce5faea3ddd9fa8f3a6c3129ea7
> prerequisite-patch-id: 0e8aad7b8514142fb33c17829386f17c3a55127a
> prerequisite-patch-id: e641f09d4139ac77c34757bd08af2db746de3963
> prerequisite-patch-id: 4d16e87cf6213d6e25b2c40e2753d4e629778d53
> prerequisite-patch-id: 40187dae2c9518a10866104b9fcd5a481ac67d51
> prerequisite-patch-id: dd3bdf2aebda74f3603aff24a2c9aaa7f4fd6763

