Return-Path: <devicetree+bounces-252160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0E2CFBCCB
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 04:07:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3932B302DC90
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 03:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CC0A248F6F;
	Wed,  7 Jan 2026 03:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lDlxSXkt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SwQqZx5x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF252253FC
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 03:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767755219; cv=none; b=TYqLdyJ/cKI3hw8XF5pezS1FLTP4FrnALgeUR39VH2XALpjGmG5NUGxaBtFoLyYYH+zlp+8rhyhyEyuXiV7bTcLdeZ9vXmd/TN+ygMOoMOU3Xe9EsHqVPvvpDTMlmfNxL5gJQl9yZH0qjsZE8dnNWveox0BM2gjon1UHqD9UcX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767755219; c=relaxed/simple;
	bh=wWG/+iM60aN6jRFY9oLk0sPaldjfqc6lbv5zT46e3dc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r2GCi0Xyhg64Ho7EcONPrZVcHOkwc5U9+O5RcusnCqhAysPAKXYOFTEt02StstPBp8O0shoQUrcUc/EJBYwqx9mi5W3yZKhC/wW6sSgPNDDHVNPZKVKUDZNrwdvgBpL4Se3rJfONMQ+8dti2YuS7fHEr90RbZK9DVXIbsnCLivU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lDlxSXkt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SwQqZx5x; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606LL4mj4048524
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 03:06:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6/WCZqC1dn94RJMZksnlRPZYt/+qztP8BiWgjfVsWxE=; b=lDlxSXktCe52+TSm
	74/LwSRaXLPkfz/SnuQdXf18csy3SARG2UyW1yOV7TSe7GJhKxN1eGObiaLn6BZS
	EVkzjA/0z/SABcylValnf3PInfPtxTk23hUA8N23w33Dn82d3+8YURQp4Ya3L7GU
	MgyyOxFBiIr0hjOdaFQx/r0PHRT/oZA9nEN/3EFtNBTvlXmBhzB9rBVX340bNzXL
	OvUodKBle4ouV+KyXhr9tyEZmpQ86sGZKEbK/28ZwIEPusRBziBqTjPlEvoM+8bk
	M7/WF9dXXbKJrmUC5gizvVsaxx3gDNgmtyGvaqiHocs/70mAeXAEAfQJg4V5EV/7
	UdQiPg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh25rtbna-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 03:06:57 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bb3388703dso664486685a.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 19:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767755216; x=1768360016; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6/WCZqC1dn94RJMZksnlRPZYt/+qztP8BiWgjfVsWxE=;
        b=SwQqZx5xAA+qzTlpaY6wH2k6GUqAW2Z6His81EaVTbGdFL6VqAGjdeJiIHqbtud4HX
         jIdHdTi3rzFFZf8kUWOUK9Pk4heejO2C3wYxCMmtpDhVhwk8diV/RgQttw7RlsQA/vPq
         uW72xBUt7LgAkvUcSwILmStH/6zyM8y9lPB61zBxyRMEVpJuj6Pj/e6+qUeBXI0DKZ69
         o13oEwFBk1x84D7YRkXNU3cMw6EdSK4TB0n6BJt92u+YYZ5nUAMxkvVqLtfLNpGhw+Px
         rXi6+Zm2xy/NNfuZHgyCOsXnEEVdtM4ctQw3KKMG6Z2Y2AjEhdYpJM0EkiiHXmTQHvz5
         9CXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767755216; x=1768360016;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6/WCZqC1dn94RJMZksnlRPZYt/+qztP8BiWgjfVsWxE=;
        b=VVxO8dZYcuyKjipeNXYOwLu+C8TAICkPPzz8LuZbCHYWqSJfjVbr7fasa1bE8FRCiD
         rhWbMnMosjJeC9cPd7XzczKRWXHMlmimhV4CT+urveIcCaqpU21q9evJSBVXYfpB/qfX
         RxPrsDPCxON3iL6OBRC39YWdLvoI7VJd6MHV+lNxGJYVNPa29rgR3fkB7aiUk8vOIGjk
         bETr2RK7gDyzcqORVWaShOcO0CXV3V39PAE1TMe7HZ89UkMAGtb/o3cVrTaMVZQ+JcP2
         7gOmBf8dihSpbTOHZZa+eHIEHijc5eNbWiiKBU3aeGGe09bHVs+owfxmlrXH1M2JmlyH
         CfGg==
X-Forwarded-Encrypted: i=1; AJvYcCW1KP5yOdXiDpaV/yslHjsPLEFELq6045N/sOXh9dZxDexHzTQ9o1KYVw2ckxgwK09EOz+6g21bDsZi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy26KiWp+MkBm4spHIVmHy/NefQE7bOtVgB1kNrErGPpvBhteXV
	fa1ZeySZh5rPeQsuBO2tZ4PQqwZmugjJ2zHZFbbBAHPk/ZCRN3EbZOYPXwfPDs5gHHlRYvWHjm6
	ffqp637jnjNGcDHSRSdZHEMZp4IJrPL3vtGRRP1p5GuPSuXnDcH8Rzppp/Gs03bFq
