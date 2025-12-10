Return-Path: <devicetree+bounces-245517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C7CCB1ABB
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 02:56:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 78E05301245F
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:55:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1C14228CBC;
	Wed, 10 Dec 2025 01:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jo40O+Zp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ETfZ9yPX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022271FCFEF
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765331756; cv=none; b=XPvBbq2POKqv6Cbudma7ODDN3hATXrzUhgh8QMOwAXTJZxiWllpyzd9B506gEcZB6NUOsaEwu8f86v0ZVMbMCmCJfJj0kfyCQbNIsyqml8/IKbI5LS/iTtGtbvP9w9e4+UKZ5PKbaSZ1Vu+Zf+OrRzv25Af1uwhXG9uUGZAb7eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765331756; c=relaxed/simple;
	bh=DKLuJf/JXfx0yQ4P8Pqgx98d6NTEQ2xj8uZxS47Qf88=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZmBEup+ohE1StwS0/0nplu9+E9qKfnXfYSqy4Pq3EZm/GlKn8QtdhRSKb+MJJPzfcO/pHaCWJstBVNK0pgPo/KOnWh+akTaeM6EcNfh/rJL/W1i1BUue7P/IpYiTWQFex5WE0wYDxQ83Eie4dL1Bq/NWGwyhbJZd8e6S5x9LJ7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jo40O+Zp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ETfZ9yPX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA0OQf11046569
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:55:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qAgt24CjLNqR+WvXK3Cl+58W
	cP9a5/vRqB+dhz4UKy4=; b=jo40O+ZpP1Pkrn5fAs9YrBw17xorA6CAwjXi5Omk
	vUEpsooiyknXzmZP+Cha5FQ62VA4z6sBJKISUdYHmr9nBL5yrGOtEZ9NFZ8Z7hSG
	i1ABh52icIy4JlPaNqwc+ATLc0Iv8VOWHczWfX1d97V9WWGVkzZ1rtqtdBNRtnzO
	jrhH4dqmqh4Pk9pmeN6EWGE5IsPQjr4xq+1CWpqcN4XiCjtygXybDOOCq3UIbMlC
	IzoDv5CmzyRka+ug9fktIR5f0/UsNt2ddLGP0Pejo4KohjDN3DFRPn6WpSlbW2f5
	XhSVnDbMtjodA/0njMo3eMJ1XjGprwRH1+ZVs6mG7NhWzg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axrhm9cp8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:55:54 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee0488e746so9414361cf.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 17:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765331753; x=1765936553; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qAgt24CjLNqR+WvXK3Cl+58WcP9a5/vRqB+dhz4UKy4=;
        b=ETfZ9yPXYw3dPyrcpl1sRKTSwwbzbMdInN1GTYQFJG3d42EB59JMfUuIjzJMvBGY65
         PEMe++vuWzIRifxyCHoH6mvowD07zvGL4wifBL+d9FvrH1PhbB+2e0EV5f0uhXuyKSGA
         XiCc5K9avQg4yXByddnqTpy5KXFskbZfQXkcM/NRle711ZiONx9+1yfB9SKtfOWSNRek
         YqgiF7CrqBlvAphqBzgAS/Gj/pep3o2f3BTKTr3so5VS6mPGVhEThKF7nwdSoIfxWtDs
         D6HiF6JOpM/P3gRRIEMni+FAUT16OJxAuEi4givZm49J3GJm9i/xl60Mzu7K+2Mk4mi0
         Zcbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765331753; x=1765936553;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qAgt24CjLNqR+WvXK3Cl+58WcP9a5/vRqB+dhz4UKy4=;
        b=vVTvCp50Mef/sv9dPJuQnjkaIxrx8sM6bGdYKSjwxY4XWg0XHcimAWuS5z4c4Mx6A9
         iPf1rwgCe5NyBmzWmvm8dzoEIwY97jzX3FKWVp0bSnQbS8f2M6rjZhbdOL+q4gyI2Hq1
         z02u2e5iKKxOWgxNI8ayOuqWq1VRCVfuck4J/dkb/az8qs4pI/YtlK43XAOfgkex7jAr
         qvMRKB8f4s10MXv3NmG15WPSaZ4gPHsZw7pGYIrHj6mMF6Lf9DQwvs16Or6NEFhf4l88
         tVj1G/RX5pYKA4GpoimObGhwPpjEFrBQPfgU3s8aFeDsqEsZfY8nk7p7naEVA+DYfixy
         50vQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2D6aN4lwvYa+Q9PUhJY5dSgYsafKAC7Wci2aM2bw0CKH3r7qoueA/RZUXcymOc54HpNuuPDgXMZep@vger.kernel.org
