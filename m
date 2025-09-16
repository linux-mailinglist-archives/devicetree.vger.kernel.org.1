Return-Path: <devicetree+bounces-217626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE42FB58AC3
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 03:07:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8866517FFEB
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 01:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B80731A9FA1;
	Tue, 16 Sep 2025 01:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QgA42yIt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9627E0E4
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 01:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757984836; cv=none; b=BUfSQKfhA2zSgajJuO9Jyi4FhRHEBuRigszkd64u/THpWHWWMu/o/GUL3Q/aveaphFyHojmScRCyDAHJTc6+4cmPgU9DE4qepbtSPTRuZAy8aDiBfNDPnbfA1wbcIuhbVqglVx6oKmx8mpy1jI8rrPiZ6Fd1rO5dE8zqCC0SMpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757984836; c=relaxed/simple;
	bh=Ej1M7Lb0ez3FYXyEYoQtM5ZlcsYy2QCsELs/7QLVuSE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ClH+LOfvz60kXkWMuCNHYG4H6GqxbRYIkeAlxTTLHET6sllYFC3Xof7olPYVeSf/5ZQKpau6yQTe62WvYr7op0R4pflG5/eSBvu+MzElqJAwuONFtHGPKsmGgHen5m1NL+x+QIf6FOs5oVdiR5qLFGtejmxdlDIO/JNazY9wpBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QgA42yIt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58FECMmc027174
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 01:07:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zJ7wAHnzIyQb7pFtsPfAGf8Lzws9Z/gnzK2Icghh4B0=; b=QgA42yIt0Q+xZPlg
	xHLcCpy18CiVmLxUDr1ZMXVCdinKaF0wzhjI8GhR/5t57/NWqu6VZsnMly5VJU0U
	BE98TlKC95mpD1+3Bymf3ImTrQ9OrIomkYsNqTBV5y5h4ykz9nKLywctnDvrDlCy
	Uba4Y5Hk6FU4G8cMWeHI8j/KWkXtkMLVYnp3jw+KIJEYJKiRlr0FB4RI1CCcdfjF
	bRszxtDsMTGRvJwHxOWjKKt76rKFwFn1F73RDrju8LSd76KujZve0pTjvEFm20Is
	u9IEUn0+U/E+iiMI4xtDLkZp/Ud0R+tTCehpo7s4T7dZg0ifQx1GcrQxPHfKHGNS
	8zAVKg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495072ptxc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 01:07:08 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7761c58f77fso2598029b3a.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 18:07:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757984827; x=1758589627;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zJ7wAHnzIyQb7pFtsPfAGf8Lzws9Z/gnzK2Icghh4B0=;
        b=PSHhpNfyTvHeK82j4tssJKmAmksEY4jUynmD3nHkbw3cutgLwRS9anV1TdxOshPRqC
         Hxm4DG3BnVd3m2ASstiLX/G0qVLD9oaCKexOmnqVEXhUqDZ7m5SGnXq77IzwmMYHGlYK
         HB8/CmrTvPMT+1PqZokc5xrfRydVyy+WYrzHt8QC8aN9MlCbHnvCXoKbMlbMZpacTK0D
         E7FgN1MNHCW8uSMvrUHFRLWsoMF80goP3VYkF1hrmAgs8p5nXv85eNZB4WkGb9fL74AO
         V8m3XIBQFXmCxP1RSfYCb68veT4p7mHjTUOid6nGjLIS09weCW22MOo0lHK+LdEDR4GB
         z6kQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUTFmtOVn6fYygob6l1XJWwzS9+OdspaRVexqSgxzxM1VpECorVbJzfmca5Mnrs/R/8ZVIGc4R0H6q@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3JjAunXo3WxXOoXXT1DZleNnaUSaRdLzFPv27w4JfhgLTd5pb
	a91XQPc7+szPYnUYmeqaKV2/EaP3ZsMWWURMMonXlFUrsL+aaVNugJzOHALlKgByY0v55NVGHJP
	vM+zVg8Aihdp7nCcV3NClGiwVHRk5D9cz/88Zjr3v4RSk6Xo+K4IsEP25f5heru7V
