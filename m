Return-Path: <devicetree+bounces-137139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 778DDA0793B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 15:30:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A82A7A3FB2
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:30:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AC4721C178;
	Thu,  9 Jan 2025 14:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NqWpRU5O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DF021C177
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 14:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736433018; cv=none; b=SP0U+zKM8v9JEz9uz3TKAUIpDBW2ZLB8M4Tl9ZQqBZfQyBpbGArgfK4q3zunSFPBVHohIWdR9v/h6lrtksdnKzd/qaf4qJUjgpPlq47EYvSgx8sq615Ubf/ijvhvFOyidZvyPdwUvIg15BpRXfZDJSIuPdnKvWtjUWNw2b6zgNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736433018; c=relaxed/simple;
	bh=y7XNJ8am6FF8haMt9nEXqkl+4nRmgTxGSkwTfom+bpM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b2KLX//qcgjYpbgR0IMmJ7MabqEWz1WDQkP8JroY2jRgSrq12dqMJAmzeBZpKpxIQt+eNBLRf0Z3i0XmTjF5qO5SwqbedbUKdpMcigcDISbK1+Ty+rIr796CuM7fEwZNhu3geJrbrpcsqeZ1sNTCJ67xCMHsYBdv0zdAzDhTLI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NqWpRU5O; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5098xB3F007927
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 14:30:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t+1g7EONrLYRBiUldyDEUXFj8ReJqT7oI7RM9rMXrcI=; b=NqWpRU5OVwY8VvRo
	jRbhxr+TIRkjVXyu4Mv8qOtfTgG5RE9ilAN9cVh80I82OZGjG079KItgX5zLUFp5
	f/RSsfxYI9AfEvjFtw3ywBRB82pw7ndK+bXHaNumz32SdcdbcKUOZWvPClFjTlLk
	Kkt5i7fkfhjYLSTx1MCQmQ+3QSucGg5/Yt65FQbKbC0wyAFR8ceLhVGIAgkyiOVm
	pOCYqZdDSCmMzS63Lrmf1xbIPLW3CLicOv0IDnVsXGBXeWlt8bCWV8YU7KP0D4aC
	XMG+qTs9efh+omh2xqfiMQu+hWXUopQ3VxqtG8P9qak3HrTdL0GJsKnBRWPB/9Fn
	xyAOoQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442bdxgrvu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 14:30:14 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-46b3359e6deso2022291cf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 06:30:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736433013; x=1737037813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t+1g7EONrLYRBiUldyDEUXFj8ReJqT7oI7RM9rMXrcI=;
        b=gG1JaquagFn67TgSDi/qtePEavHSPjFb3qQZciU+0yJax8WxGoaxu7k5jnDDYNYtLk
         G6xzxqoRMsfb+4g+66dgdAX4VkYlujFpTaccxqlZfwOCzl5WSrshdRtjKc/QaZiss+4T
         EbCi4BPlj04jyKOvHTzGi4ZW0ffUmb8XeImQ9aRY4F9anU7uhRHFP1wcSbsaNSlKHTlx
         odr9xEEi7DNuiJ8Tq0/XPEObPm+UCRpvvUS+9Zg1A/ozt1NyTANCX7JkQDAYNvYmwz6f
         BYfEdOr/b2VjVHri31wz58yON+6qAWEk8syjHE5senAbsXaUjnfpM3dQb4d0SdWKQfEK
         0qFw==
X-Forwarded-Encrypted: i=1; AJvYcCVI2503EJSpsGDk+AlKSu6h4U2uPLVBBOR4rHxWsuRFLxPuQdylht5lmrjVDENdkZe7NkDgR/z8lwSi@vger.kernel.org
X-Gm-Message-State: AOJu0YyNNPvJGoU8aAf5mHLu9OJ+1fKYmZnXxhpNkMcMo7aesqC4rE3k
	hEobl9ypiNtqsxzufk7MrYJCULh+UzEt0np44Zfb0mYO0hzXEuDMY174QHnOMJrBhkSF6RwznHp
	Nge/Ehr8mFV7I3yAaDE83MBeWJqZ8EQ3IAaNURcAe/DcaCLi4gYUaGr0C17uhCww93WOU
X-Gm-Gg: ASbGncsR4tf4L5OZvi9c7C0DrM3qah29O9YRuiagrx30SfKwgyMX90+XTg5aTqjrwxE
	g/IGlB8sUJ8BPBl+SUPUU830P4IivowEpldcrGBozPJyb7HMrT9WZNGsaK0DlERZD34M6831/lk
	P+oOG+9zAeb/eLZvFMXBjxrfoq/3+CuQWbi9TGfrZdl/LLHgtDN47rmqTRIl/NfC2qaeiMN54gD
	Wn6NnMnspZl+M+btbd6aCdt3kDgTnUJNu7qyI8VSc7gDiMkKacxTXu4VYikBVTisrjs5Q6hSxaE
	zX8TzqxAqqhPQ/T91G+JMvCbUv+230guRGY=
X-Received: by 2002:a05:622a:11d4:b0:464:889f:a41e with SMTP id d75a77b69052e-46c70fd261cmr37660981cf.1.1736433013010;
        Thu, 09 Jan 2025 06:30:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF/o7NbKIYDuZbzNDV8ce69KoIb4J+RPCMW2X4a0tcQDwlmg/7rsbDZ7WRWfKzf4KIoScIzPw==
X-Received: by 2002:a05:622a:11d4:b0:464:889f:a41e with SMTP id d75a77b69052e-46c70fd261cmr37660731cf.1.1736433012557;
        Thu, 09 Jan 2025 06:30:12 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d99046ddabsm628757a12.68.2025.01.09.06.30.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 06:30:11 -0800 (PST)
