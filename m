Return-Path: <devicetree+bounces-232297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7A1C163EF
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 18:42:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3077D18863A2
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0501242D9F;
	Tue, 28 Oct 2025 17:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DCsYtHLv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MvMijUrP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16EF34AB0D
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761673359; cv=none; b=s1R6nDVMIzcyKQWPYO1Ga0S7ECmakb3fFdbtHUmQfOXeA9HAa+FzRf1QsdMSNXiukmINZU9A9OkYfkWTj0Unc3IH1v+lcHEuHPdAgyO1dVVp5QrK9TV/uvJPeo3c6l9B+6ZJdnRXQWViZtc/g0N5U1WW12spRj4T6TXGqgjkIYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761673359; c=relaxed/simple;
	bh=sVgolvHBSJka8vC4OKuZhc6q69RPDNNdOJ+9cK7cy2M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tkyudVjYb5FXqP/RWadG2cbrqELtgUBAgjFXIkORPoXw27ylh+cZwB7lqnFoxlcMD8kHNqQ2YIq0udcbXXpw+iB+pZpFogsZHT0rWSSl26FaLkcXdeMrF9gLcxKkVJ2UhlCpL/ONGRfhxLkANrMCPQjaSWltros7moLdMaopJZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DCsYtHLv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MvMijUrP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SFcwwf2027350
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:42:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Us00t4uVlHXxk31bFSR+oXPx+8hv46C7a9Rtr50Zi4U=; b=DCsYtHLvNZ/Xxgq4
	TiVHhZOW3reQBKx+JuS/Cuz+0OII3UG33Fk3Mj5ZRRNHGrvT/qRkNPEWfeCNlA0F
	T8grrCu7uACH8xX42mTCzkjk6f4sHEN31xRluyW8aJVCpDCT7MVV03sAlApH0GJB
	eEJHZ07JvuDcOe7i3vttTzCz+U6rcaJFFffwnBt5/yiqUwJiIVb8djEoeduCDjYJ
	j/KCn4L2/lZ6NGtirdtyztz2JSSKq8uD9/Q34b1W1iheP65gf2y4dajgR824M9UV
	uJOUwR4rR3zVQrv94WQKx4xkzHhH9u7p7vXCPo7wujSAdqUCjZmeUX7Ye4zqNKxz
	K0cj+g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2yxtrm0w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:42:36 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2930e6e2c03so66210415ad.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 10:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761673356; x=1762278156; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Us00t4uVlHXxk31bFSR+oXPx+8hv46C7a9Rtr50Zi4U=;
        b=MvMijUrPxK13KdSX5bWR+sVbiKJSQw4692hbV47CdQbY9OSNmQ4u0/jO9dcGlK0tBT
         QAuvR8egtqKNa7o/PXYLT/VJrAj/0N22AZrQMJLFUuthrPzK+nPUsQJwzruhyH8eYgj0
         Z//atSXM6UmBvBVmc4mo7dVbXcWTGDlI7tL3gBpMK8lRVw3WdgRy6kSGlkt8dQ+SzDts
         vowz2DrZuBLbO/ynfXoaGUhj6vtvJrwetmEiaqG81e624+B8FPhKkLMsyim4cIgA+MOA
         sM2r6suyOyP/4zew6KahTlQPbB8iLslTQdhjW4naTq4kQto0Ys10LPSTn5icKlFqojlG
         8GXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761673356; x=1762278156;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Us00t4uVlHXxk31bFSR+oXPx+8hv46C7a9Rtr50Zi4U=;
        b=vZguUZIARd9ZzOjpGz1uGpOzhxPJ71Zxtr2bsyJ8CV9mfxTYZZPPH8dD4D19O1kQMc
         e4n89/mPNBlQdaU4AzaMOZ7wlnj6SfRm/Mj9FNX1t7xf2AzvKOFx0qeDEqxStrhlUd22
         YVCnWF9GuH53vW38u46wVeuUbaCshvmwDY4YdUEub3ZoFnHcxR+Q6LyIaXV99y04Ngh0
         xLxBZOH4wsU+YN3uanyRkusbHlxw5oBnHaRolpjCOnWhuitHnLisXv7k4p1eFpJhhv4z
         pZaBUSrI9LXeb0d6E2BiLSrMBstcp2kKJ176FJtLxhywCR9k4at9n0456bDqCsGDb+iD
         RTZQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5sgqDMfqyKxoh9jgRP7o6TKYCO9cmsjPzOsZJUIOC182uqdq7tel7WRwIbxrssGLxVSMPlnW+ONv5@vger.kernel.org
X-Gm-Message-State: AOJu0YzMBkeNQ90HFU1ebpYE6zv5IAO+emb3deb77A/74aD+jxWbjvS9
	8t/Lma3drSnw6BHaOKYzpDj9AM6eVuFc4161LTO3MJEeHOUzO9W/u45mY2I0Mn5BI6pA96PkSQa
	GbhYXqrKOgwKLF9uVQd+K5PCcp+PLFPNWrDmisbW7iNPz9pv3BIGBOqFVzy6xZV53
