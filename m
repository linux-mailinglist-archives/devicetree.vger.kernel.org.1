Return-Path: <devicetree+bounces-249083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2898CCD91CA
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 12:30:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D4CA3300CA09
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 11:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1295732C93B;
	Tue, 23 Dec 2025 11:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j8jq3KXV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D0twWEq8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB69329C4D
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 11:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766489415; cv=none; b=KpRLDiug9u5IE3FOb08ww+nPxlOSq+mXNtYzFgocCBuARaXf/p6isyn+mIKBg09RPbipn3W0JsJRQE8jXsSoZCrtd3qUT0IdbJ+JN/7VjucIWZ4BzdRBnCdGayab7jLHsZOC/LT/bBuQVW1cSa0nPSvo8V1FnlsT1NQQc4dV1DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766489415; c=relaxed/simple;
	bh=6K3WH5J+PM9OjNszbLmNsAZFvGQoPys4pnlF5t7R1dM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UNBjmI/udnLmoJVmoZlixXxSKmzom8lNCV3yHBonObhvRWx6yCXCdjSg9e3rqa8D8ca5xlDXPr1sf+uMc+NQPQCDCYU5oTTNIaKV5QXUUhWWfj7TOf3lPVTOAoWaue2sb+qgZ10TYP+kcSEZl0xkIaZHfLXXXAIDMyUAtyIfq08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j8jq3KXV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D0twWEq8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN72nIY2115503
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 11:30:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l0Lqetei9dr/hI31g6G5mWd+5bz73CklWhP+vHw/Ys0=; b=j8jq3KXVcNsbznoU
	ApakwT3Q8I+7YYMxYjhB8u0gKX8Ue1zwjS9qmn4qy0mCOOUd3ClwxIoVOYvqDg2X
	Ytfz13gGC7WoaPGJBmRNkIML4g15Pp/kyQt1DpA8aljDoSyX9rTAnEFZzkn0NKdr
	aiuje8LStTPrW7dtUPIpfLC9Z2dmaBLk6vphugct+2iv/1+dMqizPUgflQ/oHvL1
	0ilEwa2iokxlO2+JDP+gdub4VHrnnQBTO8x8OViwMQb1jnaBItlAE9bpMeGqMm+k
	PHLVjjAPBS4WAwtnvkXHaRZEHKQUb2wRfcmblkXbmHsNao7yHt0riGPRczjLbEb4
	+nRKSg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7cudjfte-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 11:30:12 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b80de683efso9091437b3a.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 03:30:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766489412; x=1767094212; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l0Lqetei9dr/hI31g6G5mWd+5bz73CklWhP+vHw/Ys0=;
        b=D0twWEq82uBcSytx06IlG8+PCQCUY17Ug0xR3/j8WYu14N2n8rAMfRIv+aQpO82e73
         +KzLqfev2DvtI2RhSr9of/rYWARAQaSrkfQ9zCPLOeAz8j5to6D1OJS+EPXq8+fd5TvY
         LKDiMty7Juu6s5wDj02LJ2XUEH9YJp/HrYspFqH5fF7Eyks1oCrMIKUDrNQDOyNAD4Sn
         ZkVSdAHWiF2TPOoxOJ3MgQVzluXUvOwmosIG8HqLq2sUAovsI1upscQ9aotYlul4WrQP
         xTU14hu2B9AKR2d3/q3n/FWW0lE/g4l4lyS0zHroUoqXXUxb8W75262vUvW2OVMU5Ghn
         LuPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766489412; x=1767094212;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l0Lqetei9dr/hI31g6G5mWd+5bz73CklWhP+vHw/Ys0=;
        b=RiFLlZwmWE3rl3uAfh+SdKorgxNkvFivyU82Y62Hqu4IZHt1USh9/QRjDnHqEX3KU9
         rDl0SsOi2TELNWsFlJtj9zTAQ1zsoRQNQoMT8JxLLr1tA0v21UEdnhQOBDHKJFi13Xa1
         LJR3D8TKEdnXKIU5VVOfruohMMLl3bg0w2ydgggEpRHhJvJeRpsv2rMAmkPnIFcdVong
         bhKwbJtEiWFauVo3u+fpb0m3K+UakDb8/EJm6697IDtZBnXXmGLlDcsycTowmw+jrO6M
         Nxm5JgNofkoquboJrGzyuUvuwp6vjo7r6ob3Tv0E6UKA1EQpJUG32Of8NrfBsGBqb8UX
         fE7w==
