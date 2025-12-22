Return-Path: <devicetree+bounces-248929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB3CCD6DA8
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 18:45:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB05A3021F90
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 17:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE9F83358A4;
	Mon, 22 Dec 2025 17:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XCiVEhEQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hQ1Bg4o7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639373009C3
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 17:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766425523; cv=none; b=e+qVwp2mXOc0OVFZMpMDhV9OTgD1xlozHohpqOehqNWrYrCOYALbujd2lskGTyTdsM+hLPKa0uQOxepAAy6f0U2yUWgPRaRVLoUZO3155soGrnsXdDnhBl1DdarLxHu4y51Xw2rhdlMQD//8ZLoENQHz70UmBoH1SkNa86D0Pwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766425523; c=relaxed/simple;
	bh=mDcYHWWDFCZ8abX9mVhTIcxFXGToPYmyE1T1wNNsIEM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H2gRcKbuUuI9aOfyPb5dcuq0n1pNdl7K6r1GimYvh+aRt39zKU62g3FIkyQ7+4LBVlGFm5Sc5RAgYpHh4XdRwhCpPFFlKGaZNU5oHTK3OyPBqUPaFvyWn6r86tEPooZEeuX12inDAUhcJqniGWq068lXWJmMB9zSQiscmBop6/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XCiVEhEQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hQ1Bg4o7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BMEC3ee1568861
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 17:45:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xNreFgwKVVrMQp9bKV36Cv+4AeGfdYFXYCSfOTeRS/Y=; b=XCiVEhEQBzgMg1Td
	p/ZesAYpTQDZLgHUW+dBDIz6/9OMx2eBGLwTwAO5APTppzX5K++RMNAhyKpM9REX
	N+UINCelzSrq3uQT+tfy7wK/SYT160zat1fIWxh9hLmBS9fDdLhPaUAQHm+FiIQs
	JWKUa5hjFS0jZ4ksXjIB8vpOfCBKlnbmEl0HupChADqHL58JmzENyy9FMWiyS23s
	ufRj5E8m0WzY6LOB7pHsI/9H6Nu/BZWqN8EVPtqQETh2lWFSbm6LVXhqjgg6EQVi
	picuDhsurkVN8fPS88TxlpYBtbXyIdDKRoT+I0WHJRDrc+krAWrHAPDu7VWpeuC9
	2Me4xA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b76yy0pap-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 17:45:21 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b9321b9312so8478144b3a.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:45:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766425521; x=1767030321; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xNreFgwKVVrMQp9bKV36Cv+4AeGfdYFXYCSfOTeRS/Y=;
        b=hQ1Bg4o7LliVbiCq6e6zFe8GkRad4CamgR4ZVAN9gPBy35/3FkNs/na4Ydkdlp4EX6
         8Utr3C/R3xnXUGy1WuXalciOq5cY2WlnlqKCNuu8NKVwClyLdU7XSEQCDD8aM+fBySES
         +Qc7dhhBudyN2sB0Dw1dtT+o7vwhBgMtymrdnWI09C7bovPV+UeqvtM9mzj3f+DqCKuU
         lcicagcHROX8XBsJciiFMZCKrE7oZts7tBRlpHNXTYHp5B1e+TPnUkIMg369nWP6HERr
         Dcc3k602NUK+oJxzwagn5zoiaivgJRcjdGFa34MyK5kE8C5ugghs2Ur8uTrMjo/M+vAe
         bq8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766425521; x=1767030321;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xNreFgwKVVrMQp9bKV36Cv+4AeGfdYFXYCSfOTeRS/Y=;
        b=jiwShk9KWjkADBc8Q5tqC64Po7Tzygx9bM9yJzkae7k/ZtykuJVx9dA8VlPvZA57Cm
         zEDG+PIKZYEmC09NEOJvLMQa9x3imdjlWVRoZVCdeCcBpqlr9an87oNJu9RTrObPaHiC
         nP8DFmBOnOS1I5s1s0UT+ORYpYNiWptFAof1FLGkCcEUn4myVnar/TDlURR4GRvqeIwn
         ByL1wEH4WWtLs1J7V2YMNHTh3oifEPdkb3Q891hJA1c+Q5MRJUWHC602s37YwUn5FETm
         VULoWb14fstmHKErtYUjmddeUF01+tQZzjjIlfVDF7iv5hiJXd9yS6SfmZu3dZ+4ybQd
         bIvw==
X-Forwarded-Encrypted: i=1; AJvYcCUi+brYgmL8+vAwZZnQJKU5EnzTjBB/wbA9UveGeAnvqZZDqn5xnbYKgDRlnQerHQHC9lKOS2vFSpsJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9Wt9eOBakhijwM9EoeLoKWbJdc+J1hjPtP5oHmMDQrREnVztD
	jssoJ468JEbmCWlF5ulTLh66bAp/kaPSeUxhgpb6A3y4/evF8i1QXHwN3YriHUxa2sCE6Wc1kbm
	rWShwVgq21P85RLnXv5gWkzOBVGXgbJFdfB/xFb7Bi6Q9XDBZBE6lgcn1iyFbxtI+
