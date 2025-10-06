Return-Path: <devicetree+bounces-223765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 210D1BBD5C0
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 10:35:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2EC81894910
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 08:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 915F026158C;
	Mon,  6 Oct 2025 08:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VzwbbIXf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10FF25C818
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 08:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759739701; cv=none; b=XQE9WXnPU2eykU8Yan0stu+C+RFTwii3Cbhh155WMPEEJnqGwaN8ra6rCWTjw2lFhObLdd1/T8boYPB/aHlRzBKr1O8UbhG7cJVFRRLYMZspW+9qh3RwpgOWPCkVLJXbImV2xsit0j79pZxYZaVrgrAnCx23XNqy8c1J/HgR+H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759739701; c=relaxed/simple;
	bh=duAc2kApOcrzELGVc8n03W0C90fIBHhNoQ9sigJvhUM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PIBBzT3fQCiSwqiP5A5cnKmC+2BFb0g7zuZ0QLihAYeoTUv607lyo3OLx2+MHSnlBNYoOPrBu4PygCbD3stKP0R80wV7xZlnXCFUn8y1keGq6OBDjg+dkeLSimr0Xzij4VcpdKdnVHQgrHIgTdWOJZ/085VXGOkr3DwgzMMaNzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VzwbbIXf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5961Tvss017137
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 08:34:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r+AyGyw7g91LrKhtzT1lOcVGVFnQeAKp4v87SLzSe/s=; b=VzwbbIXfT39YgAAN
	TXagW5xGCaNKK0Hk5yIuhFYZpQBHzxcVtQjP+VV4unIgjjU99hBy9QVPid2v1brh
	PHoSK6ElDtU9nWDnCqoQzLaNvNYK8FthuIhJEMivIH850nRa0ZqKz82LN9I7kmv3
	hgFiDtCnFF+3UkGAlRsacgCqn2b3ExaiswvHkVIZCaebRG5cMJ7s3OXnnmAAzxG/
	IJ8y+5/PEuQZOR760xHz/UpYaDi+qIM8ZeXEGSyvZ4+4SAyoi3nLfcjuzwk4j0rc
	ET0DZVsfys4yeJgHxszevrDm3KS2tZCob+HHB7XHpGMjy0Fc53921LcrhqVtRmEq
	ctvVfQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtk6ue57-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:34:53 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e6d173e2a2so2393521cf.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 01:34:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759739692; x=1760344492;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r+AyGyw7g91LrKhtzT1lOcVGVFnQeAKp4v87SLzSe/s=;
        b=ABWULeXaiEw4OvNRXmMO1245e2DI8HGyLnC2lK0JWu+9W1GQN2W/rkj6bVN9Xj/3Up
         jN3f/1BUY1L79a7SRCd905GOVaVcD7bdm70viJ1RN4NIduakDTuL9a84gigN88txhZeA
         b8qwj5z85NyR+pwqpw06cIM1++fB890jkwN5w4t3Pe/goNPJjON2J0FUwRglU99WoUz4
         itsZnT/L3RO8KeiAZGRkqRBKMbzAh+4FS4YeOpV0bdYfpTdpLe9NyM/tScwMn1ROMtop
         3je16fZpRfBiCGXakwwkkQdywzhU8LjdEtlBj7kugoZb55ptnQcqgGu0w6/+cnKb4EQF
         vQpA==
X-Forwarded-Encrypted: i=1; AJvYcCVQFYEQKybpHv5fFEmX1Ry41I5iW/bQQ8GSxF5aBk0Mk8eM2dOvmv4/+c1z2OZAvuwBs566+WBGCpq2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+mv1d6tRaY91dPFe2MOuP5a1G5U2V56iQf1BV+UsYIj9cpagC
	rGgV0h1SzQevGDpqdRQbDTakQ9mxF9zwN39OhrHY69ZDVjUFkPeZE3CE0wICaSr7Kr2uu6j+Nbb
	RtvTmGpZXA3inprejGUt6BHpaFUUCEEicOLcxmzYErCHDZnGvAOGSO2i415kuGk33
X-Gm-Gg: ASbGncv3hSyzR5LdcMXFlcA269u3LWrH5oTsR4SNItWuUxKlyOTpGm/lFmfGjcW2uKP
	bD6kcUlBu/VON9Wa0EZZvpV7h3NsZBfMvaaurPvruXA2P/X2vEcZZYBNT+mIEV6iFzPEKZY1Yxi
	FdpcmWhAfX3PBo6l5e+LxHg9FpczWN16/8GXu5/aTBgkm8eddaUr5B24lbDm8tepbg70tFs558U
	9X7Tpxm0WOoC7a4pkluj7YUQPRCf40WjLx3f+M/vm3coScf+6RwA+uae6uWcfNQ8e7BpOwx/bzO
	khfFSWfRQV8vksnufRjVOQCRafGfmxZS+KLYCQ/7k1N0oBbcP1PcaZey/O1hz73zeOzoQBVtGCV
	ntu2KaLFQqNVLc0IipDKOZefD+c8=
X-Received: by 2002:ac8:5712:0:b0:4d5:eedd:6886 with SMTP id d75a77b69052e-4e576b098d4mr94477551cf.12.1759739692567;
        Mon, 06 Oct 2025 01:34:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG4Dc8hXDvIBMoATO7JA3MoPnHgDi64F6dTa+hAP+KUePbJzhpUDskKW9E4qocXUk2IWutsVQ==
