Return-Path: <devicetree+bounces-155268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DEDA56110
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 07:45:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B078176A90
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 06:45:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A7DF185920;
	Fri,  7 Mar 2025 06:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="t+gKDz57"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DE91A00F2
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 06:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741329918; cv=none; b=d3pmZzWJ6w/U0RXnJ89drFk98DxxTFdHR0uyvzC1alVuSWjOhByhFaYJ0kqwLhDpDPiiQciTJPlTp6VU+Ec0fH5L4gnIalXVe/oz9FV/fBRUvNwWEYV6FpqIL7VPpXLWnG5uYgpA8itR7ZWpL63DzdB48CnJsosSsrPQBs1G3x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741329918; c=relaxed/simple;
	bh=NHKBjrh1dCf5Ik9zbFcVqwD1Ifih8fZMuBnNW+lLYhI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oahuz0qbcKtlWFRri9PDFyKeOj3zfRew6d4cPvY0KI0tScOlmCdWcyF5yMb3Ch3C+lHD3SjTuEXNfFIV2xkArgAFQuo+qVfl4//x+sL4Bcvh11dXSX0wIL1ilODFOjriF9Iqlri0kwhbhv8ePdr5wi1r4soYp3c9k3XxFpOi+LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=t+gKDz57; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741329914;
 bh=xrrqReRVP8vJeyg5PfphNvWCkrOXLcDZ4zm3kNo2Lt8=;
 b=t+gKDz57JwTS6/fNAym0qyO/eqA55I49wOOkiFW0kokOVm/1NRn/y2BJZnMz+kCTE50mUEpBG
 ayLzFI/WgC4YoDpPbszadlJ6O5+b3x5Z4+3lmWk5gqJm5JlhTDdr1nivFmwNhWkpaeWRMwe7hmY
 S6B8XStWUfTLdt8OfnwkdC+S0VhbjNIsLVd6g9WRFp6pFebZ0AtsURKqi48uNlbcGpFBhhOLz05
 POgPNXgE0u6rmAdBjSTg65cNspPCPijD1LjBq7BsBX1yCG4qEl2rS3NCNkCGJAest6CmEI+Yc4X
 EzGFzoijwoAq2xk26cfM9mDi36EJVmw3ptruLHkncMdA==
X-Forward-Email-ID: 67ca95f1d992817a57e34193
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <5a0a7ce1-1dfb-4d19-8a1e-0d89d177f5b8@kwiboo.se>
Date: Fri, 7 Mar 2025 07:45:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/8] arm64: dts: rockchip: Enable SD-card interface on
 Radxa E20C
To: Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, cristian.ciocaltea@collabora.com,
 detlev.casanova@collabora.com, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20250305194638.47187-1-ziyao@disroot.org>
 <20250307033508.656479-1-amadeus@jmu.edu.cn> <Z8qJqpUwi7VV8tJk@pie>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <Z8qJqpUwi7VV8tJk@pie>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Chukun,

On 2025-03-07 06:52, Yao Zi wrote:
> On Fri, Mar 07, 2025 at 11:35:08AM +0800, Chukun Pan wrote:
>> Hi,
>>
>>> +&sdmmc {
>>> +	bus-width = <4>;
>>> +	cap-mmc-highspeed;
>>> +	cap-sd-highspeed;
>>> +	disable-wp;
>>> +	no-sdio;
>>
>> With 'no-sdio' property:
>> [  129.608986] mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
>> [  130.711168] mmc1: Card stuck being busy! __mmc_poll_for_busy
>> [  130.725536] mmc_host mmc1: Bus speed (slot 0) = 300000Hz (slot req 300000Hz, actual 300000HZ div = 0)
>> [  131.751240] mmc1: Card stuck being busy! __mmc_poll_for_busy
>> [  131.765608] mmc_host mmc1: Bus speed (slot 0) = 200000Hz (slot req 200000Hz, actual 200000HZ div = 0)
>> [  132.825083] mmc1: Card stuck being busy! __mmc_poll_for_busy
>> [  132.839413] mmc_host mmc1: Bus speed (slot 0) = 187500Hz (slot req 187500Hz, actual 187500HZ div = 0)
>> [  133.960141] mmc1: Card stuck being busy! __mmc_poll_for_busy
>>
>> Without 'no-sdio' property:
>> [  105.224019] mmc1: error -22 whilst initialising SDIO card
>> [  106.290838] mmc1: Card stuck being busy! __mmc_poll_for_busy
>> [  106.801931] dwmmc_rockchip ffc30000.mmc: Busy; trying anyway
>> [  107.385835] mmc_host mmc1: Timeou sending command (cmd 0x202000 arg 0x0 status 0x80202000)
>> [  107.400425] mmc_host mmc1: Bus speed (slot 0) = 300000Hz (slot req 300000Hz, actual 300000HZ div = 0)
>> [  107.431561] mmc_host mmc1: Bus speed (slot 0) = 49800000Hz (slot req 50000000Hz, actual 49800000HZ div = 0)
>> [  107.433107] mmc1: new high speed SDIO card at address 0001
> 
> So it seems the sdmmc controller actually works with SDIO commands as
> well? I don't expect that since the datasheet says RK3528 has only two
> SDIO 3.0 controllers.
> 
> We could remove the "no-sdio" property if SDIO actually works. Will
> apply it in the next version if there's no objection against this.

On the E20C the sdmmc controller is routed to a microSD card slot mainly
intended for use with microSD-cards and should normally not need SDIO.

What card/adapter do you have inserted in the microSD card slot that
requires use of SDIO instead of just SD or MMC? What is the use case you
have that requires removal of no-sdio on E20C?

Regards,
Jonas

> 
> Further tests about the capabilities of the controller are welcome.
> 
>> # cat /sys/kernel/debug/mmc1/ios
>> clock:          50000000 Hz
>> vdd:            21 (3.3 ~ 3.4 V)
>> bus mode:       2 (push-pull)
>> chip select:    0 (don't care)
>> power mode:     2 (on)
>> bus width:      2 (4 bits)
>> timing spec:    2 (sd high-speed)
>> signal voltage: 0 (3.30 V)
>> driver type:    0 (driver type B)
>>
>> Thanks,
>> Chukun
>>
>> -- 
>> 2.25.1
>>
> 
> Best regards,
> Yao Zi


