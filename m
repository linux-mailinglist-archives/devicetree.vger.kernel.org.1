Return-Path: <devicetree+bounces-175094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B127AAFCE1
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:26:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5CDF4A3895
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F34326E172;
	Thu,  8 May 2025 14:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dgh/ElC+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65481253345
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 14:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746714380; cv=none; b=uE2Lqqi+uQbm6n9pUGxtxqNcdjf7oT6YWxGRFBjjaTE2cC9PFiZOXw87VM7BPX94uRNkSuouf5njGuIntRBOL3Id3wNwvdPRNFAYoOVSn70qx7AIsXfthBl7HUWT/JVF/Kg6nhr4Ez+QjbDGd02ceKmJVJ/WDZSrmgmA8fJxnbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746714380; c=relaxed/simple;
	bh=uJm2d/sYysk/ox5eXeJvGB2Ff2/lvKGPfhJiU6lhUCw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HWDKsKLj+dS2XPAC5W2L7VFvAFyP5wvK/F9f+18Sp7++cOXTLnkHa0Et4ZsXZ+5D5zBJwddlj3sSHZyPFID7tFnhcFP4uKqX6uaYU6/Nk4Riuk8kSvufT+cvcGnaTSp0m0tGR4gUTX8Zt7HGBzYc50zCffnoyrVv6g4XwbOphcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dgh/ElC+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548D0LqW016851
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 14:26:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UXdlLGg1lnlu/LLea5+Zsq6a/vEhr+UdYLuwJ2Yk5Do=; b=Dgh/ElC+I0tBaC7m
	SxP/yOcwwBFJf5x6/b+2PcyAUWxy0V2vhQ+n2cm5EsGxCNrpa/+TRp3viakckvoJ
	MkM0d8/raFtVZZWo3DqNqk1bAXGYdi+Kg2/wnHCI5LJNIoyaN75xQavoeF8SOsyH
	FHXQ0CfiCH4Y7l8hxWQPVh8ivM1OtCDGvnK3u7TVkWseJH7cJIPNmLYLxLNuonqH
	mmU4WWsT+G8kcF85M2vXxrynXTzr9vnRYIFkezWWV872hX0GZei1HdOY6P1kRkhH
	AcN1q/hecHZCpmlZFQ/bG7+Qtqu1ReIOlzuNdvwwZ43i1n+K70N/ehhzk9EgZWVB
	DJKbtQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp8sjuk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 14:26:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c54be4b03aso22133885a.3
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 07:26:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746714377; x=1747319177;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UXdlLGg1lnlu/LLea5+Zsq6a/vEhr+UdYLuwJ2Yk5Do=;
        b=bWxdVERbnsNVOrqLgbbsWKNhOQDX8SCHKGo/b/ElBCI56MSch6zeE16/fZVluHxC0p
         Cs5BLVgdq9q29R0c7xBLbZTKiLafE0wKKHRzeKNdpY4JhI2vxgGAdr8t11fIgMMEjTy1
         eg6zCmOrTb8RqFGDcVOHXZzHsSuOSrdsp3ezwXBkW55Qtx/ocBQzK5LX3WpNNU7Y/saa
         qnnwg9SxDSCZojRodT1JQLGbaULROwgfZc6MTsEu5apYdW3sjnwLZPsN96QllrZCr31H
         iOkMXu7o5Fttl9DAgBLdKoxB6xbV70fJLdIu66QGyqrbmf7RgNDuYqCEAdJCoFLqoveV
         9oWg==
X-Forwarded-Encrypted: i=1; AJvYcCXYgOMaEupRyZLEZjJmas5aE5l9Ok1F6ju7kUaQhev0hVHCW38NFk2Limop4q5ekoea+v11BiLra7Cd@vger.kernel.org
X-Gm-Message-State: AOJu0YzlA+JMMWQDCoTWUWDlQAhDSmehc2pvN6tywdC6XDropvq7mrKu
	ogZOJfjT8rAlJuk9G6BdlmcoPtUxXTQKdpP7urWQLFoKM5rJl4DPn0msV5ftTOS/0RsA10oxaKk
	L/PwbZq/t5IO/4kRcYSg+NzUKFYYU58uC2ydJ1yWxOcZwRrGvp5+IAa5koDg0