X-Gm-Gg: ASbGncsh8o83tHYoFFo7v8THbKc01OB37taWNuentwBV7MNA5o6iK4dUK+8I+IwypS+
	2bAP9y5FowTXM32eAX7OLv8Des8gD7lQsJbNbN/6nKHKNuOfN5x0KD/cN/yLZsK3iAjZR8LAe4d
	Y/j1mr7z2fyzNlJzkReONF4q/sYKSRkPlRvIEQRqnGXeYahCj42YL5WD6tvnr1NHUFOyT0U2fDZ
	WN2j4/hWNu/trXRGZXy89kO4Q3zg1/BEXOrT7AgLnAJ9Hwhr89z2bdiLMGeJw+EWkIvByEsti89
	tRQywJ90LQnLNyrx+L1RXOj9fdNXIeLICSTdiTacNKk9Sr3UXnmbUehb7UGs6XKOGsND2VPSKlm
	oEYZghOWBH7lnaqbWL6+fVXa5d85U8WfjZw==
X-Received: by 2002:a17:902:e5c8:b0:275:81ca:2c5 with SMTP id d9443c01a7336-294cb5376c9mr68893735ad.59.1761673355793;
        Tue, 28 Oct 2025 10:42:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8YmrED6GOKiOwqc3GYd5ad4wsT16uGbVKCFKeOMcE0bVa3igKgSnhX7LKmDH5DOEt31TBtw==
X-Received: by 2002:a17:902:e5c8:b0:275:81ca:2c5 with SMTP id d9443c01a7336-294cb5376c9mr68893255ad.59.1761673355274;
        Tue, 28 Oct 2025 10:42:35 -0700 (PDT)
Received: from [192.168.29.63] ([49.43.225.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d0c414sm123607725ad.44.2025.10.28.10.42.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 10:42:34 -0700 (PDT)
Message-ID: <e9306983-e2df-4235-a58b-e0b451380b52@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 23:12:23 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v8 0/5] PCI: dwc: Add ECAM support with iATU
 configuration
To: Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250828-ecam_v4-v8-0-92a30e0fa02d@oss.qualcomm.com>
 <176160465177.73268.9869510926279916233.b4-ty@kernel.org>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <176160465177.73268.9869510926279916233.b4-ty@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZN7aWH7b c=1 sm=1 tr=0 ts=6901008c cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=jzToj74tLtS9RNrshGflUA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=DjtaZYkIGepEHi-_gOIA:9 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: 0RRDElP7oBwp6X75pJE86Tkec06ZHbPv
X-Proofpoint-GUID: 0RRDElP7oBwp6X75pJE86Tkec06ZHbPv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE1MCBTYWx0ZWRfX4nPSyRVvV6OO
 wi169xFqYOyWi+y+tzkoc2W/57eJAkJ9txqdUjtg/EnvclLOmAHRNHxY7Cvo1u2fdQtpNSyhT4z
 MxAcl+qh3ysjLF4KRIVfRe4WsVJHhYhxD44E9NtO2YgOiD/36M1DbaP+WuazvV6Zd8vztMpy56O
 47wWVndoDcY6Sb81MSUTE34UCYmrnKx3zx68369/Xt/BMJM40qHLWv6Rv1nZpSqNNe80/Mor+lH
 eWEgcbc9UOQaunMcY2IeTBuuja4hjnDvHrTCTIpc6yFjrhHHGSwQEX82BcThXFMldpYRx64XAbW
 eIznt1if+eHbGYyjgsJPPySAQqGGYSnfg7f4I497ei4AkWVTi3sV8Swi+ZWt2ybgntvcQfMcwAf
 QR2RaeIt7K2O4DO4U8VNVeFbO/nBpw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_06,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510020000
 definitions=main-2510280150


On 10/28/2025 4:07 AM, Bjorn Andersson wrote:
> On Thu, 28 Aug 2025 13:04:21 +0530, Krishna Chaitanya Chundru wrote:
>> The current implementation requires iATU for every configuration
>> space access which increases latency & cpu utilization.
>>
>> Designware databook 5.20a, section 3.10.10.3 says about CFG Shift Feature,
>> which shifts/maps the BDF (bits [31:16] of the third header DWORD, which
>> would be matched against the Base and Limit addresses) of the incoming
>> CfgRd0/CfgWr0 down to bits[27:12]of the translated address.
>>
>> [...]
> Applied, thanks!
>
> [1/5] arm64: dts: qcom: sc7280: Increase config size to 256MB for ECAM feature
>        commit: 03e928442d469f7d8dafc549638730647202d9ce

Hi Bjorn,

Can you revert this change, this is regression due to this series due to 
that we have change the logic,
we need to update the dtsi accordingly, I will send a separate for all 
controllers to enable this ECAM feature.

- Krishna Chaitanya.


> Best regards,

