Return-Path: <devicetree+bounces-314209-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lyQNCELWOGpCiwcAu9opvQ
	(envelope-from <devicetree+bounces-314209-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:29:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED986ACF19
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:29:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=BzrEI3rl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314209-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314209-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=samsung.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8FBE13004937
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 06:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90BEA35DA5D;
	Mon, 22 Jun 2026 06:29:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E2C233956
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 06:29:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782109759; cv=none; b=D0+1+nAf6LXb/nqdhjxeW/nbHJ99HS6Pml4+jU5AtWgTwXdERigIq8Vef6STIzQ13qU7/Rraeb0qeLZrA6yi+WjqYhOBdERrBe19+5klk8w+J/Aw23Naan68IpDRR8425WFfJdqse0qdI/i88Xb/gPXcBotllrHvaVR6UcCG100=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782109759; c=relaxed/simple;
	bh=QW4Ss1L/OGfZ3u/0zdQn50a9kbyNJzQ0jGJJk/74oTY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:From:In-Reply-To:
	 Content-Type:References; b=nkEK/fAuCTjib/DxP0KEccEf/diOr/QUAezVYu0qkczZhalRYiwsxmofTmShBkFWEJqnPOrxekBRPJfnJSzHubSNWNvS3iCf5phQk1xOn54ksJl9BC2RxbgjYvEaPDNd0zhufAoOMu33ncCswNIWvhb1/R5S2rRguFUw++yUapc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=BzrEI3rl; arc=none smtp.client-ip=210.118.77.11
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20260622062041euoutp01efade855e1cfd9739a8c14ac8ef444ba~7UunJ4V5q1895518955euoutp01I
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 06:20:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20260622062041euoutp01efade855e1cfd9739a8c14ac8ef444ba~7UunJ4V5q1895518955euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1782109241;
	bh=9VxvGuHBm7QRMgH1+UXtZriiR1pff3l1vGhukdnKhsI=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=BzrEI3rlT7Cut3revlqskhFZzAscF8tJ0GJY3STuZ8lA4OKymLfOO41Y39dLHWGSZ
	 s1xAn6sC0OewpBdDlD9UPZ6LjMUMCcnusX6rGQAsdj/ZW4vVLvyklYtSLFOsX4Bu/b
	 X0FeCniXtB1R7ZWNBq/RQuDMW5EZmwQ6mf6VDfrU=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260622062041eucas1p1ee4fe04e8101bb5b94a29aa0f679b133~7Uum5HyCD2305623056eucas1p1p;
	Mon, 22 Jun 2026 06:20:41 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260622062040eusmtip1c9e2845d4956b74ea376cf286db45bf8~7UumZGOdy3122931229eusmtip1b;
	Mon, 22 Jun 2026 06:20:40 +0000 (GMT)
Message-ID: <14c67cf2-d252-4b49-80f1-fa1c711a0b11@samsung.com>
Date: Mon, 22 Jun 2026 08:20:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [PATCH] arm64: dts: broadcom: bcm2712: Remove non-functional
 EL2 virtual timer
To: Daniel Drake <dan@reactivated.net>, Florian Fainelli
	<florian.fainelli@broadcom.com>, Marc Zyngier <maz@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	andrea.porta@suse.com
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <89a39670-c459-4467-a032-a965bc1dea6b@reactivated.net>
Content-Transfer-Encoding: 7bit
X-CMS-MailID: 20260622062041eucas1p1ee4fe04e8101bb5b94a29aa0f679b133
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260621205817eucas1p24b92a3dbb913783a205d435e9077e61b
X-EPHeader: CA
X-CMS-RootMailID: 20260621205817eucas1p24b92a3dbb913783a205d435e9077e61b
References: <20260619204832.586079-1-dan@reactivated.net>
	<878q898ulx.wl-maz@kernel.org>
	<223cd514-41b3-45b9-8617-b54d379d5091@broadcom.com>
	<CGME20260621205817eucas1p24b92a3dbb913783a205d435e9077e61b@eucas1p2.samsung.com>
	<89a39670-c459-4467-a032-a965bc1dea6b@reactivated.net>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.65 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[samsung.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[bounces-314209-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dan@reactivated.net,m:florian.fainelli@broadcom.com,m:maz@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bcm-kernel-feedback-list@broadcom.com,m:devicetree@vger.kernel.org,m:linux-rpi-kernel@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:andrea.porta@suse.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[m.szyprowski@samsung.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[samsung.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2ED986ACF19

On 21.06.2026 22:58, Daniel Drake wrote:
> On 21/06/2026 21:03, Florian Fainelli wrote:
>> Daniel, do you happen to know which 2712 SoC revision you have, whether this is a C0 or D0 stepping?
>>
>> We have an internal bug tracker item pertaining exactly to the virtual timer interrupt connection however it affected a sister chip (77122) and not 2712 AFAICT, now checking with the design team whether the same happened on 2712.
> Thanks for looking into this! I am using Raspberry Pi 500 with D0 stepping.
>
Here it happens on one of the first shipped Raspberry Pi5, so probably C0 stepping.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


