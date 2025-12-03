Return-Path: <devicetree+bounces-243906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD4EC9E4B2
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 09:46:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8F4044E02F3
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 08:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 161A2273D81;
	Wed,  3 Dec 2025 08:46:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F8C29B778
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 08:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764751565; cv=none; b=MC0JG3K00UZToZbqpb8cazR/QBxYr4TjRWFA73bO2LF967qaP1GuvCCMSVY3BVhp0dIuHrDvhvTedG8VT0wSVe/Svs3Aw37hSdU+VGED6pEhyqAoNaJrD+6P5V1iNO8okJqYgJyWLWBo5lFIyxPkmqN0kkiExSzkaJ4G2hHldG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764751565; c=relaxed/simple;
	bh=sjhH1FO0RgAQKcpyBCka8mqyiXmAk/zTVVmRe8oUv/A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b5m/j5VtB6S1KzPb6iKBBEt+T19sxbVb0s9lY1Xx5aDiymerkJ1TuxuXtpuSpmrqPPZLX9GizAoU9+vScJWVgdLNnVim2GXEZsAr/K48XcsQX40WWIAGb+Md+1bkvh+gykKtsJWLeqH96MyXO3BSLWkhW6IjhToCADYaMMvEKYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpgz1t1764751513t925558f6
X-QQ-Originating-IP: kA8tgwJS3CBFa2EWDYyAwWMp3ngsWLwaWP8Wxv67F7E=
Received: from [192.168.254.128] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 03 Dec 2025 16:45:09 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8437548428152066344
Message-ID: <206BC4BB06898B7D+3cb294a2-5e06-41f1-83da-714e810d0d95@radxa.com>
Date: Wed, 3 Dec 2025 17:45:09 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND2 PATCH v5 0/3] Add Radxa CM5 module and IO board dts
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de,
 jonas@kwiboo.se, kever.yang@rock-chips.com, inindev@gmail.com,
 michael.opdenacker@rootcommit.com, dsimic@manjaro.org, pbrobinson@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251202084052.1517-1-naoki@radxa.com>
 <185BFDE915D4629C+83d852ac-617c-48a0-aeba-a881e3542e78@radxa.com>
 <CALWfF7+ESPGscJNrxxSEyNmJsFTRDM2crjAduiCfqaMUETd2_A@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CALWfF7+ESPGscJNrxxSEyNmJsFTRDM2crjAduiCfqaMUETd2_A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OJ1IEQL1epI3zs86t0k4XCeLVmfd9FB9ozy3Nq5VbdktJ2nOGxKxtbwN
	N0Wi1MhHLHVrZdrcNEXszdx4prno3N9MOKxbegCtr5IXktFIB/32uySRP0mHEnickTXyJXp
	QzruAx8UJwwfDD9iC+QQ9HnH3ysUMi9JGNR3j9BZxtmFxlP+Enodp76dyBmyuAipMAGPOZD
	xUJRF+ccT2JFILagWar8XIIr5atZRx7wA3DXqL30TWvs/FTKfRQVw2usVzP2oWBt7uIc4Gi
	9jmvUMptFWYPLaPvO6OHSmCLI1X9JqeQ/VPIXZgq2cHGjoQr8PinrYLJDf+9PASw/R3x31V
	lyoTapP9UHsY+37E7VOz2jwZKrNwFskEXzEcJYGbmyBL8Z16jJDE19qzRhkAZQYnPdJim8l
	ixyqMXb1KRFjXKUFjGXC6jZn6+M+YuaayB6vZLCDaXVMea35s3uRXtqaikHwI5b025YavwC
	SmDzMPKWSwA7JXq9etqwzuWnjoAD4bTGnLzK1tlTi3EAOW68Mv4Gs/Mr7F+ZZXe01emO2u5
	gcN+vwencZt8yjSHoDv+5MSHd6YN+HymB2N5rajYcqaE9myuRfz3VD207RCmWCnrLu8Nxg2
	Sy5mq4Mu4T+suLyU6EhBzuwBjs0dAMCONAj5dWwTJzWAPVcumVuD7Ldw2j/96C78oU4b4/+
	PxEA0KrV1xCoJep8jF8wt3FQxvDC7+pseSpGnuotwod0sdy3c8PgjBV8e+y5Cryq0U/0xAB
	9l0C9nH8UQf3gCBiEYE8RqNU2HYssOlV2F2qwpuDoERMW9EzGx43uMY2SNZv3RSz/igPFej
	dWES9o25ZCcQdRbaWdKXN7mIDwguCAVD+h5k0BZBYC1iNRZXcaS7BNdW56Eyem/uRB/DrR6
	uTVCpukye7fOJSafjR0sAgviWrx/xD22vlewuOp0MzYhDbDWIMjnosFxsITvHSVi18jeiId
	3SGbqQ7DszB3lHEp2acUZU388r72gzDr2Zkjd8mUyt3qBO6BFI4ZrU5hhiHmGZ3KeC7c3OO
	yBJdqrAQ==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

Hi Jimmy,

On 12/3/25 14:42, Jimmy Hon wrote:
> On Tue, Dec 2, 2025 at 4:16 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>
>> Hi all,
>>
>> I sincerely hope the following will be helpful in your review.
>>    https://github.com/RadxaNaoki/linux/blob/cm5-io-v999-20251201/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
>>    https://github.com/RadxaNaoki/linux/blob/cm5-io-v999-20251201/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
> Could you elaborate on why you're linking to the "v999" branch? The

When you review something (e.g., v5), you might find it helpful to refer 
to another similar thing (e.g., v999).

> content of that branch doesn't match the contents of this patch series
> (i.e. RESEND 2 of v5). The "v5" branch looks closer to this
> submission.
> https://github.com/RadxaNaoki/linux/blob/cm5-io-v5-20251201
> 
> Comments on the "v999" branch...it does have the improvements:

You do not need to review v999, as it is not part of this patch series 
(it is Joseph's work). Please only review v5 and subsequent versions.

> - that allows the usage of the Radxa eMMC to uSD adapter
> - defines the gmac1 in the SoM dtsi, but only enables the gmac1 in the
> IO board's dts.

Thanks anyway.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>>
>> Best regards,
>>
>> --
>> FUKAUMI Naoki
>> Radxa Computer (Shenzhen) Co., Ltd.
> 
> Jimmy
> 


