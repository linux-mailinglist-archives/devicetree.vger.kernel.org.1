Return-Path: <devicetree+bounces-164859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C7DA8291D
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 17:01:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A44141BC6C07
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 14:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70B912676CD;
	Wed,  9 Apr 2025 14:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PAwKdEvj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A2B26738C
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 14:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744210188; cv=none; b=k+kWEJzXTFzU3RCelc0wczlcLs8tHdvaJMiD0PMuYGpW390f2FYV07qGvg1GIVkxXRX/G4+asJk1irs+/vmwq8HYiOwmDSxLi6L6iSWLn6lgJZ2unWjedLwTqXS/bNyr3KpJ7LckGh9aGa5R2Q4Tl7sfQ/8in7/8F+GD2gqwL0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744210188; c=relaxed/simple;
	bh=85+UIcf1eKLU/wNzZgNVq10Yo7Ip9fEDwLj2BK/wH0Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FZzy0UPBbUygBzFab3iv0TN6hW+6blElu2cFUk/Zm7LO1Po6uZeCLeaOt5g2JGtu9Lt9HgHH5fooOGN/KQTCypIlnLw+i3yh3JkDkel7NMO0A2REQzJ05q9cBPsPe3z2WV/SEh1Mj9RtXG/VynxGa4LVSiwNsh3LseKiE1puYxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PAwKdEvj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5398QT26032504
	for <devicetree@vger.kernel.org>; Wed, 9 Apr 2025 14:49:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NAji33sbWftR/X6dZ2NUeyfjXLgktdVt707HtkxaLX0=; b=PAwKdEvjtewbtaba
	2V2qQjPJwGOamRfReF4UgYHmeMQPWAMYT6bC8e2TsfZzNn5hpIluqBIcCB2VD5gc
	oIcllz4ev5MxKTTUAPQFCQpXLI0okxFDYPb+0hqeu2guc4fWqE4WpMVWiqA6TDkm
	1Nu7jGCBtZabRfZRQHgLGTpe+6bNB7hC04kvxNiG7Z9fPjZTYfFWlXM+fBE5DMk5
	I2kHcg/lPeC1cHyJgoYwIdpDZgC0VDBBsw/tRTNrxw3Z0Zex0SaxodPfbAQHR5hd
	xUSYZLu71lvANyR44l+aMLnRsMs7iprErdrR2G9V117gWTJx0e8Eh89vuI4XbtaV
	qqfsaQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbebsdp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 14:49:45 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c53d5f85c9so162219085a.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 07:49:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744210184; x=1744814984;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NAji33sbWftR/X6dZ2NUeyfjXLgktdVt707HtkxaLX0=;
        b=ecvpmsMD1T8fk9TiN3JA5vo4cnVwg9Betf7vadxb0jeiSEy4TVIuO6/qOkzhABRr6w
         bh9QSlBXx885PM9llDDgrrrrhTbtBnhsqHJzPCqBx/3hOlW95NNzSleRnMBjHKOINNQa
         nHnfolh7ikwldIA4fIPJ36O1G99p1O8HUiaGqd44sykoN0nuG1ig4TWOSiib2dciftZ/
         UwvComRNkFTCEl+mL2cBz7hCoExFxv7wS1ef/ABAg7qHlKUC2Q7F4L7OgJLqIhHITi+k
         H1grTPbDY2RjDGzQyJ+vZZ5m55tYEjGOa7NYVORUlI1TiHHjBK9duEQQCT+3/czO/4j0
         LLqQ==
X-Forwarded-Encrypted: i=1; AJvYcCU01VoRr9Q8UbcpL2dMqAjJAXQH9G0WH33hdXcNdLJLzfYcnRkv8t8SoSf3koInXpIqjiXX95DkHVTk@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa+yrmQ0OQpdl38qcDoxcWGUOulQb/6mA8mXBwmMhdD4Xf1OfJ
	jHn9/c2KFqH4ayFZ8ZafoYRdBDmRrBgIdRnAQsfhXgZs3V5ujEkKRsc0h+3k5EMp68RT1qrIrNa
	tRFxIuePy3AV88qfd6tctFY5CwceZw/ZavltO6FuQojVQMl2QSQe9c+/me/kL
X-Gm-Gg: ASbGncs4yocDt5p8ei/lQd5LlFRGoS5w+JqxAd/Fgs3HQuKuwenzqFfIhI0x05oSARV
	gznkOKrU3aBVMjvsg3OzqracW/qCBSFw2/VINDv0yoUH5cg8XFlyyMKOVdnChqOLV4uXLoAY05q
	h7sjip+1EnMBg5dZ3tcChD+H9556u1WDzHkh+GBYIcjRgit4at8rfIVq3oSuooXfG+NemV/s3vl
	hBsDuSVpexAWFifj4kBv/KTA5o/KD5PO9vZOGBzhWG6ZvBOSTDOMY26oqAv8wa41eD6jRNCmoiH
	4Q5UBThdvG9IushEIDCUBHmkxzhwcAY062uPTX5Uvxuilk1rsBBpryiFXOLBk380lw==
