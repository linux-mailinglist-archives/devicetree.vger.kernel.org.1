Return-Path: <devicetree+bounces-171935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB82AA08ED
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 12:52:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCE123B97D0
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 10:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBD842C1085;
	Tue, 29 Apr 2025 10:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ew3LVzrR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F929274FF3
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745923922; cv=none; b=BelaA8GQTN1BhSY+5BN9fEvspgKLNcv/pN4fc+SoTANcYcaP8BA4bWtwOnDH1/oC9R7BMZ76IQqHXBNQBZkwBWqraDD8pvLxPUgnwAsKjMVjNKIbCTk+leBvlSUf+YUh3TzBqP0DGqrwcF/79D7kWvmh2dlDPSLDWkOmk0tT+ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745923922; c=relaxed/simple;
	bh=1WCmgyxNki9ViUDLOicGwtgd49yw1FxS9L57KJq4vGY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=olPWcj24VcYD8fTsTOd7cBNxTgwMAvl1ELODDxcd7wfL1a1caKF/7nhEtRNhOjU8Sv1B6Rxi1P0oJIFRhbvJhs03fQahXreJ5IZyXmR6t/E5uheAxqFbB7UoPv9vNqUn4KKeXOhd5LRU4gSMT1nF+gdedK7GlPJP79S1+f9sRQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ew3LVzrR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53TA9kWT021268
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:52:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QTRzGhSg5MlZSKJHgUS2LB4fHsRaKP9Q0pvSFNNeMoE=; b=Ew3LVzrR2lth11ab
	BODcPHM3KlJ29eNgNCZ2Z1jdqbzu61MvUGfXOPxSVUbDMRy/n2R9yS/CvptOdZ/y
	B68lk8emIMZ8SQ9KgpYWf7GJF9v+VwodMRao2/PeekQC2iquA+cb/PrDNqdyxSmf
	jLl1JTb1skRReWPawc7qbA7pbAFKq8YFtveIpXZB7/k9YuTUsLeL5EPvnW6OTgU6
	BbMYG/HswLSFDk7C3II0iAKlzpEW1ydFeXj8phNWBcXi3KCGZp+P0lFeUXqyKGOG
	UcSvKge+gEojM8vXChDRaAzTgR/yjyQh+DBmm3mFOBZHHGoZyXfqvE7QKQifxa7g
	EUGYJg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468qq5kdc0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:51:59 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8f3766737so15072976d6.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 03:51:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745923918; x=1746528718;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QTRzGhSg5MlZSKJHgUS2LB4fHsRaKP9Q0pvSFNNeMoE=;
        b=Wvt0OF8Cus/fXmpANMq6OLYIawCkK2cRR2sjvqwMGTiSuGzXOt3cETkkpPIYhe4lT2
         Fd6YjauToRZiQePu/B3eynVdeSs1cnxKGn8Z8vETu+b2SFgYePD7xjwttN04nzmKO0R9
         vAmB1pgHEQ5S9MHYBHvo0b+so+4fIcaTkHlyLX4BC5HcSCT+emU7IXqTCmV7AbIQqE3J
         vrHC4XhoESZ8fDsycHxEIVDOTmWQJt1ylriyti7LzfU2KKydsbBgpipEHURC4+uxMuIs
         xlS8Ta+TkkcMEnHE9vt3egRIww17FSU5iTgIy4fD3IUgwDZ+HtFj94JVfye6DUnti67C
         /pnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQtZlI4T58yjxlHtBcgcb8C2jdSYmHNI03sdRI+PqKzefgbG1JXpvfQwhLv7VSyU8L2UoPpAZ7xtmn@vger.kernel.org
X-Gm-Message-State: AOJu0YwKyyDIwnsMs17YKRPr++lXsGhhAq5ZzvlZhMMRm7nBT1xAcdSR
	AiuF2vxuQTJyrPvMRhpIbAWBqKFmQwarL02l7veQolDAs3RsbZ/2C3C1KtQePt0dE0RyLWXbVq3
	BAklxWWSVvpf5rVpxid/arWuiTe6gEki7AViLN/PIqIxOnJUmdH2A+U6Gyzdf
X-Gm-Gg: ASbGncujSLeY1X28y16OeCM+6lz4evt3//N+SuHJhixNk/qHr1NW6d5qhM42tCHDzET
	THpLQfoGqiw5CddN3fInYzHPF2j/Y61znSujXpp6emwPIh5M88AXJRc/1//N6CRaSrU1cgyBkze
	h8c6izTaHjTi81z9BV3+Xen9c1MjXTtjZdayYK8hAGGbZfQ6EeQlDAvECUdb/ZWFqbG9m+5x4vA
	zcONBylVaSNnhD5nUR6GtSurT7M8ndUXgeNZyZRlecuv1HwSh7YdAqB5ISLGEMm3Q3V6uXCtah6
	4qe9HwabB9fpSfbGRTjyx3r+1hoMPXJ2XMNj7lI0XxPb00zJP8TWNxqjGtG4idY0Tw==
