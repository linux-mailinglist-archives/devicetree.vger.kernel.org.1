Return-Path: <devicetree+bounces-221869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E483BA3C02
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:05:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C5F33A9158
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE0702F5479;
	Fri, 26 Sep 2025 13:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GGxYuAsu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1496A2D640E
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758891904; cv=none; b=QsO6ltx8GWRZ+qJea9Mjee2YVc5BQp101wXN/VouLf6qw3L7UYC6oc9aW9mdf+YoTTUuSvp9+Wz3HZ8zuyeQgPqHnML8Df+awlTli0iitK/J1TmfS7SCdU5niiG0Mhb5qMyZiSQRe3DAcvj2F3F93xATS3lVyJ4CmSIBB1ihbto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758891904; c=relaxed/simple;
	bh=VxHs8m4PREdPitoF17pWmYpBT9auMCjgZ8M+ihTHRgs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z28AxljMWtVhidXI51Tr5i662YSGiGK1y4oX3v6yysUc6/0zP0phIDSRjG+Q6XqOzgHFH2TxJxcxGIMB5yShVT1PcveUv5IePCLP1k5YeIlsCPsGMdf/BXKLS5NKkPW5fqqW97fWoQBMU6eUyjyBrR0qdl/yis6CnFtM/dbO7uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GGxYuAsu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vdaw028395
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:05:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AznJVNy7DDz5C/A3q06szbLnoJ6bboXOtsVavRtwoBI=; b=GGxYuAsulqkY1+qH
	jbItnFLtNE8uYsIsVZgJZ199/MwtQZIgtJsI6muuLw2GGm+/O5LpK7ZrtZVKpdXw
	0yTwl/YPUVAE282trvG4yrESyGFLD9vopvbgXmMCtV4P8aH1au9PBR0W0U7lfiJ6
	2k7zcExyyb6BC351nZ3zaOhOa7PkgObmQrBj7IdTV4vTQKIU3rUWmAsBGeVqDfn3
	YVPdP5gDw9Cgm17vGiVizRjz9hPKCE4W7GDlhWRZ6gHh7QsHUewjBQeEu+AFaEC7
	6bOK0faWmrMfx2gYSQiWNIQhnTRnELSNYru0UDMqOoRK8Qr4GpFSvl+KUP/kQyfO
	fblRfQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q2vn1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:05:01 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7cc365ab519so5417416d6.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:05:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758891900; x=1759496700;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AznJVNy7DDz5C/A3q06szbLnoJ6bboXOtsVavRtwoBI=;
        b=fBHDmbvctxTqdAcFcwp59SecHIB9d6xrzpT8J4jguf+MCRQEG62pCcW5yyhsk1bGr5
         xbdpNdnCBB4hQniykOoS4eutkt7T8rEs8jrgDUFwWWGlDJ9R3e5equLcjTEeruyycnjp
         G7+PDTIWUm1plQ7v1ny+b9rDTS6wnf31DvBBwO1dYAGMckMZMh1UtVhpsMi9CdEsAsOZ
         KOA8nMoh4x4ZsYw1Xawb+/XJf6PLqofc99fwiB5maC4BBNYhXepXTUjo2PZ5qoix9OTu
         J7fBrj/LGWeEptRDr2uioIQX49cAsLbJ/JrU2XKuNWqIDn51jWRhTwWdcmSsa4vpG0KM
         9GHA==
X-Forwarded-Encrypted: i=1; AJvYcCWNCeo/ZmKN10OUEVLVMsWFcGYMVPQr6mada8zI5WJCECjKnXA3C8LMf2owOgBQQ1joiCsAZQY9JgZB@vger.kernel.org
X-Gm-Message-State: AOJu0YzhuWV+r7kVMo0CdnPD8L8BW6rAWBa4goIIl3XJwXb7yoSufS+e
	MTTQwQmZZW2py1E7LGmH1NAKo5kTPtONTxw/9hC4n/F2zl6xm4eFiTEnISpxjBRk2rcy/xC02zW
	I2cnUj63WE1rVa/W8Cm8zIgiWUvd7r9nW9YnjbeXYdDAFpFXVrZIbYMfyErsWlQgs
X-Gm-Gg: ASbGncsXul1jK3VRdLmnOfdpBK61RzyZDyB/YN3RwdgmH72qxZxvt19NnsMPW12lHYW
	D45nXgoVdmEtnlgMHoHYDj2kp8pQJIro64aoZkmG7LS+X+nYTTUbEK7/jtyUztmH5zx5smNdSTc
	FxegkFAlXY6y6jmxLDbGWi+ZmD2kCKFiFWeNqHWrDCzYEmZBUV0TjmaTcGU1h7kZbuqKzuVdyfn
	uxAUBD9O1cQZPKtjnUB2OoEZ3FBreFSt3NOPxKp8s1uoOqknlunJCcmtbO97jLUtJabF/+sg0SW
	y8rrE6W7H5fy+ws6IUqAaQAdepwuZxsQvdPE8r8mwWAunZaQ+18NDBxz1MAK3b9dFx2scL2ar15
	k1vlBF6P7WJol/eNV2KJgmA==
X-Received: by 2002:ac8:7a97:0:b0:4dc:cb40:706e with SMTP id d75a77b69052e-4dccb4072b1mr27350721cf.13.1758891900436;
        Fri, 26 Sep 2025 06:05:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+TdQEyTb0vZ74pl5udy9ShS/6RYEvgsWyZHIj2DIx77Od7JJwYvFeJeEqxdLHSH3+1mLk9w==
