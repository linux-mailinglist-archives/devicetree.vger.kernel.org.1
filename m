Return-Path: <devicetree+bounces-171941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD28AA0912
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 13:01:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5790188E813
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 11:01:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27DA02BF3DE;
	Tue, 29 Apr 2025 11:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YtlRGvEU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943E92BEC51
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 11:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745924501; cv=none; b=TwRpDMMfqd9Z2wqyVr8HN90a+s3lXePiUAHa3lEPzeb0WFbtkhb+GfDw2W+rlpx/ph5YGwwwgigYD/UUi4JDKL4MyRw5CjlufvL2zODXBz0AEw7qmjX+XkEbQ1ZmgDGalCcj+3gB8qwWZ57bsAnPL7l5ybIJPujvNvlcyQ/IGg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745924501; c=relaxed/simple;
	bh=tK87mDXHrUzV/mUBmwnSGvuIGijl2gsSjT9cGJhZgIs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LptbW/xIcDpQxrY7Kq+frCRogxvxXgOhposr9N4JRYRGRiJxu9HqKS5afOMCI8FnPdq9vlYbZvJqRrqOWpRA29pckXQ9nqqhlRhSmWeU077ErngVeN5ZSF6iimO0CyjwYy8X2RE29g+xv6uUTCVsqTI3b+cV9aK49uRdc01S98U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YtlRGvEU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53TAaFCq011259
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 11:01:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BQLf0DfTJQP1GapTZrUiwg6YdnEoPjhKa1i6J4lKnp4=; b=YtlRGvEUCG+39ZQ9
	nJNvvwP23kTtX1b70cJcLtsXBrQtCfnm6NwqvBwGVYTmanEhfzLu46UuCgkgrom9
	UVqtbH786BoAAtllpyvkihtZe0vapdaiZxiV5PWGjxSQz0BPzpBnICtTtHAr3qNY
	6NoGeJ9CL0IcM5Y2QyFWVI5teQhMRaw6hCKdiqHBUp5s4HUKgLQzsvJf2uRye+3m
	Hsll9QV/Cf+1knFmIqQK1C2G6t2hq7zsQ/QnbaX9gn6uCv4Qe5Ux7pbhuDNZ/vhD
	S2ajLjLR1woawouCm9Jd8yRL1qdO+xFFnhTwTvA7Kv5I0pLt1vb+B8JeH7cteKhI
	4Wb1EQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468ptmm9bh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 11:01:38 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c7789335f7so32124285a.3
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 04:01:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745924497; x=1746529297;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BQLf0DfTJQP1GapTZrUiwg6YdnEoPjhKa1i6J4lKnp4=;
        b=ifMg6BMINhc7ubZsfo7TL0i8PQt7FYvvsUZvek5yY/gdFGH7RCagIMyRQimJ0B7yE8
         XV6gA2I56j8DRYVToXqqAnkryVM11TPjrP0cldFi+HnVtVO23APKZUSWGt1S65zj+e5P
         2vP9WpddgWGTCpDCIIkz9SLnlUc6oAsTppIkEp2lVtbUKz+XvnGYgXwxcWdSAEUaqP/F
         YpAcUlLZ0St2l3GG85lnlDis/N7Mn6rKfXK9yjq+FxyMURpPZC6vJwpsVGgZVk+kFQbL
         /oa9K+NwAPGChUpBvxCN378tgE7fJbmrwjgl/56UiwDYRHeWId8sPpu7WoD+XergcPOC
         U1mQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJCmV1xzGOqy1uCRCbWyJRvJidIIoJmYIm9B3T0tR9wq0VB2dIs6p5h5Gtadee7De/y8PJ8eWk/lll@vger.kernel.org
X-Gm-Message-State: AOJu0YyZveQMLGr5gcBoSgQutp97r+qwfa4xKxufpBCkIw40Qo1yxZKK
	mHhrsHDoyUEEIrEaWqU5oLzp2N59HraLWRasqV1xZiRmLe9slvliyd8QrW2v1+4D560ivkodSME
	OZTRgwJsQC1eWVLhaG8YyxFTmjVpHzvaOsXl8g4SOqyKCONBf6ddB3JzfoJi/
X-Gm-Gg: ASbGncuvrZ21mWMskwCN+oTigVWCk8Ujr0qJUsumT56LMwqfqbNc22NWvyO/hojRQ2H
	N4tD8MfHPuOMlYh5ddIhgeJkJAfvZgQaPEnF+mY/F0bVNY/584VJoY4DkHiRUc//XdkFOP0uumc
	OmKVTWRQeyhkPs1ApJeZdyW5FqEUzrfwkefVT5U+I1To7//O87WVdvcEYI+0VvKG19NyMQ7QZbz
	a3NsbUrgLZKqgnhqPrdcsyHg15UKtYC/yP1UXNmqTTvr/zSxiUoposgsQkpHO0jp5fVJcRyzhRt
	LtUJTGRk5cWPV/J98rW9QtBsfcZUJP+7VjIK2P83JMuDKDSVEbokHc1r/U697VdmSw==
X-Received: by 2002:a05:620a:1915:b0:7c5:6fee:246f with SMTP id af79cd13be357-7cabe5ddafcmr140984185a.1.1745924497358;
        Tue, 29 Apr 2025 04:01:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOSVqDj+j76mRD44NfZzmdC5Ayntdd4PUJHV3DE1hReLwHo3dOWMUTDt9itRaCAW81o4srmQ==
X-Received: by 2002:a05:620a:1915:b0:7c5:6fee:246f with SMTP id af79cd13be357-7cabe5ddafcmr140981885a.1.1745924496841;
        Tue, 29 Apr 2025 04:01:36 -0700 (PDT)
