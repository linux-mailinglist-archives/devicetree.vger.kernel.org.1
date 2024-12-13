Return-Path: <devicetree+bounces-130649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6BD9F0935
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:13:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4CD2188C878
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 642CA1B6CFD;
	Fri, 13 Dec 2024 10:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B+Ajp6lA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9D51B414B
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734084831; cv=none; b=SUI7F1EhRrCe/cLEZugoh2t39Jn+tErPHxPcfMbqpxeVpa4ATFmX6xfHebKrDXEahp3GXMFBCA1oI8ApuQ1PLHpnrFjuSqQviDJYRcVBRSaWX9UAp7+VGVFqhsf2HjyabuTWypZyM2OAtwWRUxLjQRFTvNKV8zwNqMpjvi1CJ9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734084831; c=relaxed/simple;
	bh=jV0gUiWcMRsqOoOIjT1olcLqeVtC9DuU+58/yi8Z9qg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z9a9Xq6MsCg+52uwc0hHL3o7QaQa9LZXPN8HC8LQwzFeX+iiUdmxE+Jm2jkCOuVE4xUCGWr8n9WSwBQoZ/u+isZePt7P80dgUvKJIDg4+ha3FFvFJ5R8NzW5KQuLS3y90E4ltsP0QBbt+3w/HcqzGFYJCGQG9uPgbWxrMYoLv6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B+Ajp6lA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD45wD5017909
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:13:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3nUm8oLabsV1qJq3TKFmlTydmFh/ikxL/g0ApgTD594=; b=B+Ajp6lAxCMjxbbG
	U6dnQcdqF/0wMvfDVE3GICHQCaWqGVbm890xstYz4dknGd3d5T5W0gf//CX1o6aU
	ko7C8/x4O2MKFBirxaltctj02Mw4RHfJGsdugL8NL6M4/KSite1CI/czvdd3Sve5
	AUQMSbB97z4lX2GNmzkf6RenR5VppFtr2nCdNQgBiZJnpCtpo5esZ+5d9IyMxCdZ
	GFVeZCTftE/0UwySVLPM/2bm69U+5LG3iN/pVw/VuXzaiSoIjT1SHTwr0ugW1ilc
	qHh9QpIveHqYPW1cjMy1OvJfTlZjdtqAbOrQ61ae7uo1tAXJNBdAZf8M0T4t8Ss2
	qPaZag==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gdkn0w1n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:13:47 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8f77bf546so4118566d6.0
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 02:13:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734084826; x=1734689626;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3nUm8oLabsV1qJq3TKFmlTydmFh/ikxL/g0ApgTD594=;
        b=IyIGgiMEbnLkwQid1Sh/2YIr3k5qVMaeXjoCYlWrSQ9DxOio+CuWcf2A+FgD4qI3oV
         5O9GAh+l/tlLsTOoPM86cUxc2zarRp7tG470163JMQ/eCjFfZVDGxgJItUHzmkIX3ivi
         jdnr+o+SkF9u5Rcl7EXg/M3/suzBsBn2GX18vYKs3u3ZTOml1HmGNeJqtIofxB7PjYO5
         YfTSOPpZaWXazNzZ8wCjCWNXE9DOVaO2rRALui/6HBpWpT1kXK/pAdnoif8vECaQfuiH
         YAm9WPweJEOxRxMa9iKsSpK3M9ve0noCQ/IfL6aRITx7Qtp9irbkpblrZuDC8CtG2Mce
         JWTg==
X-Forwarded-Encrypted: i=1; AJvYcCXaYw21RPQa1VYhe48YSnq6HfcAc4/IY4voIPXjb/JhGmt6yX10bHiiFnkxf8QIRQeo68Acrxoprb/z@vger.kernel.org
X-Gm-Message-State: AOJu0YzQF4HLmjGmjnJ6EIudccN8ZaTN6aip0JLRggrcUpVrDPglXioT
	xI5cmfNGIRB5U6+PYoaYQlkNuwWp6+ZpWgPrX025PL0Lco5BPJK4Zw2JA0CYBzVvqN+N6a4l37v
	a/ELSjdvlTMxMkwbSCUSV4l/DREMMfaZdjfAP+KF+2A2uLoMBrulVwOVVVZIV
X-Gm-Gg: ASbGnctfA9rZz+T0jW0wO3TFtd9YvtEcITBpZwljkCfAxV/WbGQY9sIlH9NnnDFoXu0
	GgdKs8OAcCikbSKQi8tRpqHa1Wlb84lpXe3r8DCvTO19o4HjCHQvYqioLBQa/G1/k3acBqJYRQu
	2ICQhYidCpfX6csx5ry8AsQPwYI+zQ91dafW6Kkzl+zcXdNX6jhGXaSD/TDYRofGZ41MD2Ub302
	KWH53x/zxckJJc/9stxbPABZ95+wsF3nMhstFRWrtSmHnuBKrpqNKC7Qti88YEN6XN3BjrFWC/i
	Sd7jQhlpRVLUWf1MVmtZzqsYJiXQRjWaerHD