Message-ID: <c5ba089d-370c-4970-814b-faf3d810ad43@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 15:30:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 6/6] arm64: dts: qcom: Enable cpu cooling devices for
 QCS9075 platforms
To: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Wasim Nazir <quic_wasimn@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@quicinc.com
References: <20241229152332.3068172-1-quic_wasimn@quicinc.com>
 <20241229152332.3068172-7-quic_wasimn@quicinc.com>
 <zn4uf3mmlmt3who474hwkr44poycfqtjtidshybbg55a3hr63y@zxefqbhiwkbg>
 <d54c6706-3c6b-211c-6acb-fa3984c30c67@quicinc.com>
 <ubasbsyspn5euygihgphyw3xg4ckveytvgnjpwdiyg4pv7degr@6y44ya4gvaqj>
 <07c41571-28ca-6f9e-bcee-899bbf77f687@quicinc.com>
 <sufmykle5inyk73i3qfmy3xqq7plgfr7txiruyahc5wgvvn6uo@kytxtb5zc3tg>
 <cf2ad828-d00d-133b-f310-1688fc0ed59b@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <cf2ad828-d00d-133b-f310-1688fc0ed59b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: skaP-S5FOwjzcWL6715DgtMcBOVTk5bA
X-Proofpoint-ORIG-GUID: skaP-S5FOwjzcWL6715DgtMcBOVTk5bA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxlogscore=542 impostorscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090115

On 8.01.2025 5:08 PM, Manaf Meethalavalappu Pallikunhi wrote:
> 
> Hi Dmitry,
> 
> 
> On 1/8/2025 6:16 PM, Dmitry Baryshkov wrote:
>> On Wed, Jan 08, 2025 at 05:57:06PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
>>> Hi Dmitry,
>>>
>>>
>>> On 1/3/2025 11:21 AM, Dmitry Baryshkov wrote:
>>>> On Tue, Dec 31, 2024 at 05:31:41PM +0530, Manaf Meethalavalappu Pallikunhi wrote:
>>>>> Hi Dmitry,
>>>>>
>>>>> On 12/30/2024 9:10 PM, Dmitry Baryshkov wrote:
>>>>>> On Sun, Dec 29, 2024 at 08:53:32PM +0530, Wasim Nazir wrote:
>>>>>>> From: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
>>>>>>>
>>>>>>> In QCS9100 SoC, the safety subsystem monitors all thermal sensors and
>>>>>>> does corrective action for each subsystem based on sensor violation
>>>>>>> to comply safety standards. But as QCS9075 is non-safe SoC it
>>>>>>> requires conventional thermal mitigation to control thermal for
>>>>>>> different subsystems.
>>>>>>>
>>>>>>> The cpu frequency throttling for different cpu tsens is enabled in
>>>>>>> hardware as first defense for cpu thermal control. But QCS9075 SoC
>>>>>>> has higher ambient specification. During high ambient condition, even
>>>>>>> lowest frequency with multi cores can slowly build heat over the time
>>>>>>> and it can lead to thermal run-away situations. This patch restrict
>>>>>>> cpu cores during this scenario helps further thermal control and
>>>>>>> avoids thermal critical violation.
>>>>>>>
>>>>>>> Add cpu idle injection cooling bindings for cpu tsens thermal zones
>>>>>>> as a mitigation for cpu subsystem prior to thermal shutdown.
>>>>>>>
>>>>>>> Add cpu frequency cooling devices that will be used by userspace
>>>>>>> thermal governor to mitigate skin thermal management.
>>>>>> Does anything prevent us from having this config as a part of the basic
>>>>>> sa8775p.dtsi setup? If HW is present in the base version but it is not
>>>>>> accessible for whatever reason, please move it the base device config
>>>>>> and use status "disabled" or "reserved" to the respective board files.
>>>>> Sure,  I will move idle injection node for each cpu to sa8775p.dtsi and keep
>>>>> it disabled state. #cooling cells property for CPU, still wanted to keep it
>>>>> in board files as we don't want to enable any cooling device in base DT.
>>>> "we don't want" is not a proper justification. So, no.
>>> As noted in the commit, thermal cooling mitigation is only necessary for
>>> non-safe SoCs. Adding this cooling cell property to the CPU node in the base
>>> DT (sa8775p.dtsi), which is shared by both safe and non-safe SoCs, would
>>> violate the requirements for safe SoCs. Therefore, we will include it only
>>> in non-safe SoC boards.
>> "is only necessary" is fine. It means that it is an optional part which
>> is going to be unused / ignored / duplicate functionality on the "safe"
>> SoCs. What kind of requirement is going to be violated in this way?
> 
> From the perspective of a safe SoC, any software mitigation that compromises the safety subsystem’s compliance should not be allowed. Enabling the cooling device also opens up the sysfs interface for userspace, which we may not fully control. Userspace apps or partner apps might inadvertently use it. Therefore, we believe it is better not to expose such an interface, as it is not required for that SoC and helps to avoid opening up an interface that could potentially lead to a safety failure.

So, to recalibrate, would this be accurate?:

* "safe" SoCs are the ones with a SAIL/Safety Island block which
  performs thermal throttling without OS intervention and does so
  on all SAIL-equipped platforms

* SoCs with a SAIL are intended to be used in e.g. cars and if we
  want to keep mainline viable on those, we must comply with some
  regulations, which prevent e.g. software thermal throttling

* idle injection provides measurable improvements over software-
  based frequency throttling on platforms with SAIL

Konrad