X-Forwarded-Encrypted: i=1; AJvYcCUduFZYbegR1q8pVulcOA6UPCJCn328JEIRD4s6OxPh7ZhIO1GbswNSwnirHFIA908j7JGOVPkFQf36@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/imkQ6r4w3dgkDzM9Vo9NnrVAB/mSSEBBuxnxWXVNX9XkwH9/
	DXNYCvg4apXOlaIvh8lELNkYvemdlG5jfbKj4ZxkrGFU7lcdyFWn4Hu77l1L2jWLW5HOR1Mt6mU
	tkmX9g08PUKJmFCd6nH5HQNosCaSDRFvcDx8rpOj512QkwPZCTIuubsTvU+drmrnN
X-Gm-Gg: AY/fxX4FNQljHStH9fZHc4No1nY8yvgCv3KSFRNZkYyBIhi4IF79+3EaKWhyEZBgOgK
	CKmt/K0yi3k5I2dCkyWvM4jel9umvk/ww6a+zBIFcVFC0ihLQ5ihFQUQ8qThYTS0IZ+kP8s0pwe
	LoUXfdW8KQR/dwPVwbF8SX3VreUa+FTfZkn1imXrfyKBwRtfxsfoS4pO63o4i6MGgeVXdFpbXFB
	QoEbq73ddryPxO+O7U+CGbWJjL4AzJ8+dLwms2yVTgV5g7FND04qClJ/HRDL+PZ2W3sTSdJyhEA
	UnmYIoPS/JFc1zoZ1j3G30JaEs84QCElT5wP+KR3uCnEko3nBPQH4dtfTSHYNK804fDRHpByz9e
	UgsFD2xXkhg9eiLp3Oo1S+Zwpi2q8e+uhdrKszsgo
X-Received: by 2002:a05:6a00:600d:b0:776:1c49:82f8 with SMTP id d2e1a72fcca58-7ff6430cd27mr12237583b3a.8.1766489411540;
        Tue, 23 Dec 2025 03:30:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFPgRFTScyrnuy1YMIv74Qcr9QGHQ+C83VKqALlenEg2gsLjshd5Q1jMu0PAvchpsESt0OLPg==
X-Received: by 2002:a05:6a00:600d:b0:776:1c49:82f8 with SMTP id d2e1a72fcca58-7ff6430cd27mr12237547b3a.8.1766489410973;
        Tue, 23 Dec 2025 03:30:10 -0800 (PST)
Received: from [10.216.39.77] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c5307c7sm11847562a12.28.2025.12.23.03.30.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 03:30:10 -0800 (PST)
Message-ID: <6aa04d1c-ef32-42c0-a2af-c632d69d638e@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 16:59:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V8] dt-bindings: iio/adc: Move QCOM ADC channel
 definitions out of bindings folder
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: jic23@kernel.org, robh@kernel.org, krzysztof.kozlowski@linaro.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, agross@kernel.org,
        andersson@kernel.org, lumag@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        daniel.lezcano@linaro.org, sboyd@kernel.org, amitk@kernel.org,
        thara.gopinath@gmail.com, lee@kernel.org, rafael@kernel.org,
        subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, rui.zhang@intel.com,
        lukasz.luba@arm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        cros-qcom-dts-watchers@chromium.org, quic_kotarake@quicinc.com,
        neil.armstrong@linaro.org, stephan.gerhold@linaro.org
