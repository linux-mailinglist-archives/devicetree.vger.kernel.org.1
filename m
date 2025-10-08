Return-Path: <devicetree+bounces-224579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CD1BC5706
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 16:34:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8A0DC34A3E4
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 14:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DFA42BD001;
	Wed,  8 Oct 2025 14:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="Cwil4agj"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF69734BA22
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 14:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759934076; cv=none; b=DbXk5gNe8WU166nqoOlBOp7tIn/Ix6D0ymmv2Lqt5ZFPSWW4vEWbcYmwsGmQOuXiarcbS0rTvHxDYj/Fnj4dyOjlLlSy+WqsUVfS8wFwrskQPA/CMRZZ/E71qPozgWj1QUtpxwAq2gouor9Zz0bMlP9yYNqQp+l9v2WthzRoqZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759934076; c=relaxed/simple;
	bh=YaGTql1/BkBa5c8lrHny35f1J4lHwLK1WWwRmC5UbB4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WOa1nSOBbTv1tD+eHHE2fCJIl3TpJVepm6m7SS8gO7ajehyrJdeywV/3K5SOPgw6SX4xXDq6CrfCwfMs0OYOYST3Y2rXtamcVNxAsnuMpQLPnW8K6Og4FerQTJUfwKWpXc30IqksOjLllXc5kG2hkdPw4jVzYgN0rpS7nuTQc4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=Cwil4agj; arc=none smtp.client-ip=212.227.17.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1759934061; x=1760538861; i=wahrenst@gmx.net;
	bh=SOLaMVFpmYVh1bKEOwH+Y/nXUsErlVSXLPMaBCSyCq8=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=Cwil4agjyC0s92drucBXx7CJAt9aiepygJlyT7P7IEaoLlEAfoytSycCYtw5YxbZ
	 SlvVbhULG++tY065lSK+W55pxwjz0cBI+9jct/G5Fbx4m5Z6ZaN2CjvjnMC+ZFDKE
	 seLDEiqF7rrIpGrQDBlukmfaad6YJIGIRlASeZluIxU6bIXCpvlGIWkCUNO2i1iP+
	 IfBKL5vdzCLoHb0VxYVGV6ZEwuWr22ElIGrvqtur9BYJxE6kZOe/iq2Byam7nknHA
	 aJTTRwDQ/yZjIqsiSvqfDTOWMRwMSXlac6icVReFksMjLk/m5VcT7qemSO3vdt3hH
	 4KTzNEaSFQUEILM7Yw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.156] ([79.235.128.112]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MpDJX-1uTou33Jy3-00pOaT; Wed, 08
 Oct 2025 16:34:20 +0200
Message-ID: <236bcb89-203f-4524-9512-cd77a558faab@gmx.net>
Date: Wed, 8 Oct 2025 16:34:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: broadcom: rpi: Switch to V3D firmware clock
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Scott Branden <sbranden@broadcom.com>, Melissa Wen <mwen@igalia.com>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Ma=C3=ADra_Canal?=
 <mcanal@igalia.com>, Maxime Ripard <mripard@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Stephen Boyd
 <sboyd@kernel.org>, kernel-dev@igalia.com, kernel-list@raspberrypi.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20251005113816.6721-1-wahrenst@gmx.net>
 <20251006203509.2056322-1-florian.fainelli@broadcom.com>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
Autocrypt: addr=wahrenst@gmx.net; keydata=
 xjMEZ1dOJBYJKwYBBAHaRw8BAQdA7H2MMG3q8FV7kAPko5vOAeaa4UA1I0hMgga1j5iYTTvN
 IFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+wo8EExYIADcWIQT3FXg+ApsOhPDN
 NNFuwvLLwiAwigUCZ1dOJAUJB4TOAAIbAwQLCQgHBRUICQoLBRYCAwEAAAoJEG7C8svCIDCK
 JQ4BAP4Y9uuHAxbAhHSQf6UZ+hl5BDznsZVBJvH8cZe2dSZ6AQCNgoc1Lxw1tvPscuC1Jd1C
 TZomrGfQI47OiiJ3vGktBc44BGdXTiQSCisGAQQBl1UBBQEBB0B5M0B2E2XxySUQhU6emMYx
 f5QR/BrEK0hs3bLT6Hb9WgMBCAfCfgQYFggAJhYhBPcVeD4Cmw6E8M000W7C8svCIDCKBQJn
 V04kBQkHhM4AAhsMAAoJEG7C8svCIDCKJxoA/i+kqD5bphZEucrJHw77ujnOQbiKY2rLb0pE
 aHMQoiECAQDVbj827W1Yai/0XEABIr8Ci6a+/qZ8Vz6MZzL5GJosAA==
In-Reply-To: <20251006203509.2056322-1-florian.fainelli@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:EyC4Fzsb683ikwexkeENPxMttDHX3g15NDbT9s4LM7tfAaS1APH
 wsheSjkbtNCDfbKhy9nrpjP2M0PNBKsSuNY7JcvKhyCcmzC34uDyqDtlGM0K2+td3GWUkWo
 y/akN9z/PjsEVU1DZnPie2gWzEJcOtAzcZu4qJO304MsOSYkODsYBLLBJChw4Ni9wXXxNPn
 KBrjFaeMbDRQJoukIkg7w==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:rV9oOL4i0ig=;tDLKhVd87gWEXY3og+0uqGODdzm
 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
 LyY/pjWQhtSVHEOx9qWvpCM8c8=

Hi Florian,

Am 06.10.25 um 22:35 schrieb Florian Fainelli:
> From: Florian Fainelli <f.fainelli@gmail.com>
>
> On Sun,  5 Oct 2025 13:38:16 +0200, Stefan Wahren <wahrenst@gmx.net> wrote:
>> Until commit 919d6924ae9b ("clk: bcm: rpi: Turn firmware clock on/off
>> when preparing/unpreparing") the clk-raspberrypi driver wasn't able
>> to change the state of the V3D clock. Only the clk-bcm2835 was able
>> to do this before. After this commit both drivers were able to work
>> against each other, which could result in a system freeze. One step
>> to avoid this conflict is to switch all V3D consumer to the firmware
>> clock.
>>
>> Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
>> Closes: https://lore.kernel.org/linux-arm-kernel/727aa0c8-2981-4662-adf3-69cac2da956d@samsung.com/
>> Fixes: 919d6924ae9b ("clk: bcm: rpi: Turn firmware clock on/off when preparing/unpreparing")
>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>> Co-developed-by: Melissa Wen <mwen@igalia.com>
>> Signed-off-by: Melissa Wen <mwen@igalia.com>
>> ---
> Applied to https://github.com/Broadcom/stblinux/commits/devicetree/fixes, thanks!
could you please check if it's pushed?

Best regards
> --
> Florian


