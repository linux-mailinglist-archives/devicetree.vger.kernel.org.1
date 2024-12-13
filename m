Return-Path: <devicetree+bounces-130487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C849F0128
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 01:38:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6EE90286691
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 00:38:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED65917D2;
	Fri, 13 Dec 2024 00:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ajKfVmdk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516AC10F7
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 00:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734050116; cv=none; b=YPz1WU7zlpUYqBMZ8n3jdfDMuUsID9iEp+EinNrYMz23t+jbnV0shQsCYsG0ZmuRurvxzvC9YstzXDU/HrbZJMkhJ7IpoUV4+4fOLrcSwezEC1ofCNOLdvypTWiOn0ky46ZbeRKcklLvjaxnOLkkdH/hVUPbfVja/K+THD2nYdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734050116; c=relaxed/simple;
	bh=C1OmHTKMqj6ZyG3Qgh1f216yP5FMglwHPg8jL/N65MI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m/g6xGVLzKvrNmeDIPI3g2g4Ex1AP0JVtdwGZPDIKsgnAFzLmpR8HVUIO0JQcyoU6tjQXN0bAdUpv4lGzZhT5Uqpf29GQO4uk4CdaDT/meCJgpB1sX89x95ZRrVUlhgy4ne+gmHVffxBFU5ZYW0ep71pcRr2ZBgZifDJFKN4qLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ajKfVmdk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCD8V51001661
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 00:35:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k4/hjPmcafZUlY4Ld9J6krmjotFTLTKt0ZqTJYFEDnU=; b=ajKfVmdkeLq3ub1r
	v7ZQam+QRotUWzVt8CZuByHdERmyd4Fkw8vGJ6XdQAme7ctLCHsS4yoK9YgnH4WI
	WSEW75Jbtsegv/ZMnjnKwwHUt+1th8kTmCzwoWqos2MqnNsAR4O1aYFnx6grPtQ+
	mJSGg5+RIt/rN7eiyp+hlAuTkJfJZXZHTBDGfePebyzYT3nyakv5Xpy6GaNsgwdO
	led1iDuMviBAQvGQSYSxYd8/DOsEA+tZg8yuqthDw9ND/8M0A3N53ozCDlQoSLtf
	Nu8Djo+mKylzFNYrPoXW3TCJt6Q5qGuNzZXLrwaFo8bhahKE0K0dHWsJCmBwRUnA
	ZeN1JA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fqes33j0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 00:35:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4678aa83043so3069681cf.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:35:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734050113; x=1734654913;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k4/hjPmcafZUlY4Ld9J6krmjotFTLTKt0ZqTJYFEDnU=;
        b=R1Jij4Am36UuZRW6poU9YOI6JcVjaUjMOZ0Kdu7YHaObo8UCv1iqffdXpc1hdpXp96
         4ziT+pPnZW1auKHcq72OCcFyFnftXKiEyb2uVIJ40VEhgR8EpYNe+Q69OJBbJPTUHWmv
         5UkcrHiA99kFuDdO3Sf1rlupqr+spVxH1HWO6g7Y0w+BXNgLecksIuuDEeX1J41BXX9e
         5A3ChLen0wD/j5XnXnZYokBBvP6moOcx6y820rogzEtP5+sgApVi5PN4JQs98sY+NJZ4
         g3Et5O+NZyQbzmO4oJ3LURc8y5VMX2pwmNhlmHGJ1+rMPlhhF2M7drQT8SvdAvzLuRZS
         +5Dw==
X-Forwarded-Encrypted: i=1; AJvYcCX4uS8x9sAnzWc5q/4MSNQGDvqk/Y8X5MiTHHKVsxK2j/E+3Igll7YjlxhglloR4eh7Mkhi2EJoRlji@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4QLf6oqk8YcWAvaHiPN+RYkhEIS5ydsJbz1wL00w8CcSQlCKj
	0O3kXjHzoMvCDejDbzPRPWhOPPdHwEES9/jLu40AtPF0bhhwu0cwZavcE+Jahu9+t5rzd5+oqCL
	NWkqRMpnopd2mJzfZoTbsZGS/HF+SzbWN36TROuqv/ufA7ARNOOUfMVP49lFW
