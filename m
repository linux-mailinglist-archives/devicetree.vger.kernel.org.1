Return-Path: <devicetree+bounces-133507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E555E9FAD49
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:50:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C7DD7A1B70
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 10:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C93C191F7F;
	Mon, 23 Dec 2024 10:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="sON0gedR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772202F3E
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734951045; cv=none; b=uL2Qvf4jjjo6h6IWP9eIJTlDhXIoRJPX46pMzYGR3Q6SO3H4I3UO/AGHDpymEpw9Jm8QfOw3QrdLuTuVx29mjo+7iA5m05NTPbq28jLjpswdTIdBiOzf6iM56BZ2osR406R1vLXllPP3m1zt9ATgdiCLVcxEaB+XaWdWtQYz6To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734951045; c=relaxed/simple;
	bh=/ZRM1AVdixnBzAAenG8SiCip2DhqMFihMrbB4HmTYwM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lnhMepPxJ+AfZ3mgx51xEQjlOm1CjLokGevpl0RXJMJQM+IS7KKJ+SdMpMrS5cp9BJRHmA8tPRfmpnFLoYoff3YEVy2YHMP3mt6VJgIC+vQleYEkizJ9pZLyygZWqeovnkuc8kqpXELwLoAyzfjlSF88SVSHV/LTK3z7KRRvhHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=sON0gedR; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1734951030;
 bh=ldpU7U+iDeDqdGmWrr2McLkbrGNSwEPYJtJhCL7zXIg=;
 b=sON0gedR1ram4Gzmd9Faq6dzeR17akklVFBSXvGjjUwmqklid9X6a0eJdsw8upYSLHeY/WuN8
 OTbSbkvSsyb4by2A3Pp0P6yRRA3mDi+jiGVr24NJhOBRX8vlmzWRm1ke8XrSKW4mIdkNS0zQ2hR
 f9ApoMvv+0RxTs7dgafEp+mx/4oeN582Qjfz1ElVs0e9XxuJgnRWnHmRbu5OFAj/yCj/xdPafwq
 rOfnpCF4/rjIpdBvWsZsBkk7YcRC05MCNmaquOdUJPnyCiGM8IfCyhM5vBfFLwOaDZ3djvtgRlw
 hXZYFVxIIpTu7whGC1otWVYyGrAjjEoOQAPIlj/kHg3A==
Message-ID: <d7b2e993-c6c8-4e60-bfe2-80857ca8a992@kwiboo.se>
Date: Mon, 23 Dec 2024 11:50:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: default to host mode for USB on
 Radxa E25
To: Chukun Pan <amadeus@jmu.edu.cn>, naoki@radxa.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <4D8217DF36191C3E+be8bbb4f-ea52-4f81-8501-ff551f54621c@radxa.com>
 <20241223030006.852427-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20241223030006.852427-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 67694076445b82250f09d24a

On 2024-12-23 04:00, Chukun Pan wrote:
> Hi,
>> I've been using the uSD card for a long time as a bootloader only,
>> so I don't know what the problem is.
>>
>> Do you have any information on how to reproduce the problem?
>>
>> Best regards,
> 
> Not stable on openwrt/lede, sometimes falling to sd-highspeed.
> Maybe it would be better to switch to sd-uhs-sdr50 mode.

I would advise against using any sd-uhs- mode for sd-card on Rockchip
RK356x boards because of a timing issue during boot between mmc,
regulator and IO-domain drivers.

Any board that support changing between 1v8 or 3v3 io-voltage for the
sd-card is possible affected.

There is a race condition during boot and when IO-domain driver has not
been probed before UHS tuning is started the tuning is done using a 3v3
IO-domain configuration instead of 1v8.

This can typically be seen by comparing UHS tuning during boot and when
same sd-card is removed and re-inserted after boot.

Ideally this race condition should be solved instead of limiting use
of UHS modes. However, use of sd-uhs-sdr50 is typically more forgiving
and has been used on other boards.

Regards,
Jonas

> 
> Thanks,
> Chukun
> 