X-Gm-Gg: AY/fxX4R7gq8S0su4D6lHyZ1EI609Kl45HM7n23eFu5SdP+DghwQ0DOA5tJUXCreMaT
	NG/8uMOWxVTGffggTUbtmEuilItNJqDIywDUzI7+DrLmir+wmW/NGGsb7p0bmSx/31h0xHsbhtV
	1dk2P1dBQmEvNwH30/HFKf3mjLgttis3OICSY0xc7d0Nbu0sF0lpojGtoHvLpBSNvrcO3WkOjQB
	Qe0eg+fGOHHSsUh4t+1yJ/MYd5WGflfUgXKumdoDj9VJNf5oIu4lxEwIIt+BGaNAMtR1qfZU/8C
	7APwRqkTHPp1tCD7Ex6OhxhXgp4gUndjCtaRAP58mkNM0loTYT3Jg/QX2nlRlhJeKh6p+o4cNVj
	5bF7jymXntesB/7yTIDoWs75eg28TWqaFdAD3
X-Received: by 2002:a05:6a00:3c8e:b0:7ff:ce33:e6b0 with SMTP id d2e1a72fcca58-7ffce33f6f9mr10410980b3a.10.1766425520801;
        Mon, 22 Dec 2025 09:45:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSjEA9ajFMNhJnx1qyt2wsBG0dEQR3s7oZFVNUtpfNlBwxwsb7uE5zp34TNadcX7aJYIR1sg==
X-Received: by 2002:a05:6a00:3c8e:b0:7ff:ce33:e6b0 with SMTP id d2e1a72fcca58-7ffce33f6f9mr10410942b3a.10.1766425520287;
        Mon, 22 Dec 2025 09:45:20 -0800 (PST)
Received: from [192.168.1.5] ([27.57.93.98])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7a843ee4sm11188529b3a.10.2025.12.22.09.45.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 09:45:20 -0800 (PST)
Message-ID: <3193e3e2-2b00-4c7e-a84f-86616c3666d3@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 23:15:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: interconnect: add clocks property to
 enable QoS on qcs8300
To: Krzysztof Kozlowski <krzk@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20251128150106.13849-1-odelu.kukatla@oss.qualcomm.com>
 <20251128150106.13849-2-odelu.kukatla@oss.qualcomm.com>
 <4930a0ad-258c-45ea-99a0-753cb3c3ba6b@kernel.org>
Content-Language: en-US
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
In-Reply-To: <4930a0ad-258c-45ea-99a0-753cb3c3ba6b@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDE2MiBTYWx0ZWRfXxnkf8HEg3jTt
 PyujgOIbFc/8/+ISNUlkbioV4YEDZFuzuobYF6glzIAlKThDgFWPhVIFfv07HUVPwN6tdnqb4tX
 pNS51YH1HoDD05ofc1U6SWU4HjYql1j72LG11FzRQ2FvODCsjF/539hoXrHqliA+wyknr13ucRT
 s5phmQ6dv4NyF1JvnyYSGsk3O1aTkZ8V7T9WN08Nu0PN3H4srsXTjSYJJS3a+peoBbEgYtkAzFh
 D5IrqEmMCeF86Elw3Lc094X4dhPtBTmXuXdkrE3gJMaiAulAegcFUBj1vA1vGnsBEAMQFK2JMgd
 /5tcMOsvjPB29yNJ39CPn2LtcQ+hMCMPgOwJrzRHGjfeK/Cptd3fn87onB1NuIqcaEYhpNztSts
 4pcQvjshfsoWnpi/M7Egeq3lP43GOD5snR2T4p/gSDuIFlbZN7T+AvOjFHEAtlCqja6mIoHE0Qp
 5UhxhbSN9IznWP9CN9w==
X-Authority-Analysis: v=2.4 cv=Zb0Q98VA c=1 sm=1 tr=0 ts=694983b1 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=luqpl2TCSyK2LuNNAmtdDg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=izIGmOzjKg6u1_hBuywA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=i6qsmYmKKdoA:10 a=csto0wWSG80A:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: xGmUKH0z4IF4n6Zl8P96N6NaDHM5l4nE
X-Proofpoint-GUID: xGmUKH0z4IF4n6Zl8P96N6NaDHM5l4nE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-22_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 phishscore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220162



On 11/29/2025 3:15 PM, Krzysztof Kozlowski wrote:
> On 28/11/2025 16:01, Odelu Kukatla wrote:
>> Add 'clocks' property to enable QoS configuration. This property
>> enables the necessary clocks for QoS configuration.
>>
>> QoS configuration is essential for ensuring that latency sensitive
>> components such as CPUs and multimedia engines receive prioritized
>> access to memory and interconnect resources. This helps to manage
>> bandwidth and latency across subsystems, improving system responsiveness
>> and performance in concurrent workloads.
> 
> 
> Same problems with your previous and other commits:
> 
> Please use subject prefixes matching the subsystem. You can get them for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching. For bindings, the preferred subjects are
> explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters
> 
> "on qcs8300" is redundant. Prefix defines that, so use proper prefixes.
> You do not add clocks for every interconnect...
> 

Thanks for the review and providing pointers, I’ll address the prefix
issue in v2.

> Best regards,
> Krzysztof