X-Gm-Message-State: AOJu0YyCn9snLLlohWKpKvyq2mo2e+WTPX8H0pyFZCtWWJ0C8kRx5Qre
	L+kgb5ziLfxLLJd1+j4ibJtmqlCzUGzhEWPezrbZm6cOEFuGfa2TcTzP3tU+bUrSFHvxDYIPQjD
	OyILAf2hB6sPDufHka3zMtC5kdmYmgZ8pm+06F5AdfyHfVPtynpWAPqsOK8SKx9iF
X-Gm-Gg: ASbGncsndbc8CrvqMy1JQ5GFBCUKkG8WCJ+qbWFHr54ES/0dj4yUn+EhM6Z7ZmDWR8Z
	VnSvCn3XmjFKvZcfyGbPB8HMd8lPIJzlKC8nKT+7uVZtE5xmruSPXp+BXeKIEopt7zdnfHRuGjY
	HJFbcS1vvufi8WXPfkSyf8YGaOgKCu0H6klBRjFFt5FAXy2CqgE9xcvm5M4D4+jIl19fNX8gLMc
	Q8NlFFp06C6OV4TNMovgSpDzg2M7uyQ+HuDfAjq+As2ds1PWZYrYnOZTAs6vgIF6vd84E0nZRV/
	ezs9ZeDB4R42xWTXmVTvNnpEng+OrnzjOUBkW4n6y+3+xp5Waj9XFqBOiPA6yNIJr4EipwH8yD5
	JiuBzDs8XnGk8I/b9nGhiN0MXjFMrq+GWvtOuX9tZ6kMUtMM60PZnMY94RIrHFTl1ZfeqIVNt+y
	onE9I9/tgncocTeodzMCxCVkc=
X-Received: by 2002:a05:622a:241:b0:4ee:27a9:958d with SMTP id d75a77b69052e-4f1a9aefc6dmr52953261cf.16.1765331752981;
        Tue, 09 Dec 2025 17:55:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGK5XK3i3G3Us0uj0x5snz5jiGDnyHy4S/JJpNtTObFaEy+FoqP2sYHhTDnJM9LoVKGdlTvXA==
X-Received: by 2002:a05:622a:241:b0:4ee:27a9:958d with SMTP id d75a77b69052e-4f1a9aefc6dmr52953131cf.16.1765331752469;
        Tue, 09 Dec 2025 17:55:52 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c1e2c2sm5815838e87.63.2025.12.09.17.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 17:55:51 -0800 (PST)
Date: Wed, 10 Dec 2025 03:55:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 5/9] arm64: dts: qcom: pm8550vs: Disable different
 PMIC SIDs by default
Message-ID: <jyyamotpswptzirtido6iufroxpdu3dyqkf4zs3hkfqj6mt6f2@sklyrpyahzjb>
References: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
 <20251210-sm7635-fp6-initial-v4-5-b05fddd8b45c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251210-sm7635-fp6-initial-v4-5-b05fddd8b45c@fairphone.com>
X-Authority-Analysis: v=2.4 cv=d7X4CBjE c=1 sm=1 tr=0 ts=6938d32a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8 a=BWpuR-d3BRky3lTXAc8A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDAxNSBTYWx0ZWRfX+ovnp4F83VOz
 j/ztmZOiMv3GUA4MrK1YBJwDUEigQx7ZVxjYcDbq4rpQGq+prOyfDfVSFNyISjBlkwVz58DrEkd
 VJgvvEe8FOOp7+BNZyHVOZHQZGZZvpPg9A+8/llLH/6ckeZAFs54iaX12I2vav7EeCfPSvxzKgN
 H3m2OTvelazbOvxUxc/eZz73al6TgXfapCxyklqzXuvABz81l3n3xpxEnlcMHDM7bNYL8aPUrnN
 3lwC9mk35Aa5TlZ3cclzZH+oO6sJ8IM4E8v4QWoVWohpnVSKEXPRhhjyzhxSixaX7eJPwmMk8Ko
 gEz0oYy9yPVY5pvY52dZS2KaT4f0jl+5cZ2+QkU6KHA2Bmv3LvHazXSU+G/iGiOlUK+hYXAJpAV
 yi+2dV41H2MA3rb9T9J4X+gmXIU/Qw==
