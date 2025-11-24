Return-Path: <devicetree+bounces-241640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D894C80400
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:44:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 69CB64E42EA
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:44:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3E412FDC3E;
	Mon, 24 Nov 2025 11:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KuG32zNT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H2URRrqP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0D22F83A3
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763984674; cv=none; b=jX91N47Y9hjyK2hRuuDINNO0Ym6UUXbQQgoBcouIl/3B7cel4pLl0tSs1NR+dpqHc0f9XFag15yzRYrK1cQaH5zJ0/es7EZtJwQ0EAJeQ+vS2uSR2EpXUPx3oOrkqANcpBnQlCH5GZsahiOFyruPI72EFMIZkh6ddm4NOTCLgy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763984674; c=relaxed/simple;
	bh=HPZYSddiKmAouGZQW6FPuYgBIvT/zG+pnZIIMEdZP0k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y9669Qdiep1ozSLacaoqj+wXv4XijuWtVcpwA2lFaFg89tqrGJv83gENvqWYSn6RdhNsh4NPk7yhTF9fcqLF1t0uT+aJWrjOKSxjUzll1WEK4sqgE4bjHO7s6ARanBqmYDwujVrtDj7XN+FaIM/YAeQWp8qKUenIXnxJBCdlhG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KuG32zNT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H2URRrqP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8BBOW2302222
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:44:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FP7EIukVk9LiwmzjdapL74dwM4ChT0wr4IXeF9Khs44=; b=KuG32zNTzNI5Ri1s
	8JQyCuOk25rnlU1fWtUVH6HgoV9i57xi/n8Iq5PFyST9MpE7FbwzNULShqjdT7Az
	QcSvqDHBtL+zFwjHPCKhlS0s+5iW5WwsRdRcGkl9ZkPWANoMzwur+GoGbyL6xplQ
	xhsDpSQHBb1YG6Dj8UWdtiWz/jbwP7F+tDCIlFJpy/CiwHAWWtlGfvzxDXy32jw8
	zPiBsMZOhmgEQe6FxUdQauNzvvP2k68bn5eiRsyXscaTVDvbVqeZj7OH4E0w5PK7
	7O93YuivxifHwag+fNmVVMmTmeKqK8SsiBBkOJOEOyfLarcsca8iAZ28xLRpK1qG
	Gh+WFw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak68dvu6s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:44:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee23b6b6fdso16291501cf.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 03:44:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763984670; x=1764589470; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FP7EIukVk9LiwmzjdapL74dwM4ChT0wr4IXeF9Khs44=;
        b=H2URRrqPyUvAILe9IJBkS9BozNeLwf/F98aoNgNhtq4GimlYks444M7j8Aoi037Jyg
         diUcNx8ucAqxY+YzAP7wXITDcOih50oYZrdayr4NChsu8my6GjohDEEHv4cirW5ZXIyK
         YSAmNCS+UBZxls7v4FUOBJbSWBG3ac67+gzq/Ob7lhM05NLa8cTvAoAoqva0Utr12HVS
         8BkuTRThYGzbebewvyrcVDmzgOtlSJ+anEMrE9E7PPAXyvHB6O4EmK52DZEv+BYxf0QY
         BhepU9xYigErDItoab69/X/E3qts7ClyoQnQqtjuVv9I2GtU0mNPxV+DIz0C/ZlKL2AT
         JcUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763984670; x=1764589470;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FP7EIukVk9LiwmzjdapL74dwM4ChT0wr4IXeF9Khs44=;
        b=QAU6RRANk9KH2+nLRma2oTOQTUk/uOx20P03CDCg0roLO17LnPO7q843FbYFQcKsA0
         q2pb7RTZMMGubOi5d4ScTLLoPJTfw8ID2vfNQcwzFXDvg+wpEhYb1zqSPrl79SWkVLSU
         QtZ9tAZCkVlT7fqyV5he5QX13igczEwp2TpuVVcykvQbHZXdgAf7rmrI2jX2YC751Lxu
         m4i1AKj5AtDF/tVpHrKEhzHQc3votnhZHZ/tE8YdKffeaBFDlmjrDm9Vo/QwK4Waixtl
         dX8TG11VL1yCvWOQyudrXiFRrCJ0OHJeWc9Sq2RMwc0DtXU3z69CrLuldwaE1bFqEBpl
         Pg6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVQToR0jpuIln5CQfTQAvZpy6T1+FShKwAIqwQqljguRMG0/7WbbQOYbyVlKVmXlqpkztx2bOS7fKtK@vger.kernel.org
X-Gm-Message-State: AOJu0YzUCignIZL/YgJ3O0YJyifhBiiBvqGQZS8IeEmYXkHUYCVs00N/
	/VRI9P1pTfYD8SmjMjHpkSgzqPjlhl+jXctdELuKkq4YnvHKY4MbU7xm5ZiZv0pRLzi2/vHWkkD
	DxN87tUoy06bgc2yF+nwoauwabDaRNz0rYW5F8Lg6OsmyalWWnUiOgGDIvUidoCqg