References: <20251127133903.208760-1-jishnu.prakash@oss.qualcomm.com>
 <20251204-calculating-sloth-of-valor-0e30ac@quoll>
 <7c484433-bb0d-4628-a885-281b971eb0e8@kernel.org>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <7c484433-bb0d-4628-a885-281b971eb0e8@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ebkwvrEH c=1 sm=1 tr=0 ts=694a7d44 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=KKAkSRfTAAAA:8 a=4YxtWCXCpLJr31cFxN0A:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: EX5PLgAJDL1_5oMFVnzgjEpYsgqySyFe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDA5MiBTYWx0ZWRfX0kUbvF5KHLhN
 W/XHK6EBG5zYfs9MPgcKyhMWs1ylymX1PXXrWlxEW+dN0WgD6jp8COdNzHyAUZ/pnCFAYZfMzaB
 kYJfxJjiPVpi1PMaz7Qvy0ob6D0vO/YzC21j95UWr1vQGem1TDUkObsc1feM/zhGzZPzVT7q2NM
 Kenze/7FKPWtpWPRGtvoQRZqR+BtgxGBunT1c7gOwhHVhkKMOFpeMiiRyr4ysDMyJYEvzELbSqn
 Jyzj3lpatoQ5xBI2TqkA7hYlfd72GTLhA9eX1MC1gh5mltyzQXtjpNcKXrH1KYMRIgvfBlbKps6
 Sd7mSWOcSgU2VA9TkCo3C0a047yrmpGfpa3hb7kQYzZEeDAFOgS8vMr20yEyHRNjfsHRYQjO1pD
 RVlzWds2awW7q1RtARLx04G7F+0ou4PmWNnx3DRkQ6HZUmpewM+NA6zOsf9n8pUMCMh0Lo3wysF
 p7OeQo89K5+zBKaN/Bg==
X-Proofpoint-ORIG-GUID: EX5PLgAJDL1_5oMFVnzgjEpYsgqySyFe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230092

Hi Krzysztof,

