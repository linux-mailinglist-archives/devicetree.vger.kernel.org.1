Return-Path: <devicetree+bounces-309635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HkJOEuEuKWpPSAMAu9opvQ
	(envelope-from <devicetree+bounces-309635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:31:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4694667DC2
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:31:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309635-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309635-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E4CB303CA63
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3A53BAD89;
	Wed, 10 Jun 2026 09:12:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp153-176.sina.com.cn (smtp153-176.sina.com.cn [61.135.153.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771953A5E90
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 09:12:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781082778; cv=none; b=MSlU2tpdqIZnOdkZn3gBjecGUA+KIQBfB6oLa5rx1No/4YQtjERqL6japNstDBWfrdUFfiyDUV8o46ib9tUkFUp0dFDCVThsdFO4v8VDBt0zLVOwd53tSbVddp87KNUHhfS/UO9Xs0+VjYw+akRegCvNJnw0ceS/aAJbYoD/Txw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781082778; c=relaxed/simple;
	bh=yKAUuOURd9y9p14tOY8p0TL4uJkXphHba6728gxQneY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=fsE7VGrGTdxML4zfL2Tm9gnD4lGvq/sIyxTlsCUFdq2G4lS4KlNpsWaQ2GlTOqFspwz0t9f4ELkicO2Ag53xo5y2NvvU3VDleInaqhg5Io8G7njikb5I0UsvO63W1C9g60wvIhbf8+NrPqowW5O1AThVGfFhlh/mN4bBVsBNVyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=61.135.153.176
Received: from unknown (HELO DESKTOPQJC4P40)([58.38.107.94])
	by sina.net (10.54.253.38) with ESMTP
	id 6A292A8800002E14; Wed, 10 Jun 2026 17:12:41 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 5C8B85373A4342B08C8F646CE9D15207
X-SMAIL-UIID: 5C8B85373A4342B08C8F646CE9D15207-20260610-171241
From: <zhangyi@everest-semi.com>
To: <krzk@kernel.org>
Cc: <alsa-devel@alsa-project.org>,
	<broonie@kernel.org>,
	<conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>,
	<krzk+dt@kernel.org>,
	<robh@kernel.org>,
	<tiwai@suse.com>
Subject: Re: [PATCH 7/7] ASoC: dt-bindings: ES8389: Add members about HPF and clock
Date: Wed, 10 Jun 2026 17:12:40 +0800
Message-ID: <070401dcf8b9$4aaa3860$dffea920$@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Content-Language: zh-cn
Thread-Index: Adz4t2H8cwE7+5GoRNWBhStZ5ikWXg==
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	FAKE_REPLY(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-309635-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[everest-semi.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:tiwai@suse.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[everest-semi.com:mid,everest-semi.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A4694667DC2

> You already sent v1 and received feedback.
> 
> You just completely ignored it

When I submitted the v0 patch, I received feedback and suggestions from
Sashiko.
I wasn't sure how to handle Sashiko's feedback, and I mistakenly assumed
that if my patch didn't pass Sashiko's tests, you wouldn't receive it. 
So, after modifying the code based on Sashiko's reasonable suggestions, I
submitted a patch with the same version ID.
As a result, you received two consecutive patches from me. I didn't mean to
ignore your valuable feedback, and I apologize for this.

So, when I receive feedback from Sashiko, do I need to wait for the
maintainers to provide their feedback before incorporating the changes into
the next version's patch?


