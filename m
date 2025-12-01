Return-Path: <devicetree+bounces-243340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id EF83FC9715A
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 12:40:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7664434592C
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 11:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F81F26FA52;
	Mon,  1 Dec 2025 11:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K548kYGc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ECj2RayR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E19926CE06
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 11:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764588953; cv=none; b=p4xtGGEXvmtJ0yKHlJ8k1X9CNC1W0weslqa2UfW3pirFsyyDnm0t8tYUmfwUO1FoVw/Qyj0XEY6gL7+I452vnutdCNB2AXJYj+3Fl2zJBLwB6C3+KqkLOLJjYlHQxJNaI8+DUQMhWmd48si5rlKFLADDPJJgKT3aY7i5YqZwHCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764588953; c=relaxed/simple;
	bh=bi1e3XR7pfCOOYVxdQSZ0zKYYdXXaCUk2xE3m1Eq04s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aKVxaYBp0q1elcc+5ZywC1I2UTbKOzTd9hGsg9nFJZ7zAO0vA2MPIdaBDtm4XrC3Xii4OvXa2AYL4mWKbVKc99gWlObLFtJiFK0PMlK7KvNTCukMkahv1P7mGcICxGCQXc93+5YNe++9Q21TZ0fN99MSxCej9dGvd/Nhp7/ZVnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K548kYGc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ECj2RayR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B19rckA212781
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 11:35:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lCWVNvn+OqeHLRLNj//Ta+HiE6qf46ogB4coZkDMqd0=; b=K548kYGc9YUcNeYk
	8Ct9OIa8h6FE4P0OtDUrpW+iMUuZTCX9ttQcZxDuWCOP8KoZ7lwQN/5AkPuN++Lt
	RN/9dIac29sQX0eAqCkEmyK7qyPXRwOx9uGfM+qMJeBHkchngnw3DHYZ3j+3oDCc
	+im74SPrzRLZHlaP6GqHuk4C08u8X0JtVXhFKHrlycSN7J6lQfoJ1jLR0RBCpmxX
	3ML3M3DvdksJEiu6Ku3in+uMsebXvSDqdgXu0uXgRQcxE1oKxnil2QiTTqknCfQR
	xKXFmMuRENWSHsA7Ct85NsljrnigSpY4GBO+PrDWuFRKgKtYwXDiSbjVlmsjTlpt
	dInO/g==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as8sj08qy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 11:35:50 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-343e262230eso4420315a91.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 03:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764588950; x=1765193750; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lCWVNvn+OqeHLRLNj//Ta+HiE6qf46ogB4coZkDMqd0=;
        b=ECj2RayRFz5+w6XESlBElIEPh+f7ohRoC8vpDmWvSw1bd5Ide2TgOA12XKy/gDZra8
         tRqcnuqP+X01u8+ebdDLJcb+lF52g1QeN1wIKUiarXTe8O5CV4RPB59iWr9VTnaedPSG
         SUmBDgaehP0BZ8GTYteqascaMd/LG1WcdPq3u3Ogc2Pvduulb+w9xbxqpk12vBMUAAA9
         7HU2vBiebKpOBRhsl14L/HKJUrzZw+V5D9VTfaBz9zIvnOeJfcRwtJIYhQbrOZ//kjIE
         7PwFw9lTdWzbBNpD/hKv3d0taqu2ylZqsJflpvellAni1GlGyOBzajmzmnMYEanJJfRm
         fegg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764588950; x=1765193750;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lCWVNvn+OqeHLRLNj//Ta+HiE6qf46ogB4coZkDMqd0=;
        b=QAFCvO0l2qPUk0+JCjj2ffd5duIB8Euc+0lpVdn7lRxRuk7veb6J9Pxo9TkFQAXBhL
         5LQV8AsJf2OHGP5nNkG7uJyji9QY9q1i5qvFbf7tZO2ng5peT5DFM5LXyMjJf4VVIkaC
         NG+NYab4HVHfXHJkQYe0swrTyTQlzmt8smYVrszm5RU71twO9n3ilHsVhM5Z/spHtQNk
         ucF2zWQub43cl5jgFhXPkIGgYs0n7eK9hQZXzI/6meuB3h0+gEG0pX3tZ5fCapJV4kVN
         AhERw3ahNJDYmKLYjlSCiUBXuc41ZUGTEmX4qEDF6aQxc/I0cTrzNctIZCrdMgP94uK2
         ayQw==
