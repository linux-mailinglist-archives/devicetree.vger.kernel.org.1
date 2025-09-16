Return-Path: <devicetree+bounces-217698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 663B6B58F8E
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:47:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 08BAE4E2AB7
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 07:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3CE220E6F3;
	Tue, 16 Sep 2025 07:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KDHRn3O0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DA8DDC3
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 07:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758008814; cv=none; b=rRBNMJG1tvt4Od9ew/PW/IjT5AdaTej96KlEgv/K97CDq73uxUbotiPmQWveNvXXc01c0Lt0Mgcx1uNXiAiWmpBKmKS3wvx8jvpKZ7ga6fucvk79oHSTcjElFRuDbyWbzDIAeLIIxJh9qoufitxKcmUcfHp7ui/BomNlL/+kvXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758008814; c=relaxed/simple;
	bh=uyJQaZWtfN3j9XQd2xpdgR07Ehkd86qVWRtNtk3XyGc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NTFmuOyLnkqPyX+4KAX4fn47E3c9pjiYGLIOJ42VOOaiE0cSeAgqz/wWXKT/pG+AX9c6H7a94GBtByQKNQuUTPkFhAPHVY7t7kBNXvbK8dhDEg1mks/e7bqF/zo9joayW9ZWOUiRBwm35s2ZIR1Zik9FcLyN9ZobhTS+hx6sJbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KDHRn3O0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G3psKk018499
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 07:46:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Cf5E7W0dBAEK0vAVzeNQtS2T7DH7znSy9al2kJux2i4=; b=KDHRn3O0YweGuhKa
	78AAwlVYky48FOkUhXekKZBYxrTn0UV6A6pUQDOYXf0lyQyGmpw3i7qfM9ce+eF+
	I5DASEVgasjoNc74E76Pdwrwx7WvUzNRx5+f0Fpn6uW3yIsNyX9v/FFlBgEsGy+x
	BzlwKa42v8KxvwqHcM+FI4ONMOivRosmkQCvoLra54PAvYESWhv41YShJQMd/DMX
	3LEpwX771969JuHH3vk+NMf3zDA7J+L/6Wn5EC2a9Q+FI5bEdINlGys1bNJD4X7G
	RS4b3FcyU461GmjLDTBfHEoLeLSb1imnY96G5Om7p2rXpAQBBd0xwud5I6qb0tGd
	drwVEA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496da9c8p2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 07:46:51 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-726ac3f253dso14276976d6.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 00:46:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758008811; x=1758613611;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cf5E7W0dBAEK0vAVzeNQtS2T7DH7znSy9al2kJux2i4=;
        b=hO29dSVpKPEfAijlC95nGuW+f09Dstzz+/2Z6NZhenae2WdL4MjvLGHZB134vkaQZz
         U1IodlwN8mZn5EEPrd8d4savIUa5GErUnMfObnXiTACJm8Ng9dCI1GpBQIpAZ1QQqJVP
         mMbEzsc8UOVVdcXTkLJD+LCPqBghUtsRQ1PsCg61Cre88CKJjjqJWS6y+xuwqZ6QKdAE
         U0ZHPtAr45RyRtxo2pTeNIzFQB9Nm3L+8uoZeaa8svmliyF+s03m9hfMhz3EPIcL8r0z
         QWCLXzlEYcp+/xb8g4f0RpQKUpoxpX7gXMPPpdE4XjgVLFgReuBDzAek9joU00Vw2uiK
         Bbaw==
X-Forwarded-Encrypted: i=1; AJvYcCVdjzQmMiKG9Q5d1ch7cAAASdM2zrMG/j2qpBlXFruGvz1bKUhxONS3lB0O4s9M3h8hebUJisDiJFir@vger.kernel.org
X-Gm-Message-State: AOJu0YwMqrsc3WahLx8lFVi6FUKxIh7B843MCAeIboci1koBPvGarT+z
	B7J7JIwFHYMdDrQw/sDz4TRTRCKbOLNLgkC4t7ZG9DlsH+93Zqd/1Qb2bHn9PUeVuT3W8aPBtCR
	180H6ktyZjQpFqM7MJ+jS3rhKVg87wGS2t3X+dTDfncSbT9GVaXg2d0f6Q/TLCG4q
