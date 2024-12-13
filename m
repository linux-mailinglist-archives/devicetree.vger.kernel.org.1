Return-Path: <devicetree+bounces-130744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D699F0CD8
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:00:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 72165188A609
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 13:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E82271DF744;
	Fri, 13 Dec 2024 13:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UoIAO7Fk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F7A1B3922
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 13:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734094831; cv=none; b=SYui6y94OftWsiF1+d6biolaeZQvrVKwl2GkBFu1gYFCs/dwurHCodwrUtfnNlb9gpodf3Lf+1f7PXmCUmxUakb8GnhnpATcRmwn1N49U7H2wwFoKVYvRfG8m1yraHoI5frzmrIjSkI1FgO8OAmmffA9LG3J5QfqLX5Y3nJKU7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734094831; c=relaxed/simple;
	bh=Rp869uM2wZxe0HaIZrypFYM5KLLKtGoqut7udBsBhuw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ba10c172r+ph6elK6ukLyLqi4t+yTNhBqNACPNs8WiRjsvaidUcF5fdGyucv4Fc3j7SpnV+4ydyTKWC2vNw5BYkg18P2gMVTmADYbllU8Nxy5bLy23HwPA0BZc71aRFd2O+i8wT2C2UneuywzrmfA43hlODoUNF8At6HZRqhyko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UoIAO7Fk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD45ha6017168
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 13:00:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c70qU7EUPr6CxztC+tT3aMDxIFjQHDuqKZeXLpbD8RU=; b=UoIAO7FkD8+GE6Uk
	BpQc8+BxpYopxFdhFehCFZ6Ige8V4uTYmav75jSu/mjUOWPURmh+rclc7EMC8pW2
	EwI5N15Nd8Hnjd7DbeTet6jj4VJijrLpn13QFvjXL2fvq6T5d1kqLsDEgF2usvZa
	fw1bY7tcSfKLtIPXKZtRnC2sleXIUnW1h46P9nri7DKtnndNg/6aDtbG7d7oFRb6
	jQkYM2zPPmCagEW3lPJPMhy9i4OZwAZjzyWT8vt3nqM3t4N1cZQnJFQORlP/ehK+
	uesTGOxbaUFaj7VU8FIWdpAh51Xy01pGPqDX+wCs+sY/wrJ3ujQpOEf+zABUz44h
	ymxavQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gdkn1c0v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 13:00:28 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8824c96cdso4752856d6.2
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 05:00:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734094828; x=1734699628;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c70qU7EUPr6CxztC+tT3aMDxIFjQHDuqKZeXLpbD8RU=;
        b=YneXXLgrJVYSRYL/QYzmypM5L6/cWlTKyGtoWEf8f+owlKjq3Cu0yNKv7rSQfs5RNm
         6PqXbrvpGeZEqlo46iNbsL+FDzIL/UesNj6jAasO7cnQG+r2gcwlnSbaopAfbu9IVd4u
         LPCocxNu+R4yqWYwZgLsekqiM+7i5PhsML+C+Msrv4abEOoOhpFru75F/R+etZEKKwL4
         IgH1Rt9hh5e0PJCvrx+z1sbcWXGkoOrXlhddtA3twPz2j3A9nhfbx5Yp1XHSOOTBOeQY
         Lz6tOXX41IkHrn/1z/dvN0E9xiGYxQGRXdarczBGcpl67qChhNqQFttCHuEvJzNMyiCj
         o96g==
X-Forwarded-Encrypted: i=1; AJvYcCUanFCGIDCfddeKHwjv9HkWpTbwbp8hnEzoANsL8Rs9GgTnODu4O7rNIKbTvKV7PzKY3+CpHbSDbcjC@vger.kernel.org
X-Gm-Message-State: AOJu0YwvZUAXGvFAEUOD4VrB31P6VXhWSHwsuA9fif1cia+88BCwBmn0
	O20hdWYWPM931DfLnZlIdz0F3QUsCa9Gobkt8k1RbZzY5h6bI2/OPR4Y/quoCpgLL66E7L3Wg+C
	HGjWvvaVApFBtLfhVKlKInhgP20zXK4U+SUqUmw95QOLIzQN+wnBQH5BgwS1U
