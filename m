Return-Path: <devicetree+bounces-310376-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bW8rLQeaKmpytQMAu9opvQ
	(envelope-from <devicetree+bounces-310376-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:20:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F33671429
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:20:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310376-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310376-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A2D0E3008D16
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:16:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16DD43DE455;
	Thu, 11 Jun 2026 11:16:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from r3-212.sinamail.sina.com.cn (r3-212.sinamail.sina.com.cn [202.108.3.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E663DE436
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 11:16:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781176580; cv=none; b=D8Hf7x7Y9D9UjtnZoHEpHJ4JseH9fRAoqIbjOcWftO2f/WNmczywAYn7B2m81BlhcFFPpHNnvDFlxcEATKxMiHeaEhsZ3DqHX77zFwa1AasgUC8paKL9MUyFKJ1OgIvNrICef3yH6t9y8PkRjOcHDVnhb97k40XYMKGkzLrDM9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781176580; c=relaxed/simple;
	bh=YlbM8A/UhTCp1E8f+BtUXADU6/zze6MLlFnaiTU0inI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=Vn6ET6k1/2AnDGMtyUAY2iJHv2+MxcGpxDEeFx6bEoKSd2hgiLxDuZtWmLWLDEP1/FaTM5ueT/lw9PkKfDhwZmROkvrD3jl6S92NOJTEz+aIdGkJ9nL/kTIWSP46IQM/t1qepY+EgEw+cup1V8BPbXt2trEvy9l7U1SZteoCoQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=202.108.3.212
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.38) with ESMTP
	id 6A2A98F900006A30; Thu, 11 Jun 2026 19:16:10 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 3A95675138FD48AB90898CD2D9990B6D
X-SMAIL-UIID: 3A95675138FD48AB90898CD2D9990B6D-20260611-191610
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
Subject: RE: [PATCH v1 1/7] ASoC: dt-bindings: ES8389: Add members about HPF and clock
Date: Thu, 11 Jun 2026 19:16:08 +0800
Message-Id: <20260611111608.5691-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <c6d33f8d-fcd3-4b23-81d0-6583d943b9d9@kernel.org>
References: <c6d33f8d-fcd3-4b23-81d0-6583d943b9d9@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310376-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[everest-semi.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:broonie@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-sound@vger.kernel.org,m:robh@kernel.org,m:tiwai@suse.com,m:zhangyi@everest-semi.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,everest-semi.com:mid,everest-semi.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 41F33671429

> This was v1:
> https://lore.kernel.org/all/20260608083540.12581-1-zhangyi@everest-semi.com/
> 
> Then you send v2 calling it v1:
> https://lore.kernel.org/all/20260609025605.16945-1-zhangyi@everest-semi.com/
> 
> Then you sent it again:
> https://lore.kernel.org/all/20260609030623.17404-1-zhangyi@everest-semi.com/
> 
> And now you send v4 (??!?) calling it v1:
> https://lore.kernel.org/all/20260611031824.4628-1-zhangyi@everest-semi.com/
> 
> All within three days. And in the same time you never responded to
> actual feedback.
> 
> This is not acceptable. Please stop spamming the list with the same
> version and respond to the feedback. I expect addressing EVERY email you
> received with reviews.

First of all, I apologize for sending several identical patches.

Actually, I haven't ignored your feedback;
I've responded to all the feedback you've provided so far, but I haven't received any further comments.

As for the several patches with identical content,
this is because the AI responded to the patches from the previous versions,
and my email indicated that my patches had been bounced. So I assumed you hadn't received them.

Also, I haven't heard back from you since I replied to your feedback, so I'm not sure if you saw my reply.
So I submitted another version of the patch and included an explanation in the comments addressing the feedback you provided earlier.
If there's any other feedback I may have overlooked, please let me know. Thank you.

By the way, if you can see this email, please reply so I can confirm that you can view what I sent.

