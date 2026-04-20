Return-Path: <devicetree+bounces-288838-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJmOEY1x5mlgwgEAu9opvQ
	(envelope-from <devicetree+bounces-288838-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 20:33:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 90240432E65
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 20:33:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61CCC334469F
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 17:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87B0E39DBC8;
	Mon, 20 Apr 2026 17:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="DtGipo5z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C0B239EF38;
	Mon, 20 Apr 2026 17:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.243.120.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776705573; cv=none; b=L4Sk2aADAzZ+/LBaW8oQjAFhHEd+h0B6IgCUTIktqQjLAFet8BbJxByddIJ3DDwYk7wb0Z/lkgx3zO3mpYudvzrp1Z17SVQsPoBCkA/N+w1nXxXTsv3DT2EFkskeqsv4dhMsP4XGF3IFRukIaYBYmhRYYHjkU8SAI+n94PRU4pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776705573; c=relaxed/simple;
	bh=88rYxoK3sPsiW3RNhZSzqkh4tfmACDGm6Pg915LWyKQ=;
	h=Date:From:To:Cc:Subject:Message-Id:In-Reply-To:References:
	 Mime-Version:Content-Type; b=qjSU7XfafQOblgf84Ohv2Tl2g1Ti+eERnS30+9h50PM+lzxRMKRMjGk01Iuwhej8R5Je9mLjAR5wVuvFDpP01Sr8OotvJZDP0rW1ok3sH3KL8VCSjHgKGby+xXRe/jTKRXic71ElvVN/KYfEC7zzxsk7NGmekM11rdFTiBMvb/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hugovil.com; spf=pass smtp.mailfrom=hugovil.com; dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b=DtGipo5z; arc=none smtp.client-ip=162.243.120.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hugovil.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hugovil.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=default; h=Content-Transfer-Encoding:Mime-Version:Message-Id:Subject:Cc:
	To:From:Date:subject:date:message-id:reply-to;
	bh=a9Xg9obUfBWc0Jfz2hi3S0O9X2O9shbr+J8WdWbUYlM=; b=DtGipo5zQuAgxrVkU3Ovu9jrWS
	Xp7ARurRPAjgjxcTF30RUGQHoLl8TtrRQ1HM4ifA/Nj0GvyBF8VxMp+iET7OZO2C3nNEd0neabb/5
	XNg+6IivARfkkdt2TJT2TsOTbjSmXwR/qsDnmIITwACjA2lVY0DboSK8iNMUyil5OjrQ=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168] helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.98.2)
	(envelope-from <hugo@hugovil.com>)
	id 1wEsHE-0000000041P-1nGn;
	Mon, 20 Apr 2026 13:19:16 -0400
Date: Mon, 20 Apr 2026 13:19:15 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: robin@protonic.nl, andy@kernel.org, geert@linux-m68k.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 hvilleneuve@dimonoff.com, mkorpershoek@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, lee@kernel.org,
 alexander.sverdlin@gmail.com, marek.vasut@gmail.com, akurz@blala.de,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v5 4/4] Input: charlieplex_keypad: add GPIO charlieplex
 keypad
Message-Id: <20260420131915.9f3eb48e09d403dbeab27639@hugovil.com>
In-Reply-To: <aeZe7XoDbOMqMG_c@google.com>
References: <20260312180304.3865850-1-hugo@hugovil.com>
	<20260312180304.3865850-5-hugo@hugovil.com>
	<aeWtDA7snjJmiF9K@google.com>
	<20260420110159.29ccb815eb584bca18a407ac@hugovil.com>
	<aeZe7XoDbOMqMG_c@google.com>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam_score: -2.0
X-Spam_bar: --
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[hugovil.com,none];
	R_DKIM_ALLOW(-0.20)[hugovil.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288838-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[protonic.nl,kernel.org,linux-m68k.org,dimonoff.com,gmail.com,collabora.com,blala.de,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[hugovil.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hugovil.com:dkim,hugovil.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 90240432E65
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 20 Apr 2026 10:16:02 -0700
Dmitry Torokhov <dmitry.torokhov@gmail.com> wrote:

> On Mon, Apr 20, 2026 at 11:01:59AM -0400, Hugo Villeneuve wrote:
> > I tested it on the real hardware and all is good.
> 
> Thank you for testing the changes.
> 
> > 
> > So I imagine that it can still go into 7.1 since it is a new driver
> > and not a modification of an existing one?
> 
> Yes, since this is a new driver I will include it in 7.1 pull request.
> 
> Thanks.

Great, thank you.

-- 
Hugo Villeneuve