X-Gm-Gg: ASbGncvpgmDqjS0jm3/WkITRgihYh7j3bOBuio/JEO58Tzr/Fh9NvhYfJUfiTjJ/y9G
	GNQT8TYavSOrdVU29WUczvPU4vZHMZdH5YJtS7biTZd6UwRPIprWkJVeC314BejdSOh0FqxgGGA
	SfjSovRpvTgUI+igmP4quIfgQnKK7wzRTnZBaVWY9R7uwDfaGT3RincSB3srvuUh6kgFmZatJW5
	V84ccsYRwzm2Eie0F05YbUuP42PSnXfmgywz8yWoDvXUQdSJItEajDJpLV1XVIWdUpiCswxSt3I
	balN4r6cwub2bvrXVl4Iq8jmYulfc/ViVbLp+BJiDQ8uy6w0YyGvsKzvMw4qkliwXkcT7HJwfCk
	+3edieq1G7QRx2rHlBK7xBOXgfD4lBnVwnu+UpQH2DLdeBDIl0H+OqCyBd4fdSGWA4B4=
X-Received: by 2002:a05:622a:1184:b0:4ed:afb4:5e30 with SMTP id d75a77b69052e-4ee5895624cmr113977411cf.11.1763984670234;
        Mon, 24 Nov 2025 03:44:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF5zRrHv3TL6vmb65bd865WCJkq4dxhfstIXRKPXS0zKo1N9bb80wt9FchnhVQvMUL4gQ1Hdw==
X-Received: by 2002:a05:622a:1184:b0:4ed:afb4:5e30 with SMTP id d75a77b69052e-4ee5895624cmr113977091cf.11.1763984669815;
        Mon, 24 Nov 2025 03:44:29 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654d7cbebsm1278306666b.29.2025.11.24.03.44.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 03:44:29 -0800 (PST)
Message-ID: <45329a9f-545b-4425-9667-26bceca67982@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 12:44:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/6] arm64: dts: qcom: qrb2210: add dts for Arduino
 unoq
To: Riccardo Mereu <r.mereu.kernel@arduino.cc>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, broonie@kernel.org
Cc: linux@roeck-us.net, Jonathan.Cameron@huawei.com, wenswang@yeah.net,
        naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com,
        chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com,
        farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, m.facchin@arduino.cc,
        Riccardo Mereu <r.mereu@arduino.cc>
References: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
 <20251120155825.121483-7-r.mereu.kernel@arduino.cc>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251120155825.121483-7-r.mereu.kernel@arduino.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDEwMyBTYWx0ZWRfX86o/RWRp2CA1
 bLaBKtqJ1WNX4QBUPCdJtf3xiFltAIxu/a/qJdsz2ikLvEl2ERR9fORzH7cCQtpZVu5JhqRpee3
 NIo4rTmQI/il03WhHAD2S1KTThUqHHf0q7eYiWTxGNmxbksBTbQpk4wzL+EWxEdiAtlZ/rnawkc
 BkbdjNC0FefXouynnz+e4NPmM1n6ihmDTi7vfSKQL9ztQYbOhFnusMp0OBhP6WE/FgT7tr5yOMY
 f6xuWOSKnQtpZR1bX9ETn4SqT5AmHrUNAYxMp4sx/ZOA/f4rVQh+QK86P2+IZA3ULs6taAEMMAE
 /aeQ/JdEBDe0j74IAZXMJFe4DzU8jRA+jkcGXVWlEL+3IwUweC39xD3LdrgYqxA65oaC2JoG0Q3
 vlW6vRDt/ZSojGobUQsI3hsdTtUcEw==
X-Proofpoint-GUID: piKF86PJkSPhYxFPUr5osghKEcDKc4ZV
X-Proofpoint-ORIG-GUID: piKF86PJkSPhYxFPUr5osghKEcDKc4ZV
X-Authority-Analysis: v=2.4 cv=UsBu9uwB c=1 sm=1 tr=0 ts=6924451f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=bas-LT_GC8gd1oFTr-AA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240103

On 11/20/25 4:58 PM, Riccardo Mereu wrote:
> From: Riccardo Mereu <r.mereu@arduino.cc>
> 
> Arduino UnoQ is a single-board computer combining Qualcomm
> Dragonwing™ QRB2210 microprocessor with STMicroelectronics STM32U585
> microcontroller.
> Support to a simply boot to shell environment includes:
> - UART, I2C, SPI
> - onboard LEDS
> - eMMC
> - WLAN and BT
> 
> Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> ---

[...]

> +&wifi {
> +	vdd-0.8-cx-mx-supply = <&pm4125_l7>;
> +	vdd-1.8-xo-supply = <&pm4125_l13>;
> +	vdd-1.3-rfa-supply = <&pm4125_l10>;
> +	vdd-3.3-ch0-supply = <&pm4125_l22>;
> +	qcom,ath10k-calibration-variant = "ArduinoImola";
> +	firmware-name = "qcm2290";

I'm not sure about this line but otherwise this lgtm

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


