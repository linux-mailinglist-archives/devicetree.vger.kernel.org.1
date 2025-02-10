Return-Path: <devicetree+bounces-144837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DA7A2F6B9
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 19:18:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C736C3A5B68
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C929257457;
	Mon, 10 Feb 2025 18:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="csph2HZM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0202566F2
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739211488; cv=none; b=MBFKIhsHI6dqOR4cNbRPcL1o4/VfejvokVyUIv/IRBf8mUcbbhvaCTwT4mh1SdxQ55iO7PZjh0mAf/FFnoDb0YVoLZhX8YzzYbRNwDYy3Q0ax75hxrcX8tAnKG7UXTSCKnx4tbXxTxd7Re7cIx0wKsDaeDb2M9XCjGHBjPvL0/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739211488; c=relaxed/simple;
	bh=qinDKoM++ZG8IXfNfU1TPPoop+f/Y0BBrjoaVcAsZJk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vn+QhWbMx1gcrg/mfj+fsl8vhGTNu3p2btkCQHZt+ZX+tA+AWM6SOlLbezl1I+Wvos+meynnEx/es4LP7UrTb08BThyc5xE1C0iUOYTCMGfbjU5s9I0oRaUG6k+luA+uMEM1nNLDlZPadBrrX0O/9znPgJ/M5UMWOuc/+UnDiXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=csph2HZM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51AAvc0Z011080
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:18:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B7hH0YIMetgk89Mc/p2t6ycOF8BT5TouaRT/5posNTE=; b=csph2HZMhsirrzl4
	T303c8Kj9wX3eqW3ayV9n+Moh8D0+ZH/4Pm5VXsxjBzAEsuxt+wGJ6LtmkvQ0NW/
	oYg5OwMfheB4W4nnuiuvyfl94VNUigU0UAqycfsDbVe+lyvcxq9XJzduR3rl0EXg
	n6a/qZoPBqKqkw9bJESlqvQDyd9i/hz8C7ROqQ6w1D3JCZqQ2Z7ihRepBkcuHqNy
	At2zzPpygI7S5rRwdQm/INwpUeBsC1SSSKoqsPTr9rNIFQV77XgRocLKxKq8NjjD
	2h5jFWF/hr6FhJczYYpnNPnaYgN5RY7wdGSXQJmLC7EANr/PybDVsympdx2dacx8
	OeCd6A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44q8kyaetq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:18:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4719ed0f8easo909831cf.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 10:18:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739211484; x=1739816284;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B7hH0YIMetgk89Mc/p2t6ycOF8BT5TouaRT/5posNTE=;
        b=NlCI5+01X6WStSd3eWN0jo8KcQ3M9Q8YWPsnpcxpLTwrEC2pPrNxc795TplhRNx/HT
         y7qImaYMUcZeRy5T+cSAxDiXB33mgtOetU/dolSqG08I5sR2SdVA0XCuNvfj9ZHqmmnX
         ezldcuMPg5FoUo1Hef9BN6OktGtJv6/Ph0lfE/7Ztpnv6+w3k1eqNRvI/Oi4V4xdAhER
         OsXDmSdL4Ng4x/K/VI9pG9J6E/LHq0eEtKUp0MJyeRjLyszynsmC+A8W+5nX8DTfE2oF
         NlcLFGulsdKBD3/bPqF2htog4NvCi63Go2nPqPWEDFQEOJq7Y0dham888QRG10kNFuNR
         KaXg==
X-Forwarded-Encrypted: i=1; AJvYcCVwuxxdh6T/aOdMlhKBt7UleZxteCCyQp7gW49Z5iqrvDsvvfPxZXQnYSKalMbgYVmBek0AAxSfEcG7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2SGsJsBErHvtbOTZVB9NNB1C2XhJFJNbuTDXPOyQhVOyM8mCh
	0/GvU0HEkF9KUJVQ4WrWqYjt8HYjnVcTfS1wyHMXX+VBGCZ5Wt2v3I2UOtnMC3271/JjgpahIE/
	w9oRG3bvmoFvLr1DYQ1EOr9UmkCvKCqAEEkP3bdBdYxhK0KfUMQP2fJ6NrJPr
