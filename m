Return-Path: <devicetree+bounces-243688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 09104C9B441
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 12:05:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5CAD9348522
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 11:04:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6A2C30E854;
	Tue,  2 Dec 2025 11:04:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast2.qq.com (smtpbguseast2.qq.com [54.204.34.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6780C1E7C03
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 11:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764673484; cv=none; b=c5dzMV7cY6k2XXMpOxSA2W6qT1tS0Krr9+2Wl7Yx/lA1SEhhIdMpV7/mnCaXaNoHHKPzFiYfzzMSM47ieZEhw2Qv76uUTrVuiukr6r/vPl7ilT1ddrcVO2btLTPaaNKa/Q9IrbW5nZxjiY49i4fdABQ4JlyKL8Y3weqqG0JV2kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764673484; c=relaxed/simple;
	bh=DAb/fxpLMRLfpjYnThq+fPm8nwUxGiuueWImUM9J6I4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F448Ix4SZ5Op1wF8+RXD7eHa6EyOLK2m7wQKnit4P3ySHrsO/I/EKft7N9OcyWpNOQN4CpqbLEV6RS3nvdDcYSH3tXEKtyt8u+A4qvElhqok8nhdwMLjDBuSgLcMY0Ng/ctWrQRjViklidg4Y5XritA9kIeXOIt1hMio4Zizs3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1764673406t16e4ee98
X-QQ-Originating-IP: Ngyxa6UAW8SoAAS7TsRC2ZYylTuGDWDYh1bgqmdRliI=
Received: from [IPV6:240f:10b:7440:1:a68f:7233 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 19:03:23 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10009758531052449015
Message-ID: <CFA12324BBCED0A8+9e6c7d5e-85ce-4f26-b062-ccfaf17783fe@radxa.com>
Date: Tue, 2 Dec 2025 20:03:22 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v5 1/3] dt-bindings: arm: rockchip: Add Radxa CM5
 IO board
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
 kever.yang@rock-chips.com, honyuenkwun@gmail.com, inindev@gmail.com,
 michael.opdenacker@rootcommit.com, dsimic@manjaro.org, pbrobinson@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20251202052702.155523-1-naoki@radxa.com>
 <20251202052702.155523-2-naoki@radxa.com>
 <468640ef-58a4-415c-9785-8a902cbf4370@kernel.org>
 <3EC71E685E4A7C06+f7e4f51b-e41e-4bcf-bd20-685e878b71d4@radxa.com>
 <4d7979dc-d2f3-4bf9-b2f1-6ce4f61d1ef3@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <4d7979dc-d2f3-4bf9-b2f1-6ce4f61d1ef3@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NkLA2q2LD229OLR7bumwercyJb2sJQe8URzw1AY8Ue/C+eTbJY8djL0t
	52pAvuF+/NeDKwo0gWfkX7G4P2IHYhaHerYxeywN3Y8m9qcrx3nw27OK0QeMN0AKLvDnVXH
	xMLlLKNsCEI0wq9u+A2tips7qqEO57P2bZkcBWkifR/IRA0KwkpRqO6i1UARPlcZutHHxLI
	be+BtJqtKUMtoKYz+DjpPUp5zjV/wbi2bA/njtF+EXVMhDU0NR3m7/9btWCyeWnV51E4U8r
	MQpemUt3WEBE9Yc+/111mtgPhNU0OfeO9TihFAKkl9TvNWuqVLv7rgLBDq9PBy6TtNifFgx
	BLs430rUPTinxeCbKVLQ5RK8tBihzCv93+d6Ws3Si+tjx9QBul6xW1tBK0Wa6QbyKNXUeK6
	GtEHf57cqMaXqMn9TGW/aUp9WHcK1JWz/RxFq6ao2v+mkMfvqSTKzwZLWtoCaa6hqCD2SU4
	4St6zJrm/XQC4r7MrS3+Y3fGy/Odt0OI1GpsV/rvKHXbrWU9+rdIoT1GP4XBSjbiQSNwOPo
	68bitYdsK7444+PKotc7VPHn+xXiHiE8FmrFCgw3N5poYL9PcY6DbP+NL6gt6fPDmuk5CM6
	vfclkvEKqyEgzYSO8WFPLf2kckuXUw5pVzilM9DtSegZpN4h8L/93eUJnHyfqBPEsgD3AR8
	Q9jKit4/V3umaBGD5lBDYeIbMbeY8ZDdBHy+EW0mLJ/g1n0e7lAAmDfJIGhEufpIO3LW8RL
	eqIBMSKozRD+oGkTdWdGJnV0Iv03Ngse8GQa0lONgJsE9BmhVsXGVw3eoxtRT6d9Y/4cUIl
	A0ZqpYWKZqsU2z7WkOJp7eK6o259xu2IslEo3SYZy0xuNuJfWejFJVd0CtwZKkVH2MfgzXJ
	m7+wDmr6N2Mk7UxGFL8fgjPq2nFtBFnDlRNNAAMKXeTeRqZE2wA3gnGtZoNp0K4DgnBb4P5
	imi4wlUuzoQwGETYXXnKGvTiU9+rWPMNNO7ipNg6XVigUC0p+5OqahLHYkzeHrNJF9gyv15
	e8p6mH5A==
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

Hi Krzysztof,

On 12/2/25 19:54, Krzysztof Kozlowski wrote:
> On 02/12/2025 09:33, FUKAUMI Naoki wrote:
>> Hi Krzysztof,
>>
>> On 12/2/25 16:45, Krzysztof Kozlowski wrote:
>>> On 02/12/2025 06:27, FUKAUMI Naoki wrote:
>>>> From: Joseph Kogut <joseph.kogut@gmail.com>
>>>>
>>>> From: Joseph Kogut <joseph.kogut@gmail.com>
>>>
>>> Your patch got corrupted. Look at your git, it should not have any
>>> "From" parts.
>>
>> I just followed
>>    https://www.kernel.org/doc/html/latest/process/submitting-patches.html#from-line
>>
>> I'm sure there is only one "From:" line in message body generated by
> 
> There are two, check yourself. You would not have two From's in the
> email patch if you did not have two From's in the patch itself.

Thank you for your valuable feedback. The patch had one From: line, and 
`git send-email` added another one. I will be careful not to include a 
From: line in the patch itself going forward.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> The doc above explains the patch for sending, not the git commit. They
> have differences, because From in the first case is actually Author in
> the second case.
> 
> Best regards,
> Krzysztof
> 


