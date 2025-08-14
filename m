Return-Path: <devicetree+bounces-204482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 452AFB25C70
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:00:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53EF6189A7DF
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 06:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1707825EFBB;
	Thu, 14 Aug 2025 06:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F5z3xqRI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4D225BEE1
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755154748; cv=none; b=MCFukKNihMwdGHA9DMi2+rYjpI39dPmaT8U030YK76nlDFjm7WzUF3QpLhfFD0bVE+zK3sw31AXNqiFzgaApVLdBhNwNtwciJimhOujoWCNAIoVy0S+5w3R60aMhT+0BpxaO91azP0E6fb8ucXr2yGEaWvKYjLvfbryboKy+bok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755154748; c=relaxed/simple;
	bh=cv6dE0f1+2HJ6ifD9wlGrnlDAszs2lyg6y1T+FM/GXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WJFImJ6ACPQuLFOT87HhBvneSBXLqgHFvi8apYhjAzsXPuhrM+RuAny+vJvI8Az19Rkn8XOuEsFwcNhHUPFZEgh1LvTN5kPfgRvvkNAUXmliHw+jZBKbKS9mgKr4JQ0YUYdfcN0rmD/z74RpZxJGGI9lYEgyx6FzjdE9sFInMQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F5z3xqRI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DMXWbi031953
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:59:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xmxXpUgGKiuhKsdFeSAj9dw9kez65OgZ099Ql8PubOs=; b=F5z3xqRIEKnrF8D+
	rJn0OfWlC80aesDqxGaBES5tnswbIK2ph/chq0F6D0dWOA/bKIwjuoo8gkt0iPeY
	ylCgKvJEkCLyhlilQz3vSK7rt/rkzhZcBJvjhu0p+gg3oGEZ9GaZD5zxCU399iWu
	vpFpUJrL6LiqCzVejzWupW6zNS0ySDNetRncpzZAdZTTaR98PFVR1LTh+pBPTyx0
	8ikOzXPVkjP46AeaQtPk0DBDD2mwX6aPgCS5hwgZqBNhcn4SIWY95xwTj+eSU9D+
	d8Wqyu0+DF8UY4ILwBoMF+baIt4u+T5E/kthHk1Ay/ij2s4j2dveuJ64Z+rnqjwt
	5ZPF7A==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fem4jn3n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:59:05 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-323266b41f5so1256961a91.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 23:59:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755154744; x=1755759544;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xmxXpUgGKiuhKsdFeSAj9dw9kez65OgZ099Ql8PubOs=;
        b=CDRxHJT7vmwtowc9K/VlD4MBp71NgpoNOdsUcFzlXkla/GjXbLfFRSE/7HynYhrXAp
         HJFkeiRHpZ1yvmmsdrxXoN+wMk/b/4+uXEFAKtZQhRnHI8cOGqOtb5CvF+hyWucRKxx7
         ji1DB8XHsSLgS14ZAYm+aBYZbf3ZFKlUpsYpEjPOub1gMchOm7c2bk/zsX0o9FGnfYso
         uWEAWzJfosklaeEeSDvCIaSc7kd0El5O6KvEno2j+5KFUgjaJbkd/GGZ9YULh4BTqKNc
         C/SSWFDF20tJ802nqMT3SsqvTEeqK4MYq4XLoTvAzKvA72b0hKiwab8tGnFLHYda+FE7
         ajHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjNriM/9dVA9yqytDezZ0QydpX1TvwO5nfyOgn/5LswSdundwO4zCQ70HT7UXJy5kXg00NteYXUbY0@vger.kernel.org
X-Gm-Message-State: AOJu0YyvhWWqkLDbfk7u6XmIm3ap0VS+phjltH8hM8+wKFXrEUjlRaid
	nRzbLuFPn5I3onFOl0M+ApZIItiDdFf8l9AVkk8RLi4XaN9XYa9Wcy3feHKCfAAE4+BdjaGw0CS
	cNbWqIJkOL+3FY63Z8tp4qcXYKPdaSuboptoE7putWopp+lUnRimBSfM/9Ja5DZqM
X-Gm-Gg: ASbGncuJ9ELPzNGe1N+yEwkIncClKekaOUkpIroke8mG8eb1H9ATYyCDqyAnrzUwLXM
	lnISh8dWFZm0EfXLpCWE77BRprUekuere6U8wjHVS5CZObLpAWwvvlqcpiMqNweTvoO2gAbi3KW
	mU46IXaMP3MG9+O/hAdIPJiPC0jmzEd1PKPATpYSmg99A0bJi4hnuxAgYKRb7qPvo/PZrGIMr32
	yZd2C6GR+x1+COqAz9pobpaHubWxMSml0cQ+t4ls3TQgSK03sSMGprSSM0BuV4ekp/jeYF3MXJ1
	0iJhVIsJldBC6WgsPSLb1bvnxttpBy/v51Ag9IVgLmqk/rB289HFU/QKx3hUgYhlbNF1
X-Received: by 2002:a17:90b:518c:b0:31f:32cd:97f0 with SMTP id 98e67ed59e1d1-3232799c1a1mr2789296a91.1.1755154743860;
        Wed, 13 Aug 2025 23:59:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8CTJ/JcSa7RvClhZ1Noj4UnKmQoScP0H0m62yaCrSPHKaqpNUci8RZ9cH7R5dNw7mRb715Q==
X-Received: by 2002:a17:90b:518c:b0:31f:32cd:97f0 with SMTP id 98e67ed59e1d1-3232799c1a1mr2789250a91.1.1755154743352;
        Wed, 13 Aug 2025 23:59:03 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.31.133])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32328d0a204sm500314a91.3.2025.08.13.23.58.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 23:59:02 -0700 (PDT)