X-Gm-Gg: ASbGncsc2FQh5CW/zp+gmbqGbUpT0ZCKHfpm5IzjZMiCA9A6b/mPwSRo/gDkLIrpuC7
	tVGfbhS7Zm/dpZcQlspe+w2JY4cYEoNRj+4FlOo8uxhoiKtFDfs9vUItgukpWVAdKmA3tdyvBET
	0jNJPC3+lwDN2ZhIWw0Apk/jsOoTWFalXoTEyIXbkDrD1YfSdg0m82jQwB1d0RG9SDY7Ud5K5Al
	rOsT0fLGETcDgxvTjszWFX3/GqrTSkCVd3VDOIVIdYMQWhf1FNytEKPdza6QH8A3OJfDqEbTuma
	xsJWAw7CdeHiQzJgVeA5Dmy9D/2UrZhVzCOatCaXtKSU7Xn1HYuTUArPbWk=
X-Received: by 2002:ac8:590e:0:b0:471:a14c:6847 with SMTP id d75a77b69052e-471a14c8663mr1571091cf.5.1739211483889;
        Mon, 10 Feb 2025 10:18:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGAXNmuIboEgfBo9SyYi4AwkYGvwLe1amQ3mO7hi9Y7qYBpldJid3eLK1F44rXVgl2m4+M4pA==
X-Received: by 2002:ac8:590e:0:b0:471:a14c:6847 with SMTP id d75a77b69052e-471a14c8663mr1570831cf.5.1739211483535;
        Mon, 10 Feb 2025 10:18:03 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5de44e4bc17sm7129357a12.70.2025.02.10.10.17.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 10:18:03 -0800 (PST)
Message-ID: <ee166cf3-4486-4172-a510-bafa1624ab79@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 19:17:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 5/6] arm64: dts: qcom: ipq9574: Add nsscc node
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de,
        richardcochran@gmail.com, geert+renesas@glider.be,
        dmitry.baryshkov@linaro.org, arnd@arndb.de, nfraprado@collabora.com,
        biju.das.jz@bp.renesas.com, quic_tdas@quicinc.com, ebiggers@google.com,
        ardb@kernel.org, ross.burton@arm.com, quic_anusha@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20250207073926.2735129-1-quic_mmanikan@quicinc.com>
 <20250207073926.2735129-6-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250207073926.2735129-6-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -rwx2ugE2xS0m8gNoYTS0ur__nbuoIbb
X-Proofpoint-ORIG-GUID: -rwx2ugE2xS0m8gNoYTS0ur__nbuoIbb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_10,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 mlxlogscore=849 spamscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502100149

On 7.02.2025 8:39 AM, Manikanta Mylavarapu wrote:
> From: Devi Priya <quic_devipriy@quicinc.com>
> 
> Add a node for the nss clock controller found on ipq9574 based devices.
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
> Changes in V9:
> 	- Rebased on linux-next tip.
> 
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 942290028972..29008b156a7e 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -1193,6 +1193,25 @@ pcie0: pci@28000000 {
>  			status = "disabled";
>  		};
>  
> +		nsscc: clock-controller@39b00000 {
> +			compatible = "qcom,ipq9574-nsscc";
> +			reg = <0x39b00000 0x80000>;
> +			clocks = <&xo_board_clk>,
> +				 <&cmn_pll NSS_1200MHZ_CLK>,
> +				 <&cmn_pll PPE_353MHZ_CLK>,
> +				 <&gcc GPLL0_OUT_AUX>,
> +				 <0>,
> +				 <0>,
> +				 <0>,
> +				 <0>,
> +				 <0>,
> +				 <0>,
> +				 <&gcc GCC_NSSCC_CLK>;

This last clock doesn't seem to be used in the driver - is that by design?

Konrad

