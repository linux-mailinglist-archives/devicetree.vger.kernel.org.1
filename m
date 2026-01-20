Return-Path: <devicetree+bounces-257508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SD+/J/rSb2mgMQAAu9opvQ
	(envelope-from <devicetree+bounces-257508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:09:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D084A0B0
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:09:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D33D9788468
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 16:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DAA33AE6F2;
	Tue, 20 Jan 2026 16:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="WwgAMcrR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta236.mxroute.com (mail-108-mta236.mxroute.com [136.175.108.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD8D3EF0C1
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.236
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768927136; cv=none; b=e3mfipEZ/VueOP7LrCLvYFpPd+DwDa9QHlFzJ4kL7wTBdNvs05/EJMyt10IYSrkQj+s3MzpZ5p4f8w+Zq6EMIGKs5iBb/wf9L94HqxncVPhREpkGN9dt8yJJdrj1AoLsHi/kffds9nmM6+S0vZtBTiBTf5U0AEeUl0lwOkFaJmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768927136; c=relaxed/simple;
	bh=qPs0Pooox6SIyK38pjZOIiAE+tJqxnBuyrX1vc0c9i8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HTtzY6WhOFRRXvaAwSU43AH20iSzRM71vc5HigFZaiWXA5WsbbIHNkBhD2O56gw7F5hFKQ5w3EGyDRqkCCrrqQwwUNz1GK0I4lfkiZqiy4PCnKR5PPO1+mPwQNiXyxUW5Jem4O8vw+jBY6UrLKL0wwlujgP+EWCLdV0/3w3BWFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=WwgAMcrR; arc=none smtp.client-ip=136.175.108.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta236.mxroute.com (ZoneMTA) with ESMTPSA id 19bdc41458e0009140.005
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Tue, 20 Jan 2026 16:33:43 +0000
X-Zone-Loop: f743f92480a316dbb902ff9d0080ef84fa16806ee8e9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
	From:References:Cc:To:Subject:MIME-Version:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID; bh=SWKDkqyW8KmfpO3IzczC0y2n+YeQvtr43F4lJQkgy4M=; b=WwgAMc
	rRgE56fVRbNmofeg88mwIa768qT2AU2bic4rTmwYJfSOL/PgEXQVLDxrTuSdRPaQQx+0jXmAB9arZ
	motqrjfpIiRKlTxVf4BSIc20we4aC/jVODYrX+ItoyKK/GDHmqFDihIV1IZo/kWUgRoTVG7zenB4X
	nlLrY/k5QE8oBdaIUpK7Q3iw3E7ghQqmxcHfzo9OMt79ZiI2+t8AOrwH6GRpacz91L/+BnKHiMHV4
	y/qXfDWu306bfzQfvjivBiHGerWLUnL3xoun2l8yjglc1wXkzDBXNZmtvRmIgxld6vecTWwRTxePL
	jzPxszVgFs/s4tjYEhqjFZRP/S9w==;
Message-ID: <46730110-5713-4e7a-a593-29ad69432e03@luigi311.com>
Date: Tue, 20 Jan 2026 09:33:37 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/1] Fix imx258 variant on pinephone pro
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Olivier Benjamin <olivier.benjamin@bootlin.com>, megi@xff.cz
References: <20260118214620.3319040-1-git@luigi311.com>
 <176890189889.310054.17634541522861042266.b4-ty@sntech.de>
Content-Language: en-US
From: Luis Garcia <git@luigi311.com>
In-Reply-To: <176890189889.310054.17634541522861042266.b4-ty@sntech.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authenticated-Id: git@luigi311.com
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[luigi311.com:s=x];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[luigi311.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257508-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[luigi311.com:+];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[git@luigi311.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,luigi311.com:mid,luigi311.com:dkim]
X-Rspamd-Queue-Id: 43D084A0B0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you very much for the speedy turn around. Ohh

interesting, here i was thinking i did the right thing with

the reply to with the V2. Ill keep that in mind for the

future but considering how far and few my contributions

upstream are i hope i dont forget by then lol.


On 1/20/26 02:39, Heiko Stuebner wrote:
> On Sun, 18 Jan 2026 14:46:19 -0700, Luis Garcia wrote:
>> imx258 had the driver updated a while back and it introduced
>> two variants, the imx258 and imx258-pdaf. The pinephone pro
>> is using the pdaf variant so this switches it to the correct
>> variant and eliminates the pdaf pixels from the sensor output
>> resulting in a much cleaner image.
>>
>> Luis Garcia (1):
>>    arm64: dts: rockchip: Fix imx258 variant on pinephone pro
>>
>> [...]
> Applied, thanks!
>
> [1/1] arm64: dts: rockchip: Fix imx258 variant on pinephone pro
>        commit: 6742b998166485558ccb0e89b5d5fd93c1aae3ca
>
> In the future, please don't send v2 patches as replies to the
> previous version and instead start a new thread.
>
> Next versions as replies, does sometimes confusing tooling.
>
>
> Best regards,

