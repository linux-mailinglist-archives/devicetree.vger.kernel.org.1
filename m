Return-Path: <devicetree+bounces-270049-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YE3JECefpWnACAAAu9opvQ
	(envelope-from <devicetree+bounces-270049-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:31:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF9F1DAD59
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:31:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 53986306BCD7
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 14:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E1293FD155;
	Mon,  2 Mar 2026 14:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RGeUqWTV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ovc2aNYL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35B140149D
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 14:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772461177; cv=none; b=FAa5hUGKPbCeZuuFMhag0y7V6mT/QeJBmhaqf/V8krI9Yj7lTW3DZH/JpvMK63DCNZ6aoPTfgpiDB8KTJqwYCnIQCgbmUM2IHgEV/TyvGzYkQ3PIEY71vIrhQD049WXNx3LwEyJa41V0WSBuwOx/XKl43DZX7hHChK1YWg0/BNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772461177; c=relaxed/simple;
	bh=pATfqLu+e2vqZ4O40YVHYShR1JR8UGne+lTZ9RVoEQA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L06PsJNF5BuQDwU3G9PXe7namchAXI+mFS8JQ6BaTiHPFPhF/e5inMRnuSCEdeesMONF85fQvjUHsFqzo7WPQxeFllJlgOJJ4nbWS0AN/QZwduZKfbd01QAa1XYPFRNAv/Q4nsZwOyEVbGUQD6Mc37qNp+IqJNmbP4/0ZPIU7sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RGeUqWTV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ovc2aNYL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6227extx2524299
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 14:19:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fjo/kdQSRpPefoMLwX6+iCPNspce4EmQ1eua8UqXSEA=; b=RGeUqWTVOt4Re0fA
	Rw6mJufAeAi28bVyMVkohFE5iZY6p6n0as0LiN73UTDEsoZKYEp5ZCqFWswmT106
	Td5LGDPwwjcuZG8GJQEI6i/P0ijVSG+Fu8iy4sFUPBrsSeMU4ZwZ8xLBGtmeq1BM
	dzgZ9FVkL2ahEuOrhHaM1PuNEkNXdcQ85GJpXQDyxHLUtQi95wK/XblaRoTugFgD
	v6AgbcIR0MEuVA3mtTJwybgNBA9BcRHOKpqWs23pS3GBRFDKWtPd92C6wHav9wqQ
	sYhfFK8xTHknlr9iWUSjsA1fEohCcZ11Pstvv1O+3VGjlCUpJq69xhSPyleZH3vi
	LUvOcQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cmgbaunqx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 14:19:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb485c686cso393268485a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 06:19:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772461173; x=1773065973; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fjo/kdQSRpPefoMLwX6+iCPNspce4EmQ1eua8UqXSEA=;
        b=Ovc2aNYLfZqQfRo0WGUnLB2vo7F5ZawB1O9fbqe2nWRBhQfx5zDYz+81ONLNEDSNSi
         ioev076ovPEyo7U0qHpVvRmzz7IgK6ZYA945ZdaYp2SGpWojMN+aFzjj7eQR8AgHGukh
         VonRgbfuZg73GEWKBFsirwZvWMLsS3U8mPbNuHIQHsqY9uYISJAsH/on5UAyUXoNUwGm
         SqmpVu9G9mlXbBo7qy/2RfXs1pygwmgHdMa7+5JcgjS+wRL31imsyjAweQOd8jdMEnGZ
         U3CWFX7oNeZ3JhF85GM0SsL3cpUmjRAxqZV7SgHB5YqtB8jiQYlGQ54m/ODLs6Id9ffV
         IUyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772461173; x=1773065973;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fjo/kdQSRpPefoMLwX6+iCPNspce4EmQ1eua8UqXSEA=;
        b=izUC1qPxK0HoGcoBUbnhhNal/jsTRz0g1MKJ51cSR58kjKYOn8aJfs9uMfJhF2Tn5r
         /UxChySqnvMMPiLhTaKyJ+FWm0yCg7Ik9KXwgqo5dPq9u5e+7p5Mqu5U8W551PwgQzfY
         ZJc+Z0vM8A27lp4/NCRy1z6DAErMSeUPjB/aqtDYKWqehAFheUIfGzQjbDUGh9IVPLAL
         bfv3KWfZrgQUBXp/MVxdwpgPMk+Pe/B473rjdwVzM983XWkYoBHfPufiX4Eo/V86+TJ2
         RyxqZREokQ4+YMkTyxgBZNfJ+7k5jDTwCPfdAZ8y4JCfoxAEWM4soty99M047C9Rh9Zd
         9W7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVNylQap2VoXIV3NHcU4BYAnOqubMIM6fUBpyc98DNlEABRYGYt4M1XkF7/UM+4ykA6Qv2qixx/XC2i@vger.kernel.org
X-Gm-Message-State: AOJu0YxKxSAr3SiVfH9lv+lPWwQLImXSb/2oGx6AkPPqsZctEDV+lCzt
	DPL8INxyXp/tDbzGGqUltk6Ifb3hBJXMx285+B3+v9eYjrLJOrV+JDH6xKD1qEQlqSzvW9Y9Sad
	2OT+vtZ1NWtoAjWlrrtl9z0y/sXwsGHZy1qSfzcAmt5AM2U3VBrFJ0N3v040wrCSS
X-Gm-Gg: ATEYQzzt6OuLsp96AhnhcXIhsPpGHmWsiShZFDFHy4YMYFtmDQYFO+jvuIw7mwrEhji
	mHAH2gyZEC5ijQMSAERIOgJxjjUr7xlpFWrLa6dnsHHPHZSUxvHjtwWc231MSfMulHAMscx4kQ7
	5ACasSODbn4j64sXmHtbzUaVID2ybHmRvTC/J/YJQ7VJarAIeX5Jg/s+j4UFK/YdgAoGzojXa0W
	a4Z+MWk99KrO1KhuTCIUwnBPrR0wUy/U7csSwNkaxcLMP1/slOlRnzBRJT+X74/YZZ2sVz4LWsH
	AfRl3+v08miOQjCj0dR6e+/FABJmZtjGyGY1FzvIRGCYElf4eZrO+Iy7U8B2oKQ07iMtdG/gWbD
	aNUhQ+QAS5uJa94bjFDV78fmtwNbRKwJIG3j1L9/i1wn1knR9CReLZGhyjRXoANx59ZWa5UJrGW
	434kw=
X-Received: by 2002:a05:620a:46a4:b0:8ca:2e37:ad06 with SMTP id af79cd13be357-8cbc8f467c1mr1228837485a.10.1772461173124;
        Mon, 02 Mar 2026 06:19:33 -0800 (PST)
X-Received: by 2002:a05:620a:46a4:b0:8ca:2e37:ad06 with SMTP id af79cd13be357-8cbc8f467c1mr1228833585a.10.1772461172660;
        Mon, 02 Mar 2026 06:19:32 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fac07c09fsm3499457a12.32.2026.03.02.06.19.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 06:19:30 -0800 (PST)
Message-ID: <9cb20af1-c2f5-4511-a066-24bc689d2fa5@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 15:19:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: hamoa-iot-som: Add pm8010 L4M
 regulator
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
References: <20260227-hamoa_evk-v1-0-36f895a24d8f@oss.qualcomm.com>
 <20260227-hamoa_evk-v1-1-36f895a24d8f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260227-hamoa_evk-v1-1-36f895a24d8f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDEyMCBTYWx0ZWRfX2FCYr//4O1RG
 jW0AFw8EhoOFOQH1xSUONFlNB+xFlXT+oclEYuCgU9aMdUn6RFNtdSRef+6Vyw5dvZ2aQS5Ql5H
 CEAHiHE/gPbedcZUJbX1J5DeYIjQ7tX+1h2+db3ZH4295pkadYBjMJJHOJhsObK/NjlFtF2Sp9M
 SabYdCseyl1qcp+lSM94iTa2K2/ClI3PIaomd5mBQsvDWj6TzZuITkJ4TgECZ1S4IXGEKvRq0ci
 jUwtGjjDR+cTDgg9M+PbYaiH3RQNbRWn/wYJADp2QgdDYTNl+uIgEfwOlL/a1tZL38UIpjbwo28
 w6k2XCesb09/8ZwiHkSA9n49D3o71IyDPpdTCq1LpkehEpjJM945KP6D1ebcPHIrIfkRaygmW8l
 M0GqAWxu34aGPANPoJYjIwG4Bj6+Xw3fx9s0jAcGxnuDRqox94K9w6V/3h+L61WtsVYmf8OuxbE
 nsSzgOb9CfuoEA6KXKQ==
X-Authority-Analysis: v=2.4 cv=QfVrf8bv c=1 sm=1 tr=0 ts=69a59c75 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=__G2b6sp-w7MuTAc3JcA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 2-qCCf8hnmVT8JUUOmOAG7tAhSQMf5xP
X-Proofpoint-GUID: 2-qCCf8hnmVT8JUUOmOAG7tAhSQMf5xP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-03-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020120
X-Rspamd-Queue-Id: 8CF9F1DAD59
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270049-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,nxp.com,pengutronix.de,gmail.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 2/27/26 6:29 AM, Wenmeng Liu wrote:
> From: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> 
> Add pm8010 L4M regulator which is used by Camera I2C pull-up.

I think this mandates regulator-always-on, as we don't have a 
better solution for that now

Konrad

> 
> Signed-off-by: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> index b8e3e04a6fbd489f66bb44a02aba7b9746f30fe2..5d9af325c931ebbc9f3f8261d427a31e6da090be 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> @@ -376,6 +376,21 @@ vreg_l3j_0p8: ldo3 {
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  	};
> +
> +	/* PM8010_M */
> +	regulators-8 {
> +		compatible = "qcom,pm8010-rpmh-regulators";
> +		qcom,pmic-id = "m";
> +
> +		vdd-l3-l4-supply = <&vreg_s4c_1p8>;
> +
> +		vreg_l4m_1p8: ldo4 {
> +			regulator-name = "vrer_l4m_1p8";

typo: 'vreg'

> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1808000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +	};
>  };
>  
>  &iris {
> 