On 12/4/2025 1:25 PM, Krzysztof Kozlowski wrote:
> On 04/12/2025 08:54, Krzysztof Kozlowski wrote:
>> On Thu, Nov 27, 2025 at 07:09:03PM +0530, Jishnu Prakash wrote:
>>> There are several header files containing QCOM ADC macros for channel names
>>> right now in the include/dt-bindings/iio folder. Since these are hardware
>>> constants mostly used in devicetree and not exactly bindings, move the
>>> files to the arch/arm(64)/boot/dts/qcom folders.
>>>
>>> Correct the header file paths in all affected devicetree files to fix
>>> compilation errors seen with this move. Update documentation files
>>> similarly to fix dtbinding check errors for the same. Make a copy
>>> of the header file with constants used in ADC driver files in the
>>> /include/linux/iio/adc folder and update driver files to use this
>>> path to include it.
>>>
>>> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
>>> ---
>>> Changes since v7:
>>> - Based on a discussion with Krzysztof concluded here: 
>>>   https://lore.kernel.org/all/d10e2eea-4b86-4e1a-b7a0-54c55907a605@oss.qualcomm.com/,
>>>   moved ADC macro header files to arch/arm(64)/boot/dts/qcom folders. The file
>>>   include/dt-bindings/iio/qcom,spmi-vadc.h is moved to arch/arm/boot/dts/qcom/
>>>   as it is used in both arm and arm64 SoCs and other per-PMIC adc7 header files
>>>   are moved to arch/arm64/boot/dts/qcom.
>>> - Updated affected devicetree and documentation files based on path changes above.
>>> - Made a copy of qcom,spmi-vadc.h in /include/linux/iio/adc folder
>>>   for inclusion in ADC driver files and updated affected driver files to use it.
>>> - Dropped Acked-by tags from Lee, Rob and Jonathan due to these significant changes
>>>   made in latest patch version.
>>> - Updated some more devicetree files affected by this change.
>>> - Pushing this as a standalone change separate from ADC5 Gen3 series, as that
>>>   series will no longer depend upon this patch for the location of
>>>   qcom,spmi-vadc.h, as ADC5 Gen3 macros will be added in separate new files.
>>> - Link to v7: https://lore.kernel.org/all/20250826083657.4005727-2-jishnu.prakash@oss.qualcomm.com/
>>>
>>> Changes since v6:
>>> - Collected Acked-by tag from Jonathan.
>>>
>>> Changes since v5:
>>> - Updated one more devicetree file requiring this change.
>>>   Ran full dt_binding_check and dtbs_check and verified that no
>>>   errors were reported related to this patch.
>>>
>>>   Mentioning this explicitly as there was an invalid error reported on
>>>   this patch in the last two patch series, from upstream kernel
>>>   automation:
>>>
>>>   fatal error: dt-bindings/iio/adc/qcom,spmi-vadc.h: No such file or directory
>>>
>>>   The error is invalid as this file does get added in this patch, in
>>>   previous patch series too.
>>>
>>>   Links to discussion for same in v5:
>>>   https://lore.kernel.org/all/cc328ade-a05e-4b1d-a8f0-55b18b4a0873@oss.qualcomm.com/
>>>   https://lore.kernel.org/all/9f24e85d-f762-4c29-a58f-ed7652f50919@oss.qualcomm.com/
>>>
>>>   Links to discussion for same in v4:
>>>   https://lore.kernel.org/all/16aaae04-4fe8-4227-9374-0919960a4ca2@quicinc.com/
>>>
>>> Changes since v4:
>>> - Updated some more devicetree files requiring this change.
>>>
>>> Changes since v3:
>>> - Updated files affected by adc file path change in /arch/arm, which
>>>   were missed earlier. Updated some more new devicetree files requiring
>>>   this change in /arch/arm64.
>>>
>>> Changes since v2:
>>> - Updated some more new devicetree files requiring this change.
>>> - Collected Acked-by tags from Rob and Lee.
>>>
>>>  .../bindings/iio/adc/qcom,spmi-vadc.yaml      |   4 +-
>>>  .../bindings/mfd/qcom,spmi-pmic.yaml          |   2 +-
>>>  .../bindings/thermal/qcom-spmi-adc-tm-hc.yaml |   2 +-
>>>  .../bindings/thermal/qcom-spmi-adc-tm5.yaml   |   6 +-
>>
>> You have a checkpatch warning for a reason. You should not make these
>> combined into one change.
>>
>>>  arch/arm/boot/dts/qcom/pm8226.dtsi            |   2 +-
>>>  arch/arm/boot/dts/qcom/pm8941.dtsi            |   3 +-
>>>  arch/arm/boot/dts/qcom/pma8084.dtsi           |   2 +-
>>>  arch/arm/boot/dts/qcom/pmx55.dtsi             |   2 +-
>>>  .../arm/boot/dts/qcom}/qcom,spmi-vadc.h       |   0
>>>  arch/arm64/boot/dts/qcom/pm4125.dtsi          |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm6125.dtsi          |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm6150.dtsi          |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm6150l.dtsi         |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm660.dtsi           |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm660l.dtsi          |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm7250b.dtsi         |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm8150.dtsi          |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm8150b.dtsi         |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm8150l.dtsi         |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm8916.dtsi          |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm8937.dtsi          |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm8950.dtsi          |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm8953.dtsi          |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm8994.dtsi          |   2 +-
>>>  arch/arm64/boot/dts/qcom/pm8998.dtsi          |   2 +-
>>>  arch/arm64/boot/dts/qcom/pmi632.dtsi          |   2 +-
>>>  arch/arm64/boot/dts/qcom/pmi8950.dtsi         |   2 +-
>>>  arch/arm64/boot/dts/qcom/pmm8155au_1.dtsi     |   2 +-
>>>  arch/arm64/boot/dts/qcom/pmp8074.dtsi         |   2 +-
>>>  arch/arm64/boot/dts/qcom/pms405.dtsi          |   2 +-
>>>  .../boot/dts/qcom/qcm6490-fairphone-fp5.dts   |   4 +-
>>>  .../dts/qcom/qcm6490-particle-tachyon.dts     |   4 +-
>>>  .../boot/dts/qcom/qcm6490-shift-otter.dts     |   4 +-
>>>  .../boot/dts/qcom}/qcom,spmi-adc7-pm7325.h    |   2 +-
>>>  .../boot/dts/qcom}/qcom,spmi-adc7-pm8350.h    |   2 +-
>>>  .../boot/dts/qcom}/qcom,spmi-adc7-pm8350b.h   |   2 +-
>>>  .../boot/dts/qcom}/qcom,spmi-adc7-pmk8350.h   |   2 +-
>>>  .../boot/dts/qcom}/qcom,spmi-adc7-pmr735a.h   |   2 +-
>>>  .../boot/dts/qcom}/qcom,spmi-adc7-pmr735b.h   |   2 +-
>>>  .../boot/dts/qcom}/qcom,spmi-adc7-smb139x.h   |   2 +-
>>>  .../dts/qcom/qcs6490-radxa-dragon-q6a.dts     |   4 +-
>>>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts  |   4 +-
>>>  arch/arm64/boot/dts/qcom/sc7280-idp.dts       |   2 +-
>>>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi      |   2 +-
>>>  arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi    |   4 +-
>>>  arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi   |   2 +-
>>>  .../boot/dts/qcom/sc8280xp-huawei-gaokun3.dts |   2 +-
>>>  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    |   2 +-
>>>  .../dts/qcom/sc8280xp-microsoft-blackrock.dts |   2 +-
>>>  arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi  |   6 +-
>>>  .../boot/dts/qcom/sm7225-fairphone-fp4.dts    |   2 +-
>>>  .../boot/dts/qcom/sm7325-nothing-spacewar.dts |   6 +-
>>>  arch/arm64/boot/dts/qcom/sm8450-hdk.dts       |   9 +-
>>>  drivers/iio/adc/qcom-spmi-adc5.c              |   3 +-
>>>  drivers/iio/adc/qcom-spmi-vadc.c              |   3 +-
>>>  include/linux/iio/adc/qcom,spmi-vadc.h        | 303 ++++++++++++++++++
>>>  56 files changed, 374 insertions(+), 73 deletions(-)
>>>  rename {include/dt-bindings/iio => arch/arm/boot/dts/qcom}/qcom,spmi-vadc.h (100%)
>>>  rename {include/dt-bindings/iio => arch/arm64/boot/dts/qcom}/qcom,spmi-adc7-pm7325.h (98%)
>>>  rename {include/dt-bindings/iio => arch/arm64/boot/dts/qcom}/qcom,spmi-adc7-pm8350.h (98%)
>>>  rename {include/dt-bindings/iio => arch/arm64/boot/dts/qcom}/qcom,spmi-adc7-pm8350b.h (99%)
>>>  rename {include/dt-bindings/iio => arch/arm64/boot/dts/qcom}/qcom,spmi-adc7-pmk8350.h (98%)
>>>  rename {include/dt-bindings/iio => arch/arm64/boot/dts/qcom}/qcom,spmi-adc7-pmr735a.h (96%)
>>>  rename {include/dt-bindings/iio => arch/arm64/boot/dts/qcom}/qcom,spmi-adc7-pmr735b.h (96%)
>>>  rename {include/dt-bindings/iio => arch/arm64/boot/dts/qcom}/qcom,spmi-adc7-smb139x.h (93%)
>>
>> Huh, what? How can you drop the header? Are you sure you checked
>> previous commits, e.g. pinctrl headers, how this should be done? Where
>> did you see such commit dropping the ABI?
>>
> 
> You too can use search to see how this was done...
> 
> https://lore.kernel.org/all/20220605160508.134075-1-krzysztof.kozlowski@linaro.org/

Thanks for sharing the example. I went through the series fully and
understand the issue now - to avoid modifying ABI, the preference
is to copy the header files to required locations, update any
references to them and mark the older header files as deprecated.
I'll make and push a similar series for this change.

Thanks,
Jishnu

> 
> 
> Best regards,
> Krzysztof