X-Gm-Gg: AY/fxX6d2KseXSULjK6oNKwE5uAUy1E1l2GZCz1ALjEIiTgkjGm1H+O+iOOuDcqysLI
	MJxb8WaW2jaILEUSpoCdYHcfMVsIZkeo6QngRsdT1tJQtIVZDhhBjudEFHnEwlopVl25Jc9cMQp
	SSsSYUvrK8V0dnk8pwRL8u/f3Bs4uKtoK42fT7yqNRyuX0dGLecHXIZYz8bjKezhw5NiERO1y7K
	6tlJ8YvooF58btilbIzzYXjULaQFzvgFrkPc09DuVKEmaOJdQ7irsRoMILEu1yTrUMLecd1AQsK
	HoWO11hwrwugRXypPUSakhPmaGTcUdVb2OlZ0HKDNqiOJydgU8QBG/FZObkdksaixDIGCWMJHpd
	Xybu13ded3b8hm5XAunUxiE4PGKysDtXRuqBPScrIu5UULK/eSqs9X2hgsTY12uLTYJlXHbbt
X-Received: by 2002:a05:620a:4145:b0:8b1:1585:2252 with SMTP id af79cd13be357-8c389379d10mr145746185a.1.1767755215995;
        Tue, 06 Jan 2026 19:06:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEkrbOP3pew5z1yemj/keUd/L05CmKhUKWFQIvhbUiGyiMtZnJ4i3zNlrw2hEVMpdT9iDsqzA==
X-Received: by 2002:a05:620a:4145:b0:8b1:1585:2252 with SMTP id af79cd13be357-8c389379d10mr145743385a.1.1767755215591;
        Tue, 06 Jan 2026 19:06:55 -0800 (PST)
Received: from [10.38.247.225] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8907725ffc7sm25347946d6.44.2026.01.06.19.06.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 19:06:55 -0800 (PST)
Message-ID: <ac431daa-a9d1-4415-929b-87c1b9a08f0d@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 11:06:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: talos-evk-camera: Add DT overlay
To: Rob Herring <robh@kernel.org>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
 <20260106-sm6150_evk-v2-4-bb112cb83d74@oss.qualcomm.com>
 <20260106192609.GA2581379-robh@kernel.org>
Content-Language: en-US
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <20260106192609.GA2581379-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: nte8ACtXS4Xo3AtDF1x1so68pb9mAc1b
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDAyNCBTYWx0ZWRfX82jBaSQqain+
 ZOI3FzRG8TBg+5hNr/VXGbwhONR+Bg/8NacOOHDJ+IqT6qjKQKSolOnJLTXMuAdx49vQOf0SkFd
 heJaBYLdgIY0Jr6Rj6bWbSydg5/cIJFHcYJTBdwlkhfiLSi7hvZp9zIEkl/+qW3bgOPO1PpjKZr
 RBV7tnuD+owoQe5Vh1LSS8n4v/REjxDlCX6FQ0FywNTFZW7XwpLVr92bs4DgcmaOHEK+AMOPbaC
 uxmWDYa5K9wgvZMCae15m3xQv5n0f4RzgBKCk6gjch7zraqfEWpISCwD5Y/51+BghhTHJqbwoul
 ofed3dLQaX1DlIbIAACIlpLS0ugeRBJ1BnAJzlykZFGCGOP3xPmiBKN2TxFtfq3YUxRBgO3rx4E
 CAaekgjMLZBrR96jJhBq87kxjC1K4m+ehEc4riJJeM+OeIAmH1uN0FRRMq8vvHxYOi3OlHasnCB
 EpJE7vRoIftBW5TVILQ==
X-Proofpoint-ORIG-GUID: nte8ACtXS4Xo3AtDF1x1so68pb9mAc1b
X-Authority-Analysis: v=2.4 cv=G48R0tk5 c=1 sm=1 tr=0 ts=695dcdd1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=vx6dLVQq4s5TLBKspagA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070024



On 1/7/2026 3:26 AM, Rob Herring wrote:
> On Tue, Jan 06, 2026 at 05:39:56PM +0800, Wenmeng Liu wrote:
>> Enable IMX577 via CCI on Taloss EVK Core Kit.
>>
>> The Talos EVK board does not include a camera sensor
>> by default, this overlay reflects the possibility of
>> attaching an optional camera sensor.
>> For this reason, the camera sensor configuration is
>> placed in talos-evk-camera.dtso, rather than
>> modifying the base talos-evk.dts.
>>
>> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile              |  2 +
>>   arch/arm64/boot/dts/qcom/talos-evk-camera.dtso | 63 ++++++++++++++++++++++++++
>>   2 files changed, 65 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>> index 4258776b71bdba351de8cefa33eb29a0fe3ec6f3..bfaa0b47ab5cabc9aa1c6fba29faa3e6fd18f913 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -333,8 +333,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-qrd.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-mtp.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-qrd.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk.dtb
>> +talos-evk-camera-dtbs	:= talos-evk.dtb talos-evk-camera.dtbo
> 
> You need to add talos-evk-camera.dtbo to dtb-y if you want it preserved
> and able to be installed (via dtbs_install). If you don't want that,
> then why is it a .dtbo?
> 
> Looks like other .dtbo's might have the same issue.

Will fix it in next version.

Thanks,
Wenmeng>
>>   talos-evk-lvds-auo,g133han01-dtbs	:= \
>>   	talos-evk.dtb talos-evk-lvds-auo,g133han01.dtbo
>> +dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk-camera.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk-lvds-auo,g133han01.dtb
>>   x1e001de-devkit-el2-dtbs	:= x1e001de-devkit.dtb x1-el2.dtbo
>>   dtb-$(CONFIG_ARCH_QCOM)	+= x1e001de-devkit.dtb x1e001de-devkit-el2.dtb


