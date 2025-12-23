Return-Path: <devicetree+bounces-249064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5D0CD8F2D
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 11:49:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D86D9301CC6D
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F51432ED4A;
	Tue, 23 Dec 2025 10:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nKpwwWsY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i8l24PuV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7B933032D
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 10:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766486975; cv=none; b=fmtLXT2Ijt8Rb/DHY5SNnyJbg/bvMoYYnoVBNRQfDll2m4UtJYpfhrnZxZkmrm0eyB1MCiJCLx8huIElg+Y4iDnLo0gFug3DCZDbBYXw3cqaGbPAN63zc9G2V1veMZO3mSxS2iwnG61Davc/Wzb7IsJSYH2ronLjSk6tu4Kh/yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766486975; c=relaxed/simple;
	bh=ChHS2JPkUPRNHFx0VAyUavKlUBubCODN4tuB4XTsI70=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aATsMN9o172/82m4eCRpaHpVAy6jSSyZ1xfwGwBUu8l7yOJ1FUiSdNGyD+SgoRmCGNnGo+iZIquYZevAuXixAX9rIo8sXSeIHvEvD2uXXH0ZiVMqntbG7TVhbACl0xFhr0azFjL387H+rL/ZdzTby7MWByzvfIHgFuTyO0ZV4zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nKpwwWsY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i8l24PuV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNASdDu2041136
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 10:49:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JKBwHCYSbYIWW3G7Sc1xuSQXA6rM0/QQy4Vu6KzBCFU=; b=nKpwwWsYXt9o+EmG
	IA7MJ8Gd3B6ajW3VYsftGPmO+nYO+QEtc5iiIBa/65Yyfo51sUgG8viJCfcAKYo1
	GR2hFoJDaiw6+fYKs8qQJdoL/O6cmZE4k5pe4+kEsTLzEqQtgfQj+Ssylr6lyiaJ
	fW59z1Ivfe36POumGEA1kBg4vyeijX7JkFD67/I3C1f/HIUflCVF8SdHpusWVmki
	stQy9gIJ502yrmD24K4NoLh+zUQ1u0c4w6VyjO7BURtGu/gr1SudaL4TtUyQ7C9r
	Si9gn58U1vlPwaPNCRuzlbN3fbG0FJDOBXQX0e9NX8i58Jt0Yj/ylDwqKuDLOoPW
	Rbp7lw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b763pkfre-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 10:49:30 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7fc82eff4adso4758106b3a.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:49:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766486970; x=1767091770; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JKBwHCYSbYIWW3G7Sc1xuSQXA6rM0/QQy4Vu6KzBCFU=;
        b=i8l24PuV5wRdVWVmaiANStJkRJoe2HbnB90UVALsfm8JBf//PwXqTuvhbFSrhjvwsF
         bCWWvJ7DSP2qXabmxUcj8eY0xNoCnwUTwAxSsPuywBSNXjhlt7FFCPzQ0DVGyn0VR79d
         0RRSOCyvxY4a6IIbbxRHMqo8RjXIi8vRvzm6uZWJ4BVOtWuNCjAPVogQelm+eKHbhfvr
         UboD9racVpWFr32f80YBx3VNyrXOjYTvItkJZOHkiaO1ytAuZR9sO32exd8039QU0pPO
         wDVItIykgN7z8KCWnlWk9BZy0LcWNr6yf38RBLFAaxREg2YuveXu2xH0RmAMJUlZlLMj
         bd9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766486970; x=1767091770;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JKBwHCYSbYIWW3G7Sc1xuSQXA6rM0/QQy4Vu6KzBCFU=;
        b=cTgfBj1R1O4NM6zohscL9e16x7QSElNr6CIJZIve+E88hl1VVXfPe6Sep3yz4U46yJ
         2AS7pcfx4EdnODAV8Ud+uZPVmVz6MgjtirpOD8FbvUgc7dXGl94sEZp9bWD89iMkSQx9
         fsXAMyIxxBmJTXqkBvR4/1APUZN92T9zCP7E/JsvTcB83ZjOaX2nzZL/xdKRIdjbeGgG
         s7vKUFouwQv/Y5MydOkwAdnZ6XArW4Rt5vIk7D7mPdqHVzdB/HD6WvYEnFFxecPq5OFb
         IkKTnWikiLD39bicIKxQjVhFGWDx4TLjMvkV/p4JzbZezXM7rq/XA9aMufeAVWWoSnut
         oU8A==
