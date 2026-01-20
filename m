Return-Path: <devicetree+bounces-257189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AA3D3BF2F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 07:30:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 43A4D4F4167
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 06:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C54C37A49D;
	Tue, 20 Jan 2026 06:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SWPq7p5/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="caEEgNFD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618DA36CDF4
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768890251; cv=none; b=Z3LIrIoktF7DScoU/XobG3Q4mJ3u+WGrXXX+1xOsCPtN8CIm1WO6uVyZLwi64LjtAKxDukMlwLKnFsS6+1pet/eZ511F83cnNLQQI1/RIp+/v5P+wrUia62p+RB0qT9i+yxwse02rWco5J5hS103uHQwqBMqhR/GiYtuV+L6ipA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768890251; c=relaxed/simple;
	bh=KQvTe851Bvsh8j+PgLjhAYuShFSOrpuVnlKmfK6Ke38=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=i3/fxKK04DesM0YhY8gH3VcTCAOGdI7k2klEUWEY1Ny19ODwNgnLzSyuAOV5WNVTnLiYsDzSAYG4s8m9jDK8cqiJfq0UZxPjL5RztdWlKS8zbRu8MMLXmOmHmek1RwMN3e5MX8XFuzTJn0WTb13RPbFP9buVSDdiTiP2s1KOzQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SWPq7p5/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=caEEgNFD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K33GGO3805028
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:24:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dqnUnHSglS08Ezs/9IFZQZo2vw1kZKcPcP5C+SqXBDc=; b=SWPq7p5/mpy3ncPK
	dpVzkW82+ZaSyhmIATF4mHMBuToZR+U03nPCxrtoCZiz6AlO7qXY37dRUI+Ojip3
	6NXIBTIX+HSxAFgq/qXni6B5fZeXxA8CS4fUWpdLMMrvHRy/gKEkZf89JpyzWig8
	SMaxjp4/hNDdDecNa11ZYPPzcGR9P4S7SHJWNjR3By4+4zANhrsNVJf8GHf09/xL
	Q8DvkSu8dw9lwBcY/KkVE1cGjKm5uuKyBqPYQY3hUbhtO6kFf/RZME4wgEuGRv6N
	JpOvs8Hk1ZgFbT+tBOdZEIaxbUSqoE/rVNzwAaPL9sxAFTrSsniEpirYsAoo5mnK
	xf3r9Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt1f88fvp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:24:07 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81f73452300so9128871b3a.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 22:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768890247; x=1769495047; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dqnUnHSglS08Ezs/9IFZQZo2vw1kZKcPcP5C+SqXBDc=;
        b=caEEgNFDKVvs27oMBxCLi8MFS1XesEsHLGNmIxPx6qeaFvSwDrEfFBI/Bcs0nVIIo5
         uUT7i3VjvwLOlLiVzOAxm7eVbxiPCCJaJ78c/ez+ZbaJ08fmD+zLjjUtYZEKDPnzlzaX
         Vv4pZ7euEk+gobOEvYolAinesQQGtCPorN4YBXfPF8bFwU8QhqPuta7zJoU1yEXhj+nG
         ELAFX0zAMXQgjtMSACK974uOMsjGXTd8RNLKGiQmMJGJr1jDd2ffT6M5yuHYuDxRN/2l
         vZ+FCC2O98YZaVhf+tNyKEWNUvxpWGcq2A+kI5mij2I0xGtajDjqqBrBkP2hJFAsRJqB
         TgpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768890247; x=1769495047;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dqnUnHSglS08Ezs/9IFZQZo2vw1kZKcPcP5C+SqXBDc=;
        b=uwIRNO/CHcF1t1kI8JctO2/WFx6fVuJXvb4L/khoSH+5KdZsNnDN9FpaR+Z3Dv7OqU
         vwh6wP2gsiis5oG0gMdPDi2ILYTsHvinLwODt5F6NwP3wSdoj8JdVI+apwMv/Im1Y283
         tJXMBQSS/UodmBu0rOv51o4n9CrhN8+fJGQOd5qT4AmXf9J/d8ZhkRDOQQjm8HVaTsRa
         gK070DenC/+NXYDmZRzJcIWmIAJRWtLbkI5ZWLOwl5ZC6dlX/Csa5SX00hUVIDQsm+1C
         LndCA2AdlzAMJ5GxqIjW7G/Z4TZy7w3jGr2MNT0xZLa9mqwz5sEhyYRkSMyPbOl/Insn
         xn8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWxln7mnH5t3vED14RWInAYPrxCAKGqUFLoB8YxYolVyJVHgoWzftYz4l5f93soFFD1zs8sC5Ao4jN9@vger.kernel.org
