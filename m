Return-Path: <devicetree+bounces-150620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4210BA42E00
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 21:36:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 990C21892FBA
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 20:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F91D245005;
	Mon, 24 Feb 2025 20:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O+T0os6w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DEE2441B7
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 20:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740429413; cv=none; b=tVgFnUApsFR6EgQEAm4pp4WBxs/rcugxkpjrQV1RfTBV/T3s3ZYYFdSpSKeUsTJVcLgWDJRSmlKfLcGKkzY6dlb18P5ZFIM+QlD+qbpQuuS9xw5KMtK7skC5LfquLN5oL8sw+nnD26Ik0c6aaWIwFuOJDUMQdwAwil8FVrd3/ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740429413; c=relaxed/simple;
	bh=spJMz8cybwEG4kj0VE6B5U0ruf5O+qUd5rYFJUMBCWQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=cBZy0Vy+cLo4+XH3ll+17cTftDglhP0DlHIGpG3C8i8z+PMP+xlMT5CJs/qpAO0MBUgEfdCClb62Arj6T0QgKlSACWrjlVUAUpHKPCtGuK5YTdvPdjZprdAxHyvHDb1BpRR2mk5VyrO+orUskirtfIxCsydUKkGgrvrdy1n3A2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O+T0os6w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51OKOf0S017353
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 20:36:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S91ADhtpxs6R6JlQUcvMy0LmrxiIl6wDfjwaNfgkjTY=; b=O+T0os6wGI6JLnE/
	ow9ccrz+RSYHSHtlufp3sy3S6S1eoa/JsDbR2J8XE7DA2W5Rw1Kk6U+kOlDlRbJI
	xyzhfU34GrQmqONZRwFVS8cw3WJIhk3piN+OVVioTpsNqG24SO5yRrTEPEwhMtUH
	l7LNlEvtr/QO1IKFllnVza7CNy+4EiiGeSznkw1+yNjQwXzvdc0ietUFD6qoXMfj
	TRe5L3c5mBmEqD9yv/a7mPmCo83MaKcI/gGAGQNnb7UM9s6kWU3wfiS2a5hVK7RC
	rXUIJ0Fwcb7llQEZ87gzfTjMEqGuFhNaAoyOIEk7MTBzsM345TxUzk37hKq5We4k
	hXsVvA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y5k66jbu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 20:36:50 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e19bfc2025so9287316d6.1
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 12:36:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740429410; x=1741034210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S91ADhtpxs6R6JlQUcvMy0LmrxiIl6wDfjwaNfgkjTY=;
        b=jWPpBRJgydm/SwY5UGtp8m7gDOkXRwD/h+QX9sown15L1k7/1NhSqWbcGQ66/Q3/pp
         1Q6bnlQV1Xd92clLDrMv7ugz/AY49CiwqcIXkP2UiKJuLIsmcArhZrQtM1CkkhYSdQ1G
         +pKjlTg/y2rDVgOAIcsHk8Ugizf3R3DSeiPVcBYnpNDwP3z6k16WQYE68Kb+O95gNNjv
         p4kotcIS3Srqpsa8b9wPRMY0IU7CLjSdPKPw0lcCwWjtsR1D/u+6hGgvWfju7caSh5Fe
         6wqn/ijSv8fkCb9dw6ZYUTJ7wo+1Fz1p6UnVXx+WadxNKbSkl36tQ715vckzECxkQdW1
         a50g==
X-Forwarded-Encrypted: i=1; AJvYcCXYUH8Z8Xhtkn8NGftpN+RIPPAjYKgyacbH0MqEOm1+uEKYYi9ak5J7zIMP4o48y1xQhgBvtv6fm800@vger.kernel.org
X-Gm-Message-State: AOJu0YwlmPIJ1vSy7AnQdTl/8/NZSBbUCzIBO5JetXovIfpfW9c23TZz
	VAsehKX7I1pE/KhbZ6Gv420jZtEoy6D9OH3wf+pPNTzfMS8yiu4khiUJBgcQM6oolc7Tgda7E1Q
	CrWVMiCQVsG457rh7qyx8chYxB5Qvp6i7YiuCcPd9AJvtVS5YRxmM8bbzti87
