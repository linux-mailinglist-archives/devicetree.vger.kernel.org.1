Return-Path: <devicetree+bounces-205509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31623B29428
	for <lists+devicetree@lfdr.de>; Sun, 17 Aug 2025 18:33:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2488D17FFA2
	for <lists+devicetree@lfdr.de>; Sun, 17 Aug 2025 16:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6DC52FC881;
	Sun, 17 Aug 2025 16:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="nF1ghyJW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B6A21767D
	for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 16:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755448421; cv=none; b=kkM3k+lH1allz1fvFLJEGNnCTnqMahqOaTpzPa7/a5/5GymEPyeA79rpl7N5C1JGDwFaEVDKQRDOPARQAApuHRPFFxT0vcWsHgno3JpplmbMEy01jETrNNjLl+cAkj/kesLZxzarwQCORmuJh1i3l0u0VEk/e2IZ687ifMBSn9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755448421; c=relaxed/simple;
	bh=16KfWKmXnvMG8XienSHousVwtT9tO5Q9/eKeHJpXN9U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PNAI8BlEaZ5IUXlDK3tvvNlt+LRU+mxaO4hSx7MsZ5asKmTzFomzH1CtfOFI7wNbhTZ9Uco2NuiZ8UP9oqrxYWptbEXQlA5QORsiMjR7m74fuLrAcQVvtXWyzRc8PbQxNXi6qpCpRejdjElaBgeZZxN7iAqoqM58hb5LN5SYaqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=nF1ghyJW; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1755448413;
 bh=05X/I2SqxVTRC5UNwPe0jX77RC5+lAMs+Sp0TwX0JKY=;
 b=nF1ghyJWLYUnyuiC1NjdzCjqp4ZPbfZV1lUUTMFgSrE9o+NHBLsJ1qI4zsz90m6Ax6JGr3BHT
 v6JbmMb4UOkAHbPifSLsC3mrfz217EprI3vnGYnvAjNSJTOfvFzy0n0HjpL8vlnbikRdmPJytjo
 3j+sFSgqgLaZ/7EjBHMOkTqpx5QOmLbGTY/N5Mmk1fdjb+6wPOISrFa2Xl/1Qy0m5DdOdqyakWn
 4THY8s+C9uWyvtqBK4IfHGcBiXRRPicJVu+OL3/IsPQp/9CMqOzFacuCpFR6OoHzfo5xkPV5pgn
 KsnICWQKDCPIXfnhX01otuaV392XdVZuqIvcUZiXrgIA==
X-Forward-Email-ID: 68a204589a82a81f459cf7d1
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.2.4
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <f55f6c64-f720-437b-ac88-80b6930a9c2c@kwiboo.se>
Date: Sun, 17 Aug 2025 18:33:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] media: rkvdec: Add HEVC backend
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Bee <knaerzche@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250810212454.3237486-1-jonas@kwiboo.se>
 <50162371fd54fc976a84fcf57c9b69112a892c46.camel@collabora.com>
 <1dd29158-0660-4254-ac00-1316768d9b82@kwiboo.se>
 <91864a1c047d2bdfce202b070716a694ede47d5e.camel@collabora.com>
 <a66feb89fa02f05b187e5603ffc3b1501ef3cbd5.camel@collabora.com>
 <efdf8c99-d166-4b78-afc5-d4a6eb5ac046@kwiboo.se>
 <25ce30446e8e8d038273fcdfb398c90995c242db.camel@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <25ce30446e8e8d038273fcdfb398c90995c242db.camel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Nicolas,

On 8/12/2025 8:26 PM, Nicolas Dufresne wrote:
> Hi Jonas,
> 
> Le mardi 12 août 2025 à 19:31 +0200, Jonas Karlman a écrit :
>> On 8/12/2025 2:44 PM, Nicolas Dufresne wrote:
>>> I forgot, 
>>>
>>> Le mardi 12 août 2025 à 08:38 -0400, Nicolas Dufresne a écrit :
>>>>> JCT-VC-HEVC_V1 on GStreamer-H.265-V4L2SL-Gst1.0:
>>>>>
>>>>> - DBLK_D_VIXS_2 (fail)
>>>>> - DSLICE_A_HHI_5 (fail)
>>>>> - EXT_A_ericsson_4 (fail)
>>>>> - PICSIZE_A_Bossen_1 (error)
>>>>> - PICSIZE_B_Bossen_1 (error)
>>>>> - PICSIZE_C_Bossen_1 (error)
>>>>> - PICSIZE_D_Bossen_1 (error)
>>>>> - SAODBLK_A_MainConcept_4 (fail)
>>>>> - SAODBLK_B_MainConcept_4 (fail)
>>>>> - TSUNEQBD_A_MAIN10_Technicolor_2 (error)
>>>
>>> I'me getting the same result if I force a single job in fluster. The test I
>>> posted was with 2 jobs. Detlev found that the iommu reset is required in
>>> more
>>> cases on RK3588/3576, perhaps the HEVC decoder in older hardware needs the
>>> same,
>>> I will try and report.
>>
>> Vendor kernel [1] check following bits from RKVDEC_REG_INTERRUPT reg to
>> decide if a full HW reset should be done.
>>
>>   err_mask = RKVDEC_BUF_EMPTY_STA
>>   	   | RKVDEC_BUS_STA
>>   	   | RKVDEC_COLMV_REF_ERR_STA
>>   	   | RKVDEC_ERR_STA
>>   	   | RKVDEC_TIMEOUT_STA;
>>
>> Adding proper reset support can be rather involved and main reason why
>> this series does not handle it, better suited for a separate future
>> series.
>>
>> Proper HW reset will require e.g. dt-bindings, DT updates, pmu idle
>> request integration and for rk3328 vendor even moved VPU reset to TF-A.
>>
>> Doing the iommu detach/attach dance not only on RKVDEC_SOFTRESET_RDY
>> could possible improve some cases, until full reset can be implemented.
> 
> Rockchip is following VSI design of "self reset" on error. But since the iommu
> is part of the device, it also gets reset, which imply having to reprogram it.
> This showed to be very reliable logic, despite RK doing a hard reset.
> 
> Since self reset is documented for RKVDEC_BUS_STA, RKVDEC_ERR_STA,
> RKVDEC_TIMEOUT_STA, it would seem that RKVDEC_BUF_EMPTY_STA is redundant, unless
> its asynchronous operation that need to be polled. Possibly something to
> investigate. RKVDEC_BUF_EMPTY_STA and RKVDEC_COLMV_REF_ERR_STA are not
> documented a such, so its not quite logical to reprogram the iommu.
> 
> I don't immediately trust reference software for these type of things, we should
> find what works best and have a rationale for. The hard reset is every
> expensive, and hard to upstream.

I fully agree, and I tried a few things like issue iommu reset for more
errors, skip use of iommu completely, disable use of performance cache,
write 0 all regs before writing correct values and nothing seem to
resolve this issue.

So more investigation will be needed to fully understand what we need to
do to get a more reliable result.

Will do a visual inspection of the decoded frames on the tests that is
flaky to see if that can give any clue on the extend of the issue.

Regards,
Jonas

> 
> Nicolas
> 
>>
>> [1]
>> https://github.com/Kwiboo/linux-rockchip/blob/linux-6.1-stan-rkr6.1/drivers/video/rockchip/mpp/mpp_rkvdec.c#L924-L931
>>
>> Regards,
>> Jonas
>>
>>>
>>> Nicolas