X-Received: by 2002:ac8:5a12:0:b0:476:66fb:4df4 with SMTP id d75a77b69052e-4885fadd2c8mr15067361cf.0.1745923918440;
        Tue, 29 Apr 2025 03:51:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3JzNjbV3+PlqpydBQfX+3fP7408wC6Qg6TNd/6IYV9tyTw3iWCLqCkgU0oaTDWVeOMiCk5Q==
X-Received: by 2002:ac8:5a12:0:b0:476:66fb:4df4 with SMTP id d75a77b69052e-4885fadd2c8mr15067161cf.0.1745923918113;
        Tue, 29 Apr 2025 03:51:58 -0700 (PDT)
Received: from [192.168.65.43] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acec4fbc9c2sm126949366b.171.2025.04.29.03.51.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 03:51:57 -0700 (PDT)
Message-ID: <7bd9fd43-7159-48a2-bf0a-712de9cb2bc0@oss.qualcomm.com>
Date: Tue, 29 Apr 2025 12:51:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/7] arm64: dts: qcom: sc7280: Add WSA SoundWire and
 LPASS support
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250429092430.21477-1-quic_pkumpatl@quicinc.com>
 <20250429092430.21477-3-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250429092430.21477-3-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: fGS8L685XQD5U5GR3DFnRgocsg1RFZ0u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA4MSBTYWx0ZWRfX9kwTAvuV72LU 7Mrr/vX3+TQeJ8zwFY7p+3CEs8Fgd1iO4JzSXrizGBs2Dh4ZGBaB+nG87xItelFu3ZXxSKiaG// Jf/tNCjHzDJfoX7dCbi0p6LwCb32jhsLDDO7XAOmc8gOnkN6L+MS+JutGRxketQeF0DHPvW4s2Q
 LZ3bjh90Pf++BT2E7/2kepJhRNM8K+tmwYCg2IrXAMToRwGRrqayRUihLzUwqIgasG+sbli87a5 TSuWK+XokriWa0282mnwshp287fpFtpNDgVz9EQj79Ev3G3TO+Yemo1+Sv9eWy8NMtmO7xYrfDg qnpXQH26BiBN2tC5pgbWuaLQgwK5gL3FECbnStobY0KbIH1hgSKdxKN30o8bFAunavBNUSB09Nv
 gxVZdROUF6cbofhYzjnKLtqqWgXVs9n/wCWM0g5r4cFoctI190ANDLr52QClZDCTg8snFY4h
X-Authority-Analysis: v=2.4 cv=QP1oRhLL c=1 sm=1 tr=0 ts=6810af4f cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=u0yWLgZLcdoHeyFTXL0A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: fGS8L685XQD5U5GR3DFnRgocsg1RFZ0u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 adultscore=0 mlxscore=0
 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290081

On 4/29/25 11:24 AM, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add WSA LPASS macro Codec along with SoundWire controller.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 68 ++++++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 3453740c0d14..d4aacb97a18c 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2601,6 +2601,64 @@
>  			status = "disabled";
>  		};
>  
> +		lpass_wsa_macro: codec@3240000 {
> +			compatible = "qcom,sc7280-lpass-wsa-macro";
> +			reg = <0x0 0x03240000 0x0 0x1000>;
> +
> +			clocks = <&lpass_aon LPASS_AON_CC_TX_MCLK_CLK>,
> +				 <&lpass_aon LPASS_AON_CC_TX_MCLK_2X_CLK>,
> +				 <&lpass_va_macro>;
> +			clock-names = "mclk", "npl", "fsgen";

Please make this a vertical list

> +
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&lpass_wsa_swr_clk>, <&lpass_wsa_swr_data>;

property-n
property-names

across all changes, please

[...]

> +		swr2: soundwire@3250000 {
> +			compatible = "qcom,soundwire-v1.6.0";
> +			reg = <0x0 0x03250000 0x0 0x2000>;
> +
> +			interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&lpass_wsa_macro>;
> +			clock-names = "iface";
> +
> +			resets = <&lpass_audiocc LPASS_AUDIO_SWR_WSA_CGCR>;
> +			reset-names = "swr_audio_cgcr";
> +
> +			qcom,din-ports = <2>;

The computer tells me it should be 3


Konrad