X-Gm-Gg: ASbGncu4Y+BpwWmfwl0U1dkCwKYUHpeH4x2Uuk6oenLdSWUxQRh17kYTBFgpRCUtuQ8
	lSGEDtmCj4PxLoWAtbm/LfggxHiZJVDN45A8SNF+dkxPj460NSk0TawEXPgGaPVOq3ouP8DzVXm
	Ls0+yZMyitnW0YabwF+RqeI2YI8+sTW0nJ8w3jw//mIdeLZIGFni4znA/51YM79HbbmSs0hXc7R
	yBZIb9EBxmTRiBTffIYuyfY6H2TwE2t9ZmUylpIO0V4zLlmOhtlKyDb3h2JUBwsbEfnd/E1iRdq
	VUko5PK24ocEq84kWCvyE/HdMy0bV1d5uTz6PZ0MTGyYSKuN/HVciMHJwGeJzeIp7iZoMg==
X-Received: by 2002:a05:6214:4105:b0:6e6:68df:6052 with SMTP id 6a1803df08f44-6e6ae84f58fmr71428226d6.5.1740429409892;
        Mon, 24 Feb 2025 12:36:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE5X5aTXSZjTNCwyfhhJoCnKQ8bnyt7oV1gk7d6wYB1rVvBboqFH1XnSTew4yYsaig0xB06vg==
X-Received: by 2002:a05:6214:4105:b0:6e6:68df:6052 with SMTP id 6a1803df08f44-6e6ae84f58fmr71427946d6.5.1740429409344;
        Mon, 24 Feb 2025 12:36:49 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed20133f0sm17983766b.90.2025.02.24.12.36.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 12:36:48 -0800 (PST)
Message-ID: <51ceb7ae-0dbe-4585-a955-e84bcde6c8f9@oss.qualcomm.com>
Date: Mon, 24 Feb 2025 21:36:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] arm64: dts: qcom: ipq9574: Enable SPI NAND for
 ipq9574
To: Md Sadre Alam <quic_mdalam@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250224113742.2829545-1-quic_mdalam@quicinc.com>
 <20250224113742.2829545-3-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250224113742.2829545-3-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: a_TQcXSqibFu9ZxoaySXUwtKqhnCIdK9
X-Proofpoint-GUID: a_TQcXSqibFu9ZxoaySXUwtKqhnCIdK9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-24_10,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 bulkscore=0 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0
 mlxlogscore=872 suspectscore=0 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502240132

On 24.02.2025 12:37 PM, Md Sadre Alam wrote:
> Enable SPI NAND support for ipq9574 SoC.
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---
> * Moved out ipq9574-rdp-common.dtsi changes into this patch from
>   previous patch
> ---
>  .../boot/dts/qcom/ipq9574-rdp-common.dtsi     | 43 +++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> index ae12f069f26f..6d1e84301671 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> @@ -139,6 +139,49 @@ gpio_leds_default: gpio-leds-default-state {
>  		drive-strength = <8>;
>  		bias-pull-up;
>  	};
> +
> +	qpic_snand_default_state: qpic-snand-default-state {
> +		clock-pins {
> +			pins = "gpio5";
> +			function = "qspi_clk";
> +			drive-strength = <8>;
> +			bias-disable;
> +		};
> +
> +		cs-pins {
> +			pins = "gpio4";
> +			function = "qspi_cs";
> +			drive-strength = <8>;
> +			bias-disable;
> +		};
> +
> +		data-pins {
> +			pins = "gpio0", "gpio1", "gpio2", "gpio3";
> +			function = "qspi_data";
> +			drive-strength = <8>;
> +			bias-disable;
> +		};
> +	};
> +};
> +
> +&qpic_bam {
> +	status = "okay";
> +};
> +
> +&qpic_nand {
> +	pinctrl-0 = <&qpic_snand_default_state>;
> +	pinctrl-names = "default";
> +	status = "okay";

Please add a newline before status

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