X-Gm-Message-State: AOJu0YyqCZaIboMnUenHHPtsqg7qzzYSnIbX9nUrRI+z5GOLxVjeA65F
	BOC+ijZ9ZxkfIffJtsC10PTYJTs+LkVcNpdYSR04xYsBP+0/DTSfOCDgwxx50HKjwuq3rO987w+
	Gaexz43IzsgMvJIE0Jnw2+RG1eqbGEqGaJa54PwYXkK06roj0S7a+EyJIgwc61tFs
X-Gm-Gg: AY/fxX49A1AaVna7BPoiGVGqH/3ZYYAWLPq/XRrAi+4ejYnL78/Go/kFtz/eldwUcPm
	uv3MRpX7luYNn7c/5n1BAY4PusBcBJWCH6e7iAOjY/HmAYfgrUAB2HXOLyCtNswM/1MSVmo6kSc
	msESgdxIoKK3/uCiPRBAlACBrA/9SQTpbPYfbVf5RKi0/PNbUs4oeoCqvFb8ufB/bJfVv6MbzVf
	D7ybpwzeZBiDiDbvXgjb+XuPccL5CGl7gxOGt5ILjRohPfNhrJL8Hn/YluCE1EOyeIoJ+f4Oack
	e4FriQ72DsaCB+bfMUv3kgReVaUcAFKu3F72PWdbi8WaoJdtkEwc0sioH5AjgUdjUhQIfQHRHxg
	B0sS0gs5nqUYdND8CeCtnwd6QayZrDudaeKPWNCw=
X-Received: by 2002:a05:6a21:a92:b0:34f:28f7:ed75 with SMTP id adf61e73a8af0-38e45d08641mr914497637.8.1768890247102;
        Mon, 19 Jan 2026 22:24:07 -0800 (PST)
X-Received: by 2002:a05:6a21:a92:b0:34f:28f7:ed75 with SMTP id adf61e73a8af0-38e45d08641mr914469637.8.1768890246585;
        Mon, 19 Jan 2026 22:24:06 -0800 (PST)
Received: from [10.217.223.153] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa1291ca2sm10975787b3a.54.2026.01.19.22.24.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 22:24:06 -0800 (PST)
Subject: Re: [PATCH v2 0/2] Enable Inline crypto engine for kodiak
To: Rob Herring <robh@kernel.org>
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzk+dt@kernel.org, ulf.hansson@linaro.org, devicetree@vger.kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, conor+dt@kernel.org
References: <20260114094848.3790487-1-neeraj.soni@oss.qualcomm.com>
 <176840729246.2734238.959231359705262987.robh@kernel.org>
 <9c21bc87-326a-aa0b-ba81-31b10e119acb@oss.qualcomm.com>
 <CAL_JsqLVOLwC5fdQUoU-0QXcyjH0tK7cTE_7B6kVa6kFE8zF3g@mail.gmail.com>
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Message-ID: <96ca9dd8-2d92-262f-8bb7-0f0c30cabd74@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 11:54:02 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLVOLwC5fdQUoU-0QXcyjH0tK7cTE_7B6kVa6kFE8zF3g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA1MSBTYWx0ZWRfX0DGqkYyQl7sX
 mDoD7GVltpIJ/44AGMcoe3lOrRuuuh3OUBIzgks12zUJAoKKuebuYDET+Zo1hmJHSVr0bRo9gu6
 LegknLVo04YmZ03pvDKBrbpFH+/3twahk+dAFdV1hbZeovmCdJVa/UYbCXaiSHrOT2ofS4Gzlof
 8IRb4PlAAQ3WIDsYKvov85H+wBPpwdMG01hYzTiE5hH/4PwNpn2QG8yDC8KBeuY07XqFd6U3cRx
 4RuS3KWbXD9ZcIczA7ui2vTzgNx2UVCxEEeCsVX1p4kaR/Lrl592Hv+Xu3drkr73t5ExxOEOx0b
 /k+KSPr/+J9pc5UOuBScOJnfcxNYsp9uMeWq98y1y4UGDUijxPgpJHiXXgdPj/zXkVKkURmP7Uc
 ffJ72cRBPVWEnzB9njrENIWvFkmcSFu76elbrrJymY9r5zfTiVDEf542Gjy9W9tYYYUkI4ITZBV
 kna1L9zk57lzvtldfJg==
