Return-Path: <devicetree+bounces-133208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E9F9F9C4A
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 22:47:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBC0C16890A
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 21:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 385CF221D90;
	Fri, 20 Dec 2024 21:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IFvZnvI8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3AC1A3BC8
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 21:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734731246; cv=none; b=cQkqIqIUx/lK+yvPjbWyshrasiq2WtUGLYWivig9Ac7UDNPzpcT3rU6/JyEXr+IURyGj2QO0BjsSOgeQIwGyNCAEU9930zgQ9UGt83Lsw9RYsXZsc6y7X1jYxXLNybAPaUuzi63vRislMi2Z0cBvM+csJVVIKwoJhSZk11EYhcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734731246; c=relaxed/simple;
	bh=tJoIgHzik6ZuZQWkDQmeMQtmSddJlYHiAr5OkDHhdO8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GJkOUO6J+Gm1SRyJvx3vGvk3iM0IcJprw/f7rsAFo0qJpjCq93ymB4h68+tNNXSn49eVYZ8whUGbq2jLCeJrnJt+QkJ8E998WtrVf9T2IKVRFLlZFlMjkQx9SU1tq0JVwfVKcWkcpenvv9PppJFeLe+JBNL5m5A3bx/4uf2SuQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IFvZnvI8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BKDHWx5017496
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 21:47:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XQaiQ79nfeCAmsipFRDSV2m//GyF9OUExjK22pq8ZDc=; b=IFvZnvI8XNn999HK
	cWdOPPHWzR68jFjOzjtct0weYHvs0hDvEas6r8FmcINFlKVELjxA6O6YDtRucoeJ
	JlB2XAyTKDp+HdVWRgtGJrCOulFtSdHk8ndql3VEqCTSJNfBeSVX9cml5fRrcZi1
	I17GuXV10tmfrdAqa9gCf0fjey5GbZUM1f8PxNv+zV9riHssvF/Cv82gxzIMPZVT
	1kCCgUnLm8cQ5nTtSFzEEBXqVuWc15c/x4Wdu7a7tFXyRgwJqhjq2ROQqw7fe5/t
	QoJwSz4m/KrCG2MglHgyp5LN9OUOshkih+aBFE/jeGz0d5+SF0Tu8a+C/g3fQVoc
	vAVFtQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n9b9h7sc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 21:47:23 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2166855029eso22095595ad.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:47:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734731243; x=1735336043;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XQaiQ79nfeCAmsipFRDSV2m//GyF9OUExjK22pq8ZDc=;
        b=nM4nxAqGvjMKUKcPaMPRX/kxV8pgGBW8e87z0Xap2f8zxOcTrx8dEJpKeYD2uMauJj
         XJ5JlGq9o2myK4DtO0GEA5JCoP3KTIHtvxJiZzC8bmR5kifLJ9R0oBtp1OqMI9Sgc+NK
         TJLe7RYeA4IbMcSfBfXy5Xxh9o3aDL8AeZZRvC4KST53vC5qUWkX2G9Ryl6rfvW+v/d+
         rGTZXNQ8n33oHH2I2ZQEmRmLxUHodoIllaTsH3wm3RiQ6HHdhVz0mqOSSLahD4Ro9hpz
         0nn2fgk6RVGqkjDBFXZAl/mcoM/PggazA1SykZO1OOzg070Ryz+SPSoklwn+uMBLws0B
         UKzg==
X-Forwarded-Encrypted: i=1; AJvYcCUAs26dFhyYF8/i3Lcl4H0wyjfftfyf50VyCbsjKeah/AQJ8a/IIuYp8M8mfHiimetHdKkyYqe/x6lS@vger.kernel.org
X-Gm-Message-State: AOJu0YwGQd6zBRdly9a8zSmgQIhSfTJyrrk41DAwT1miIkJLaQeVVCUU
	kWzcJWs0JMMC1wR2QbkXHAFuGe/dvsii1KOH+lZjyEh9nNqcq1TUNAFmeCV8J3TtZwUnxFvR0Lu
	mZ4U/04/k6SG4utPmGbpuD/vJ/ZcrXCpodN4E+e3zxrboJ9sGJNGHu3TQ8KI5
