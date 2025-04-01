Return-Path: <devicetree+bounces-162163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D11A77427
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 07:52:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD6C51881DC4
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 05:52:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94C6F1DB54C;
	Tue,  1 Apr 2025 05:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oJojUlJs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEAF82AF14
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 05:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743486765; cv=none; b=UqxM80MSoruOCiMqqjqvahCgU70QUrrjOfUOsG3fKmqoSuROWXQ4gbf/lnRUE0ccoChJ7oiXquAg0/5OwIPZ8wFYnHdHHNLgnN8K1krafBA6pEZtFeOy4Ae8noOQupyzairdnda1EKvYxF9pdz1z6c8IMiKOy4sU3Cr1++1pUoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743486765; c=relaxed/simple;
	bh=+QaopGBM55gMhKn4+IMNFBkQ/Argtnoh9M5CPx4hhqY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VoCVlJ1LT7wkR7w8Mx4/yZz2o5hRetbe6Lmg2R3AaJ/qY1S23iyhFzCKKyDn32h4n8QuTbj/OvbrD92THSnnjhWKNRNriQ8ta2f2BMRWK11ab3rB8cOsHUsmaAvvDi6bhn5UXvl5gaXKCTta6W19LgreWNb1eysVsuplPCkVpIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oJojUlJs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5315exkI007728
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 05:52:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NQaLt8PMSngOHyoSTcihfDEfDE5P9beADhv0mJn/7m4=; b=oJojUlJsG5dXaPbh
	JNKWi/UvnCykcyIYfIVf5g6f/TvMnL4B44tpQXzGyTxODa5wYek9yDw5ObjIM9gl
	KwABGQUUTkGMfnRycKRFj+HuZMy+0vinAyab03A2IuJLgCcKqZHqhBXR5StTDbXY
	KNNfOujlUpW4c+UDG5Fa8HUKh74NnD1qtYJrmyes9QYNQZhXMIKYl2rzE/fr6T9A
	Fxr5d5y8c3uyYPYa9+2flwQVqMEyV3QyocyYsFVnA1LxIe0vzX5hKSnXwllvNFAx
	32seqRkEe77q8SDg6oVhEEm+jL++QI9uKy02VtmatjX7Zrvrl3Hm/HKwdriRtM5N
	Jo2gYQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45pa1nxheh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 05:52:43 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-227ed471999so83562895ad.3
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 22:52:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743486762; x=1744091562;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NQaLt8PMSngOHyoSTcihfDEfDE5P9beADhv0mJn/7m4=;
        b=bweHqGpaeUmVbuvl7lbAP2o7LOxE7xLmTsZii8wH7x5ywO9ypXjTOS34RL+/yekySU
         gT/ZwDzYhkWkmXtYnMUd73ZpaUayRrpsX2PuP5YJo7DtMAh3lcPbX7UxVtDbUB+QyLc8
         YU7AUOlv/DDaqIELXC9m3kHrHJ7nqDbfGEfg5ntDwi4zEb6Dct0d7tP0BP9MrShjb4R+
         aVCZ6KfkEcsu5WD3CkuyJIMDodyO96a8GURfkFo21usUHBLRA0cAoS7QkXBExJFKv0ji
         BY6H5odfmEvoHdZov5+N0d0wi/33ioTafjSL7dbdosAv4kLTkCu9VvXvJK86PFxqATm7
         dzmA==
X-Forwarded-Encrypted: i=1; AJvYcCVV+A7Y2KjZfqBiIon1I0tEJKkwOr3Twt9utEDhPp3M4OBwszOyXcSdIqAZP8JbkMybaDXNovwkvPPW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/tnfbhVH95214GTaUtC0pOhRX6mGxCqorO7p38yb1Rld0356C
	Zo8hMv7WY4rKLyGQ/exmZ3TdWUndqEMTLXwwpd0GsVtHXLlHhz/E6O0zLxoQk9aHE5hCVT+KIqg
	+NnAuXVZLMArSb1cdKs+DmIOHK+vZVuL2pWOlC6hWBxfTZWtEzOV4HBVFem3n