X-Gm-Gg: ASbGnctABmvs0y3Cvle/D6VeRULQwtvd6OzXzH0BymDHqe/c33hVgol/TpyZs2FjLXZ
	uR2us60N8usLCG6athVZ19IdRIrgAWzXSX3gL82qrU5jbFsXnfvfM5dat2lSdQs+y9fbR4jA6qt
	4MJ2F2v1svV4hNkwG6o0ikV7jf9LjGdHxiGeO8P7PRwYKrbeRjzrszKtgmElUUq3bevxTz/w4Om
	1kcgsKW8LVGf5Ztu8AF1jFlyL/rThAV0fGtlYQr9Mk1MdnEGqzT3WEx8WS/nmai5SoQZPQVSnOy
	mrOiVeTFP1pW2UXEsfwZMMh9XUOrjWkIheBmBxhebenWJY8U4XmbhAeiCKKHXn0R286DhYb5lJ6
	h/7sSapeH0CAMlBxmP/PS0Q==
X-Received: by 2002:ac8:7c44:0:b0:4b5:6f48:e555 with SMTP id d75a77b69052e-4b77cfd4f60mr126155881cf.5.1758008810611;
        Tue, 16 Sep 2025 00:46:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFuaL33e3U5Wrbt2sEQNvDTeXZUwrMOQ2WQWOhmosPNQ/paZrWzLCiSm37HdMbB+EBaDE2SEQ==
X-Received: by 2002:ac8:7c44:0:b0:4b5:6f48:e555 with SMTP id d75a77b69052e-4b77cfd4f60mr126155701cf.5.1758008810010;
        Tue, 16 Sep 2025 00:46:50 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62ec33ad741sm10726173a12.21.2025.09.16.00.46.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 00:46:49 -0700 (PDT)
Message-ID: <d5c1e2ae-e82c-47aa-97b5-a2020a8846fb@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 09:46:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
To: Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
 <20250910-hamoa_initial-v11-3-38ed7f2015f7@oss.qualcomm.com>
 <aMPee9wEOrrW-KMU@linaro.org>
 <90dcca12-1a68-4049-bcbe-c333aed07a07@oss.qualcomm.com>
 <aMfT1_uyZETUEBYk@linaro.org>
 <3b81ea60-553a-48d8-b6c7-6b55673fe04d@oss.qualcomm.com>
 <aMfiCry1NDdd9AnX@linaro.org>
 <aa2677a3-7d5f-4abc-9bb4-7db53b9b8a0f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aa2677a3-7d5f-4abc-9bb4-7db53b9b8a0f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M+5NKzws c=1 sm=1 tr=0 ts=68c915eb cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=thWbWRcKQ_BuJRqTtGEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: nNM0Ak0vi3CT_wPKqEXvjaXrGkLnKggO
X-Proofpoint-ORIG-GUID: nNM0Ak0vi3CT_wPKqEXvjaXrGkLnKggO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA1NiBTYWx0ZWRfXy7KV9mXZx9iN
 kR9IHtROpt7EEw6xW6qYir2NvGcV7oRRyjlS6igzg1JMgJUI9x5G1nOjYI4vICof5AEvT6JzU44
 L2aTgS6J6xOGwbLSpZ/lLSu5kbiGC4ZpHrAjwnG0OVLACI7RImL3T3QC0uHloInWurGVDEOcNAn
 lnQQReyx63FLJ8SjyrVm3mqchjKjdW0U3fT7Dk1KekXBKfGSIf2oiUOQU03CHrwAKKXp5uu+G7r
 Nl/524RnrWZomxSwYluyy/GsRtNGUHRfH7Wggb9jlOHdfUuTSVLwyOEliYmqUo9cxmX37R3/PbI
 H8n45hbbusKHFSzPRza30sDFsIeYEhYr7/7/8hCfgI4hVvTx2HjiJj16bcaV1sbrXqtY9QFFPWF
 aGg5C35b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509150056