X-Gm-Gg: ASbGncveKGj9EPxwFL5B/KUYWX+1xBUK0OcDAB9D2RMZyscxi/D+eQjI4fqk3UCxcV+
	FTwKg7JzVWDpXYdhs3ECyCSZw3S97lcruBuS2Uj8WBg1Qqpmxmz3X+t/oE6DXdNq+Oy8G52Pnbf
	FQ1j42ahZqjfowKLF06LhauN+io+OgvugokmarO26UKdd/yoaNxzbDU0CdKiZR35jb06tJQa//L
	aGacS6mJr8BBCVu1cNUm7x2qqSxhlmgT2OEweGmr/sL3asEQ9yaDB9ZP7ThCE2Xcd3ZC9o3SNmr
	PL1NpJIMf9kcFcY6Dq0Mi0iFCiBzTgTwLGkH7KxlaFiQGTHFJR3noQCUZ68tqpHAnys=
X-Received: by 2002:a05:620a:319a:b0:7c3:c340:70bf with SMTP id af79cd13be357-7caf7420db2mr384145385a.14.1746714377141;
        Thu, 08 May 2025 07:26:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBmwqtRAYRbfqe3Sg4B1w/JN84aZ1KCtI2s+2ewc9k1uRUwUorYOTTAwQlq/ZNkjmJHGD2LQ==
X-Received: by 2002:a05:620a:319a:b0:7c3:c340:70bf with SMTP id af79cd13be357-7caf7420db2mr384143785a.14.1746714376822;
        Thu, 08 May 2025 07:26:16 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fb9c00ddd8sm4639625a12.58.2025.05.08.07.26.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 07:26:16 -0700 (PDT)
Message-ID: <2ce28fb9-1184-4503-8f16-878d1fcb94cd@oss.qualcomm.com>
Date: Thu, 8 May 2025 16:26:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: qcom: sc7280: Move phy, perst to root port
 node
To: Rob Herring <robh@kernel.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski
 <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com
References: <20250419-perst-v3-0-1afec3c4ea62@oss.qualcomm.com>
 <20250419-perst-v3-3-1afec3c4ea62@oss.qualcomm.com>
 <20250423153747.GA563929-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250423153747.GA563929-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: M3dhqIi3BIUJTOAYjRUSB0QWMwhKwIc1
X-Proofpoint-ORIG-GUID: M3dhqIi3BIUJTOAYjRUSB0QWMwhKwIc1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDEyMyBTYWx0ZWRfXztbxT3cGJoH4
 LP0Xs5jLBKolO4UnioO+lCmbkt6H8VormNw0YnzTzkZfd5u+3RPb358wHXbc/SR8UyXNNhr3Mtd
 4v3ZuouOfCFSk+LakyfeIFeXuY1gwxPnJP7WwJ/XVZd7vZdY3rEyO39s0IGJcdP8C2dEzzPyeRW
 yf2d5y8YyYX6zuYxqYX+OGq4r529pTdW1omRJH12scra4armqKq8ybLzBedwhITRtFpUAvAiwr6
 PvLnMZcosUdANzTTHDwqEUyOG/cb0Kgnsyy8wmN05fgBzmxu2YgHXv+PMqo3OeKzyQtTvEJaJ7R
 i05HatJ3SXKSGcdIN15eIRlBKw6dIJTEJFrCkymaWEPkcQlWcPfE4G1ypqtsVEFvL2zNSB2U1S1
 GtgjGqUgkqq1gUnF0ftXsvr8vsBv8PSm2+JGjwYG7UwCY2jHTtWbp6YuxkEHyMQpLrv04J/c
X-Authority-Analysis: v=2.4 cv=e/4GSbp/ c=1 sm=1 tr=0 ts=681cbf0a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EtpzxOmWCkDpKJZIM9sA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 clxscore=1015
 mlxlogscore=999 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505080123

On 4/23/25 5:37 PM, Rob Herring wrote:
> On Sat, Apr 19, 2025 at 10:49:26AM +0530, Krishna Chaitanya Chundru wrote:
>> There are many places we agreed to move the wake and perst gpio's
>> and phy etc to the pcie root port node instead of bridge node[1].
>>
>> So move the phy, phy-names, wake-gpio's in the root port.
>> There is already reset-gpio defined for PERST# in pci-bus-common.yaml,
>> start using that property instead of perst-gpio.
> 
> Moving the properties will break existing kernels. If that doesn't 
> matter for these platforms, say so in the commit msg.

I don't think we generally guarantee *forward* dt compatibility though, no?

Konrad