X-Forwarded-Encrypted: i=1; AJvYcCXLA7kcD9zrQszEWClDq0LHHCiFVfVCmbd8WssR8yTfSoXi0VKEQAAtrWFLnrycdD+hn5jMubQfP7ZK@vger.kernel.org
X-Gm-Message-State: AOJu0YzLf6kKXopF6kVVKoDMcT8tEjnA7FbRv07MoBenTEjiLrzKL+No
	qN0JQdFOdQf0tgFMxPQfRGFe/c4U9ZRXKw3/m1Hzyt1W4Exlav2TKZ8gBlEbvHG/rq0vWGO2iTv
	7HNgpQGzCN4qI5AHbK4uKSiMCZBLRnGlCpDZo4cLVzEx63Tk5qX4wCq+z3we9z0nf
X-Gm-Gg: ASbGncsTdtqLsgjA6I6lHyxA24CZKYxvAEX9907kNpGKKOKOeCdG/IYqir0X76x7ex2
	7vs2ySGRfZnPM+lHR70cfXiDV2lmv7pj3IzBvgmxICVTQpvttnLU8OK/9WCU6lzSxvmvDenRSSE
	yhxWpjUw6qN2A5Yo4aVmQyMaJpy/NUN9qTc9GYFH1pX0vssAlxE8l5lHjSaXyJNahhr+RCudIGV
	wrqDL6oh3vucEGXtfsVXev8+jB8esKHbo5YxHnleEZloKJY5n0RA0cQcF7Lstkpy0+TavHYitPj
	7XBuxySWtuPEtlkEILhWKvCqmUW6wK9yUX8tkRupu0eP5vNlGcXSvNt0C8GmEfhohF4ABF6V/LB
	uRHRlBNqLaQfDJVL3EIrqCWmw7w8ujLVmLa2oGA==
X-Received: by 2002:a17:90b:3a4e:b0:341:2150:4856 with SMTP id 98e67ed59e1d1-3475ed50953mr27032074a91.17.1764588949822;
        Mon, 01 Dec 2025 03:35:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE7FC+u+ZKqgI05yrxKREm/4X7WqyMNU6LzamBjg/C4D5mxmTtjxWlSovTOcCMbON9ZrQPULg==
X-Received: by 2002:a17:90b:3a4e:b0:341:2150:4856 with SMTP id 98e67ed59e1d1-3475ed50953mr27032051a91.17.1764588949202;
        Mon, 01 Dec 2025 03:35:49 -0800 (PST)
Received: from [10.218.43.241] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3476a546ed0sm16660353a91.3.2025.12.01.03.35.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 03:35:48 -0800 (PST)
Message-ID: <f96ed414-f69b-4eb6-91d5-c1db7d2a87be@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 17:05:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: usb: qcom,snps-dwc3: Add support for
 firmware-managed resources
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: jack.pham@oss.qualcomm.com, faisal.hassan@oss.qualcomm.com,
        krishna.kurapati@oss.qualcomm.com, andersson@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20251127-controller_scmi_upstream-v1-0-38bcca513c28@oss.qualcomm.com>
 <20251127-controller_scmi_upstream-v1-1-38bcca513c28@oss.qualcomm.com>
 <e9363a14-183e-4d12-91b0-1ac5655e6e90@kernel.org>
Content-Language: en-US
From: Sriram Dash <sriram.dash@oss.qualcomm.com>
In-Reply-To: <e9363a14-183e-4d12-91b0-1ac5655e6e90@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: mpTh2uhyXPQyEb0guAjOrndg98MJmDyt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDA5NCBTYWx0ZWRfX/7OC5109Gzxq
 QXht4Q1PD2L08D3gbLo24PKA3ppaxKTKjB1W1SJs/11xnYxLzuITL4em/xPwabGkBGw5+01GLmx
 2vh7skWIvZG2RWwmrdMg4WPqdsREOn8v/jPo/cLMmUGh3r6ffMsFCvc2KlvLPp4Lbnl7vlMcLI6
 dbiU6MVfRCyR0DggzpRyaZt0qtNd2RLLY2S8jWIA0MdhqWeGB1j2taQ3lILugphqIOm8GievZME
 p1PrCcaKna/7zGHAbMJQByTmksPxmsgw/dO9tSzx90BWAfNAVdooCIHoSzYPdpsTWUItr/Yw1kT
 GQ2/aLPZrQeWHQwiUt5z++/ILCMEaKStgCNoUcb2G5H3Pfp9UHxDI0WwWXp/yT3ysFM0yneWYlH
 d4nkjGLDyag5urYHgNHmUQNMmMRGKQ==