On 9/16/25 3:06 AM, Yijie Yang wrote:
> 
> 
> On 2025-09-15 17:53, Stephan Gerhold wrote:
>> yOn Mon, Sep 15, 2025 at 05:46:09PM +0800, Yijie Yang wrote:
>>>
>>>
>>> On 2025-09-15 16:52, Stephan Gerhold wrote:
>>>> On Mon, Sep 15, 2025 at 10:12:15AM +0800, Yijie Yang wrote:
>>>>>
>>>>>
>>>>> On 2025-09-12 16:48, Stephan Gerhold wrote:
>>>>>> On Wed, Sep 10, 2025 at 05:02:11PM +0800, Yijie Yang wrote:
>>>>>>> The HAMOA-IOT-SOM is a compact computing module that integrates a System
>>>>>>> on Chip (SoC) — specifically the x1e80100 — along with essential
>>>>>>> components optimized for IoT applications. It is designed to be mounted on
>>>>>>> carrier boards, enabling the development of complete embedded systems.
>>>>>>>
>>>>>>> Make the following peripherals on the SOM enabled:
>>>>>>> - Regulators on the SOM
>>>>>>> - Reserved memory regions
>>>>>>> - PCIe6a and its PHY
>>>>>>> - PCIe4 and its PHY
>>>>>>> - USB0 through USB6 and their PHYs
>>>>>>> - ADSP, CDSP
>>>>>>> - Graphic
>>>>>>> - Video
>>>>>>>
>>>>>>> Written in collaboration with Yingying Tang (PCIe4)
>>>>>>> <quic_yintang@quicinc.com> and Wangao Wang (Video)
>>>>>>> <quic_wangaow@quicinc.com>.
>>>>>>
>>>>>> This looks like you should have Co-developed-by: tags together with
>>>>>> their Signed-off-by: tags.
>>>>>
>>>>> We’ve agreed on this as the preferred method for marking collaboration, as
>>>>> discussed earlier in this thread.
>>>>>
>>>>
>>>> I can't say I agree with Bjorn there, but ok, he's the maintainer. :-)
>>>>
>>>>>>
>>>>>>>
>>>>>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>>> ---
>>>>>>>     arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 621 ++++++++++++++++++++++++++++
>>>>>>>     1 file changed, 621 insertions(+)
>>>>>>>
>>>>>>> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
>>>>>>> new file mode 100644
>>>>>>> index 000000000000..c7c3a167eb6a
>>>>>>> --- /dev/null
>>>>>>> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
>>>>>>> @@ -0,0 +1,621 @@
>>>>>>> +// SPDX-License-Identifier: BSD-3-Clause
>>>>>>> +/*
>>>>>>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>>>>>> + */
>>>>>>> +
>>>>>>> +#include "x1e80100.dtsi"
>>>>>>> +#include "x1e80100-pmics.dtsi"
>>>>>>> +#include <dt-bindings/gpio/gpio.h>
>>>>>>> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>>>>>> +
>>>>>>> +/ {
>>>>>>> +    compatible = "hamoa-iot-som", "qcom,x1e80100";
>>>>>>
>>>>>> Undocumented compatible (without "qcom," prefix). I think you can just
>>>>>> drop this?
>>>>>
>>>>> This compatible string was also discussed previously and is the preferred
>>>>> choice. I’ll add the missing 'qcom,' prefix.
>>>>>
>>>>
>>>> Even compatible = "qcom,hamoa-iot-som", "qcom,x1e80100"; is not
>>>> documented. And it doesn't make much sense to document it either, each
>>>> of the boards using the SoM should have a more specific compatible and
>>>> therefore needs to override this property. I think you can really just
>>>> drop this line.
>>>
>>> Patch 1/4 documents this compatible. It’s another requirement that SoC/SoM
>>> should follow, which Krzysztof pointed out in v2:
>>> https://lore.kernel.org/all/aee74e0f-c957-437d-ab48-3977013c3116@kernel.org/
>>>
>>
>> I'm not saying you should drop the "qcom,hamoa-iot-som" compatible. My
>> point is that only the compatible list you use in hamoa-iot-evk.dts is
>> documented in PATCH 1/4:
>>
>> compatible = "qcom,hamoa-iot-evk", "qcom,hamoa-iot-som", "qcom,x1e80100";
>>
>> The compatible list you are using in hamoa-iot-som.dtsi is *not*
>> documented:
>>
>> compatible = "(qcom,)hamoa-iot-som", "qcom,x1e80100";
>>
>> because the board-specific compatible string (e.g. "qcom,hamoa-iot-evk")
>> is missing.
>>
>> The compatible property you have in hamoa-iot-som.dtsi is redundant,
>> because you override it with the valid one in hamoa-iot-evk.dts. And
>> every other board using the SoM should do the same.
>>
>> I would expect that you can just drop this line in hamoa-iot-som.dtsi.
> 
> Yes, the compatible property in this context will ultimately be overridden by the board file and does not have any direct functional impact.
> 
> However, DTS/DTSI files are intended to describe the hardware itself, and this compatible string helps characterize the SOM—even if it is later overridden. This is similar to the role of compatible strings in certain soc.dtsi files.
> 
> Therefore, I believe it is appropriate to retain this compatible and provide documentation to clarify its purpose.

No, if the compatible and model are not overriden, the carrier board DT is
invalid. The SoM dtsi isn't supposed to be a "functional" dt, but rather a
fragment, like a code header, containing most of the common functionality
for includers (which is derived from the presence of the Hamoa SoM).

Konrad
> 
> A useful reference for this approach is the imx8mp-sr-som.dtsi file from another vendor.
> 
>>
>> Thanks,
>> Stephan
> 

