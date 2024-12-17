Return-Path: <devicetree+bounces-131580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A219F3F86
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 01:53:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 764701630E6
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 00:53:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122EE20311;
	Tue, 17 Dec 2024 00:44:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast3.qq.com (smtpbguseast3.qq.com [54.243.244.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5B4171BB
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 00:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.243.244.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734396265; cv=none; b=jEJrJ4dlJvs172jLhHdVYeM0YGHvA21wun0WcC7qDrIiwa7IWu0jo2UIhpZeq74CykiZloosvi66ecgF4oyf3NMfqmC1oy1HuyAgM2zVSq9vtIxVN/+d9FPcwSwZaFnMJXZa9lHorPfW4h48zug38m/UbXEgVdB6YIddiqSI8J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734396265; c=relaxed/simple;
	bh=xlrfqzjWeGTwMHFgwXkPJmve5JE1RmNZ7bYdyVDBzyE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y0giNFeIGHKAhtbmXpY8nGvuc5AB5BfK1PRvdtGYOLMOGQ9FvJ4JFSnTp6TYFrS+O75YZ13w3265kdUrkDgyDy01tQTOs02XoHGpXkhpLYCiSOR0pPn9tn0uVab99gc8PCStc/+d22jrO4tVjRVfvpcj0uXzBAJC7TjKMwogZCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.243.244.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1734396214tsggdj1
X-QQ-Originating-IP: INMcRpIc5a8V+vRyd8Ss1M4Ww7lcyJLRJ2m7Q7r9odg=
Received: from [IPV6:240f:10b:7440:1:1e5c:5a5f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 17 Dec 2024 08:43:31 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17451533811309740664
Message-ID: <DC42478EC0DFB00A+6e374774-07d8-493c-9f2f-e7106d1f2d61@radxa.com>
Date: Tue, 17 Dec 2024 09:43:31 +0900
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
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <0b6a7a7a-ff5a-4897-a283-6bf582dd1d79@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MSyoPQEuxKCuAmPYPUDcehBrtcOHYp2i7wpCiPukyp/4x4QHnLLDkVPH
	+Rl4un1OwDXqGjLc9tVLRd1mMLa4TxYza5rQkam7UDweDDtVLXlVeE/xRkdzt88NoIqMCgR
	Xrf6pBVOo+bLCGCoxEr09o/lSFdCnxDJK2Ea0NC2ove9/0kwuxUvgy0RlBA67QM4vTAPANp
	mfjbJFsQ+EFAq9ZQY9aMEEEhqAlUpVWPzGq/hWjHvSP6/QLmQYpQ3MaMiWpuGL5qEso80NG
	S3TgebYgS9H/01+Xwj5wQ9vISOGWOmURYDHc35DMD3VRgpM0VgaR5ePcTOgdejwsxDy4zxr
	Bu/R+NJ10VIE2F45MOSZZqixnoGWrDdxVXtXOgj0lgnWKXCfi8PFvLJjX4XNyVvXINb8Yp+
	IRyZczP6eH1QwOP8lDx5dSLN4ZEAVmWmhPiiZDrkpyB7onTY7JAOXGqXOOolx2cBUbrMism
	ok2FgCVluQbHrz5ANVXihuJ/TOLiSjOaIX6svam4vYjc+hRWAmNTt1Kws29/Lv1NHtBsniH
	EYP16HFf+aqvbHZgBwqZjERhUreD+cPinrplq5HT7d9go9d9sxmPhuPIv+A+kxJg8U/cbp6
	yhIJYZIrRHzIxWqq7LkK9p0FGW6umRfNI71EONXPeO+H8p3T91jtF0uFUI/F1gGImCvTrnL
	drexes7e2RnekiH3doIWbRhpAMW/fHSJxHTNv0Eeiucb26TuhKBbkCH8roE8CRBoxlGujeE
	6dIoTMW/v9xNtqQLsDL6JZgUQByDr4xSZOcWIrJj+zmB/E0NbrUR8JG6gnHw0DX04A9BmFM
	xhy1eGkh4MGJARPCs3dCOkF7aTCz6VhWgGGQzwSc+2XeYhkaqX1oRzF2HzkVqYLjY5xdMG1
	Ya3JeJmwwcwxbmB++adlJofLISFLJAoiUUZMTKdYFy9FPLxKoLNB5g==
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0

On 12/16/24 22:41, Krzysztof Kozlowski wrote:
> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>> Fix proparties for dcdc-reg7 and nldo-reg3 regulators to match with
> 
> 
> 
> You have so many typos in almost each commit msg. Here both in subject
> and commit msg.
> 
> Run spell check before you send to the lists. Don't expect the reviewers
> to be your computer tools.

Sorry for my poor English. I'll check it next time.

> Explain what is being fixed here. Why would you prefer to match with
> vendor kernel?

Not my preference, but the only reference.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> vendor kernel[1].
>>
>> [1] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>
>> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
> 
> 
> 
> 
> Best regards,
> Krzysztof
> 