X-Gm-Gg: ASbGncvFNoKxQe3S814zGsXv1CweOpKRbH0SKALCKHvE+TUw5WFh8diXEviACfvsZFR
	Bzol+THAF/Gl2utOAnfx8i9KI0DzRnz+e3UxbKN4et6fgeKmB8vtElFHaxfaa51XVQ9cguvTxvR
	jFktebCnNShwurIti+SwThEFY83VRnKnUvE/S5el+H0qrHGaiW9P4Kgezw3p676gr5dPR7LsHQw
	he3LAZBtHrmoERcgF0lnSNPMsW7NHw6pqG7paIw14LNOvSX8d/IQRYXJcx20+tbfPaKdNJFCMCz
	sR9ZiDV0IREeX5aTgWnkV8WqPmV9LokDJuXZ
X-Received: by 2002:a05:622a:1306:b0:467:5eaf:7d23 with SMTP id d75a77b69052e-467a5720eebmr4326271cf.2.1734050113165;
        Thu, 12 Dec 2024 16:35:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCRcA24YH+lngVm2gGOGtnM1SuWe0DhJ4BCmyW8qiqcvMK8GKw87YjeMZ0iDDOKqF/YGtJ3A==
X-Received: by 2002:a05:622a:1306:b0:467:5eaf:7d23 with SMTP id d75a77b69052e-467a5720eebmr4326141cf.2.1734050112821;
        Thu, 12 Dec 2024 16:35:12 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3db53b828sm8362477a12.74.2024.12.12.16.35.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 16:35:11 -0800 (PST)
Message-ID: <04d23c55-9167-4e8a-9e5b-6dcf66b02b8f@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 01:35:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: Add coresight nodes for QCS8300
To: Jie Gan <quic_jiegan@quicinc.com>,
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <25a410a7-2418-45bd-be06-3672a9fb1928@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: FfLkbXWmw6QWFTE0nN6nAFHprlbqb7se
X-Proofpoint-ORIG-GUID: FfLkbXWmw6QWFTE0nN6nAFHprlbqb7se
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130003

On 9.12.2024 3:01 AM, Jie Gan wrote:
> 
> 
> On 12/8/2024 12:28 AM, Aiqun Yu (Maria) wrote:
>>
>>
>> On 12/5/2024 4:44 PM, Jie Gan wrote:
>>> Add following coresight components for QCS8300 platform.
>>> It includes CTI, dummy sink, dynamic Funnel, Replicator, STM,
>>> TPDM, TPDA and TMC ETF.
>>>
>>> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
>>> ---
>>> Changes in V2:
>>> 1. Rebased on tag next-20241204.
>>> 2. Padding the register address to 8 bits.
>>> Link to V1 - https://lore.kernel.org/linux-arm-msm/20240929-add_coresight_devices_for_qcs8300-v1-1-4f14e8cb8955@quicinc.com/
>>> ---
>>>   arch/arm64/boot/dts/qcom/qcs8300.dtsi | 2150 +++++++++++++++++++++++++
>>>   1 file changed, 2150 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>> index 73abf2ef9c9f..eaec674950d8 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>> @@ -293,6 +293,18 @@ system_sleep: domain-sleep {
>>>           };
>>>       };
>>>   +    dummy_eud: dummy-sink {
>>> +        compatible = "arm,coresight-dummy-sink";
>>> +
>>> +        in-ports {
>>> +            port {
>>> +                eud_in: endpoint {
>>> +                    remote-endpoint = <&swao_rep_out1>;
>>> +                };
>>> +            };
>>> +        };
>>> +    };
>>> +
> 
> [...]
> 
>>> +
>>> +        tpdm@482c000 {
>>> +            compatible = "qcom,coresight-tpdm", "arm,primecell";
>>> +            reg = <0x0 0x0482c000 0x0 0x1000>;
>>> +
>>> +            clocks = <&aoss_qmp>;
>>> +            clock-names = "apb_pclk";
>>> +
>>> +            qcom,dsb-element-bits = <32>;
>>> +            qcom,dsb-msrs-num = <32>;
>>> +            status = "disabled";
>>
>> Could you please provide more detailed information on why some TPDM
>> nodes are disabled by default while others are not?
> Some of TPDM nodes are disabled by default because the one of the following reasons:
> 1. TPDM device are designed to generate HW events, it needs a clock source to read&write its registers. Coresight driver cannot control the clock source ouside AP core, so those TPDM devices without enabled clock source will crash device in probe.
> 2. Some of TPDM devices can't bootup with fused devices.
> 3. Some of TPDM devices have known hardware issues that not resolved.
> 
> I put those disabled TPDM devices in DT in case some of them may be "fixed" in future.

Please mark them as

/* Hardware issues */
status = "fail";

Konrad

