Return-Path: <devicetree+bounces-230369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CD44CC01CF5
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 16:36:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B34894F789B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3582329C44;
	Thu, 23 Oct 2025 14:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MjibQu7S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47334314D15
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761230025; cv=none; b=cLktDl+QWGPEgnGhG5kd4aT+g2Wxh3qzc76EhtO2YJznFVBIIt6btaS1WkycOM/94vxhBx5g6oAXL+Z9God6wRrIOIDL+jqCoaVlN4WBQy+qrd+eEacDArANgQQnkyKL+6/FOJSa4LrM812XN+DXz0fA3P2V0sSeJ4s1akiZ/Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761230025; c=relaxed/simple;
	bh=a9zQnr1U/qDAlP9ZQNBclzAJC9hezB8uCMOARh7yL1g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a+g68fCXG6QrhxiBLs9OqwZ1Gt8TUwGqKbCg4c7thG2xHOzwrqLDO1faCCHA1pVlSNQBnuLn0nIY9BghfcTvjlmm+IxfsOEopaNZ/VWt49/yJwt7MzHL/amEk6sakXnWLwYjt0ZCrdpxNRivVKQ+zojnZ4lLYwvd5U5Pv/eXtTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MjibQu7S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59NERX0g018119
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:33:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cAZU2ni0iRL+hjBDIOqvgHG1OUScWl3zzw0/P027wq8=; b=MjibQu7SnOSqIJhw
	b2KRd7Y/1MVog5z09DjhnaEUP8Zj+3a9EBrBBfI1WLetNT+RTz/5fwuKOnoHbM9a
	mlagnuAjHVmaQBCEcD73IfjUzRYgvdPzdgwRhHbjMu9mq47ywGlU6ra3+ATPKY51
	RUZWEgcakb3B6K5Tw7A7kPt/P8t69jRN8BoKAk21U2VMK3e5n0rmPhFcAhCIyEM/
	tolbQXq+ACPidfvCylBKLD2E2MnQM4cxtoaGd09BgFFNf3Tzph4BnXnyX171ejyx
	49r+mHn1HldIhpMki8tXJM/JP0JIToEeUIOy2vG/1OKB3dpQZWlTcTP6GWnH0HMp
	n18Onw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xhe0pp3e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:33:43 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8934ae68aso4013121cf.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:33:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761230022; x=1761834822;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cAZU2ni0iRL+hjBDIOqvgHG1OUScWl3zzw0/P027wq8=;
        b=qmIIGRUWsFmyQ+sHsoMYDu5MpOc+2wjqa0iIisbaCdVeecJywVaONRTMreQvXN2E94
         2P0VTaIvLT+EAifiYdPmjtHL93QLa7XCQpDhbCnm9Clz7EWsMUIIFCo+Uq8XTaWMzF35
         +nZeiyEdjV71djlBUaa4UYCDuvlZaDzILWxsfkp0DrInWMggzyqys+JFCeGeFYdX9Saf
         gVqMc7+r2A1Bj79DCJQ2D4a44Ax6lcJbX5Ln9TiotpotdAVfcQaa+U/lMXusXmthNy47
         4gVtMVNicvaGCwkQDhIBoCLx8/FTv+PvqegDi/9xbWJHcszBQ51Vqsrma+ukN20kbFe1
         bO+g==
X-Forwarded-Encrypted: i=1; AJvYcCXFtE6FXWZyuFvRSEISE1J4VpgKwuIIkuutVx2rgaqzcWKJRcqWIE5zuflEEYXRdNavY8sT/g+6nXQ9@vger.kernel.org
X-Gm-Message-State: AOJu0YzSv/hERQpgYMCh+nTwSpbwTKWPxoq8TUcolku3V9qWmtMWccgD
	dWnCURwR8M30MiaJtO/vWrOpz7WglfQphuOj0COKqbnvYmhY4a86109GWp4IBz7MdvRDdLj/UQh
	9+er4bljaBQKwK3jDHJSzKEWm8/ZMblBiWbQrl2w7gESzrE87CAsKFJZb9hdCTkbM