X-Received: by 2002:a05:620a:1792:b0:7c3:c9d4:95e3 with SMTP id af79cd13be357-7c79cc382dcmr170870585a.10.1744210184433;
        Wed, 09 Apr 2025 07:49:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMm5nWNQB+SUuTMx8XfwA9o0yrLRkaTZP7ACAR3JyVEdTKjbhOMoZD8lRtbWW3IF+TISiTyg==
X-Received: by 2002:a05:620a:1792:b0:7c3:c9d4:95e3 with SMTP id af79cd13be357-7c79cc382dcmr170869385a.10.1744210183947;
        Wed, 09 Apr 2025 07:49:43 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccd205sm108975966b.141.2025.04.09.07.49.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 07:49:43 -0700 (PDT)
Message-ID: <83713b15-d74d-4620-b9a0-9c57f216c6bc@oss.qualcomm.com>
Date: Wed, 9 Apr 2025 16:49:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 01/10] dt-bindings: PCI: Add binding for Toshiba TC956x
 PCIe switch
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com,
        amitk@kernel.org, dmitry.baryshkov@linaro.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        jorge.ramirez@oss.qualcomm.com
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250225-qps615_v4_1-v4-1-e08633a7bdf8@oss.qualcomm.com>
 <20250226-eager-urchin-of-performance-b71ae4@krzk-bin>
 <8e301a7b-c475-4642-bf91-7a5176a00d1f@oss.qualcomm.com>
 <385c7c77-0cb7-f899-4934-dfa58328235a@oss.qualcomm.com>
 <a79eaaa9-0fe9-45d9-b55f-ba2c327eaaaf@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a79eaaa9-0fe9-45d9-b55f-ba2c327eaaaf@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: OAdxRoiFpH0SBKzqGb65UKI9Dnd0Laer
X-Authority-Analysis: v=2.4 cv=T7OMT+KQ c=1 sm=1 tr=0 ts=67f68909 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=3h54kFN3o8ui-8ShBWYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: OAdxRoiFpH0SBKzqGb65UKI9Dnd0Laer
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_05,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090093

On 4/9/25 3:22 PM, Konrad Dybcio wrote:
> On 4/1/25 7:52 AM, Krishna Chaitanya Chundru wrote:
>>
>>
>> On 3/25/2025 7:26 PM, Konrad Dybcio wrote:
>>> On 2/26/25 8:30 AM, Krzysztof Kozlowski wrote:
>>>> On Tue, Feb 25, 2025 at 03:03:58PM +0530, Krishna Chaitanya Chundru wrote:
>>>>> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>>>>>
>>>>> Add a device tree binding for the Toshiba TC956x PCIe switch, which
>>>>> provides an Ethernet MAC integrated to the 3rd downstream port and two
>>>>> downstream PCIe ports.
>>>>>
>>>>> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>>>>> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
>>>>
>>>> Drop, file was named entirely different. I see other changes, altough
>>>> comparing with b4 is impossible.
>>>>
>>>> Why b4 does not work for this patch?
>>>>
>>>>    b4 diff '20250225-qps615_v4_1-v4-1-e08633a7bdf8@oss.qualcomm.com'
>>>>    Checking for older revisions
>>>>    Grabbing search results from lore.kernel.org
>>>>    Nothing matching that query.
>>>>
>>>> Looks like you use b4 but decide to not use b4 changesets/versions. Why
>>>> making it difficult for reviewers and for yourself?
>>>>
>>>>
>>>>> ---
>>>>>   .../devicetree/bindings/pci/toshiba,tc956x.yaml    | 178 +++++++++++++++++++++
>>>>>   1 file changed, 178 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/pci/toshiba,tc956x.yaml b/Documentation/devicetree/bindings/pci/toshiba,tc956x.yaml
>>>>> new file mode 100644
>>>>> index 000000000000..ffed23004f0d
>>>>> --- /dev/null
>>>>> +++ b/Documentation/devicetree/bindings/pci/toshiba,tc956x.yaml
>>>>
>>>> What is "x" here? Wildcard?
>>>
>>> Yes, an overly broad one. Let's use the actual name going forward.
>>>
>> ok I will update the next series the name from tc956x to tc9563 as
>> suggested.
> 
> As per internal discussions, 956*4* would be the correct name for this one

I misread. It's supposed to be 3. Sorry for the confusion.

Konrad