X-Authority-Analysis: v=2.4 cv=Lr+fC3dc c=1 sm=1 tr=0 ts=692d7d97 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6_TIFzAPhmGdkGW-2bEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: mpTh2uhyXPQyEb0guAjOrndg98MJmDyt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 spamscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010094

On 11/27/2025 5:43 PM, Krzysztof Kozlowski wrote:
> On 27/11/2025 11:31, Sriram Dash wrote:
>> On Qualcomm automotive SoC sa8255p, platform resources like clocks,
>> interconnect, resets, regulators and GDSC are configured remotely by
>> firmware.
>>
>> PM OPP is used to abstract these resources in firmware and SCMI perf
>> protocol is used to request resource operations by using runtime PM
>> framework APIs such as pm_runtime_get/put_sync to signal firmware
>> for managing resources accordingly for respective perf levels.
>>
>> "qcom,snps-dwc3-fw-managed" compatible helps determine if
>> the device's resources are managed by firmware.
>> Additionally, it makes the power-domains property mandatory
>> and excludes the clocks property for the controller.
>>
>> Signed-off-by: Sriram Dash <sriram.dash@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/usb/qcom,snps-dwc3.yaml    | 173 +++++++++++++--------
>>  1 file changed, 111 insertions(+), 62 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
>> index 8cee7c5582f2..d2d1b42fbb07 100644
>> --- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
>> +++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
>> @@ -12,68 +12,65 @@ maintainers:
>>  description:
>>    Describes the Qualcomm USB block, based on Synopsys DWC3.
>>  
>> -select:
>> -  properties:
>> -    compatible:
>> -      contains:
>> -        const: qcom,snps-dwc3
>> -  required:
>> -    - compatible
> I wonder why do you think dropping some code is fine...
>
>
>> +      - items:
>> +          - enum:
>> +              - qcom,sa8255p-dwc3
>> +          - const: qcom,snps-dwc3-fw-managed
> No, you cannot keep coming with more generic compatibles.
>
> If you want generic a compatible, you already have - qcom,snps-dwc3 -
> and that "generic" part already said that everything is compatible with it.
>
> Now you claim that existing generic compatible qcom,snps-dwc3 is not
> generic enough and you need one more generic compatible.
>
> Next year you will say that two generic compatibles are not generic
> enough and you need third generic compatible.
>
> In two years we will learn that three generic compatibles are not enough...
>
> I think I was complaining on the lists a lot on this, so I am surprised
> it is still coming back.
>
> So no, you cannot claim that you need more generic compatibles because
> one generic is not generic. NAK.


Hi Krzysztof,

understood. Shall i make it platform specific then ? For example,

Say, For x1e80100, where platform resources are not managed by firmware,
use compatible = "qcom,x1e80100-dwc3", "qcom,snps-dwc3";

For Soc 8255p, where platform resources are managed by firmware, still
will use the generic compatible say,  compatible = "qcom,sa8255p-dwc3",
"qcom,snps-dwc3";


and in the driver, we will handle with the platform specific compatible.

static const struct of_device_id dwc3_qcom_of_match[] = {
        {
                .compatible     = "qcom,sa8255p-dwc3",
                .data           = (void *)true,
        },
        { .compatible = "qcom,snps-dwc3" },
        { }
};


For any other Soc where the resources are managed by firmware, we can
still reuse the compatible qcom,sa8255p-dwc3

say compatible = "qcom-foo-dwc3", "qcom,sa8255p-dwc3", "qcom,snps-dwc3";

compatible = "qcom-bar-dwc3", "qcom,sa8255p-dwc3", "qcom,snps-dwc3";

...


>
> Best regards,
> Krzysztof

