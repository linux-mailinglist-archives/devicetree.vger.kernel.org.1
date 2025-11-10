Return-Path: <devicetree+bounces-236601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 81ED8C45B20
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:44:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4B22F4E286F
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48FDA2EB846;
	Mon, 10 Nov 2025 09:44:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2769193077
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 09:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.169.211.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762767889; cv=none; b=OBVuH61d2e0e3wJqRzzElBVL9wu4a154CnMRpRFH0h2bK5aBkUL4fr6k0SHHQ0PTZsT7Jgdz+vPGX3WJuopmhkcB4RptMD3e/C1EfN8I7ht/yF/CxY+Wpd/mF+dzQJdqJQehPA8MArXtvq/YondpTJohPPc2SqAmHPWxkEKGYyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762767889; c=relaxed/simple;
	bh=gXRPxTXUKlJ0PKd1gwbb970Qq+sUTRiq67ubWm82Ep4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NgUTUOHMySXpD5TypRWEwQJv2FhkuwqtTF3PORP5qfwQTr29Nys8sAg2JJWSaSe3rimq2SFKP5mmaXb9RuNyXsqAVkmzc5SkI41FSAcuYumhZmawyPAQNxZS4oVtPIGzzOTtKKftVHWEhKi9KWS3kqhhw+CIJuH25qU8SfIyQBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.169.211.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762767876tdb51fa69
X-QQ-Originating-IP: 2CK8apsjgNKqbwdcvtczSYL+GYNV0vIoSyaleXbZxa8=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 17:44:32 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18044168164568340078
Message-ID: <8934442FCE2020A5+855829eb-e783-4aa5-b4a1-13b0a519c46d@radxa.com>
Date: Mon, 10 Nov 2025 18:44:31 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Make eeprom read-only for Radxa
 ROCK 5A
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com,
 kylepzak@projectinitiative.io, damon.ding@rock-chips.com,
 sebastian.reichel@collabora.com, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251110035455.839863-1-naoki@radxa.com>
 <20251110035455.839863-2-naoki@radxa.com>
 <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
 <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
 <65f17890-c052-f303-4731-f882946df1f1@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <65f17890-c052-f303-4731-f882946df1f1@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NWI6nfiBTAG+bJS9h5NSHO2xei3kYciSlrN0PjyiX9IvgN04vnm6cDGo
	J2U8adVDLXu5U/+cY3y1Hv355D8UobkAQoYKOIYYxEmmJnQWYVkFd9oSVRQirmFo8+XLKUa
	xTcLGEAyne8N0W2Nt/Xk8FdoGG6IvP4Kul/oPjNHkIet+Zp6NNOAkiaagnGNJl+v+4mS9Zz
	FL3ncjc6qOGHLsI9BheT+9H4TbyFxwLPXzohzLdx256PVYOhuuo8y7f28oFdqx+IZ8KBYKM
	RJwFYY92uKUJITJxq7V/b1mMGiKHnLF+FR5lN415MuyhAFuOY/3JHAFIKraBK0+K7VFOMqm
	/NewgPvF5r6CofWhOSylctjsCp22MqexvhEh3GquitrGkfWnD5zx5vs6wp74GfPY/jt05VG
	hpH7bD3awRHqPgfpBZcOuMH6mY6bwAoCLpYIP/3r4678YRJ10zF8y/2DrG8Vqd3y4oFOmQX
	Rxnt99t7tLDW2c92U/0yz3QVn9+tZpfTa0WTSXEvvxNoOSV6qOs5ZTl7sRTYTBv4aRNNxM9
	JG0a0kxBjfkFAa52FB4LFxRud805hEjvO8deblAj8auy1x/UdadK+2xrwAYRXkJ6oDcU1NK
	L+VX7T09GtJj5r/At49Euxd+jH04WAh7PE7Vxq64sNil9M3Ay5bHiY/7CkUAOwcIQEn1IUo
	aPsVxtgQXRq63H8HnoTm6S2/TaDCijANMzL5GdeYZ9WbN16tiYL04YYzpxCMBW6bEkPcG2D
	zsycwIZz/aWcclzTmrB/fZ5iWLtBgqGHfIOzijMSGCbkEr9L/xNpW12Pzt0s5xbLa0fMfpx
	PVX0gfnhmlRQeDFM7IDTJwcvUT3gNRaLcly7LLtsRgNtNBvQYIZ1Vmqt2RzwbJMWd+p5oIE
	4NPGjKV9IFz16Ee6lotYfgvpk3/OoLwaTJAAzcJaWpHKHpHVbFKLx6UD4Yfr9ss9FDzl8Jg
	RYUMCay+Z8FAmtcqR5ST1i8Kb5WSMU0x6OAc=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0

Hi Dragan,

On 11/10/25 16:38, Dragan Simic wrote:
(snip)>>> Additionally, it would make sense to squash this patch and your
>>> other patch that addresses the ROCK 5C together.  They're very
>>> similar and having them together in a single commit might actually
>>> help the people browsing the repository understand it better.
>>
>> I'll drop eeprom patch from ROCK 5C v7 patch series, and squash eeprom
>> patches for ROCK 3C/5A/5C.
> 
> Thanks!

I'm preparing a patch series for Radxa ROCK 5A and I just remembered 
that the eeprom node in 5a.dts is totally incorrect. The eeprom is on 
i2c0, not on i2c2.

I'm planning to include this eeprom fix as a part of the patch series 
for 5A.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