X-Received: by 2002:ac8:5712:0:b0:4d5:eedd:6886 with SMTP id d75a77b69052e-4e576b098d4mr94477391cf.12.1759739691941;
        Mon, 06 Oct 2025 01:34:51 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-637ef848199sm8205315a12.21.2025.10.06.01.34.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 01:34:51 -0700 (PDT)
Message-ID: <52753b61-d02a-409f-a065-e637651ea023@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 10:34:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/11] arm64: dts: qcom: sdm845-lg-common: Add leds
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-4-b14cf9e9a928@postmarketos.org>
 <57774099-08f1-4ede-b992-19f220bf8059@oss.qualcomm.com>
 <7543e21dad1f6b3a5b5ab8af74c09415c3d8aff4@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7543e21dad1f6b3a5b5ab8af74c09415c3d8aff4@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNyBTYWx0ZWRfXw65pCiDqbWeS
 rMw561U00koesqjoLnNJc6+CVTr6nKj5RyRzBbNI4hLkAQT65tgEEd1Zc/bNzFYkv494DBvWE5C
 upofo8zNQxYkURoBY60XMFMWjktJsxD09UpjyQYB3vYdc4N8K70GI8fGrQTin2d14M861uzFDiz
 FgTQlJUbtthyYCoe7mD1bjAPevw5VLJzs2rxGaSdA4V8svJlW19TM84JdjUKcs6Pz4Dzfy1AMke
 v51EGbpgs1PwMaqTvONwsYkRBVd+4wmALFQ9eYWBzHoIB9wIwx2y8mkXEmjX2FvtefrIy5Cf/cK
 IZFfwwfgqK619gWBMMo3TicZ0mzGN7tkEAwmVi/l+u0hf5f7iIczDOGmlOA5KNsEqxIQtEjodK6
 Jz6cA73Pe0PSMdIJlCEotUY+vyH3Rw==
X-Authority-Analysis: v=2.4 cv=do3Wylg4 c=1 sm=1 tr=0 ts=68e37f2d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=sfOm8-O8AAAA:8
 a=Gbw9aFdXAAAA:8 a=lENTY40Ogw1zqkBo4xMA:9 a=lqcHg5cX4UMA:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TvTJqdcANYtsRzA46cdi:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-GUID: wya6fVvjEpZO2B1Ft13Mfff7ehvS5_-8
X-Proofpoint-ORIG-GUID: wya6fVvjEpZO2B1Ft13Mfff7ehvS5_-8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040017

On 10/2/25 7:13 AM, Paul Sajna wrote:
> October 1, 2025 at 9:01 AM, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com mailto:konrad.dybcio@oss.qualcomm.com?to=%22Konrad%20Dybcio%22%20%3Ckonrad.dybcio%40oss.qualcomm.com%3E > wrote:
> 
> 
>>
>> On 9/29/25 7:05 AM, Paul Sajna wrote:
>>
>>>
>>> From: Amir Dahan <system64fumo@protonmail.com>
>>>  
>>>  Add the multicolor status led in the phone's notch
>>>  
>>>  Signed-off-by: Amir Dahan <system64fumo@protonmail.com>
>>>  Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
>>>  ---
>>>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 28 ++++++++++++++++++++++++++
>>>  1 file changed, 28 insertions(+)
>>>  
>>>  diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
>>>  index 4c631df56f262ba9e730f6720abd94d374b14692..2a612922ecf7ce3f8a0734cb1a31a8a81efdb4f2 100644
>>>  --- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
>>>  +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
>>>  @@ -6,6 +6,7 @@
>>>  */
>>>  
>>>  #include <dt-bindings/gpio/gpio.h>
>>>  +#include <dt-bindings/leds/common.h>
>>>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>>>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>>  
>>>  @@ -504,6 +505,33 @@ &pm8998_resin {
>>>  status = "okay";
>>>  };
>>>  
>>>  +&pmi8998_lpg {
>>>  + status = "okay";
>>>
>> Could you read back register 0xd000+0x45 (LED_SRC_SEL) on downstream
>> and make sure the value matches upstream?
>>
>> A msm8998 kernel fork I have laying around on my computer always seems
>> to write '1' in there (which it claims corresponds to VPH_PWR as input)
>>
>> Konrad
>>
> 
> I need more explanation on how to do this please.

diff --git a/drivers/leds/leds-qpnp.c b/drivers/leds/leds-qpnp.c
index 8de71a8e621a..f6914abef562 100644
--- a/drivers/leds/leds-qpnp.c
+++ b/drivers/leds/leds-qpnp.c
@@ -1788,6 +1788,10 @@ static int qpnp_rgb_set(struct qpnp_led_data *led)
                }
        }
 
+       u32 val;
+       regmap_read(led->regmap, RGB_LED_SRC_SEL(led->base), &val);
+       pr_err("RGB_LED_SRC_SEL = 0x%x\n", val);
+
        led->rgb_cfg->pwm_cfg->blinking = false;
        qpnp_dump_regs(led, rgb_pwm_debug_regs, ARRAY_SIZE(rgb_pwm_debug_regs));

Konrad