X-Proofpoint-GUID: R_6KJfnmuaSSsUne7xiqzcRkPBPMfx77
X-Proofpoint-ORIG-GUID: R_6KJfnmuaSSsUne7xiqzcRkPBPMfx77
X-Authority-Analysis: v=2.4 cv=LdQxKzfi c=1 sm=1 tr=0 ts=696f1f87 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=oVZI_Enn05QVDH3hfaoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_01,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200051


On 1/20/2026 6:55 AM, Rob Herring wrote:
> On Mon, Jan 19, 2026 at 6:49 AM Neeraj Soni
> <neeraj.soni@oss.qualcomm.com> wrote:
>>
>> Hi,
>>
>> On 1/14/2026 9:48 PM, Rob Herring wrote:
>>>
>>> On Wed, 14 Jan 2026 15:18:46 +0530, Neeraj Soni wrote:
>>>> Document Inline Crypto Engine (ICE) handle for SDHC and add its device-tree
>>>> node to enable it for kodiak.
>>>>
>>>> How this patch was tested:
>>>> - export ARCH=arm64
>>>> - export CROSS_COMPILE=aarch64-linux-gnu-
>>>> - make menuconfig
>>>> - make defconifg
>>>> - make DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/sdhci-msm.yaml dt_binding_check
>>>> - make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CHECK_DTBS=y dtbs
>>>>
>>>> ---
>>>> Changes in v2:
>>>> - Removed the "if: required:" description for "qcom,ice" dt-binding
>>>>   as the ICE node is optional.
>>>> - Corrected the ICE dt node entry according to the dt-binding description.
>>>> - Added test details.
>>>>
>>>> Changes in v1:
>>>> - Updated the dt-binding for ICE node.
>>>> - Added the dt node for ICE for kodiak.
>>>>
>>>> Neeraj Soni (2):
>>>>   dt-bindings: mmc: sdhci-msm: Add ICE phandle
>>>>   arm64: dts: qcom: kodiak: enable the inline crypto engine for SDHC
>>>>
>>>>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 4 ++++
>>>>  arch/arm64/boot/dts/qcom/kodiak.dtsi                 | 9 +++++++++
>>>>  2 files changed, 13 insertions(+)
>>>>
>>>> --
>>>> 2.34.1
>>>>
>>>>
>>>>
>>>
>>>
>>> My bot found new DTB warnings on the .dts files added or changed in this
>>> series.
>>>
>>> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
>>> are fixed by another series. Ultimately, it is up to the platform
>>> maintainer whether these warnings are acceptable or not. No need to reply
>>> unless the platform maintainer has comments.
>>>
>>> If you already ran DT checks and didn't see these error(s), then
>>> make sure dt-schema is up to date:
>>>
>>>   pip3 install dtschema --upgrade
>>>
>>>
>>> This patch series was applied (using b4) to base:
>>>  Base: attempting to guess base-commit...
>>>  Base: tags/v6.19-rc1-102-g3af51501e2b8 (exact match)
>>>  Base: tags/v6.19-rc1-102-g3af51501e2b8 (use --merge-base to override)
>>>
>>> If this is not the correct base, please add 'base-commit' tag
>>> (or use b4 which does this automatically)
>>>
>>> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20260114094848.3790487-1-neeraj.soni@oss.qualcomm.com:
>>>
>>> arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-herobrine-crd-pro.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dtb: pmic@2 (qcom,pm8350c): pwm:nvmem: [[386, 387]] is too short
>>>       from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml
>>> arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dtb: pwm (qcom,pm8350c-pwm): nvmem: [[386, 387]] is too short
>>>       from schema $id: http://devicetree.org/schemas/leds/leds-qcom-lpg.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/qcm6490-idp.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/qcm6490-particle-tachyon.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-idp.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-lte.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-idp2.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie-lte.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie-nvme-lte.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie-nvme.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-crd-r3.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1-lte.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>> arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
>>>       from schema $id: http://devicetree.org/schemas/simple-bus.yaml
>>>
>> The crypto node i added is not a "bus" node but a leaf node for Inline Crypto Engine (ICE). There are no props like "compatible = "simple-bus"" or "#address-cells" and "#size-cells"
>> added in the ICE dt which indicates it is bus device so why the tool expects "ranges" prop? Adding "ranges" as a property in ICE node will be wrong since it is not a "bus" device.
> 
> The issue is your unit-address is upper case hex.
> 
Thanks and i will fix upper case in next patch but the logs are bit confusing to indicate upper case issue as "ranges" prop missing.

> Rob
> 
Regards
Neeraj

