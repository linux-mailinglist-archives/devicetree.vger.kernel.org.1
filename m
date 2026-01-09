Return-Path: <devicetree+bounces-253254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A12D08F2A
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:37:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A8A0930C9E19
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0B91359FB7;
	Fri,  9 Jan 2026 11:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kTiJ/Dg5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XFO/V6Uq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4209F359FA2
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 11:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767958180; cv=none; b=fmwzd96LDNSfYCPW8ae+LMfIrWa3Fmgh9pMvnAZ99/ey51uyjjw6p7oGqJb1nFTiEZaoem1Q8KfHCujjKXeU61dBJtKh26R2AidSp5BLtjHtU3WCDGRJY+tLjoRqI4VfcxpY8a4uflblEOF2/XdNLQkIx5llJleRqaatW9dkn+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767958180; c=relaxed/simple;
	bh=c9YDJM3pT39vaijHmZFFbsKUb3f8dgWlFld6jxOYbqw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B2v0yBSY0CLt8UTdrUoAwbEBf0hHg0aT5PYPQ4Nh8ZDJq4hjez2bgokspwHh9yQ3jtovShvTw2ruKTiw1u1miLNzF6JVWWNYIulkUyXloeJoE/IzV3ak+JpTq8MQsAfrb9TIIufxB9O6lDtW1/cprYo2iW5GEExY9aOYUQzIvLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kTiJ/Dg5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XFO/V6Uq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60969e3s3019302
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 11:29:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2lGiKnYxFHdcjMNRzQ4V56/23nl7ZnAleRxOsMTf7Qk=; b=kTiJ/Dg5CDmidQdo
	a1VzsDT1pCtmXR3xs1SYqrv4+1euyNghMpPhMOTZu7t4la24uALBLTWpz1cnGCJy
	ZfKuuNM8K0SFwbyBIuKqW7NKuNZhg591iZopau7Jo0sD5Nz3ulnJv247pIyCFiCm
	tyYX03cOPUyYeb1v8T6P0o0WRZ2tORUBZGcARAQhEbJ0PXCl6g11AoENT2DErHqz
	VoIm6gdMkfxkn+3nh/8P5JAQNtqtXD4CjTnKxJJZ9ZGVjDUTl9kxOY/6rCpWMYKh
	V0S+MmyLw8Dzzf8q1nuakS02LSHSUv2pnQUz4mU1sX8s1WtybqFffCHkb7OKSWXA
	uNtj/A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjjk3jh60-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 11:29:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b25c5dc2c3so76957385a.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 03:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767958178; x=1768562978; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2lGiKnYxFHdcjMNRzQ4V56/23nl7ZnAleRxOsMTf7Qk=;
        b=XFO/V6UqrEza2DcajxbuJpNfuyjG7u+QIbjPuWINTDwq+dq8uH+NI1RYk7Bs5RKmid
         9wFK2TFR322/pwhORaJP2I5WtSj1M9WS/ZcIyc9sBIZb0QPQit2jUMZywzL7kAs3uXHH
         J/KylVa0CdpIxX+HzMwg7fCukKFGGWr1ButvXsztcSW9uII4OmHXH8R+w9MjlefY3qPV
         1rEEUKNIRcsBo0TOlVlMK1FEMGViWkXeoKscXS/jn/SlXBOX7+CJH7KPJ0aPET83kXp6
         2jfuM34IDEIRMRLCud3KPb6KKDrkkIMSAorthyI8sfTPPl1O2PRyYgicy9C1SZFCum3D
         yLWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767958178; x=1768562978;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2lGiKnYxFHdcjMNRzQ4V56/23nl7ZnAleRxOsMTf7Qk=;
        b=mqx5XHlS3vb5tUiQi8xgTeGiN1XAOu6k/lQrnNWgx1sSnkaePqqJHjI2MfkbvCwqQ/
         kMygQPuen5N6deREDf/yDT1g7xeuQ/dKZl2WmVLCQsm5kgH5qLBkX4zr6SPG8Crw1N/Q
         8N5WK2h51VKqRbjcLsuxqmgvqC9lwIJpe7+OeaiEiqk7ptTx0c+onU6NEz7oUCNT0hdw
         6dkI2RaMYB1WTiFAFDe9RSvfuZlF93U62iwsNzNcPHq1JNHNHsQhpS1rnSV7hrjFvJnd
         QpT06a2OZ0UIYh8gFJKQXRgrE/za6rCwq+Sowz7wGelxXer9xVtLwpvn85+VKti2MHyY
         KbeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdfgqGCEu9iqSQZcwxDDkml7z7OZeOocECQAX5zRc4KQVenN2fB6z+k6m8K7rieQ70dm+3kbLVY60/@vger.kernel.org
X-Gm-Message-State: AOJu0YxyUV6ZvqpCbtuFQcVkatCaX4HECLRNuUgqhAO8wmggfekbLKKk
	5mKIAfg/HFwrB3qofZ24LaAKJ5yBqZZROPbYgz7NxzQsCP7CsxWsFiw1utWGTLmaV2CuHiRWUmJ
	bsChE2MmleYaExNrJfM6CK8WNbJCyIab5z0r91lKetGJQM89hvoFKI9EmSmVU+EpE