X-Gm-Gg: ASbGncuXE6e2nsQ5t0ug8EewIfv99VEQ1YI6/5eykJz5BvedKC2I1Zq3umxVeGzMIYu
	2HfP5pZt8zW1PGa/6cTthzLTdLMMKQS8y9cnc3D2bTvHdvujyFRKtZIHJbXGbkzOYEvJPcfH0g4
	nsT8b6UgxhmxieFtcjY0Mc7pydul88yb4PXqABoCFZ7+9dxJuEOTeoD8IS0RClEvFIyGu9toXqi
	9urY5k9YA3gGxgM0e6b/U6J0oS2ML1FA9NJCV5Gsj/6Vslh6JhnL0vDYMswmP26NE0pQE/fmQDI
	PYUiiNex7VOj/0fMcRztP+1XnAoQZzgnixl5kCpWY0z1TiI4ZGnFWbalKNbzBogFzXaisgW2OeS
	sa6wSyfR9wUPwOnuaFvTX2ZD1O9pisQQfMA==
X-Received: by 2002:a05:6a00:140b:b0:772:4759:e45d with SMTP id d2e1a72fcca58-77612187dcdmr16870656b3a.22.1757984826803;
        Mon, 15 Sep 2025 18:07:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVs31FmEgidBmlFAP6xDrtJIzXrTQX01+uXUWk8n4bzgO78tNFCFr69YkqcNPr9LfNID+jJw==
X-Received: by 2002:a05:6a00:140b:b0:772:4759:e45d with SMTP id d2e1a72fcca58-77612187dcdmr16870617b3a.22.1757984826313;
        Mon, 15 Sep 2025 18:07:06 -0700 (PDT)
Received: from [10.133.33.244] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7762c225d2asm8516269b3a.65.2025.09.15.18.07.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 18:07:05 -0700 (PDT)
Message-ID: <aa2677a3-7d5f-4abc-9bb4-7db53b9b8a0f@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 09:06:58 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
 <20250910-hamoa_initial-v11-3-38ed7f2015f7@oss.qualcomm.com>
 <aMPee9wEOrrW-KMU@linaro.org>
 <90dcca12-1a68-4049-bcbe-c333aed07a07@oss.qualcomm.com>
 <aMfT1_uyZETUEBYk@linaro.org>
 <3b81ea60-553a-48d8-b6c7-6b55673fe04d@oss.qualcomm.com>
 <aMfiCry1NDdd9AnX@linaro.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <aMfiCry1NDdd9AnX@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyNSBTYWx0ZWRfX3MxnwdWtno2y
 Uy/V0EhJJ50gWODOG/D7iqsVXJrNNXAHDoOPwXn54/dkGn3TMYY1dzz98cr9QJehVJYM0t/vCM1
 UtQFYH5Ou7VoMwnzpDNczgM7bpkbSCX6a1xnjjprtJEKmnrmDu78E1NfbyYyuJTfyZYUk2esQBh
 99Ye21cT9R8IHqsiYr5YkG8/KBzn54mugbkeAiCm00GEk2nyhZtgBF4N7UzxvRLn15IqOEo3nGW
 OKIJhPB8eCAJsSmETWTstUQHL3qRabFUyZHVcKi/FWlQ2na3587j/QzdQzQro6Qw4+LDhQLzqaa
 8JjjFW3CVx7/GzZ+BucO3W5neGzYyB9OQbJtcTdZIEJXh+wmytfcI7nRskJJSK7D5TFv0U9tWzO
 fW3nPMmA
X-Proofpoint-GUID: uEvk-b67qPhvYvaNoHGzj1PNZGVZ8imf
X-Authority-Analysis: v=2.4 cv=WcsMa1hX c=1 sm=1 tr=0 ts=68c8b83c cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=BKvH8aPO6oRNhvS168oA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: uEvk-b67qPhvYvaNoHGzj1PNZGVZ8imf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_09,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130025