X-Gm-Gg: ASbGnctJD2YQXFeX5zTnfJ5cVPpJvG3ki+twXbGOV5n9Gy/via7JLrwTnO0qNoyFb5J
	pvMz9L0Z/DSFUBy5PqSVEclExY3788wblHh3o5T7qg3oX/BHfuO7HFPteZwcm1+ubPtH9s+Vw8D
	sgC8Pm9xYRiqc7QVAP5D9hjonuXYAviTcqh/eT6+SuQxX2bGx4jTRJOYkkaHNRuCswwa6XFCNKX
	4+xde9vWAcvoh8WP8ZnciaPFsgv5FvY5r6crFlVI8tMIiHbORK6X657sp33V2iZBw+zFzxb+quV
	EeU1r5/AaBlaWqvUzJQramsKOOwWq9DwWlYwMDe5W5dwKl4wH23dtUYEje5HsEXPMx2aErHFEM4
	f/IyEL0vD7JA8s4EHZ8f+CjwVBWDS1GuH41eZBIcIv6PJnZgfKjnvhV7V
X-Received: by 2002:a05:622a:8c03:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4e8a54dcd9fmr169633681cf.4.1761230022380;
        Thu, 23 Oct 2025 07:33:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJNFwNiX8mrBllU30A59G91vBsOifSuLRksl6K7fNrpM1xj2wDRVEAhFx96cud4Ytjso9xZQ==
X-Received: by 2002:a05:622a:8c03:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4e8a54dcd9fmr169633411cf.4.1761230021946;
        Thu, 23 Oct 2025 07:33:41 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3ebb3743sm1848497a12.7.2025.10.23.07.33.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 07:33:41 -0700 (PDT)
Message-ID: <cb166706-af7d-40e7-84d5-57c028755cdf@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 16:33:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: ipq5424: add gpio regulator for cpu
 power supply
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com,
        kathiravan.thirumoorthy@oss.qualcomm.com
References: <20251023040224.1485946-1-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251023040224.1485946-1-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE2NyBTYWx0ZWRfXxTWVN7bJEti5
 SRGwVGKyESqKLrRrgXbYnIn73WeYiwTNTzJ1jQbYe+iuTmajzTV1xNkPpKEFvRXXmQhupED/0M3
 GRAdM0i4Ev0YntcEs+/2/l59CRW/iuUpPSWJeBqOt5+ESv/6DNMG+jcrO/EzXsl4QJIZ66jK5XK
 fMQCHsF/hxFL6PWmx1mfsFFiht2Fn48tMsIQg2SOSTqNyGHlpWGkq5wE3E5GyetsOcL/I7SiKNs
 36CXwvQZLdV7uE/n3kXu2IIGv2VZgNAnz6XP1XfM3+5KNwZK7kXFT2UvV+KTbmLrR+/M1t0dpxo
 Eo6cnJhC4FEfsbrrMNLsdG1bQ0daax/uOU/FmB73HwrBpvQ0kUvsmSYVFN/+UQhjbw8sM/2+Z8F
 2btKbZqEWyrL40IckIPPidrTKOFfxg==
X-Proofpoint-ORIG-GUID: e7M9071vyewRnib7LXRQc470a93_Qa3e
X-Authority-Analysis: v=2.4 cv=WYUBqkhX c=1 sm=1 tr=0 ts=68fa3cc7 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=J-FVny67hWSXZtLCYe8A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: e7M9071vyewRnib7LXRQc470a93_Qa3e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510210167

On 10/23/25 6:02 AM, Manikanta Mylavarapu wrote:
> Add a GPIO-controlled regulator node for the CPU rail on the
> IPQ5424 RDP466 platform. This regulator supports two voltage
> levels 850mV and 1000mV.
> 
> Update CPU nodes to reference the regulator via the `cpu-supply`
> property, and add the required pinctrl configuration for GPIO17.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts | 24 +++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi       |  4 ++++
>  2 files changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> index 738618551203..6d14eb2fe821 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> @@ -46,6 +46,23 @@ led-0 {
>  		};
>  	};
>  
> +	vreg_apc: regulator-vreg-apc {
> +		compatible = "regulator-gpio";
> +		regulator-name = "vreg_apc";
> +		regulator-min-microvolt = <850000>;
> +		regulator-max-microvolt = <1000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-ramp-delay = <250>;
> +
> +		gpios = <&tlmm 17 GPIO_ACTIVE_HIGH>;
> +		gpios-states = <1>;
> +		states = <850000 0>, <1000000 1>;

Atop Dmitry's comment, please make the states entries 1 a line

Konrad