Message-ID: <d81740ac-f83f-4ed3-ade6-193b8bb59bd3@oss.qualcomm.com>
Date: Thu, 14 Aug 2025 12:28:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arm64: dts: qcom: qcs615: Add clock nodes for
 multimedia clock
To: Bjorn Andersson <andersson@kernel.org>
Cc: Taniya Das <quic_tdas@quicinc.com>,
        Konrad Dybcio
 <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250702-qcs615-mm-cpu-dt-v4-v5-0-df24896cbb26@quicinc.com>
 <20250702-qcs615-mm-cpu-dt-v4-v5-2-df24896cbb26@quicinc.com>
 <vxeadjzwywqjjqm7elg5pltq3jtnv7fprquhdoydhxnjihpsw7@tlqoq5wpgcr3>
 <d56920b0-0bbb-4951-aa02-152da6b9f9d2@oss.qualcomm.com>
 <ii366w2aftbitlhlmsa5fhbcn4s2n2fc35plrrb5tlsmtv4udv@btbtgo2vr4tw>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <ii366w2aftbitlhlmsa5fhbcn4s2n2fc35plrrb5tlsmtv4udv@btbtgo2vr4tw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ZrW7cunQqTQMc6MVQvbL2kD7MOUvTrF9
X-Proofpoint-ORIG-GUID: ZrW7cunQqTQMc6MVQvbL2kD7MOUvTrF9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA2OCBTYWx0ZWRfX+seYXd3++ybq
 pGgTqTyaFKWfimJehjrRDa8ipwFF491wc+6xUx+T3pO31DF+PBUG/Vy25gJr7JnGoiMCuLYI8Js
 41DV7Ah8FCfkCicFKjVkYkpYlonZ0I4JiT+ehtbLF2XNP9PdFKhvoXjzI0l62kzgtp0QNb+mDJG
 IpvD177cNbHxPJjmD9hjxqVR/H+SpZdmlffCJAUTgfTaJrH0Vj8eUe/SCfQuEj12YEdQHUWUdoK
 oZ9bAPNcN6+0UYcx16VRGb9Cm9OdgNaUDsMFRRVDbanrkWBffJRcjv7qWNWtAQ3EZmYigIpW8CY
 rkFoVEd+H7FABMSGfH5tl0WWH8l4rc6SJGIWCaVVSDduAY5vGbUMPijZMMUihLGwjUUlXiReM1v
 LM/wiTLR
X-Authority-Analysis: v=2.4 cv=YMafyQGx c=1 sm=1 tr=0 ts=689d8939 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=/kiP2gCwObMqexHosDfpNA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=5QP-OhRlovnELOG5v58A:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110068



On 8/13/2025 10:50 PM, Bjorn Andersson wrote:
> On Tue, Aug 12, 2025 at 02:25:12PM +0530, Taniya Das wrote:
>>
>>
>> On 8/12/2025 9:15 AM, Bjorn Andersson wrote:
>>> On Wed, Jul 02, 2025 at 02:43:10PM +0530, Taniya Das wrote:
>>>> Add support for video, camera, display and gpu clock controller nodes
>>>> for QCS615 platform.
>>>>
>>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
>>>> ---
>>>
>>>   DTC [C] arch/arm64/boot/dts/qcom/qcs615-ride.dtb
>>> /home/bjorn/sandbox/kernel/db845c/arch/arm64/boot/dts/qcom/qcs615-ride.dtb: clock-controller@100000: 'clock-names' is a required property
>>>         from schema $id: http://devicetree.org/schemas/clock/qcom,qcs615-gcc.yaml#
>>> /home/bjorn/sandbox/kernel/db845c/arch/arm64/boot/dts/qcom/qcs615-ride.dtb: clock-controller@5090000: clocks: [[43, 0], [45, 2]] is too short
>>>         from schema $id: http://devicetree.org/schemas/clock/qcom,qcs615-gpucc.yaml#
>>> /home/bjorn/sandbox/kernel/db845c/arch/arm64/boot/dts/qcom/qcs615-ride.dtb: clock-controller@5090000: Unevaluated properties are not allowed ('clocks' was unexpected)
>>>         from schema $id: http://devicetree.org/schemas/clock/qcom,qcs615-gpucc.yaml#
>>> /home/bjorn/sandbox/kernel/db845c/arch/arm64/boot/dts/qcom/qcs615-ride.dtb: clock-controller@af00000: clocks: [[43, 0], [45, 29]] is too short
>>>         from schema $id: http://devicetree.org/schemas/clock/qcom,qcs615-dispcc.yaml#
>>> /home/bjorn/sandbox/kernel/db845c/arch/arm64/boot/dts/qcom/qcs615-ride.dtb: clock-controller@af00000: Unevaluated properties are not allowed ('clocks' was unexpected)
>>>         from schema $id: http://devicetree.org/schemas/clock/qcom,qcs615-dispcc.yaml#
>>>
>>>

Bjorn, I will push another series which will fix the above errors.

>>> The missing clock-names in clock-controller@100000 predates this series.
>>> Sorry for merging broken patches in the past, please fix that as well.
>>>
>>
>> Bjorn, would you prefer that I add the clock-names property to the GCC
>> clock node to resolve the warning, or should I instead remove the
>> required: clock-names entry from the qcom,qcs615-gcc.yaml schema?
>>
> 
> It seems to me that the qcs615 gcc binding and driver is lacking a
> number of clock inputs. Can you please look into correcting this, and
> based on that resolve the dtbs_check error?
> 
> 

Yes, Bjorn. I will surely look into to fix them bindings and driver.

> 
>> Let me know which approach aligns better with your expectations.
>>
>> -- 
>> Thanks,
>> Taniya Das
>>

-- 
Thanks,
Taniya Das