X-Gm-Gg: ASbGnctjbtRyzHFTfk147UlxFlxgUFDD9CjKSLlt+2QSscbWcqPx37qfZs7asJuwkHk
	qWyq2DZOQWYjOopq3V0Kw6OHPkjiNZQeCEb3ybLGobMIvYzUpjWpvQ/WBEl0/oxyfF4wgTT6J/v
	1aKgn/bAEakx64FgE5DLbI3XtZYJU++3sNVOicpj71X6lpkDvZS0w8HIrRrvQGsr3E+1fZipTOk
	J1IYLsssoMXrKiKcj49f27cMJ9WD5ow2vtAv3QQL86sgThpVQqbNXl7YdzyMSMu5w6mENZp6ffz
	+SO3sU8v8tFlr0A8G8N2ENDHQGWFSfD2ThAq
X-Received: by 2002:a05:620a:4410:b0:7b6:dc4f:8874 with SMTP id af79cd13be357-7b6fbf3d252mr144631185a.12.1734094827991;
        Fri, 13 Dec 2024 05:00:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHZUVTG6mWDzKnkSxU64HjjbSeNBnC0N5zoqV3vUFu36laHgptTxc2lr/u1XTriE9GzIfrFqw==
X-Received: by 2002:a05:620a:4410:b0:7b6:dc4f:8874 with SMTP id af79cd13be357-7b6fbf3d252mr144626885a.12.1734094827487;
        Fri, 13 Dec 2024 05:00:27 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa67af72f6esm789011566b.148.2024.12.13.05.00.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 05:00:26 -0800 (PST)
Message-ID: <f3fd235d-7306-44bb-8b7f-7eeb63f34481@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 14:00:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 6/7] arm64: dts: qcom: ipq5424: Add tsens node
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        srinivas.kandagatla@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, amitk@kernel.org, thara.gopinath@gmail.com,
        rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20241125050728.3699241-1-quic_mmanikan@quicinc.com>
 <20241125050728.3699241-7-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241125050728.3699241-7-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 6BQegYl5s_bhetwrHd51S0SCed4wBiPC
X-Proofpoint-ORIG-GUID: 6BQegYl5s_bhetwrHd51S0SCed4wBiPC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=715
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 bulkscore=0 suspectscore=0 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130091

On 25.11.2024 6:07 AM, Manikanta Mylavarapu wrote:
> IPQ5424 has tsens v2.3.3 peripheral. This patch adds the tsens
> node with nvmem cells for calibration data.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

[...]

> +		tsens: thermal-sensor@4a9000 {
> +			compatible = "qcom,ipq5424-tsens";
> +			reg = <0 0x004a9000 0 0x1000>,
> +			      <0 0x004a8000 0 0x1000>;
> +			nvmem-cells = <&tsens_mode>,
> +				      <&tsens_base0>,
> +				      <&tsens_base1>,
> +				      <&tsens_sens9_off>,
> +				      <&tsens_sens10_off>,
> +				      <&tsens_sens11_off>,
> +				      <&tsens_sens12_off>,
> +				      <&tsens_sens13_off>,
> +				      <&tsens_sens14_off>,
> +				      <&tsens_sens15_off>;
> +			nvmem-cell-names = "mode",
> +					   "base0",
> +					   "base1",
> +					   "tsens_sens9_off",
> +					   "tsens_sens10_off",
> +					   "tsens_sens11_off",
> +					   "tsens_sens12_off",
> +					   "tsens_sens13_off",
> +					   "tsens_sens14_off",
> +					   "tsens_sens15_off";
> +			interrupts = <GIC_SPI 105 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "combined";
> +			#qcom,sensors = <7>;
> +			#thermal-sensor-cells = <1>;
> +		};

Please move interrupts properties above nvmem

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

