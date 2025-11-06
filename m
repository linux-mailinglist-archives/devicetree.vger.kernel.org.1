Return-Path: <devicetree+bounces-235458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1B6C38F39
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 04:18:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08A233B4D2F
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 03:18:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A653723D7E0;
	Thu,  6 Nov 2025 03:18:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF4E1EA84
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 03:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762399084; cv=none; b=FydDcfSiCb123rKfUMEX7eEU6D7oHdiHorNI/PZLbNwuCRfE1XlXRj11ldJs1+B5QVbyMyYH+3iDPO+eJSqUWLjsFmJm8dCeLv/ssQpQEYtyQPAGwTnxWEc6sJkejjgGLHOhl+j9lGNlKKRb+Xikx8WF0AmPXagxSXQEdG+EF60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762399084; c=relaxed/simple;
	bh=qAnVyWHRvT3aALCOrtDWNVtuL3ZKm3DS+ksuwieKBbY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=bF2etPjab18u4/SXq/GGgz/8ZJKQxqqoxzMEj3DgI/X69DbS+x9zIxVm6OW38OsFTJQOirao4KHX2HK/KcN0T0Q5qRhnltHniEgk4nZjUcG48GMQ/d+1aVXxyJhDuVrqLEr9KiEsz2k0Rud0r7kKXbZCwtbq2qbKFEyBzRB7894=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1762399047te82d4100
X-QQ-Originating-IP: t/O5br478cgyd5pY6LNMZtVnIz+dhLvOaSLytrjS1Sw=
Received: from [IPV6:240f:10b:7440:1:4c9d:dff9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 06 Nov 2025 11:17:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12882356124254277784
Message-ID: <65F6DECE54D6A0E2+06d33e7a-1054-44b3-919e-181e30cdb932@radxa.com>
Date: Thu, 6 Nov 2025 12:17:22 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
From: FUKAUMI Naoki <naoki@radxa.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
Content-Language: en-US
In-Reply-To: <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MjHH9lmJ+i2kOHaFS3PJVqWCPFsFJg/zroLxKtO6IC6ebuLuK9OETZcm
	rhMreAaHG8cqDfZiqBLL5Z43NMQR/9Bxynvyyi4KSZiQhbzFVjzyo3nH6+KhSyxkI4Tka7c
	h3Q7I+KS0SZ8CekY6RlZelNUXvHoQivH8bjIZfrsjttUTmzLtw+O5aQzL1klhMbBJk8lXt5
	A1TyECEgbNuvnF5K3YjcAH+3ghdiSuE/+q6nBlLK95md8AQthqTkB/Dfg07Y+51wePIOMmS
	oX/sTPiJWbMzrml5hY3nL+uTys/PE0nWNMZcD0/2wUaeFrc6i/I8+4YtDAhpO1jeK6pxIDT
	tNKo0Z5ARQRScO4+Fq0+4YWSfdU1uIarkNpbPTpkEJP0wbdT9HU5LkkD88KCoPRlCrCTvNr
	C/QKHRDQZHNm29PflYqd5sYr0AiMbdB21yeZ6jzmA+d4UM0wxTBowF/Q9zlTHaMtJiR0/a6
	4YobuUTsH9b61tErUiX8Vro/HMiihISHoAb7+rUwbyesDoyZKC5dBGpwWGQw+oDxU1UeZPA
	QzfVZAkPjAn8y6/yJppLRRvVKn7Ta1m6iIR9VGP/zDWbYY9pVZFIpjJoy6G8kJcE3WRxxce
	cZvc//FRkN6ZUMH5KRAmAXtJ68XcjYGOIIeNcEIkBR5w0ui5Bkx0nXmOH7rKlMTYmgEnj86
	YrwWE5NkhDtqA7Nm/YE9ou9JUO7Sj19+t0uCXOD4K2zPJCuIsU4SK8+mgWO5cFswlrNKOP2
	KFMVwFdr1BtwmHsS5IfmEFAM1rST7la0bKNdaG5ZBA+YT3aRURpwWRSD/OCjxHmxzROxrkM
	B3+Uoj7VEKQ9UPGkl6xoSgow7Pse0jkiuAIT50UnpfW+NVv9JG/DQDkNfNURHoQdt3rf6OU
	3qIheR2jdkdYN0KB0c6UwJKGAupo0CGdz2jP8ZySsKO06zZxqYUGOQ8ApWSmgHl65SbBILV
	T/D8emnSKtonjhPj7HDJ4yaeV0aWPQ0Rih/prXBdNNUlNPsvZvY9xiSrv
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0

On 11/6/25 08:38, FUKAUMI Naoki wrote:
> Hi Jimmy,
> 
> On 11/6/25 03:27, Jimmy Hon wrote:
>> On Tue, Nov 4, 2025 at 11:14 PM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>
>>> The Radxa CM5 IO Board is an application board for the Radxa CM5.
>>>
>>> Specification:
>>
>>> - 1x microSD card slot
>>
>> [ snip ]
>>
>>> +
>>> +&sdmmc {
>>> +       bus-width = <4>;
>>> +       cap-mmc-highspeed;
>>> +       cap-sd-highspeed;
>>> +       cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>>> +       disable-wp;
>>> +       no-sdio;
>>> +       pinctrl-names = "default";
>>> +       pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
>>> +       sd-uhs-sdr104;
>>> +       vmmc-supply = <&vcc_3v3_s3>;
>>> +       vqmmc-supply = <&vccio_sd_s0>;
>>> +       status = "okay";
>>> +};
>>
>> When used as a TF slot, shouldn't there be a "no-mmc" also?
> 
> We have "eMMC to uSD."
>   https://radxa.com/products/accessories/emmc-to-usd
> 
> [  202.176757] mmc_host mmc1: Bus speed (slot 0) = 49500000Hz (slot req 
> 52000000Hz, actual 49500000HZ div = 0)
> [  202.178477] mmc1: new high speed MMC card at address 0001
> [  202.179534] mmcblk1: mmc1:0001 SLD64G 57.6 GiB
> [  202.207336] mmcblk1boot0: mmc1:0001 SLD64G 4.00 MiB
> [  202.210374] mmcblk1boot1: mmc1:0001 SLD64G 4.00 MiB
> [  202.212967] mmcblk1rpmb: mmc1:0001 SLD64G 4.00 MiB, chardev (511:1)
> 
> (I'm not sure why it says "Not work with the SD slot on the board." I 
> will check.)

There is no hardware limitation. "eMMC to uSD" should work with microSD 
card slot on the board.

That notice means "dts need to be changed".

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> That's how the Rock 5A, 5B, and 5C were defined.
> 
> I have submitted a patch without "no-mmc" before. I intend to send one 
> again when I have the chance.
> 
> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>> Jimmy
>>
> 
> 