X-Forwarded-Encrypted: i=1; AJvYcCXHRl0Dmn/SjUfMQ3wQiUcYt5ccrX70utys2cEKb5GFq1IXop/v/IPzWnHSoIRpTCE6c4fWDTWdm0AY@vger.kernel.org
X-Gm-Message-State: AOJu0YyP0vnvAVchWsv3Fv+ChPkWENdDjo50tRFF4Pg6P0mRivxg+Wc4
	0u4cjb0FUlZHF7t20BPWKTPMHkevkiDj4xg5FKZsiPe045GQEGhfaeI3rlCFq9/TiHRNwH4ANST
	TUi8/XCmn4qtcXX8MSj4LMupwCs9B1R51KZSu6o9SZRViss7yevPVtKCa+7bOiIBF
X-Gm-Gg: AY/fxX4yKn2BVkQvKNQZLuDQD4/KYxpsqabbuK4LCRdpCwOttxvthogemACYzqnBq+R
	AmGJNTedAH3YJIk9IXo2aM941peubTg+6O47NKM9fRbuCg+i35nX0OB4phGAoAH7+Rnu4vqvg2Q
	1F7k4drSCMEn+rQ2r9408hzAfowPnw1w/S3NkoMTvsrIQbxqthTldaHPEYRWcX5FzsUHlBi+bik
	pYVuIXn5u0xdzqGEsM8VF6TbDA1oQr+tcsCAqsFlV36WTGl4jnsDY2gs5W8Kbf5rXIZUGfnehTE
	iiucIxs03TGwBKlJ0qcuvhcJQS6H3gZLp7iefY0XE5SVQ4UNc2KIDRJ5ycqsO1EhvOEUc6X9R92
	x+2c/fGsX40ZeRKD9knWyKKbYtokjHovW1Ha5tA==
X-Received: by 2002:a05:6a00:6b93:20b0:7b8:acdd:23c3 with SMTP id d2e1a72fcca58-7fe0c0fbefbmr11463449b3a.11.1766486969226;
        Tue, 23 Dec 2025 02:49:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH1v/1HacvwG7DWXzwiLrvcU2Zusz8BK/bUppipGd3g3H//7IAWFp+IVDMaldG9feohRs6Z6A==
X-Received: by 2002:a05:6a00:6b93:20b0:7b8:acdd:23c3 with SMTP id d2e1a72fcca58-7fe0c0fbefbmr11463420b3a.11.1766486968718;
        Tue, 23 Dec 2025 02:49:28 -0800 (PST)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e88cd71sm13327808b3a.64.2025.12.23.02.49.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 02:49:28 -0800 (PST)