X-Gm-Gg: ASbGnct89hdLVCphVbzYGCsFPGXTGRKxg8WTwuCGqJVGrhTKcnZ9lLb9F2CqSQdZ0Zz
	1AK70PcR2V1ft+dNaaox085mOw4CQiCHgj2zQA/DcpRrx1sk5ZUZzsLi8a5daC+n7D91J0eutCF
	BMPzDbtOqYp7groWSkVgsW9CBKvkHlfxpv+m/9P/AF6Lrse45pqSoL8jfS4c3VNjvu64+RvHeAV
	OFxje5kkTdYxaio+f6Xl7ATlxv7NxNB6AXNgB0xZNH4d/QKsdFhBj25HMWhLEBlRNWbbQLrRTsT
	23iwOxN4hlztzy05Y0CDt9Cyqngg6gA2iEhayb1KDHgsGg==
X-Received: by 2002:a17:903:1a2b:b0:224:1c41:a4cd with SMTP id d9443c01a7336-2295be318f6mr27460575ad.3.1743486762209;
        Mon, 31 Mar 2025 22:52:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgwh10iYCgOpoeLjVCuNlhcBy5e2Yd3ZjeZgCvFDSEOBRweegPNhiIkkF+4J4dC6xAbF/M+w==
X-Received: by 2002:a17:903:1a2b:b0:224:1c41:a4cd with SMTP id d9443c01a7336-2295be318f6mr27460245ad.3.1743486761846;
        Mon, 31 Mar 2025 22:52:41 -0700 (PDT)
Received: from [10.92.192.202] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1cdd52sm79806105ad.157.2025.03.31.22.52.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Mar 2025 22:52:41 -0700 (PDT)
Message-ID: <385c7c77-0cb7-f899-4934-dfa58328235a@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 11:22:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 01/10] dt-bindings: PCI: Add binding for Toshiba TC956x
 PCIe switch
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
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
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <8e301a7b-c475-4642-bf91-7a5176a00d1f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: -z90QI_y6brNEfcY7LGlv4v8DzrLVADu
X-Proofpoint-GUID: -z90QI_y6brNEfcY7LGlv4v8DzrLVADu
X-Authority-Analysis: v=2.4 cv=MPlgmNZl c=1 sm=1 tr=0 ts=67eb7f2b cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=oqaUoJuz7rIYE2SJXf0A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_02,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 suspectscore=0 phishscore=0 spamscore=0 clxscore=1015
 bulkscore=0 mlxlogscore=912 impostorscore=0 mlxscore=0 adultscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504010038



On 3/25/2025 7:26 PM, Konrad Dybcio wrote:
> On 2/26/25 8:30 AM, Krzysztof Kozlowski wrote:
>> On Tue, Feb 25, 2025 at 03:03:58PM +0530, Krishna Chaitanya Chundru wrote:
>>> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>>>
>>> Add a device tree binding for the Toshiba TC956x PCIe switch, which
>>> provides an Ethernet MAC integrated to the 3rd downstream port and two
>>> downstream PCIe ports.
>>>
>>> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>>> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
>>
>> Drop, file was named entirely different. I see other changes, altough
>> comparing with b4 is impossible.
>>
>> Why b4 does not work for this patch?
>>
>>    b4 diff '20250225-qps615_v4_1-v4-1-e08633a7bdf8@oss.qualcomm.com'
>>    Checking for older revisions
>>    Grabbing search results from lore.kernel.org
>>    Nothing matching that query.
>>
>> Looks like you use b4 but decide to not use b4 changesets/versions. Why
>> making it difficult for reviewers and for yourself?
>>
>>
>>> ---
>>>   .../devicetree/bindings/pci/toshiba,tc956x.yaml    | 178 +++++++++++++++++++++
>>>   1 file changed, 178 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/pci/toshiba,tc956x.yaml b/Documentation/devicetree/bindings/pci/toshiba,tc956x.yaml
>>> new file mode 100644
>>> index 000000000000..ffed23004f0d
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/pci/toshiba,tc956x.yaml
>>
>> What is "x" here? Wildcard?
> 
> Yes, an overly broad one. Let's use the actual name going forward.
> 
ok I will update the next series the name from tc956x to tc9563 as
suggested.

- Krishna Chaitanya.
> Konrad