X-Received: by 2002:ac8:7a97:0:b0:4dc:cb40:706e with SMTP id d75a77b69052e-4dccb4072b1mr27350301cf.13.1758891899741;
        Fri, 26 Sep 2025 06:04:59 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3545a9c327sm358355066b.104.2025.09.26.06.04.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 06:04:59 -0700 (PDT)
Message-ID: <fb3720a1-f910-49db-b83b-b23e407b13a0@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:04:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/20] arm64: dts: qcom: kaanapali: Add USB support for
 Kaanapali SoC
To: Trilok Soni <trilok.soni@oss.qualcomm.com>,
        "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>,
        =?UTF-8?Q?Krzysztof_Koz=C5=82owski?= <k.kozlowski.k@gmail.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-6-3fdbc4b9e1b1@oss.qualcomm.com>
 <CAJKOXPcbJY4JEjfZLvOAXEWCTYFpe7En+Riis2t3K5fWJgNU5A@mail.gmail.com>
 <53d63dd6-a022-4e80-a317-3218976a7474@oss.qualcomm.com>
 <cf043ce8-0e83-41cc-b294-93dc1c27fd91@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <cf043ce8-0e83-41cc-b294-93dc1c27fd91@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX9Yvu1VqHf3SC
 IycvNmLUfe88smfLMeQVyZlEs0zCsEXamN6HM8YHdbMF181DIMoV2msH0Z0fXw1Ji+4DTrG57cB
 Qo3LF9toP3FKwlDmhpJsZJvR3SrTLFIW05qcyjq5wjdxGvd/qDXalYP1g3p73bEqd6A/HnYt/+/
 sW31mpncGA8nkEQYdU12vWtqTNO3igokCnu2AfgkjgQfoq5fBT0LEKULDPURqrp90Lvp3jE94t1
 /744CPvFi1yRE/yKpCIdHwNajvA0F6OiwU3jhNjwWN72+DVQk+db1zzsqjVdCPmv9Tyags/9ETd
 GSI/SeXhtHjSAXywpz97f9XazhOpkNVyTtnCW8Xj8O/B60Wa0LYwRfwrtDs59w+WX3sITlfmXTu
 ZoJnHR936h6Suhcs1cT7av9kMoMJJg==
X-Proofpoint-GUID: g-hzO3qinFi3JN6bOylHDUSmUxqGQNvf
X-Proofpoint-ORIG-GUID: g-hzO3qinFi3JN6bOylHDUSmUxqGQNvf
X-Authority-Analysis: v=2.4 cv=JsX8bc4C c=1 sm=1 tr=0 ts=68d68f7d cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Q9aL7w64nW17sFkSeesA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On 9/25/25 8:26 PM, Trilok Soni wrote:
> On 9/25/2025 12:39 AM, Aiqun(Maria) Yu wrote:
>> On 9/25/2025 9:50 AM, Krzysztof Kozłowski wrote:
>>> On Thu, 25 Sept 2025 at 09:17, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>>>>
>>>> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>>>>
>>>> Add the base USB devicetree definitions for Kaanapali platform. The overall
>>>> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
>>>> (rev. v8) and M31 eUSB2 PHY.
>>>>
>>>> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 155 ++++++++++++++++++++++++++++++++
>>>>  1 file changed, 155 insertions(+)
>>>>
>>>
>>>
>>> Second try, without HTML:
>>>
>>> I really don't understand why you created such huge patchset. Year
>>> ago, two years ago, we were discussing it already and explained that's
>>> just inflating the patchset without reason.
>>>
>>> New Soc is one logical change. Maybe two. Not 18!
>>
>> It was previously squashed into the base soc dtsi patch and mark like:
>> Written with help from Jyothi Kumar Seerapu(added bus), Ronak Raheja
>> (added USB), Manish Pandey(added SDHCI), Gaurav Kashyap(added crypto),
>> Manaf Meethalavalappu Pallikunhi(added tsens), Qiang Yu(added PCIE) and
>> Jinlong Mao(added coresight).
>>
>> While it is over 4000+ lines when we squash it together.
>> Also as offline reviewed with Bjorn, he suggested us to split out the
>> USB and other parts.
>>
>>>
>>> Not one patch per node or feature.
>>>
>>> This hides big picture, makes difficult to review everything,
>>> difficult to test. Your patch count for LWN stats doesn't matter to
>>> us.
> 
> Maria - the point here is to not design the series / code for stats, but
> per maintainer expectations. Though it is difficult to know one preferred guideline.

I believe Krzysztof's explicit mention of LWN might have misguided
Maria into saying getting good stats there is the goal which of course
wouldn't be a good thing for us to solely strive for..

To the best of my knowledge the actual secondary reason (beyond of course
trying to make the series more manageable which I think turned out mostly
successful and I largely agree with Bjorn's other response to this msg)
is to let authors of larger chunks be credited for their work individually
through commit authorship - which I don't think is "gaming" the stats if
the chunks are reasonably sized and the work is nontrivial (just like any
other post-introduction patches would be treated).

If I wrote let's say 35% of the DT and it would be squashed into a single
"add Kaanapali" patch under someone else's name, I would have had rather
mixed feelings as well..

Konrad

