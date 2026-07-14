Return-Path: <devicetree+bounces-326561-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GlHsHh+5VmpRAgEAu9opvQ
	(envelope-from <devicetree+bounces-326561-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 00:33:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C07057593F7
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 00:33:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cuOkNoM0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326561-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326561-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 74BC9306AEA9
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:32:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC61736F8EF;
	Tue, 14 Jul 2026 22:32:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE606423E8F
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 22:32:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784068355; cv=none; b=I50RyybnK4VFM6R/FAo3GWhB4iVYUWJv4TQH0re6utuwVt1eMJqy+HH+/Xxf7b0xJxEDxcfILFXidFZjBY7jGLOdtgZtvTQmaQjx9GRlH1ejtl3JsJhPMFC/wzRaLbxqIVgcIuzSw0OX+79wwgcoBtdtX+xYAUg19amhrT2uJSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784068355; c=relaxed/simple;
	bh=mqLqW+WQzNLDh4jTLZChTxq8dQTw8D1N0kbTtDbKGKE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OU/8UK9yq9u5qUClinKbG3xbhSn/t2H1TjvzSh5GU4IZ+H3QIvR60oJbl4/NQqxqc1L58HFHzLvmafJsW7QiUztVyTPnLPPILum64+ZMr+UpJzcqzAq1tjxw6gRkMQs3qZJWjE/Pa80DSuyVAJUHl7hknivH+RSP8CNzw3sMCJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuOkNoM0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF4141F000E9;
	Tue, 14 Jul 2026 22:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784068350;
	bh=mqLqW+WQzNLDh4jTLZChTxq8dQTw8D1N0kbTtDbKGKE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cuOkNoM0aLMs4c3hfbwKR2qXmkL7WR/6xoORfRTtqISzv7QsUod0nVvYllCCJfyoq
	 j7NgoMZeoKNWyq/P1Ae1B9maotxwzlL79eIm5LfjcLMq7MPVHhw0gLHvSocHrfV3rw
	 0B32wbMIiiIxGGC5hXk6TIpSD7hLInMlIK11nNRGB/vkde/cUuM4zJovyNbmybi56a
	 1itCrFmXN4h0rhR1wi3cA7V3y9UOTjI/rLqRVR7EadwQmr3H9s4cCHzk66Mc0CRPYq
	 NDuUGd0DFN1VuSef4326ni94tbUVflKU0xcFsenH/MtYt7YSxhrhiECS8rMjtpkmIQ
	 OZ2OXolxWG5ww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/7] dt-bindings: mailbox: Don't require #mbox-cells to
 be 1
Reply-To: sashiko-reviews@lists.linux.dev
To: "Douglas Anderson" <dianders@chromium.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260714152138.1.I814d768336e8de933580d467140ce340f3d4f55d@changeid>
References: <20260714222338.2965707-1-dianders@chromium.org>
 <20260714152138.1.I814d768336e8de933580d467140ce340f3d4f55d@changeid>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 22:32:29 +0000
Message-Id: <20260714223229.EF4141F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326561-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dianders@chromium.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,chromium.org:email,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C07057593F7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The commit message contains a typo and is missing the value '0' aft=
er '#mbox-cells', making the sentence incomplete and confusing.
--

--- Patch [1]: [PATCH 1/7] dt-bindings: mailbox: Don't require #mbox-cells =
to be 1 ---
commit 6ada1cfb4e312b11f6e334039168356fbbe9bd88
Author: Douglas Anderson <dianders@chromium.org>

dt-bindings: mailbox: Don't require #mbox-cells to be 1

This commit updates the mailbox bindings to clarify that #mbox-cells does
not need to be strictly 1, allowing 0 when a mailbox only provides one
channel.

Link: https://lore.kernel.org/all/20260322-mailbox-v1-1-c6251f18187c@gmail.=
com/

> Existing mailboxes have #mbox-cells and this makes sense if a mailbox
> only exposes one channel. Update the bindings to match.

[Severity: Low]
This isn't a bug, but is this sentence missing the value 0 after #mbox-cell=
s?
It currently reads as though the intended value was omitted, which makes the
description slightly confusing.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714222338.2965=
707-1-dianders@chromium.org?part=3D1

