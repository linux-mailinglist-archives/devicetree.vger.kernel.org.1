Return-Path: <devicetree+bounces-310417-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jgIYKzWlKmo2uQMAu9opvQ
	(envelope-from <devicetree+bounces-310417-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 14:08:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1AA671AB9
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 14:08:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310417-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310417-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4426F3114CA4
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:02:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B921D3DB303;
	Thu, 11 Jun 2026 12:02:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from r3-175.sinamail.sina.com.cn (r3-175.sinamail.sina.com.cn [202.108.3.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA883CB2D4
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 12:02:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781179329; cv=none; b=ARHpuN00hg80MAsfMr4mrEjQauuoCwVev8cR7za4Hmp6KJglwS9MNWzreSiAxHP2cI+mqL62Dv/f3OZudO9yvjW9ZPm9vHvKmKr7EKeH3xUlp/3Pn2ILvAG6cw1kpHq/MkuWhHmHsOdgU2W4mpxfW2weBITSq8QHycCTzWxBJM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781179329; c=relaxed/simple;
	bh=3Mz1buIldYgIfV+mCp3fBzQK/aC8n/L3gRN7gf7mPno=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=TLOWHilmKHlNFFmIUW6hbEGyemWwei2fF6ZW1tLZntCK3NJ8FbrwAXcEy/CxJ6IwuZqOFxrA15IKNO4g4Ok0LFvRHmjr1Zg+XCRRNCnkwkW8OcPj15Uvl5wO//UjZQVgBOKq8J9P9XxH30/apU8YKum3Jy2FsjTVQIub93DZl+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=202.108.3.175
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.38) with ESMTP
	id 6A2AA3B200002418; Thu, 11 Jun 2026 20:01:55 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 65226D66B1E341D581A6ACA05DEDBBF9
X-SMAIL-UIID: 65226D66B1E341D581A6ACA05DEDBBF9-20260611-200155
From: Zhang Yi <zhangyi@everest-semi.com>
To: krzk@kernel.org
Cc: broonie@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-sound@vger.kernel.org,
	robh@kernel.org,
	tiwai@suse.com,
	zhangyi@everest-semi.com
Subject: RE: [PATCH v1 3/7] ASoC: codecs: ES8389: Fix the issue about mclk_src
Date: Thu, 11 Jun 2026 20:01:53 +0800
Message-Id: <20260611120153.5915-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260611-likable-ultraviolet-moth-fdf2f6@quoll>
References: <20260611-likable-ultraviolet-moth-fdf2f6@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [5.04 / 15.00];
	R_BAD_CTE_7BIT(3.50)[unknown];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-310417-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	DMARC_NA(0.00)[everest-semi.com];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:broonie@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-sound@vger.kernel.org,m:robh@kernel.org,m:tiwai@suse.com,m:zhangyi@everest-semi.com,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,everest-semi.com:email,everest-semi.com:mid,everest-semi.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB1AA671AB9

> > Fix the issue with incorrect modifications to mclk_src When the system 
> > needs to be configured to use the MCLK from the SCLK pin, the code 
> > still sets the relevant registers to use the MCLK from the MCLK pin 
> > And setting `mclk_src` to `u8` is inappropriate, because the purpose 
> > of `mclk_src` is to determine whether to use SCLK as MCLK.
> > Therefore, we will change the `mclk_src` member from `u8` to `bool`.
> > 
> > Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
> 
> NAK, same comments as before. You just ignore feedback.

I thought I had responded to your feedback, but I haven't received a reply since then.

I¡¯d like to know if I need to respond to all of the AI¡¯s feedback.
Much of the AI¡¯s feedback concerns pre-existing issues that are unrelated to my patch.

At the same time, I assumed that when you saw a ¡°High¡± severity level on Sashiko,
you wouldn't be able to view the patches, which is why I sent the following patches and assumed they were all v0.
https://lore.kernel.org/all/20260608083540.12581-1-zhangyi@everest-semi.com/
https://lore.kernel.org/all/20260609025605.16945-1-zhangyi@everest-semi.com/
https://lore.kernel.org/all/20260609030623.17404-1-zhangyi@everest-semi.com/

If you can see my reply, should the patch I send next be v2 or v5? I think it should be v2.
I'm sorry for the trouble I've caused you

