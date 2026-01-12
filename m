Return-Path: <devicetree+bounces-253682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C9254D10695
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 04:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8D368301E6CE
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 03:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5806306498;
	Mon, 12 Jan 2026 03:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V0kj32PN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VoR5HvAt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87BD21D7995
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 03:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768186977; cv=none; b=AXdJvKQpo2S03Kv8hgIZOUHXabIw9Y0+U7VwczZeLSFNGdt2UuvZbF0HzwHoZf2ZKfb2sjsW8WgWyR7/oGmG8k3NUNCUUU7tlpSbZkWC6kG6s/RUjdrB1gZClvubWl18CeMmW6PWMVxLBhNBzaHGcOaP9ra+VRDsrsrj9JxK3cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768186977; c=relaxed/simple;
	bh=0EtsCRWb+9VYkoC8uRs4vmBvwK5Pjw7/1v/ULUGwghM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pXkEV+A0Flz2aHFE9DDA5Tbsupj4IeiGr+WN5LKr4UMo/5eqCcSWX+oiSCmXIcCp+tEBLfulRzmP8npNQqp314ZhwbLn+YvjYvOqVG3hsrQzV0PxLGGtWjfmFRnUrulx8HxZeRBvZBjZdAP2DYGVpIgNLvU1EADyAlDcjJcHDX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V0kj32PN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VoR5HvAt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C2NjGD113359
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 03:02:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ov3DcN0hY94lyBqDePsnXi3y/DTfjzLtdxTbWy0C1hw=; b=V0kj32PNi8aJ//KA
	eNTvxB2rL1PM0KiNgz11EJaBhDKEYw7iNSED3bSkhq8dhvXYMwVYBo+EO+rmbPkO
	S+zX1UBosCenFwHvv7C0h0yK2axvwpYY4Uds2NsvmSf/NZwM9fgd66K+p0iPvd9/
	OkbcNQGgByBav/wRFt+LAUBroUKQHGdNKAnCWo6fu4BrDebpxDPNrzrj7i4odlHX
	J2+g6FMdHaXQGr3SNK4CatptkoMjPXi7/dkOqlQsk4MiMHQDJx4dN1PBKz3S8f4q
	lx/sgVt4hOuLnkO+r4/qJqRsi9t85CGBKomcBD5jAjV3qi7CopMOayg9cXwgTlG9
	hVjdwQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmr4ug304-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 03:02:55 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34e70e2e363so7269391a91.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 19:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768186975; x=1768791775; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ov3DcN0hY94lyBqDePsnXi3y/DTfjzLtdxTbWy0C1hw=;
        b=VoR5HvAtHeUDHLcQm1xcWsPczhpS6neAL+v4EZJzg3oOeDmJceIiunSR4jn6J/a9HM
         2RgNh/SEzHBGsWqMMdYhSFD3qVvwRhoY2GvMm2wNCviun9e6Ilcy/7R4Z4Z3o3v3unzG
         hXo1d/U8Q6mwVdt4k3ti7+47+2kJGuUMyuiTVPs3SdpSU4u6ha8Y3ltUi3UFauilgRmW
         HMVQplHLOqwA+ZesodYD+73P/jltdD5v8Hglf0Ids0hW7ILO90QdvOUlJeh63WNiAKzC
         hyMNBB62jQgcpegwkp4brKkPDY33UkpsGKKguUhLgxMUc8ts2yq1CvKror+JjdTTSEP4
         kKEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768186975; x=1768791775;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ov3DcN0hY94lyBqDePsnXi3y/DTfjzLtdxTbWy0C1hw=;
        b=Hk7MXu4tgFZDTSyONAdmH9f2E2KOzYcN6NplvNd3y2pefKD5h6RNNUUmOmfH+lryOw
         +lvDslSlcjzN1Z4wBeik+RezOrtefAMsEQb+pjnUcq+xQ6CywNYuW1t7A1K1VIzsj3v3
         FLTDayVfWjrNNBPU4biq0UhNa/F5Veqn4/Qo/ryNHQITiDShn53EExqjA4lmJbrbp/bM
         Ncz5MW13A4PGu8PWLZSfHXvikePlu8IO75wPyEgV73SVW35gG6maWltcwe/5pDuctG4U
         kb2q+jGxSsr/jQJF4wMhMQic1Luldlp5WNXmtyBbxD6dOTPEQTIaHqBiNjNalLX+wtPB
         NkuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSVIeg7lo37vRBHUJ2tajnnIeXTFNg9hWoHiyte/KATaWBTZS6ftTQnv73yT9jkfdSgI4ZrFOU6nPq@vger.kernel.org
X-Gm-Message-State: AOJu0Yw846ehK0gpQPjCDT5F8qDrY4uWe7o5wWqbQh8etZSo/GmTXDco
	1Znhn2mie7vBrmgeNISv7Ysban0uTtbg+DTHtystEoam2s9YHTd3jlT6DfEbvWUGrsdKS/dlE/8
	ibKCmjHU/UnacL7R41gZc1DierzpyYsWrpuopY244nVVE0K/WVbIpjafXsL3NMSBY
