Return-Path: <devicetree+bounces-308498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xyX2G/8RJ2rErAIAu9opvQ
	(envelope-from <devicetree+bounces-308498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 21:03:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BAE659FB9
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 21:03:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=runbox.com header.s=selector1 header.b="PnHF6K M";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308498-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308498-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB60B3083033
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 18:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 162BA3B83FE;
	Mon,  8 Jun 2026 18:52:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mailtransmit04.runbox.com (mailtransmit04.runbox.com [185.226.149.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDF73546C5
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 18:52:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780944727; cv=none; b=Q5Q1jLmuYr3eoVkOTH3fCwXLq2BAOfM8l4OzHCWN27+CQsX+q5yu5ykx/VISUZcNysb68KiJ9F6n9vI2lxysFB2wjgtunhlK/PIuZN2hwLigWTvhaQnEWUEzZarsc9vwoK8KSWh1HgqlIaV2lJR5AEp+GTHGNDTMD0qMv7No4Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780944727; c=relaxed/simple;
	bh=dCzZqsEFSsmTdQjtgd8ONukyg5eOVXelkFuLU6s69f0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=NiqzKKbJJLx7kHh0Cv7ZppQW7YCIHSxcYIkZGhuTFw/hPJlreK39I5qfvR9IxOdWTunHe4Q7ekBVN/VVKa5sNtYDacnKfB9KqEoAlvZXvFv+xUg3fKoJA35EPhsYOJ/8IvaUfYTRTZaDVpUqAOe3/L3eUExie9CaLAeL0awxvH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=runbox.com; dkim=pass (2048-bit key) header.d=runbox.com header.i=@runbox.com header.b=PnHF6KMb; arc=none smtp.client-ip=185.226.149.37
Received: from mailtransmit03.runbox ([10.9.9.163] helo=aibo.runbox.com)
	by mailtransmit04.runbox.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <david.laight.linux_spam@runbox.com>)
	id 1wWf4o-00CXwt-Vi; Mon, 08 Jun 2026 20:51:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=runbox.com;
	 s=selector1; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
	Subject:Cc:To:From; bh=dG/sfYRvq8kCCeYDOuH74EgMzRpBVnNC9TmW9KHmBDA=; b=PnHF6K
	MbWeBipz0WdMy11fYHsxVRSqjqPpYyOfBaE7d5LkMgDAVsAGYgv7Gwh4+QS4hGFJ1nQDiHOSmev8z
	Qp6s5ZxV54rglsdBLBI0LSmaDbQZN9QRmeN+0mLROGyZmSNT19WKgMZlhBgNcB2NBoeCmEZqi3I+P
	u7RDZQRtPJKSPOu7PZqNg3GuX99n57bBn6ft4pxXYlCLhrRhGzJYfvAM7Xof8zwjzE0683zcuV7TS
	848Nqgs9Mp8PL/781nhKyvenWkXAvbxdUhlIXVpV07wo07b/dE616M6yLuQjqmPOzuYsl6OvXteo8
	Pojl+6XbpA0jdgeADSRsLWTSychA==;
Received: from [10.9.9.73] (helo=submission02.runbox)
	by mailtransmit03.runbox with esmtp (Exim 4.86_2)
	(envelope-from <david.laight.linux_spam@runbox.com>)
	id 1wWf4o-00081k-IC; Mon, 08 Jun 2026 20:51:58 +0200
Received: by submission02.runbox with esmtpsa  [Authenticated ID (1493616)]  (TLS1.2:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.95)
	id 1wWf4k-00Bd89-NO;
	Mon, 08 Jun 2026 20:51:54 +0200
From: David Laight <david.laight.linux@gmail.com>
To: Kees Cook <kees@kernel.org>,
	linux-hardening@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Arnd Bergmann <arnd@kernel.org>,
	David Laight <david.laight.linux@gmail.com>
Subject: [PATCH next v2] drivers/of/overlay: Use memcpy() to copy known length strings
Date: Mon,  8 Jun 2026 19:51:21 +0100
Message-Id: <20260608185121.22331-1-david.laight.linux@gmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.06 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[runbox.com:s=selector1];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-308498-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[runbox.com:+];
	FORGED_RECIPIENTS(0.00)[m:kees@kernel.org,m:linux-hardening@vger.kernel.org,m:robh@kernel.org,m:saravanak@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:arnd@kernel.org,m:david.laight.linux@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,runbox.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 78BAE659FB9

Avoid calls to strcpy().
The lengths of the strings have been used for the kzalloc(), replace
the strcpy() calls with memcpy() using the known lengths.

Signed-off-by: David Laight <david.laight.linux@gmail.com>
---

v2: Improve commit message

This is one of a group of patches that remove potentially unbounded
strcpy() calls.

They are mostly replaced by strscpy() or, when strlen() has just been
called, with memcpy() (usually including the '\0').

Calls with copy string literals into arrays are left unchanged.
They are safe and easily detected as such.

The changes were made by getting the compiler to detect the calls and
then fixing the code by hand.

Note that all the changes are only compile tested.

Some Makefiles were changed to allow files to contain strcpy().
As well as 'difficult to fix' files, this included 'show' functions
as they really need to use sysfs_emit() or seq_printf().

All the patches are being sent individually to avoid very long cc lists.
Apologies for the terse commit messages and likely unexpected tags.
(There are about 100 patches in total.)

 drivers/of/overlay.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index c1c5686fc7b1..656867009514 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -258,8 +258,8 @@ static struct property *dup_and_fixup_symbol_prop(
 	if (!new_prop->name || !new_prop->value)
 		goto err_free_new_prop;
 
-	strcpy(new_prop->value, target_path);
-	strcpy(new_prop->value + target_path_len, path_tail);
+	memcpy(new_prop->value, target_path, target_path_len);
+	memcpy(new_prop->value + target_path_len, path_tail, path_tail_len);
 
 	of_property_set_flag(new_prop, OF_DYNAMIC);
 
-- 
2.39.5


