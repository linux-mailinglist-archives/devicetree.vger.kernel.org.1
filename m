Return-Path: <devicetree+bounces-277715-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ay+KfTbu2n2pAIAu9opvQ
	(envelope-from <devicetree+bounces-277715-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:20:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 605562CA2C9
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:20:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 088F8300C0FF
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A2D73C9EE9;
	Thu, 19 Mar 2026 11:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="A+0URX78"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E1D3C8700
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773919206; cv=none; b=ThZzP9QwwVDr7v77fUnMsf9LMfAjNwGOtvOis/tyC4qmV/JuXHDmaqFh6lCt4R9Pdt2md+gpLkjRPrRfdUvKo8uuw4T+Iizs+XI7OIgUzkb8e84dYjBWK7D9X38YMNaOmu5oiLMrln5p3I1h/BitZCLUeqT2o4RZyO6pGhfEAdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773919206; c=relaxed/simple;
	bh=Nl6fjlT3D0SK5ODg6k+Mgt6U//DQ4RN47fCjH4xZQeI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:From:In-Reply-To:
	 Content-Type:References; b=fnsYzfCnqgCnyxPhvFdH/ox76um0erlAL2j91UjHRbQM2gbO1D7y/G8AsJEC+o9BPDnEnxPpMMIpnCE60vdykjTEdLBqFyPvBRIA1j9gSrevUnzYbt2TFV7t8Joth9gE1yEI2luKDYo2s1H/W+s6XShknbUGHu4kU2ITgAW+PuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=A+0URX78; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260319112002euoutp021cddf3027ac5dafa5435027cb0f2ff50~eOh2cfz2q1090110901euoutp02h
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:20:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260319112002euoutp021cddf3027ac5dafa5435027cb0f2ff50~eOh2cfz2q1090110901euoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1773919202;
	bh=OMg0rkJLW9pmm80ccnxfiQROSU8NAOon9o2bCBKOtfs=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=A+0URX78R/8DxzDvSmu480/veK62Q19iLscD+xrtnAoiR08J6qMndWvbDpwm9R43q
	 NWg6mSqpH6NmAz0pBO9GUk3NhO6HofowtC+ro7f5g7lGSQJD/Nuq6nCtqrSMPUE6f2
	 hIM1rT6M0vtufwk+hi41YraZPIyltnEtQUc0cD3A=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260319112001eucas1p13a5f80fe1877e4547b4b6aa27e4f5db3~eOh13Vykc2060420604eucas1p1W;
	Thu, 19 Mar 2026 11:20:01 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260319112000eusmtip2860b5807312356c7523a69a643584d08~eOh1Lszz_1318713187eusmtip2f;
	Thu, 19 Mar 2026 11:20:00 +0000 (GMT)
Message-ID: <86bce6c0-dbaf-4508-9f40-ff209c85a76d@samsung.com>
Date: Thu, 19 Mar 2026 12:19:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [PATCH 1/2] ARM: dts: broadcom: bcm2835-rpi: Move the firmware
 node down 1 level
To: Florian Fainelli <florian.fainelli@broadcom.com>, "Rob Herring (Arm)"
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Broadcom internal kernel review list
	<bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, Scott
	Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <a9a202c1-048f-473e-b8f4-6f0550bdba2c@broadcom.com>
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260319112001eucas1p13a5f80fe1877e4547b4b6aa27e4f5db3
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260114182227eucas1p16eee8f1fbf41f998214b89517793bb0c
X-EPHeader: CA
X-CMS-RootMailID: 20260114182227eucas1p16eee8f1fbf41f998214b89517793bb0c
References: <20260114015810.701076-2-robh@kernel.org>
	<CGME20260114182227eucas1p16eee8f1fbf41f998214b89517793bb0c@eucas1p1.samsung.com>
	<a9a202c1-048f-473e-b8f4-6f0550bdba2c@broadcom.com>
X-Spamd-Result: default: False [-0.65 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[samsung.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277715-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.762];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,samsung.com:dkim,samsung.com:email,samsung.com:mid]
X-Rspamd-Queue-Id: 605562CA2C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 14.01.2026 19:22, Florian Fainelli wrote:
> On 1/13/2026 5:58 PM, Rob Herring (Arm) wrote:
>> Commit 32eea985999b ("ARM: dts: broadcom: bcm2835-rpi: Move non
>> simple-bus nodes to root level") moved the firmware nodes into the
>> standard /firmware. However, /firmware is intended to be just a
>> container for firmware nodes as it is possible to have multiple types of
>> firmware (e.g. SCMI, OP-TEE, etc.). Move the RPi firmware down a level.
>>
>> Fixes: 32eea985999b ("ARM: dts: broadcom: bcm2835-rpi: Move non 
>> simple-bus nodes to root level")
>> Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
>> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
>> ---
>> This is only half the fix. Unfortunately, a kernel change[1] is also
>> needed to make this all work. I do plan for that to go to stable. I'll
>> leave it up to the Broadcom maintainers whether it's preferred to revert
>> the fixed patches or apply these fixes. A 3rd option is revert for now
>> and apply these DT changes some time later to give some time for stable
>> updates.
>
> Let's wait until your fix for the /firmware match table gets applied 
> and then I will pick up your two changes.


Florian: I've noticed that the $subject patch has been applied to 
yesterday's linux-next as commit 0603d8af97ff, but the code applied in 
Your tree differs from what has been posted in this thread. See:

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi?h=next-20260318&id=0603d8af97fff097daa118faf04d9f439b2227ec

https://lore.kernel.org/all/20260114015810.701076-2-robh@kernel.org/

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi?h=next-20260318


The "firmware" node in Your tree is under "soc" node, but without adding 
a "compatible = simple-mfd;" property there it won't be populated, what 
breaks operation of all drivers requiring the firmware driver(s).


Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