X-Proofpoint-GUID: YJmXnyp8ZpHqdj1VJdI-Um1kQl8kFW9P
X-Proofpoint-ORIG-GUID: YJmXnyp8ZpHqdj1VJdI-Um1kQl8kFW9P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100015

On Wed, Dec 10, 2025 at 10:43:29AM +0900, Luca Weiss wrote:
> Keep the different PMIC definitions in pm8550vs.dtsi disabled by
> default, and only enable them in boards explicitly.
> 
> This allows to support boards better which only have pm8550vs_c, like
> the Milos/SM7635-based Fairphone (Gen. 6).
> 
> Note: I assume that at least some of these devices with PM8550VS also
> don't have _c, _d, _e and _g, but this patch is keeping the resulting
> devicetree the same as before this change, disabling them on boards that
> don't actually have those is out of scope for this patch.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/pm8550vs.dtsi                   |  8 ++++++++
>  arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi             | 16 ++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8550-hdk.dts                  | 16 ++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8550-mtp.dts                  | 16 ++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts                  | 16 ++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts          | 16 ++++++++++++++++
>  .../boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts     | 16 ++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8650-hdk.dts                  | 16 ++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8650-mtp.dts                  | 16 ++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts                  | 16 ++++++++++++++++
>  10 files changed, 152 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8550vs.dtsi b/arch/arm64/boot/dts/qcom/pm8550vs.dtsi
> index 6426b431616b..7b5898c263ad 100644
> --- a/arch/arm64/boot/dts/qcom/pm8550vs.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8550vs.dtsi
> @@ -98,6 +98,8 @@ pm8550vs_c: pmic@2 {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  
> +		status = "disabled";
> +

Would it be better to split pm8550vs into 4 files rather than disabling
irrelevant bits?

>  		pm8550vs_c_temp_alarm: temp-alarm@a00 {
>  			compatible = "qcom,spmi-temp-alarm";
>  			reg = <0xa00>;
> @@ -122,6 +124,8 @@ pm8550vs_d: pmic@3 {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  
> +		status = "disabled";
> +
>  		pm8550vs_d_temp_alarm: temp-alarm@a00 {
>  			compatible = "qcom,spmi-temp-alarm";
>  			reg = <0xa00>;
> @@ -146,6 +150,8 @@ pm8550vs_e: pmic@4 {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  
> +		status = "disabled";
> +
>  		pm8550vs_e_temp_alarm: temp-alarm@a00 {
>  			compatible = "qcom,spmi-temp-alarm";
>  			reg = <0xa00>;
> @@ -170,6 +176,8 @@ pm8550vs_g: pmic@6 {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  
> +		status = "disabled";
> +
>  		pm8550vs_g_temp_alarm: temp-alarm@a00 {
>  			compatible = "qcom,spmi-temp-alarm";
>  			reg = <0xa00>;
> diff --git a/arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi b/arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi
> index e6ac529e6b72..e6ebb643203b 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi
> @@ -366,6 +366,22 @@ &pm8550b_eusb2_repeater {
>  	vdd3-supply = <&vreg_l5b_3p1>;
>  };
>  
> +&pm8550vs_c {
> +	status = "okay";
> +};
> +
> +&pm8550vs_d {
> +	status = "okay";
> +};
> +
> +&pm8550vs_e {
> +	status = "okay";
> +};
> +
> +&pm8550vs_g {
> +	status = "okay";
> +};
> +
>  &sleep_clk {
>  	clock-frequency = <32764>;
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> index 599850c48494..ee13e6136a82 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> @@ -1107,6 +1107,22 @@ &pm8550b_eusb2_repeater {
>  	vdd3-supply = <&vreg_l5b_3p1>;
>  };
>  
> +&pm8550vs_c {
> +	status = "okay";
> +};
> +
> +&pm8550vs_d {
> +	status = "okay";
> +};
> +
> +&pm8550vs_e {
> +	status = "okay";
> +};
> +
> +&pm8550vs_g {
> +	status = "okay";
> +};
> +
>  &pon_pwrkey {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> index f430038bd402..94ed1c221856 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
> @@ -789,6 +789,22 @@ &pm8550b_eusb2_repeater {
>  	vdd3-supply = <&vreg_l5b_3p1>;
>  };
>  
> +&pm8550vs_c {
> +	status = "okay";
> +};
> +
> +&pm8550vs_d {
> +	status = "okay";
> +};
> +
> +&pm8550vs_e {
> +	status = "okay";
> +};
> +
> +&pm8550vs_g {
> +	status = "okay";
> +};
> +
>  &qupv3_id_0 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> index 05c98fe2c25b..3fd261377a0c 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
> @@ -1003,6 +1003,22 @@ &pm8550b_eusb2_repeater {
>  	vdd3-supply = <&vreg_l5b_3p1>;
>  };
>  
> +&pm8550vs_c {
> +	status = "okay";
> +};
> +
> +&pm8550vs_d {
> +	status = "okay";
> +};
> +
> +&pm8550vs_e {
> +	status = "okay";
> +};
> +
> +&pm8550vs_g {
> +	status = "okay";
> +};
> +
>  &pon_pwrkey {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts b/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts
> index b4ef40ae2cd9..81c02ee27fe9 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts
> @@ -533,6 +533,22 @@ volume_up_n: volume-up-n-state {
>  	};
>  };
>  
> +&pm8550vs_c {
> +	status = "okay";
> +};
> +
> +&pm8550vs_d {
> +	status = "okay";
> +};
> +
> +&pm8550vs_e {
> +	status = "okay";
> +};
> +
> +&pm8550vs_g {
> +	status = "okay";
> +};
> +
>  &pon_pwrkey {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> index d90dc7b37c4a..0e6ed6fce614 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> @@ -661,6 +661,22 @@ focus_n: focus-n-state {
>  	};
>  };
>  
> +&pm8550vs_c {
> +	status = "okay";
> +};
> +
> +&pm8550vs_d {
> +	status = "okay";
> +};
> +
> +&pm8550vs_e {
> +	status = "okay";
> +};
> +
> +&pm8550vs_g {
> +	status = "okay";
> +};
> +
>  &pm8550vs_g_gpios {
>  	cam_pwr_a_cs: cam-pwr-a-cs-state {
>  		pins = "gpio4";
> diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
> index 5bf1af3308ce..eabc828c05b4 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
> @@ -1046,6 +1046,22 @@ &pm8550b_eusb2_repeater {
>  	vdd3-supply = <&vreg_l5b_3p1>;
>  };
>  
> +&pm8550vs_c {
> +	status = "okay";
> +};
> +
> +&pm8550vs_d {
> +	status = "okay";
> +};
> +
> +&pm8550vs_e {
> +	status = "okay";
> +};
> +
> +&pm8550vs_g {
> +	status = "okay";
> +};
> +
>  &pon_pwrkey {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
> index c67bbace2743..bb688a5d21c2 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
> @@ -692,6 +692,22 @@ &pm8550b_eusb2_repeater {
>  	vdd3-supply = <&vreg_l5b_3p1>;
>  };
>  
> +&pm8550vs_c {
> +	status = "okay";
> +};
> +
> +&pm8550vs_d {
> +	status = "okay";
> +};
> +
> +&pm8550vs_e {
> +	status = "okay";
> +};
> +
> +&pm8550vs_g {
> +	status = "okay";
> +};
> +
>  &qupv3_id_1 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
> index b2feac61a89f..809fd6080a99 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
> @@ -1002,6 +1002,22 @@ &pm8550b_eusb2_repeater {
>  	vdd3-supply = <&vreg_l5b_3p1>;
>  };
>  
> +&pm8550vs_c {
> +	status = "okay";
> +};
> +
> +&pm8550vs_d {
> +	status = "okay";
> +};
> +
> +&pm8550vs_e {
> +	status = "okay";
> +};
> +
> +&pm8550vs_g {
> +	status = "okay";
> +};
> +
>  &qup_i2c3_data_clk {
>  	/* Use internal I2C pull-up */
>  	bias-pull-up = <2200>;
> 
> -- 
> 2.52.0
> 

-- 
With best wishes
Dmitry

