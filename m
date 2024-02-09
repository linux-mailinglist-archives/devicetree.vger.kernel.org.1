Return-Path: <devicetree+bounces-40294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4ED8500DA
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 00:47:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 652601F26254
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 23:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BF4625625;
	Fri,  9 Feb 2024 23:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=fiona.klute@gmx.de header.b="qZgMWSr4"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6995A1805F
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 23:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707522470; cv=none; b=o1cNfHe8JhEggfWlNUZAme2pzgieakQj7UCxBXuBkkmHxkfhodbwA1+57Tt1UK48vRdgHjPrNHNMSACjHLSIRskj4dq5VFn5L3LZPLmLQKCYmp9KhSVTMZifaRadRdGL6bGBcruuuU3kWsGigoaNg4i91WJ/394H0pVc79CdUjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707522470; c=relaxed/simple;
	bh=Gd6B2nGxFnY3gBgovkAdBJHMhu2/Jv7zrmNE3HSA2tc=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=oeQk8TAGskGseqyuWLmF7KUuKb3dzFFNRaCBNtEoh7aH/SOPX2lXcFZGzuIDS18rcuyB+Jk8N2b8WVWJSwT58UXrK0OyAp40ziT7wh2DBxVf5v/bq+ltH5RsuqZ8IJkwio76pwgcQ1b30owRXRTV4P98HRFEfmKQjcYG+6LY9DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=fiona.klute@gmx.de header.b=qZgMWSr4; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
	t=1707522465; x=1708127265; i=fiona.klute@gmx.de;
	bh=Gd6B2nGxFnY3gBgovkAdBJHMhu2/Jv7zrmNE3HSA2tc=;
	h=X-UI-Sender-Class:Date:To:From:Subject;
	b=qZgMWSr4wRylS2njIuondxelCDXLNBZb1FPHL1rlI9qLjxPIWXBuTvn8nEIccWD6
	 59iqXwrdHIQMumJKoMZ0ERiPwFaeWyj2fKC/w3Gmu7anfuD494HKtHbn8B1LM2UlX
	 sYyKKvdYwTJA8arWD6cXCZ8kGfosHheIM9MV60Pc8IlFB9XqqjugrduX3CV1axfrw
	 tlefr2wp5iTCS+MlU/vjNW9QKdhKSQ7EUCD44zxk/uHezFiRw4bX6TT26Uaf35WXN
	 x0LCKockQVGzvZnIz6hB3xPzsodDA3QUSMiAUu/MD4x8rEZKplJyu9P+zeKWW/T50
	 b5ladYeNhHShMFDbZQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.7.2] ([85.22.23.237]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MN5iZ-1rGEnU105N-00J6tU for
 <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 00:47:45 +0100
Message-ID: <270bd0fe-40c0-4f4b-8345-5de7650e65bd@gmx.de>
Date: Sat, 10 Feb 2024 00:47:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: devicetree@vger.kernel.org
Content-Language: de-DE, en-US
From: Fiona Klute <fiona.klute@gmx.de>
Subject: Binding required for of_get_mac_address?
Autocrypt: addr=fiona.klute@gmx.de; keydata=
 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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:QIuaavEzZJTabKmjMFOBw0vrBxHO6ZcvHthNUCDcTeYPurJIZ3h
 XS2+itRzy77TtHa4uUy9N+XB7Gz+vcBrnSDbscS8kWvrWV40dMP2EhtHfaPSmPzQrBRUGoy
 PBDtCjSpxjCI3RSwOHaS4+siqX4Dfkge4UVQv2krcEbs7wcYg6nU/020xiS6Kvae64Zvhbr
 CDa1pNfHtDgCAsF0O3O3Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:M6AkA8zW+G8=;BO2fa8PVUr6Y4IUam/mJYDg51X6
 MZjRXl05oI9X3sy7Hsbpp6Pa0xMKLnj9do2L9oheIbbY0Xpy+iQ0fEtrJmoGdPhqBR306PJYW
 9vH4s/lZSyDJdX2oa4cqPAcS7X5j+G4YgrjdhxtFwQskOnIbPn+O0bDhe0n4X+HFZnF0Ke+aF
 Xfv+SC0uv9EuDuySzlUB61C4Y6f9JaHkjmKvzBV4Y/FAI5vDKQ1+dStIB/lmtUgQ+Z5i1WOZF
 p2vGV2edJNssnGdWRwULOT2sMRPo5EDn+sUYJGZwUN2F6wn5yJ15/6gm6PDzjWT9jyF+z4KQe
 /SDDWiYjyLd1JaqKrDqTvtQW6HIy5tbmqCv2h0tZV6tY3ZADXcOrPG5kXz+Wt0w9R0bDdaWoH
 jGV13zjTZaac6onuK7X9oxpgX1CthGaRIbrNEiOl0Pc57EOkEx2GpRKgIJWiwVUNC81hVYLGW
 CvVOqqgTta29JZN8FwAoYhnttgXyPbI5umJpJB3VxHw35eARe97exxZjpL+yP1ugSHlOkOrcW
 RmUzZS9pSd2ynCBqPsM1kiTBE4bJ4TqzvFRZE38xwEWNk2k9hG286C4Tm2+HMYXbe+QXo8wVu
 3iPvSs7My9D+D3PVc0VZS+XfufD0wVJv0SWBMa3GZ25bypkYqk45NhnB5FPkVE6CvG/HUCSCn
 Z5wGqquceCCLFUsydrlsGs56vW9S9Jr/CCMX/bxAsznvUlVjQ+ZY/A7E5EPmfKPaoo/6+1MD7
 ob/JU6mcXverYZpnDGRwsd+RAF2QN7gzd2mmbt5KK+uEibbemPcJqj+Fg3Fqj9vSZk8K21dWz
 y0dOlOOl7wBLC8sMvoE6K2bRG2RnTx4O+uSk+u48DTdeo=

Hi,

could anyone tell me if a new wifi driver needs to add a DT binding if
it optionally retrieves the MAC address of the device using
of_get_mac_address, as an alternative to chip EFUSE (which is known to
contain invalid data on some devices)?

The specific case, if relevant:

I have a patch set to add support for the Realtek RTL8723CS SDIO wifi
chip to the existing rtw88 driver, currently in review on linux-wireless
[1]. The chip is used in the Pinephone, and in all samples I've seen the
MAC EFUSE is six bytes of 0xff. I don't know if this affects other
devices using the same chip.

rtw88 falls back to a random MAC if the EFUSE value is invalid.
of_get_mac_address lets me get a stable address if the bootloader
provides one, which is obviously preferable (users can easily randomize
the address if they prefer, the other way around it's more difficult).

Is adding a DT binding required here? I'm asking because the wireless
wiki tells me [2]:

> For submitting a new wireless driver the requirements are:
> [...]
> * document Device Tree usage in devicetree bindings and review them
>   with DT maintainers
Thank you and kind regards,
Fiona Klute


[1]
https://lore.kernel.org/linux-wireless/20240202121050.977223-1-fiona.klute=
@gmx.de/T/
[2]
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpat=
ches#new_driver