X-Gm-Gg: AY/fxX7Ia3gHPdRHULyJJddC9aCaKVzN1vEgxupMIwzcVzz67dSZBUFI8HzCx2oHOPt
	/CZ5VM3DZcdSURwa9nn3ucssp9ZImTkRIeBOSX7g8K22bj/0vbBuRF+1Now8Cpk/Ma3GBqQpGD/
	OjvlpkeN33dqR0DDl2ZtEQM7euhpVDATCC9aNlECrgQ3w4qbfgXqp4gTP2UvhsOLekqITk5eSEK
	CL8Un5+q+duVRwRAmjAdqjsu89EN2eraWDsRmr9MnrC4UG6zHEUsGs+5NfXb4lRfBC8goorL0Ws
	ZV2nWyBMuHmaB4rTlHZjHLq/ifukgGO0Ote9eqEbE6tKE6sC+ZgfTJwkDM/GvVcxTL+aMQZA4zh
	HhjoNTpJ69NMoucWy+zaUwKLC9zzV3q2y53mW+X4EobA+RZ6vYl4hgwJB30ig4UksEUm4Fko88h
	TNt8Y=
X-Received: by 2002:a17:90a:e7c6:b0:349:8116:a2d9 with SMTP id 98e67ed59e1d1-34f68c91369mr14965843a91.19.1768186975172;
        Sun, 11 Jan 2026 19:02:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGgadD09YUzGWco3u8/E79NZQB1hU4xRWzsq1AVfydtSFO9RwL4ObqTuzkv7dLO29ZXnBpSZA==
X-Received: by 2002:a17:90a:e7c6:b0:349:8116:a2d9 with SMTP id 98e67ed59e1d1-34f68c91369mr14965818a91.19.1768186974650;
        Sun, 11 Jan 2026 19:02:54 -0800 (PST)
Received: from [10.133.33.127] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81c96d762f8sm10781735b3a.64.2026.01.11.19.02.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 19:02:54 -0800 (PST)
Message-ID: <eb3e393b-5a5f-4694-b269-c84d937175db@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 11:02:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: Add PURWA-IOT-SOM platform
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski@oss.qualcomm.com
References: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
 <20260109080000.606603-3-yijie.yang@oss.qualcomm.com>
 <wkv4sl6hsv3dvqteh5ccliet46l7br5yzsgg27qsopgnldufly@r5vkvk4dyrn3>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <wkv4sl6hsv3dvqteh5ccliet46l7br5yzsgg27qsopgnldufly@r5vkvk4dyrn3>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDAyNCBTYWx0ZWRfX2yZ6I1PbgbH1
 n1UNJvaaT8KyPkNk1Vp0KJTv82qKaEiCSVn5ty5aZ2JPxM48/2FEy7NXcf55fHh4g4ZHfdD+ZE0
 cBJG+xo6NYy7mBohJBieBDNyrVns+W0grcWhPQ2sAF6ga3nauaELfaCCaU36sJmfr17bqs5tVD+
 M6da2E5fb0i7QXT+Q41lGyHbMUD35ZRt5nn8wJ3meUCJVawc2nAZ2Tzv3O+7vzEHxscE2ZPOnSp
 QV3JdM93VFDETW1waNY+jm3IwwTSLlc7mDcCqKxZGAule6KrJGuiCQ1F0Qpr4HoLq0a5Kne3pc8
 Q37MKtiPRlo6pMK2QfPCSygB/a6AyT0aP01DYmfqNvBcy0xcQcJHVpi/pT9Qb00/Al/eHXbmSS2
 th+6HTz2RUcRkbKb6oZAm5EeXodgTBrmUzNxAEpx3I2C9NMzDQqkDEC4wsck//VTBuWccV4tTiM
 8ZNJ9R+7TpSeTCgsK/g==
X-Proofpoint-ORIG-GUID: X7hGAbZFmUo0cq0NmRxDB_Wz-2Sh9W_d
X-Authority-Analysis: v=2.4 cv=YocChoYX c=1 sm=1 tr=0 ts=6964645f cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=DGOirDVRF9kFrzJQLnUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: X7hGAbZFmUo0cq0NmRxDB_Wz-2Sh9W_d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_09,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 clxscore=1015 impostorscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120024



On 1/9/2026 8:10 PM, Dmitry Baryshkov wrote:
> On Fri, Jan 09, 2026 at 03:59:53PM +0800, YijieYang wrote:
>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>
>> The PURWA-IOT-SOM is a compact computing module that integrates a System
>> on Chip (SoC) — specifically the x1p42100 — along with essential
>> components optimized for IoT applications. It is designed to be mounted on
>> carrier boards, enabling the development of complete embedded systems.
>>
>> Make the following peripherals on the SOM enabled:
>> - Regulators on the SOM
>> - Reserved memory regions
>> - PCIe6a and its PHY
>> - PCIe4 and its PHY
>> - USB0 through USB6 and their PHYs
>> - ADSP, CDSP
>> - Graphic
>>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---
>>   .../dts/qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi}   | 8 ++------
>>   1 file changed, 2 insertions(+), 6 deletions(-)
>>   copy arch/arm64/boot/dts/qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi} (99%)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
>> similarity index 99%
>> copy from arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
>> copy to arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
>> index 4a69852e9176..16f11a81163e 100644
>> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
> 
> I remember, we were told that there are PMIC differences too. Where are
> they handled?

I forgot to remove the unused PMIC node from the SOM file for Purwa.

> 
>> @@ -3,7 +3,7 @@
>>    * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>    */
>>   
>> -#include "hamoa.dtsi"
>> +#include "purwa.dtsi"
>>   #include "hamoa-pmics.dtsi"
>>   #include <dt-bindings/gpio/gpio.h>
>>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> 

-- 
Best Regards,
Yijie


