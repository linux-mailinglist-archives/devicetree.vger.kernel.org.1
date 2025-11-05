Return-Path: <devicetree+bounces-235424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6561DC385E6
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 00:30:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 892533B3B33
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 23:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2755C2BEC2A;
	Wed,  5 Nov 2025 23:28:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4AF3B7A8
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 23:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762385320; cv=none; b=WnAIPYsmus4sMlQ5hMsoTlqOuVJ0R83WApURIzE16qrckOqFdmb1k5yXdfV3c0vms7t4/sl9WKXMJEQqWrKAUtpgoBxcjIpRFayTHI2PdravRn14dlG6YgS+O6vxYabTGnTcIORHdVZA0H/B1DCvILXSUiaLDd9u4kxW+mlcLjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762385320; c=relaxed/simple;
	bh=R78U5SY7Hg9RhI8v/PjGYYFMbDqiKlquVHynEp+dwHU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NUh7xTFVCTXP3JUg8eJls9W1V2zZ9+SrgRowVunI+0Z7beL4IcS3Z2Li9uc3UML8tUVcIcC6GU0gWKezx0S6J0TEiXRzHe2T7uQJHCEPzp+dW1g5U2tHTQLW1JoB0TjRh66A7883wu+M5teJLFyvva5IWpUUtcXIvGCjv7b2pa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1762385281t50722702
X-QQ-Originating-IP: JXDVC4wEduH/5I2geYS1F/YtQWPEEEzaPCj7cEdTzmY=
Received: from [IPV6:240f:10b:7440:1:4c9d:dff9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 06 Nov 2025 07:27:58 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12189542009970870665
Message-ID: <7A636B2C51748041+9013a190-a997-4006-a136-20d18db85763@radxa.com>
Date: Thu, 6 Nov 2025 08:27:58 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <CALWfF7JsB-i4tgbPfMzrH92dCO-=EMkt7yY16dKzEPE-4RC58A@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CALWfF7JsB-i4tgbPfMzrH92dCO-=EMkt7yY16dKzEPE-4RC58A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NG6XnjqajcORz9xDI79hrDUbAKYagxKkQiqj8V4XdLxmPd01t8s2NTlo
	Q+4Bi2PE9DhhvI0Q6tngMLpRV5Qk24m+TmyFZpPrGZWpgxpp9ojV0nQ5xQim8hXuIOCzmsG
	Bu1YpyxzdUGHgGEzBIuxheUH9OcYsdETOCOvA/LRGYNPm57kPEu8FfMt07JAenfvHOTJjhu
	BamYgsxNsKFSuuJq1nOx97CaCg0cr3g+uxhPXF3NUtQNKPoWH1dK4QFo9JydPoTFMAby1mR
	1ywSstQOGMTWpuF6iTqPESVL01Ulo+yjgxxB3NZU38/TcHeAh2f0LgVR8V3/u2QWsjhnUF4
	aOd20nlup9Ra2JougT7XWv5MwGjkTUX4VEjCQbc4W6g0GqDKsnTmT2v88ffssnUeyMDnJyd
	Vw4sTwq+Y8nWHcpe8Z6SQ/SFYQ5YxxcqvvuEaOH2uIz1eur7HFMiDPGxGq/IpFJqO30nu3O
	zdvDtmGfHm/sHydd1NK0n3/cwDbwZezjYdxSHUJ73zuSTvH9GokWZDO2hHN1xUeQSJkjWz0
	WeeXl6a9GKMufYfVEqjq6Zdx8FFD6HQHovF2FchDfPM41YRRUgGXrd60ewakoc4PbxOIVSE
	LZIVGGLYsInTuIxrXkq7XcKRdinjgScIBS9ABNiWZP0vhFwZOErZ5IazEq95Q8Ux3Ezq3h9
	uZfsulCm9y3erUNe3BkCyJouUEL+NigD7jfazahSTiHVgt+f2Ca3AuZteXaw1EvS1ps24DS
	AbgeRSBNXVqaCoFSUcLOYUB9tHX/M/ywNgzV54YdV0bbr7k1R1MOAERWLK28tKx3rayLlyP
	/suoBm1uRJUHk08NKZOxtiItV/xzUS2vfcZ/ENbX6N4YyXMHDiPUY9BNJQJeTBG4iKRg8B4
	Ne4H6KMPOHsvrCYRB8dZ2B42Pq3jW67ovMhG9TuSS5x68rDX38uuv5vCd2IyQT3ZT5knQXa
	VGdDydnnASMTZcDLPSAHJOvnrtFLGNitXGrwhM4BosvOGB9NtDGGsq27pxaEZ+3YA/l5nwE
	Qx6kciEQx4iVwt8AP5cfmG1qMEDlw=
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0

Hi Jimmy,

On 11/6/25 03:10, Jimmy Hon wrote:
> On Tue, Nov 4, 2025 at 11:14 PM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>
>> This patch series add support for the Radxa CM5 SoM and IO Board.
>>
>> Changes in v6:
>> (Patch 1/3)
>> - Fix description; "Radxa CM5" is the correct name
>> (Patch 2/3)
>> - Fix #include(s)
>> - Include rk3588s.dtsi
>> - Move alias for gmac1 from io board dts
> 
> I'm curious why the alias was moved to the SoM? If the carrier board
> does not enable the gmac1, shouldn't we leave out the alias?
> i.e. for the handheld without RJ45 jack [1], it wouldn't want the alias, right?

Indeed.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> [1] https://github.com/StonedEdge/Retro-Lite-CM5
> 
> Jimmy
> 