X-Received: by 2002:ac8:5dc7:0:b0:467:885e:2c6e with SMTP id d75a77b69052e-467a573441bmr13879201cf.1.1734084826613;
        Fri, 13 Dec 2024 02:13:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHxaOjgUy1JAarpLCgxQumw40uPOCXOrWpCd82fp9aJ58XJJIwUpHLC31vejPCEBWaDxiXvnQ==
X-Received: by 2002:ac8:5dc7:0:b0:467:885e:2c6e with SMTP id d75a77b69052e-467a573441bmr13878971cf.1.1734084826219;
        Fri, 13 Dec 2024 02:13:46 -0800 (PST)
Received: from [192.168.58.219] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa68c4e3749sm662769566b.154.2024.12.13.02.13.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 02:13:45 -0800 (PST)
Message-ID: <93c75fdd-c09e-4fe3-b79f-fea8cd08ec0b@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 11:13:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: Add coresight nodes for QCS8300
To: Jie Gan <quic_jiegan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        "Aiqun Yu (Maria)" <quic_aiquny@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241205084418.671631-1-quic_jiegan@quicinc.com>
 <16efb6a8-ecaf-4097-ac5f-368ebab177a8@quicinc.com>
 <25a410a7-2418-45bd-be06-3672a9fb1928@quicinc.com>
 <04d23c55-9167-4e8a-9e5b-6dcf66b02b8f@oss.qualcomm.com>
 <409678b0-339e-4d93-86f1-117d358a2d33@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <409678b0-339e-4d93-86f1-117d358a2d33@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: cYVP8EWFV2La7s_AFsAG49ONtLriX68S
X-Proofpoint-ORIG-GUID: cYVP8EWFV2La7s_AFsAG49ONtLriX68S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=999
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 bulkscore=0 suspectscore=0 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130069

On 13.12.2024 2:42 AM, Jie Gan wrote:
> 
> 
> On 12/13/2024 8:35 AM, Konrad Dybcio wrote:
>> On 9.12.2024 3:01 AM, Jie Gan wrote:
>>>
>>>
>>> On 12/8/2024 12:28 AM, Aiqun Yu (Maria) wrote:
>>>>
>>>>
>>>> On 12/5/2024 4:44 PM, Jie Gan wrote:
>>>>> Add following coresight components for QCS8300 platform.
>>>>> It includes CTI, dummy sink, dynamic Funnel, Replicator, STM,
>>>>> TPDM, TPDA and TMC ETF.
>>>>>
>>>>> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
>>>>> ---
>>>>> Changes in V2:
>>>>> 1. Rebased on tag next-20241204.
>>>>> 2. Padding the register address to 8 bits.
>>>>> Link to V1 - https://lore.kernel.org/linux-arm-msm/20240929-add_coresight_devices_for_qcs8300-v1-1-4f14e8cb8955@quicinc.com/
>>>>> ---
>>>>>    arch/arm64/boot/dts/qcom/qcs8300.dtsi | 2150 +++++++++++++++++++++++++
>>>>>    1 file changed, 2150 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>>>> index 73abf2ef9c9f..eaec674950d8 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>>>> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>>>> @@ -293,6 +293,18 @@ system_sleep: domain-sleep {
>>>>>            };
>>>>>        };
>>>>>    +    dummy_eud: dummy-sink {
>>>>> +        compatible = "arm,coresight-dummy-sink";
>>>>> +
>>>>> +        in-ports {
>>>>> +            port {
>>>>> +                eud_in: endpoint {
>>>>> +                    remote-endpoint = <&swao_rep_out1>;
>>>>> +                };
>>>>> +            };
>>>>> +        };
>>>>> +    };
>>>>> +
>>>
>>> [...]
>>>
>>>>> +
>>>>> +        tpdm@482c000 {
>>>>> +            compatible = "qcom,coresight-tpdm", "arm,primecell";
>>>>> +            reg = <0x0 0x0482c000 0x0 0x1000>;
>>>>> +
>>>>> +            clocks = <&aoss_qmp>;
>>>>> +            clock-names = "apb_pclk";
>>>>> +
>>>>> +            qcom,dsb-element-bits = <32>;
>>>>> +            qcom,dsb-msrs-num = <32>;
>>>>> +            status = "disabled";
>>>>
>>>> Could you please provide more detailed information on why some TPDM
>>>> nodes are disabled by default while others are not?
>>> Some of TPDM nodes are disabled by default because the one of the following reasons:
>>> 1. TPDM device are designed to generate HW events, it needs a clock source to read&write its registers. Coresight driver cannot control the clock source ouside AP core, so those TPDM devices without enabled clock source will crash device in probe.
>>> 2. Some of TPDM devices can't bootup with fused devices.
>>> 3. Some of TPDM devices have known hardware issues that not resolved.
>>>
>>> I put those disabled TPDM devices in DT in case some of them may be "fixed" in future.
>>
>> Please mark them as
>>
>> /* Hardware issues */
>> status = "fail";
>>
> 
> Maybe I should remove these devices, to avoid confusion. Is that ok?

That works as well

Konrad


