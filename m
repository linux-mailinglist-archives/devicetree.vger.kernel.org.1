Return-Path: <devicetree+bounces-277064-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJYrFQ5qumnnWAIAu9opvQ
	(envelope-from <devicetree+bounces-277064-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:02:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 078522B89DE
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:02:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6DCD1300DCF5
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76EB039D6DF;
	Wed, 18 Mar 2026 09:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="cp7fSnBA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E783D359A97
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773824519; cv=none; b=l+j9qn0TYxT2izvSlRkWHsE52puaAe7D6WqLTC+7prjUp/9y6WyzPkl5amPLd05eVheb9b89iuvuW0FytRdzCpXTnQAcsm+X8fDvf+46PWbe6OWl+4erCs7WCrxbNPiuEIv0Mlnp02EoLWQ8ZtlGVpIqO3cRhUxRTS+vTrijLYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773824519; c=relaxed/simple;
	bh=QcX27Uqby1YRe+RtOgdEBmLaRDq/7Us0zPkNT2cLobo=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:Subject:Cc:To:
	 References:In-Reply-To; b=FIp1rp4UeNtrnFLlUMJcC5eqbhdxrMtYpoCd7PidjmtprPybLoo6EgyEZ/9eZW3rNBGfnfey64B/1dKcsoJAiGVtwaICUTZfCvpc6uaUdfkPCjVaYmBf7k1EIs3BejwUoVvNGcBsNfezKpq63f4pwrGNp++h+q8w7pGNHCTsHGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=cp7fSnBA; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id B48614E426E3;
	Wed, 18 Mar 2026 08:51:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7BE096004F;
	Wed, 18 Mar 2026 08:51:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 059E5104506D1;
	Wed, 18 Mar 2026 09:51:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773823908; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=alSZ2fWiAi+9qwfblfCJyz0fVMs/+X5EwPZ2SQgxmLQ=;
	b=cp7fSnBAyWP25/Vl+tF6iiCGYoJXIVWSHpR+5L4HAY2v19vJBUA+qoEwIqKJjlYpXVYFKU
	Yq/xbInLIl8Xv1/Voi2LGVlm/wbox8/Amb44AfhPFY/gmjxrTRpemc4pjxTIQAMnoTLyw2
	g/yB36lMoqLyAtZhDQpUwycEQlOiAqtyzbZUifcFFfHQl1LLamw5Gq3anHAcBrrd5KD/TD
	UGdCu0DPDZUIVaCoYr5e7qCNStyb8YbtIuP9G/SVDOxsz8Fw6mDvQK2W2lA2o+OrgK7dw9
	xfvyjQm57SPNyLS8gCsk6D63W1plQhrX2xNGRmpYFwIFl5mw4xP0uyeg54NoGA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 18 Mar 2026 09:51:39 +0100
Message-Id: <DH5S3DYT0PJQ.11ABZFGEU6ZPC@bootlin.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v2 0/2] drm: bridge: ti-sn65dsi83: Improve dual-link
 LVDS support
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
 <simona@ffwll.ch>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <valentin@compulab.co.il>,
 <philippe.schenker@toradex.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
To: <tessolveupstream@gmail.com>, "Marek Vasut" <marex@nabladev.com>,
 <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>, <rfoss@kernel.org>
X-Mailer: aerc 0.20.1
References: <20260312043743.261475-1-tessolveupstream@gmail.com>
 <9f694b2d-44bc-46ad-8aa3-b464c2f0da13@nabladev.com>
 <176ed865-11a6-42de-89e0-06951b59a430@gmail.com>
 <DH0X7QW3AH3C.PRNRA8CRSSKA@bootlin.com>
 <49b79a0d-844b-4fee-bccb-706187ed76d1@gmail.com>
In-Reply-To: <49b79a0d-844b-4fee-bccb-706187ed76d1@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,nabladev.com,intel.com,linaro.org,kernel.org];
	TAGGED_FROM(0.00)[bounces-277064-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MAILSPIKE_FAIL(0.00)[172.232.135.74:query timed out];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 078522B89DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Sudarshan,

On Wed Mar 18, 2026 at 6:45 AM CET, tessolveupstream wrote:
>>>> You might want to look at recently posted:
>>>>
>>>> [PATCH 2/3] drm/bridge: ti-sn65dsi83: halve horizontal syncs for dual =
LVDS output
>>>
>>> Thanks for pointing this out.
>>> I tried applying the patch =E2=80=9C[PATCH 2/3] drm/bridge: ti-sn65dsi8=
3: halve horizontal syncs for dual LVDS output=E2=80=9D on top of the curre=
nt tree and
>>> removed the changes that I had previously added in the driver.
>>> However, with this patch applied, I am currently seeing only the backli=
ght turning on and no image on the LVDS panel.
>>> For reference, the LVDS panel used on our platform is G133HAN01.1 and t=
he
>>> DSI-to-dual-link LVDS bridge is SN65DSI84ZXHR.
>>
>> Thanks for having tried.
>>
>> Can you please test with both the fixes in the series applied + the test
>> pattern feature and report the results you get with and without test
>> pattern enabled?
>>
>> The patches to apply are:
>>
>>  - https://lore.kernel.org/all/20260226-ti-sn65dsi83-dual-lvds-fixes-and=
-test-pattern-v1-1-2e15f5a9a6a0@bootlin.com/
>>  - https://lore.kernel.org/all/20260226-ti-sn65dsi83-dual-lvds-fixes-and=
-test-pattern-v1-2-2e15f5a9a6a0@bootlin.com/
>>  - https://lore.kernel.org/lkml/20260309-ti-sn65dsi83-dual-lvds-fixes-an=
d-test-pattern-v2-1-e6aaa7e1d181@bootlin.com/
>>
>
> Thanks for the suggestions.
>
> I tested the three patches together as mentioned, but the LVDS panel
> still only shows the backlight and no image. I also tried removing the
> test-pattern patch and retesting with only the remaining two fixes, but
> the result remained the same =E2=80=94 only the backlight turns on and no=
 image
> is displayed.

Sure, the test pattern patch does not change anything, unless you enable
the test pattern.

>> The first thing I suggest doing on your side is testing with the 3 patch=
es
>> mentioned above.
>>
>> If you display works, good! Let us know (you can also add your Tested-by=
 /
>> Reviewed-by tags to the test_pattern patch too if applicable).
>>
>> If it doesn't work, compare the individual register values to find the
>> differences, try to figure out why the working setting works and how to
>> apply that change to the driver in away that keeps other boards
>> working. You're welcome to come back here to discuss it in case you can'=
t
>> find out on your own.
>>
>
> I tested the three patches as suggested, but the panel still shows only t=
he
> backlight with no visible image. I=E2=80=99m unsure how to translate the =
working
> register values into a generic fix based on display timings. Any guidance
> on the right direction would be helpful.

What you should do is:

 1. with your patches, and while the display is enabled (and working) do

     cat /sys/kernel/debug/regmap/4-002c/registers >regs.working

 2. remove your patches, add the 3 I mentioned, and while the display is
    enabled (but only backlight is working) do

     cat /sys/kernel/debug/regmap/4-002c/registers >regs.broken

Then compare regs.working and regs.broken. Which registers differ? Can you
give a reason for the differences?

You can come back with these values here so we may discuss them.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

