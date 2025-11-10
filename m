Return-Path: <devicetree+bounces-236782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D6508C4751C
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:47:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 444E9349D4D
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B9F131353D;
	Mon, 10 Nov 2025 14:47:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0744523BD1B
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762786045; cv=none; b=b5LYXf2EvsyUFJRuiCb4cYni3yXZIarmfrMnjFnLRCaKiWp3SShwJ6cOWt5AF1BKeytd5ll/wvgWlT7/2DFDkS2dB1qAFg+hQXKaR2cff74OWW9WIoZVzffXCm1R1qs5tpcS2QV9yLwObfmQf8zcz5/3KthIsHOQFqx2QCPXqGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762786045; c=relaxed/simple;
	bh=mi6+yvSZZsQqPdwtzhjJ7u+Vb1MhqfFyuzx6C+4t/pY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SQw2M9YsZjoAq2kV4MBkgvKrnXFXnN7bnEtEM7Wb/Roc8vCfaTrMv41iu8tVqhoDJAUCpvOdYb8gxBVztxCvU7auIWZeqKn1i9+tXzQx/qnq1YEJ58qwseU9R+CLwKhkaBT3Y3nvMenTkU1DQZxLcFH1khgQQ3Mbp7n6wjhTSWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762786033t08d032cb
X-QQ-Originating-IP: voNkbizcau1Eu9AtsxWyVYNw7KD/NBBv5J8vVBGWGpo=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 22:47:06 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8718075699599645252
Message-ID: <8FF67CE920D32716+348efd12-16df-48aa-880c-61805f0ffe15@radxa.com>
Date: Mon, 10 Nov 2025 23:47:05 +0900
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
 <8934442FCE2020A5+855829eb-e783-4aa5-b4a1-13b0a519c46d@radxa.com>
 <06218e17-0bbc-9606-46b4-9a50d1177170@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <06218e17-0bbc-9606-46b4-9a50d1177170@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MjQ00mYXMHtuiaHRtmsnbZ7UuqPgb5GZ1svjHyiEvVx5FeARVJ0P10X3
	AyS/R32JH7aRwPcWI7uVVpkacvPkQ5XOY2H8Nz3nuX7CyuIgV+vvnoEWoo/WtwQR7gY8/0D
	ksygtVpFSs6FOb1ZWikXy37tfcTdR2NlZIKn0EIZ/hF36dyiz8/BbcJcG0ELLnbcm6nCyM3
	fY7QxsB6v3yZlZ2pw6mHJNNvZQ9JL1SFBktmVxJIcWiMaf6zMzlUqms0SmHMYvvU11DSwWW
	wCKV883x/D+AO1vMqPeh7P62eAwagRJiy2oIiJKYLClQynbfjWFZvTErc3sjFtuTnEvQFxt
	sfqkKfM0u42MDHMqlggib71l7vMhuc59ECzefnbssaxIeuC8G0fn8fK6zToXUZog2Sgg/o3
	Fg/I5/7iRaiei5K/oC+XfwCjkc1FXRFXqc/ZrMxcZTTp3ThRbAlm3P1K1kNsm7/4eqRvFL4
	bibyeRuq70GyRHFZfKgeDPJROlnDFwy5axPSRuF9/0YRfdUy+HiN8UqMTCVqUwyb9vDSCgK
	qkObmI/qfS8yvVILvbmqVWeaWLTI+LXpsiMrojkd1e+8fNZyBZKewD6TqhSm2Rht1UBOruY
	ulOdZAmGaM1GFzaDIyVmK1eRJRtT2lFtS7fVSPkXKK4xRcohuy3UGSubotPvGAIqfOLHkKZ
	iWOIgV/B1Rt0TD3iYIWMbp40Jz1CKmgU/7gHQjWWzV4trAwACgt+5MS6DXyCEUiCfjsKggl
	YYomjc0NhAGvIxSXuYpkNZn5uSpZXWiPEek7SAP+BrKGjC5YShDbU96vlPWR0C5rNjdgPCH
	Q1rvIinJlAyIrqc32SwAa5A6G8cowiLK+Kyn4FAz7xEOli7xljc8AGnnBDl2qIF1FJt3+JD
	thWNNr8kAkNOoVghb7ug1Dnh944WSG1FRPv3hdpCbtB0DhMh4/h2pGYpkLJjUhsE4TTtaji
	yTF0SBm5aJIREE835owCiMqI8rfdVZq0QgscjDCu/+QR28icQomzGSZP2
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0

Hi Dragan,

On 11/10/25 23:37, Dragan Simic wrote:
> On Monday, November 10, 2025 10:44 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>> On 11/10/25 16:38, Dragan Simic wrote:
>> (snip)>>> Additionally, it would make sense to squash this patch and your
>>>>> other patch that addresses the ROCK 5C together.  They're very
>>>>> similar and having them together in a single commit might actually
>>>>> help the people browsing the repository understand it better.
>>>>
>>>> I'll drop eeprom patch from ROCK 5C v7 patch series, and squash eeprom
>>>> patches for ROCK 3C/5A/5C.
>>>
>>> Thanks!
>>
>> I'm preparing a patch series for Radxa ROCK 5A and I just remembered
>> that the eeprom node in 5a.dts is totally incorrect. The eeprom is on
>> i2c0, not on i2c2.
>>
>> I'm planning to include this eeprom fix as a part of the patch series
>> for 5A.
> 
> You're right, and I managed to miss that during my review. :/
> 
> It would be good if you'd prepare and send a separate, two-patch
> series with just the I2C bus fix for the ROCK 5A and the squashed
> patch that makes the EEPROMs read-only on three boards.  Reviewing
> and accepting large changes split into smaller portions is always
> easier.

I see. I'll do it first.

Thank you very much for your advice!

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.