Message-ID: <a63f2bc7-11af-46d1-a950-60a25ef79bb0@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 16:19:20 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/11] dt-bindings: clock: qcom: document the Kaanapali
 GPU Clock Controller
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20251125-kaanapali-mmcc-v2-v2-0-fb44e78f300b@oss.qualcomm.com>
 <20251125-kaanapali-mmcc-v2-v2-7-fb44e78f300b@oss.qualcomm.com>
 <20251126-elated-stoic-scorpion-25b630@kuoka>
 <de44560d-4ed8-41fe-be7b-56412b933a8c@oss.qualcomm.com>
 <fbe39eac-7c92-4a08-bafb-31e5c51a0613@kernel.org>
 <503f445e-0d12-407d-bc77-f48ad335639b@oss.qualcomm.com>
 <e8bdb176-b6fb-4dd2-8b5b-9da8073fa915@kernel.org>
 <ca118faf-3451-4b83-9074-82bc5e1f731e@oss.qualcomm.com>
 <3e8128f4-3cba-4c13-a846-e5f1638a1e0f@kernel.org>
 <701a7b2f-848a-4cc0-8924-ec72155d93a7@oss.qualcomm.com>
 <65e5459b-7509-47db-9089-6efecead3f44@kernel.org>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <65e5459b-7509-47db-9089-6efecead3f44@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDA4NiBTYWx0ZWRfX51uGuNefYGWS
 xfMnmzrGgt/13IZnUeOdWXr0mSZCtF6fdezpM9cgbwIc/lfTZ8fqIJr6XujnUySfGtwkIj0Rxj/
 9jUsqE+YqddGuqQHnXU+YfjoiVhXw0mUMf50DpT4oAD0Tinfl8EjyjVFJ30ZLzD9wLmxCc1xyD7
 CzHOVe2Lz7qPH/hbxdLJe3bCWSGJ69V90BEPqMQSapRHxZeZTz59W93/Kql2atoRDxQkSQKuOhP
 FLCjjLkPbbY4E1MyxSKVm08WE9WFhphJ8KFV+oqOFhYdoDJhYgdw3MNvDyt9LyhbPRu3eRgERM+
 2gkxul+mDvKgM//aiLUinIWuau+HrTlhktTVydQJiMTcOM1MGqJWJa7FhGYrbfZsrvKah3tV4at
 a1Pqcqio8kapKGylLLWLFgqjByEus//P2Qjz+DemGwrzU6LaaVx/4jcgyAAm+LXP/XggkViT+uk
 YzvHJbXhc/EMmRnHo0g==
X-Proofpoint-ORIG-GUID: J7UcdOqd7YUbH1ibtW_DzKqqts_pqC8d
X-Proofpoint-GUID: J7UcdOqd7YUbH1ibtW_DzKqqts_pqC8d
X-Authority-Analysis: v=2.4 cv=H6TWAuYi c=1 sm=1 tr=0 ts=694a73ba cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=PurT2Iiaq-uxMnD6zWEA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0 spamscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230086



On 12/19/2025 8:15 PM, Krzysztof Kozlowski wrote:
> On 19/12/2025 14:02, Konrad Dybcio wrote:
>> On 12/17/25 2:54 PM, Krzysztof Kozlowski wrote:
>>> On 17/12/2025 14:21, Konrad Dybcio wrote:
>>>> On 12/17/25 11:09 AM, Krzysztof Kozlowski wrote:
>>>>> On 17/12/2025 10:32, Taniya Das wrote:
>>>>>>>>
>>>>>>>> We would like to leverage the existing common clock driver(GDSC) code to
>>>>>>>
>>>>>>> Fix the driver code if it cannot handle other cells. Your drivers do not
>>>>>>> matter for choices made in bindings.
>>>>>>>
>>>>>>
>>>>>> As it is still a clock controller from hardware design and in SW I will
>>>>>> be map the entire hardware region and this way this clock controller
>>>>>> will also be aligned to the existing clock controllers and keep the
>>>>>> #power-domain-cells = <1> as other CCs.
>>>>>
>>>>> I don't see how this resolves my comment.
>>>>
>>>> Spanning the entire 0x6000-long block will remove your worry about this
>>>> description only being 2-register-wide
>>>
>>> But that was not the comment here. Taniya replied under comment about
>>> cells. We are not discussing here some other things...
>>
>> Right, you omitted the part where I answered your comment from the
>> context, so I'll re-add it:
>>
>> """
>> This block provides more than one GDSC - although again, not all of them
>> need/should be accessed by Linux. I suppose just enumerating the "extra"
>> ones in bindings will be a good enough compromise?
>> """
>>
>> TLDR: cells=1 makes sense as per usual
> 
> Either list them in headers or at least explain that in the binding.

I will take care to list them and explain them as well.


-- 
Thanks,
Taniya Das