On 2025-09-15 17:53, Stephan Gerhold wrote:
> yOn Mon, Sep 15, 2025 at 05:46:09PM +0800, Yijie Yang wrote:
>>
>>
>> On 2025-09-15 16:52, Stephan Gerhold wrote:
>>> On Mon, Sep 15, 2025 at 10:12:15AM +0800, Yijie Yang wrote:
>>>>
>>>>
>>>> On 2025-09-12 16:48, Stephan Gerhold wrote:
>>>>> On Wed, Sep 10, 2025 at 05:02:11PM +0800, Yijie Yang wrote:
>>>>>> The HAMOA-IOT-SOM is a compact computing module that integrates a System
>>>>>> on Chip (SoC) — specifically the x1e80100 — along with essential
>>>>>> components optimized for IoT applications. It is designed to be mounted on
>>>>>> carrier boards, enabling the development of complete embedded systems.
>>>>>>
>>>>>> Make the following peripherals on the SOM enabled:
>>>>>> - Regulators on the SOM
>>>>>> - Reserved memory regions
>>>>>> - PCIe6a and its PHY
>>>>>> - PCIe4 and its PHY
>>>>>> - USB0 through USB6 and their PHYs
>>>>>> - ADSP, CDSP
>>>>>> - Graphic
>>>>>> - Video
>>>>>>
>>>>>> Written in collaboration with Yingying Tang (PCIe4)
>>>>>> <quic_yintang@quicinc.com> and Wangao Wang (Video)
>>>>>> <quic_wangaow@quicinc.com>.
>>>>>
>>>>> This looks like you should have Co-developed-by: tags together with
>>>>> their Signed-off-by: tags.
>>>>
>>>> We’ve agreed on this as the preferred method for marking collaboration, as
>>>> discussed earlier in this thread.
>>>>
>>>
>>> I can't say I agree with Bjorn there, but ok, he's the maintainer. :-)
>>>
>>>>>
>>>>>>
>>>>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>> ---
>>>>>>     arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 621 ++++++++++++++++++++++++++++
>>>>>>     1 file changed, 621 insertions(+)
>>>>>>
>>>>>> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
>>>>>> new file mode 100644
>>>>>> index 000000000000..c7c3a167eb6a
>>>>>> --- /dev/null
>>>>>> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
>>>>>> @@ -0,0 +1,621 @@
>>>>>> +// SPDX-License-Identifier: BSD-3-Clause
>>>>>> +/*
>>>>>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>>>>> + */
>>>>>> +
>>>>>> +#include "x1e80100.dtsi"
>>>>>> +#include "x1e80100-pmics.dtsi"
>>>>>> +#include <dt-bindings/gpio/gpio.h>
>>>>>> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>>>>> +
>>>>>> +/ {
>>>>>> +	compatible = "hamoa-iot-som", "qcom,x1e80100";
>>>>>
>>>>> Undocumented compatible (without "qcom," prefix). I think you can just
>>>>> drop this?
>>>>
>>>> This compatible string was also discussed previously and is the preferred
>>>> choice. I’ll add the missing 'qcom,' prefix.
>>>>
>>>
>>> Even compatible = "qcom,hamoa-iot-som", "qcom,x1e80100"; is not
>>> documented. And it doesn't make much sense to document it either, each
>>> of the boards using the SoM should have a more specific compatible and
>>> therefore needs to override this property. I think you can really just
>>> drop this line.
>>
>> Patch 1/4 documents this compatible. It’s another requirement that SoC/SoM
>> should follow, which Krzysztof pointed out in v2:
>> https://lore.kernel.org/all/aee74e0f-c957-437d-ab48-3977013c3116@kernel.org/
>>
> 
> I'm not saying you should drop the "qcom,hamoa-iot-som" compatible. My
> point is that only the compatible list you use in hamoa-iot-evk.dts is
> documented in PATCH 1/4:
> 
> compatible = "qcom,hamoa-iot-evk", "qcom,hamoa-iot-som", "qcom,x1e80100";
> 
> The compatible list you are using in hamoa-iot-som.dtsi is *not*
> documented:
> 
> compatible = "(qcom,)hamoa-iot-som", "qcom,x1e80100";
> 
> because the board-specific compatible string (e.g. "qcom,hamoa-iot-evk")
> is missing.
> 
> The compatible property you have in hamoa-iot-som.dtsi is redundant,
> because you override it with the valid one in hamoa-iot-evk.dts. And
> every other board using the SoM should do the same.
> 
> I would expect that you can just drop this line in hamoa-iot-som.dtsi.

Yes, the compatible property in this context will ultimately be 
overridden by the board file and does not have any direct functional impact.

However, DTS/DTSI files are intended to describe the hardware itself, 
and this compatible string helps characterize the SOM—even if it is 
later overridden. This is similar to the role of compatible strings in 
certain soc.dtsi files.

Therefore, I believe it is appropriate to retain this compatible and 
provide documentation to clarify its purpose.

A useful reference for this approach is the imx8mp-sr-som.dtsi file from 
another vendor.

> 
> Thanks,
> Stephan

-- 
Best Regards,
Yijie