X-Gm-Gg: ASbGncuOVOFuMLeoNGbTpulyTFf+HxwwDvESSF7k51Zvyh1gNahzAfz3b7+a+FSIdUw
	wMhUu+1F5UFka4+z500aJFqYWRRdmAmgIUwum0Qd9nadMQ7PXSsGuOM3tz3XgAJOwWudNlnbKQr
	8qfgVU53MP6LEv40/SXWpi2OM65DWs38K+8650ZlhpKREkSCzhuq8fIrfaN5dkoFNTQ5sfeVXZ9
	NVjwsCkLhxgmeENJPwTtB6Rn3aLZem4KnTCsFt61Pvh7ErY6WgWbg5+nOlTc6cp8SRdOlHPLqXI
	/IAAiiOQjxCovxvLQr/sbe9e1Pf9piBXA53mWFj3UmIbKiWycQ==
X-Received: by 2002:a17:903:2449:b0:215:8809:b3b7 with SMTP id d9443c01a7336-219e6e85aeemr55579045ad.7.1734731242857;
        Fri, 20 Dec 2024 13:47:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEQO1w1HHkbBSBWOz9lydmRg0CpFHp6rMiDxnhqlSkc6bDU28sTwSBlaXcgTB1B2f7vxhCoBg==
X-Received: by 2002:a17:903:2449:b0:215:8809:b3b7 with SMTP id d9443c01a7336-219e6e85aeemr55578795ad.7.1734731242438;
        Fri, 20 Dec 2024 13:47:22 -0800 (PST)
Received: from [192.168.1.111] (c-73-202-227-126.hsd1.ca.comcast.net. [73.202.227.126])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dca02e60sm33381515ad.273.2024.12.20.13.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 13:47:22 -0800 (PST)
Message-ID: <62c599b5-20b2-4e1e-810d-e4502abbc682@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 13:47:20 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v3 1/5] dt-bindings: net: wireless: Describe ath12k
 PCI module with WSI
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>,
        ath12k@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20241105180444.770951-1-quic_rajkbhag@quicinc.com>
 <20241105180444.770951-2-quic_rajkbhag@quicinc.com>
 <9cbdca90-e76c-4ebb-a236-a0edbd94a629@oss.qualcomm.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <9cbdca90-e76c-4ebb-a236-a0edbd94a629@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: iVONHB8F5yB8XXyFJPkcUH_FgLzpcwXf
X-Proofpoint-GUID: iVONHB8F5yB8XXyFJPkcUH_FgLzpcwXf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 suspectscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200175

On 12/20/2024 12:03 PM, Konrad Dybcio wrote:
> On 5.11.2024 7:04 PM, Raj Kumar Bhagat wrote:
>> The QCN9274 WiFi device supports WSI (WLAN Serial Interface). WSI is used
>> to exchange specific control information across radios using a doorbell
>> mechanism. This WSI connection is essential for exchanging control
>> information among these devices. The WSI interface in the QCN9274 includes
>> TX and RX ports, which are used to connect multiple WSI-supported devices
>> together, forming a WSI group.
>>
>> Describe QCN9274 PCI wifi device with WSI interface.
>>
>> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
>> ---
> 
> I think this description is missing the key points:
> 
> * what is that control information (power, data, radio stuff?)
> * what happens when the OS is unaware of all of this (i.e. what happens when
>   we don't send any configuration)
> * is this configurable, or does this describe a physical wiring topology
>   (what/who decides which of the group configurations detailed below take
>    effect)
> 
> And the ultimate question:
> * can the devices not just talk among themselves and negotiate that?
> 
> Though AFAICU PCIe P2P communication is a shaky topic, so perhaps the answer
> to the last question is 'no'
> 
> Konrad

We already pushed the non-RFC version to our -next tree so we cannot update
the commit description without a forced push.

https://lore.kernel.org/all/20241211153432.775335-2-kvalo@kernel.org/

However, Raj Kumar can submit an update to the description in the file, which
is probably the better place to have this information anyway.

/jeff