X-Gm-Gg: AY/fxX6nYpfjlfZmsIybaPSTs/uz5AcEpmNd6tF2zSE58/dRI19uMb58xViCRYG/ypT
	y4Fx75pmep0I0zCeUHI49eduAsWpji5g45buXM6qyq0KSrKOxZBsSM0a26uL8aoe5QKUC72c6xm
	3pFDk8ALpUEv8DDPPMS1z+aqQMzDsclc3BPtLj7VMVXa+roI3UoJP3FqtdVm+yrC1NAupgV2JQb
	V65+e68416dFDReXVu+hP2Nc+kR6/Q/386CluW5WuG9q+LUnp2qOGCSXVSycwAG/s14fOmnxXZg
	3Y+HkrSlZ1jDE4ykEcpT+kPXuiiwJalyk4bYdsegOvsI4TUB/MJWiPbJOqFiuF4ldjXVJxFtZOE
	1kmlbPz17EUyKSowh65jG/pLn3VlJNug8rPJ4fmGkCcoeFcrqWs9cez9PDIUFhusH6s8=
X-Received: by 2002:a05:620a:4150:b0:8be:7dd7:f041 with SMTP id af79cd13be357-8c3893dc319mr885341185a.7.1767958177664;
        Fri, 09 Jan 2026 03:29:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTwyQ5k3Rb1AXE6oPBFNOU5tzMYrwudie2oteRiewHYjCh2NpvtvA/6vTYGjkjeraV8pTwSQ==
X-Received: by 2002:a05:620a:4150:b0:8be:7dd7:f041 with SMTP id af79cd13be357-8c3893dc319mr885337685a.7.1767958177096;
        Fri, 09 Jan 2026 03:29:37 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d4acsm10128635a12.30.2026.01.09.03.29.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 03:29:36 -0800 (PST)
Message-ID: <6e8e6583-033f-439e-bd92-b24fe432fb96@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 12:29:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
To: YijieYang <yijie.yang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, krzysztof.kozlowski@oss.qualcomm.com
References: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
 <20260109080000.606603-4-yijie.yang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109080000.606603-4-yijie.yang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: w0E9oVRC0OZUFLLQpI8b7EOpIfGWqmrn
X-Authority-Analysis: v=2.4 cv=EazFgfmC c=1 sm=1 tr=0 ts=6960e6a2 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=CyKOSZu2003Xl6tYHn0A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: w0E9oVRC0OZUFLLQpI8b7EOpIfGWqmrn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA4NCBTYWx0ZWRfX4Q/0VkWwiVq7
 PbQI1c9ipyOzEpTvhlOC07dhAvCZkwNVt/ceZTjChuM3gR62GMTi/4YNhdDuZ0zIXBYipNE0/hU
 5LotcdWWTBpfg+29JKQ2U/sxyUexVWKL9+g0LXtdzAfg+42nn63KFWALzvcetPCdfez0nNGwryH
 ZeB4GhnoTgeQdFxTeT0Fy8Tq+5YFXJSNM0hKX4I02ag9LcJOph2MbKtbynJk2k99zhC792UOxKL
 eebo6uX7+9SixPzP2fFn9qYZkVR/LqM+VZ4TP7weuUHt4Xwv12/TISpBLMjZSTX6iuaUocn5piU
 vVh8BoUqNvSkev4MlKcVeCswC1kCm6JRF9W2ammOcLujuud8k3KzG3BVo3M0wtUZEl/qYDJjNFP
 CgW/VDZiopcXBvk7xrWL4HlWNNWCYzplZQJhQKtm73psudLRVMi4JXwGGioiDpGsPObuH3nF1Ew
 DXpy1WbbyF8WRDc7bAQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090084

On 1/9/26 8:59 AM, YijieYang wrote:
> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> 
> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
> the Purwa IoT SoM and a carrier board. Together, they form a complete
> embedded system capable of booting to UART.

[...]

> -	backlight: backlight {
> -		compatible = "pwm-backlight";
> -		pwms = <&pmk8550_pwm 0 5000000>;
> -		enable-gpios = <&pmc8380_3_gpios 4 GPIO_ACTIVE_HIGH>;
> -		power-supply = <&vreg_edp_bl>;
> -
> -		pinctrl-0 = <&edp_bl_en>, <&edp_bl_pwm>;
> -		pinctrl-names = "default";
> -	};

Is the backlight infra different on the Purwa IoT EVK?

> -
>  	wcd938x: audio-codec {
>  		compatible = "qcom,wcd9385-codec";
>  
> @@ -60,32 +50,6 @@ chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> -	connector3 {
> -		compatible = "usb-a-connector";
> -		label = "USB-3-Type-A";
> -		power-role = "source";
> -
> -		vbus-supply = <&regulator_usb3_vbus>;
> -
> -		port {
> -			connector_3_in: endpoint {
> -			};
> -		};
> -	};
> -
> -	connector6 {
> -		compatible = "usb-a-connector";
> -		label = "USB-6-Type-A";
> -		power-role = "source";
> -
> -		vbus-supply = <&regulator_usb6_vbus>;
> -
> -		port {
> -			connector_4_in: endpoint {
> -			};
> -		};
> -	};

Are there no Type-A ports?

[...]

>  		panel {
>  			compatible = "edp-panel";
>  
> -			backlight = <&backlight>;
> +			//backlight = <&backlight>;

FWIW we can't merge dead code

>  			power-supply = <&vreg_edp_3p3>;
>  
>  			port {
> @@ -920,23 +886,6 @@ &mdss_dp3_phy {
>  	status = "okay";
>  };
>  
> -&pcie4_port0 {
> -	wifi@0 {
> -		compatible = "pci17cb,1107";
> -		reg = <0x10000 0x0 0x0 0x0 0x0>;
> -
> -		vddaon-supply = <&vreg_pmu_aon_0p59>;
> -		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
> -		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
> -		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
> -		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
> -		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
> -		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
> -		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
> -		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
> -	};
> -};

Is the Wi-Fi solution different?

Konrad