Received: from [192.168.65.43] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7ec585fc8sm3660827a12.54.2025.04.29.04.01.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 04:01:36 -0700 (PDT)
Message-ID: <7322bb2c-5778-48cd-8661-91308ea8cfc8@oss.qualcomm.com>
Date: Tue, 29 Apr 2025 13:01:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: qcm6490-idp: Add WSA8830
 speakers and WCD9370 headset codec
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250429092430.21477-1-quic_pkumpatl@quicinc.com>
 <20250429092430.21477-7-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250429092430.21477-7-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: htQSuPVrfHk9Aos6Uh6NB57WLbATetAI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA4MiBTYWx0ZWRfX1v28UIl24U5M TyYjKbQqgFSlUdeYrIZ6/O1JdhT0TSUN8Z4wUk6S4l5KkzOFGFCM2zNsku4Nucr6pch3UWE10Et Lu38A+ZOIgZNm/iOn+AjSYNfnKXDosDupdJ5p5gxV7xP0DPa8yocYrWdGAUxyZELYtHPeRQcF0y
 Y6udTnDBgt+NAlMqL4P/CrkIBi5GlfyZSmBiJuOQwTw/CUcuGeD9ObN1uZlIF+zsccE9bOwRm+X DEhvjenr0NRwhK4VuE2n/iB4BOFq0QjEQsaF9x7LMSr5V88ILfL5A4hO2hf1jxnTwm18nXMEaXp aMS/MmB1792YYcfpUCKKnlhn1owt3QAhIRQS9fL4GiULT+56vTy89R01YGEzOGoEDNiAywLVFUT
 YY53pFH6VVUTmoYqx0vB0e/FGjzu5RBRhHA9bxMymhSasoHYHj5Nr8aKfEcYlC5rg2RYV5Zj
X-Proofpoint-GUID: htQSuPVrfHk9Aos6Uh6NB57WLbATetAI
X-Authority-Analysis: v=2.4 cv=DKWP4zNb c=1 sm=1 tr=0 ts=6810b192 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=hnSZPa_brixH1gHJoW4A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 clxscore=1015
 priorityscore=1501 impostorscore=0 mlxscore=0 bulkscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290082

On 4/29/25 11:24 AM, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add nodes for WSA8830 speakers and WCD9370 headset codec
> on qcm6490-idp board.
> 
> Enable lpass macros along with audio support pin controls.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 162 +++++++++++++++++++++++
>  1 file changed, 162 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> index 7a155ef6492e..1a59080cbfaf 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> @@ -18,6 +18,7 @@
>  #include "pm7325.dtsi"
>  #include "pm8350c.dtsi"
>  #include "pmk8350.dtsi"
> +#include "qcs6490-audioreach.dtsi"
>  
>  /delete-node/ &ipa_fw_mem;
>  /delete-node/ &rmtfs_mem;
> @@ -169,6 +170,30 @@
>  		regulator-min-microvolt = <3700000>;
>  		regulator-max-microvolt = <3700000>;
>  	};
> +
> +	wcd9370: audio-codec-0 {
> +		compatible = "qcom,wcd9370-codec";
> +
> +		pinctrl-0 = <&wcd_reset_n>;
> +		pinctrl-1 = <&wcd_reset_n_sleep>;
> +		pinctrl-names = "default", "sleep";

Does audio work for you? For inexplicable reasons, it didn't for me
on rb2 when the sleep state was defined

> +
> +		reset-gpios = <&tlmm 83 GPIO_ACTIVE_HIGH>;
> +
> +		vdd-buck-supply = <&vreg_l17b_1p7>;
> +		vdd-rxtx-supply = <&vreg_l18b_1p8>;
> +		vdd-px-supply = <&vreg_l18b_1p8>;
> +		vdd-mic-bias-supply = <&vreg_bob_3p296>;
> +
> +		qcom,micbias1-microvolt = <1800000>;
> +		qcom,micbias2-microvolt = <1800000>;
> +		qcom,micbias3-microvolt = <1800000>;
> +
> +		qcom,rx-device = <&wcd937x_rx>;
> +		qcom,tx-device = <&wcd937x_tx>;
> +
> +		#sound-dai-cells = <1>;
> +	};
>  };
>  
>  &apps_rsc {
> @@ -536,6 +561,76 @@
>  	firmware-name = "qcom/qcm6490/a660_zap.mbn";
>  };
>  
> +&lpass_dmic01_clk {
> +	drive-strength = <8>;
> +	bias-disable;
> +};
> +
> +&lpass_dmic01_data {
> +	bias-pull-down;

As a testament to these definitions belonging in the soc dtsi, you
added them in the file you included already.

[...]

>  &tlmm {
>  	gpio-reserved-ranges = <32 2>, /* ADSP */
>  			       <48 4>; /* NFC */
> @@ -725,6 +868,25 @@
>  		function = "gpio";
>  		bias-pull-up;
>  	};
> +
> +	sw_ctrl: sw-ctrl-state {
> +		pins = "gpio86";
> +		function = "gpio";
> +		bias-pull-down;
> +	};

Again, unused

> +
> +	wcd_reset_n: wcd-reset-n-state {
> +		pins = "gpio83";
> +		function = "gpio";
> +		drive-strength = <8>;

Since the definition is otherwise identical to the sleep state,
you should define the (other) bias type that should be set when
active.

Konrad
 > +	};
> +
> +	wcd_reset_n_sleep: wcd-reset-n-sleep-state {
> +		pins = "gpio83";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};
>  };
>  
>  &uart5 {

