Return-Path: <devicetree+bounces-131667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A469F44EB
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 08:17:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5605164F1E
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 07:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9FFA15A843;
	Tue, 17 Dec 2024 07:17:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr2.qq.com (smtpbgbr2.qq.com [54.207.22.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A91FB15CD79
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 07:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.22.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734419865; cv=none; b=OKJYQYpasZDwE/WI2iKaRmsJ+TMAyTfl8Q3loqkmJKd2UluSEVwub/0Y1v+sYJ3fBKOfqymxmod9l+jtZ/cRqy5Z+Z39zJYLN9cPooR319My6cuZHECV+cMF3C+D0fpxexyPR5ulCfxJ7FC9vExri/bkvb6pCYTecabwtlpfaKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734419865; c=relaxed/simple;
	bh=+bWa2mH9Ep6GYZ0lA1gBpNy9YwUtBJHyOCt9jwQ/n6c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z2hmCZHeFUOUQznXKhlXR8MWBkGOAenM0LoPWakk78++KWQQTllypSd/7g7tKmup3tZV1UdQYoyzrK/S3YB4a4O4hj0voAQTQS//SaFT1ZAKPOskriiovQz7IJeHqPORr4HDsHR+PePaQD4PlOPDeWihPfsjrCqUBMj9oZe0cXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.207.22.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip3t1734419815tfi4l8w
X-QQ-Originating-IP: FATXyyRXnHdEfrhFtUmXKV4mt7pDLQPrUgQlNZEBCLc=
Received: from [IPV6:240f:10b:7440:1:1e5c:5a5f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 17 Dec 2024 15:16:50 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4968437046563404095
Message-ID: <98F610891BD5E021+55967d60-9a5b-4b19-8005-f10f51bfe417@radxa.com>
Date: Tue, 17 Dec 2024 16:16:50 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 11/12] arm64: dts: rockchip: Fix proparties for pmic
 regulators for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-12-naoki@radxa.com>
 <0b6a7a7a-ff5a-4897-a283-6bf582dd1d79@kernel.org>
 <DC42478EC0DFB00A+6e374774-07d8-493c-9f2f-e7106d1f2d61@radxa.com>
 <3313fc80-73b9-4063-8076-64e65c5d5921@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <3313fc80-73b9-4063-8076-64e65c5d5921@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NQDSFSrlZSaiM2bjtiHdvzs93ID/yCWR2hCy8Tzzp1tsx7ecRc3+aVap
	76F/9h06L0T1iDvgAQlzo7SX5sQTbkxL5H2lpsd5/Cc9ukXQgQxzhbiz+BL1pfNZQc/i6JB
	v2Mecv+WJnneAtyHKxOLziFJJSV9hOAEFosIyIpatEqCxPGO/JoPRkrAZivPN8/1DteKQCE
	+pg+zmKo4Duw2CXsY8jwnEzQ4ydRxVhv01s+mRhECqU7mKp4hL2Q4dA+YV3PtO8iZVB7x7Z
	CU5OGM1gWZEezN4oa2DKyaeFf8XXpYHOJdYSN1ggib9nuP+A/MZS8q31pV9yjoB23hX0PiI
	kfV7woqgrmv099iuk/H7m/flhOebBQ7PSTiGN14D/W0lwhKIIJqZfIE7oFZIFp51evbhaJl
	mUDtOpmXjzt8IqD8pJDC01n2k8j5wq5fboSoMVwYJ6FU4qpElHtKmNjlqs5GcIjYnfInQNw
	E4PF3edXEEK+6W1tipoiNChD3bz/cjPc2sJrs7uACa6zMmBk1yxamUZtUcP/dA9w6IhQ0Cj
	XImRfc4aDb/wVU5SnSvTn0juNWVWq32p2dEkPZuSDccaOLUIdAJ1le6XhfFoovYT5t+q9Wx
	lg6Swyz4cSRUtqZj/nOJWTIUA25pv+OoZIgqzKpHmwpmtAZ35SiXjA3k9CiHttawHYQHTQU
	IiK002azv9+67GocBSQJaG57eWIm1w5lMJk2XswYfuh/SQ4nvncd/hIlpoWTcj7E4cxRPa2
	JwXk0CM8p8oHmHO4f5VwG8REjpco5vput/KDg3sDuFza9cQQdl3RfFbsdxUzyTZZZPDxMMr
	zPGMOne+VEdbSXBDnHe18FGRmANX9HOJ/wCjUEabsNGGci3UgPRXru3LK3Z5ks3qjkhjbzo
	8t58GxksKxeIogBjU1hafJZmYdca/p8Co9nDxPChkiRNNxPNjpp3d6NG9HgCDvwZOcJX2RY
	rZd0=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

On 12/17/24 15:24, Krzysztof Kozlowski wrote:
> On 17/12/2024 01:43, FUKAUMI Naoki wrote:
>> On 12/16/24 22:41, Krzysztof Kozlowski wrote:
>>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>>>> Fix proparties for dcdc-reg7 and nldo-reg3 regulators to match with
>>>
>>>
>>>
>>> You have so many typos in almost each commit msg. Here both in subject
>>> and commit msg.
>>>
>>> Run spell check before you send to the lists. Don't expect the reviewers
>>> to be your computer tools.
>>
>> Sorry for my poor English. I'll check it next time.
> 
> I am not pointing out English. I am pointing out not using standard
> tool, spellcheck, to fix issues in effortless way.
> 
>>
>>> Explain what is being fixed here. Why would you prefer to match with
>>> vendor kernel?
>>
>> Not my preference, but the only reference.
> 
> Then why the reference is correct? Provide some arguments why this
> should be changed to the "reference" and not the "reference" fixed.

Are you serious?

Why do you think the current code is correct? It's written by me, typo 
and copy-pasto generator. Need more argument?

Best regards,

--
FUKAUMI Naoki
Typo and Copy-Pasto Generator

> Best regards,
> Krzysztof
> 


