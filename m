Return-Path: <devicetree+bounces-309796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P4lfEydfKWpiVwMAu9opvQ
	(envelope-from <devicetree+bounces-309796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:57:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 879246697C9
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:57:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=arndb.de header.s=fm3 header.b=ADPwV7eH;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="Y qRIe0d";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309796-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309796-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=arndb.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6051F308E4BD
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D30340802E;
	Wed, 10 Jun 2026 12:51:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a4-smtp.messagingengine.com (fout-a4-smtp.messagingengine.com [103.168.172.147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 920A3408026;
	Wed, 10 Jun 2026 12:51:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781095889; cv=none; b=QscXsGGEeX5Emr0BL2zvygFef8euY/Z38QcpkC/O4kxiCYReoXAfPSsMXbwxsTbcjwSR5NZQC0qL2ec1kpN7+ZdS49Nyak0jSVyMTlr4tlnrK9nthPlcgvw0leaGGu6/i2cd7BGSNXa+Q3KoJuT6SkLFmWycyARvhOyrFL411M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781095889; c=relaxed/simple;
	bh=B+tJ+53oipR+4ON8kY7X2BBYdD+wd6qJQICfL0VUer8=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=Ras54FlVhBfkNbg9VPCJQivPpcoR6xf+OT8nOY6tnVqnU+jZ+9NcAY2IY9UkEi5R+Te+a1fzsGUbDkXmUezlboDdUil0oaj0nWnkeM7XAAmKw+AuUsIaj0X6B3f4WsK2TDwf7v3MZBsNKSm6drkF+12YspzM99TfvEMTt3Nw5wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arndb.de; spf=pass smtp.mailfrom=arndb.de; dkim=pass (2048-bit key) header.d=arndb.de header.i=@arndb.de header.b=ADPwV7eH; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=YqRIe0dJ; arc=none smtp.client-ip=103.168.172.147
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.phl.internal (Postfix) with ESMTP id BCC4EEC01CD;
	Wed, 10 Jun 2026 08:51:27 -0400 (EDT)
Received: from phl-imap-05 ([10.202.2.95])
  by phl-compute-04.internal (MEProxy); Wed, 10 Jun 2026 08:51:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1781095887;
	 x=1781182287; bh=mjr0EJXcf5fpGgfCYEE8UvjJrrggHpGu76Ud0Wa9ei4=; b=
	ADPwV7eHz6fcYGs1wkZRZgweMUvKqsmngMjiSNqaZXk/FDt21VXVYY5VV//lOYu4
	UI1mbMcpqQse9raUQESn5x2VUDPQCs4vVkY9UEVJwvG6qyXfQa5c9lyOsl7E4KNj
	2ZXiusVS7wiK363155BegUeAwNT07tHtMa16TY9UN1Ak0zFVKDo7Ni4oVHMkUw4D
	X3i4strVI1Kf4z1ZwoOI9NG8GuhWVWJDnNo9clR9yiCsXwv5+uYBLm1MbbrfeE0R
	bNqAgZU44GFYoDhnkxYN6GpUT3LPxUzgiWwTOU8eIDKzBswiNtxKnmH0UqQCPieh
	1rGbnMH555gJRca1Zk+XkQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1781095887; x=
	1781182287; bh=mjr0EJXcf5fpGgfCYEE8UvjJrrggHpGu76Ud0Wa9ei4=; b=Y
	qRIe0dJnvQV6D5AetFv0/TrA3U7HLrvWqT/o9+lVmTartR0GX3ACempMpDgEUcMC
	NcQJWkpKjWmsNE5f1AqSO3MMA1U8A5R46OfOizhDFbWI1LrfyHPS2Mqs38JmPx5Y
	n33bS2wIIY8bk3WovAx6T0a7qWSuWscKSqzi/FzayRi8nPtf/IJ6CMZ0+Vs6jm/C
	3vUK51u2qKAMrIXSsZfOyeKSW7P2kEpWv+K8oPi7nAxygWE3BwbHOOxt+XtP+Gog
	LHuBiGEzZxQ97eEn9BhqXroQwOcGBgm2+frypKHNkThAT3iQIsGGe2GqEIXclIX3
	zVxucZN8TI8DRf3DUB18g==
X-ME-Sender: <xms:z10paitPqf4MmvqIubo_izMLuxIyyJVTm2mFLfVzto3M5hTydAoB0A>
    <xme:z10paiQraqyfGBTg1-fkRTuc251kworeTC6pHoH8_qYDatRIPo3pQWaRaeDEdy4LV
    2nRKpW3T1qIDsNlzlX5oBvo5gSD2y-73IPkdGZqBjwK3lfUIINOHsD5>
X-ME-Proxy-Cause: dmFkZTFq2iEO/MoPXTyaGp2UdguHzuRFH2Rks31lOqsP0RqRUR3u8kgw8zQwlT32SuhXKX
    VOzT4qS110I3PiAJfbGsC9Hs/n6uakep8NfM7cDrSEnJ5iQgwtE0NqPozXC7Z+TcFp8x7V
    ah+4bCjpGWvJ4fz1G9SbSfqX1FPjoevYum9vTUc8JN57iX++KTe+Jj0gl9FmfprpVSDMka
    9z605UgXHTfp7m5Jym/yMiXsoO7/NS0WRfDGh/QH3fPkNEI7RHOzx550wQfIudOKz5S/2q
    fgb2vDXKnoltEgiNb5fgO6uFes249Zpgea0YVuf6WpItibhpVTakJPnsxSBRPpQ4nlV+s0
    ZX6IiP6c69+Rc5XigSTeEjGqXD+Uvf9Vg18nc1W2/0kFUstARkdv/bK8YzTXBSRgx00UgF
    C6d3AAmQrorzZc2Mr1PrdX1+SNV+s/l0rOg5n+xlR/q/3h84Lsjj2h7YbxtvkmTVGdBVHa
    21lUEl+65l7T4npJo3AZeIDHQSS6J4H4WnhWqRbKXOtTf82Tj4N9i5uSSCNILUg2DdfiFp
    l2GZTq3yzKhNrkqU3VkdSXwa8zDC4AGRF/YRCVF7msGg0TzQyHYdGGF1hx+o9xutwe6toi
    QbljgEgTqe2HFkSE3mj19I10YzVAj6sr5OQWIFVXQNOTEC8x4BYkUPlB2ctA
X-ME-Proxy: <xmx:z10parpNaF_Y5P9htIjVC6i2-Ibu7yW7P0bNV4ZO_A2bxBnHWM21SQ>
    <xmx:z10paq17NnmaZmNAV-JaoC3oAJSZFrumz5_YlFHdqzY_44I_dFLGEQ>
    <xmx:z10parmeNriMYSYMJBgDlBjyPUi9I5T_E1r1HcLiHDTcJrKAhTaAyg>
    <xmx:z10pauYJhuCnsCU7dHU8LiOdMGeuKsWl0Q5oYHdakY8aFDkjjh7jWg>
    <xmx:z10pakZo0q-H-mXHY8HYckiwxy5SyGqeoxCwiZ3P_m_mu9_hMydleO3D>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 43BD3182007E; Wed, 10 Jun 2026 08:51:27 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ThreadId: APCtYiT4KAZo
Date: Wed, 10 Jun 2026 14:50:46 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Jason Li" <jason.lee651024@gmail.com>, jason.li@cortina-access.com,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 "Jiri Slaby" <jirislaby@kernel.org>
Cc: "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>,
 "Catalin Marinas" <catalin.marinas@arm.com>, "Will Deacon" <will@kernel.org>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Message-Id: <7dcc8386-a0e0-4c79-a9f7-f63188bb997e@app.fastmail.com>
In-Reply-To: <20260610112821.3030099-2-jason.li@cortina-access.com>
References: <20260610112821.3030099-1-jason.li@cortina-access.com>
 <20260610112821.3030099-2-jason.li@cortina-access.com>
Subject: Re: [PATCH 0/3] tty: serial: Add Cortina-Access UART driver and platform
 support
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.65 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[arndb.de,none];
	R_DKIM_ALLOW(-0.20)[arndb.de:s=fm3,messagingengine.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,cortina-access.com,linuxfoundation.org,kernel.org];
	FORGED_SENDER(0.00)[arnd@arndb.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:jason.lee651024@gmail.com,m:jason.li@cortina-access.com,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:catalin.marinas@arm.com,m:will@kernel.org,m:linux-serial@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jasonlee651024@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309796-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[arndb.de:+,messagingengine.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arnd@arndb.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,arndb.de:dkim,arndb.de:from_mime,messagingengine.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 879246697C9

On Wed, Jun 10, 2026, at 13:28, Jason Li wrote:
> This series adds Linux kernel support for the UART controller integrated
> in Cortina-Access SoCs, with CA8289 (Venus) as the first supported device.

Hi Jason,

Thanks a lot for your submission!

I'm glad to see Cortina Access is getting back to upstreaming
this support, I see that you first tries this in 2021 but
didn't get very far at the time. The last submission was v4,
so it would make sense to cound this one as v5 and continue
with v6 next time.

You have already received a number of comments, so I'll skip
looking at the details for the moment and let you work through
them.

Regarding how to split up the patch series between uart and
soc, I think sending them together during the review phase
as you do here makes sense, but as they are loosely coupled,
I think we will likely merge them separately. For simplicity,
I would then just put the MAINTAINERS entry and the bindings
for the vendor and board into the series for the soc tree.

It would also help me if you could add some more context about
the SoC into the patch description for the patch that adds
the arm64 platform, in particular:

 - is this the only one you are planning to upstream at this
   point, or do you already have plans for other SoCs in this
   family?

 - do you expect to see full support for actual end-user
   products using these chips?

 - is there any shared lineage with the cortina-systems
   (storlink/storm, now marvell) gemini 32-bit chips that we
   already support, or with any of the Realtek SoCs that
   are also being upstreamed now?

       Arnd

