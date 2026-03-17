Return-Path: <devicetree+bounces-276745-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJLJDe5yuWm8EgIAu9opvQ
	(envelope-from <devicetree+bounces-276745-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:27:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4C42AD042
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:27:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 219873059AE3
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 920073EAC98;
	Tue, 17 Mar 2026 15:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="DPA42cc5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AABE2DCC1C;
	Tue, 17 Mar 2026 15:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.243.120.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773761041; cv=none; b=AmzGl1ijaGKBVmCv/+hsMtFUS4tT7Mf+cvs6AvWVmRcrNDcaSllCvbOFFXxKvmrzNNwE/TSvBcV/T20+1vS1zzex8Mzm2nfdeojvpH3jdC0TL+YXcA3R3CjJerj/ttR9ACx47N6mDFT8f30eVDjrLmyRrGpOJwgsonC2VYHfixA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773761041; c=relaxed/simple;
	bh=5h7rKnxGxB9QOmesmwC1AJDdZ+jW3Y09u1Q1AXlUwgY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ias71OeKN27B5/keP6wo17ipZHRc0uw8ieROcmnyUYRxAT9YCpFcXovzo14K8wJVhm7oG5j35dTMwyCl2rGP/86H1nfu2ap53lQbhOgif7qhcKqITpfDmT6wqIcYec4o3JYPaCjAPZaop3h8iSU+4Gf/LY/4eTHi1Rq/+4P8FVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hugovil.com; spf=pass smtp.mailfrom=hugovil.com; dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b=DPA42cc5; arc=none smtp.client-ip=162.243.120.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hugovil.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hugovil.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject
	:Cc:To:From:subject:date:message-id:reply-to;
	bh=krtTpW0rTg4ewXkbLePs2AeKOnDn8Nvc7bRFFbOCuJQ=; b=DPA42cc5Y5uYoy/Lwv571c4l0i
	RMSHqgV4Q1Z6ckF6otyDP00hJ1j1rz5GJFFfLGoXD5fH9bh1F/FkohKYw/LgsOKB1CTqf9Ig0GdB2
	rcbDeo2d7fPElMLM8no7llHkhOXO2T36IduGN98+S8d4+j4+QF33IMNK1Ewh+0fMWEBQ=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168] helo=pettiford.lan)
	by mail.hugovil.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <hugo@hugovil.com>)
	id 1w2WH0-000000002KS-3V3k;
	Tue, 17 Mar 2026 11:23:59 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: hugo@hugovil.com,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: regulator: fix typos in regulator-uv-* descriptions
Date: Tue, 17 Mar 2026 11:23:39 -0400
Message-ID: <20260317152357.3473584-1-hugo@hugovil.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam_score: -1.0
X-Spam_bar: -
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[hugovil.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[hugovil.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276745-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[hugovil.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hugovil.com:dkim,hugovil.com:mid,dimonoff.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AB4C42AD042
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Remove word "over".

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 Documentation/devicetree/bindings/regulator/regulator.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/regulator.yaml b/Documentation/devicetree/bindings/regulator/regulator.yaml
index 042e56396399f..019aeb664caec 100644
--- a/Documentation/devicetree/bindings/regulator/regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/regulator.yaml
@@ -168,7 +168,7 @@ properties:
       offset from voltage set to regulator.
 
   regulator-uv-protection-microvolt:
-    description: Set over under voltage protection limit. This is a limit where
+    description: Set under voltage protection limit. This is a limit where
       hardware performs emergency shutdown. Zero can be passed to disable
       protection and value '1' indicates that protection should be enabled but
       limit setting can be omitted. Limit is given as microvolt offset from
@@ -182,7 +182,7 @@ properties:
       is given as microvolt offset from voltage set to regulator.
 
   regulator-uv-warn-microvolt:
-    description: Set over under voltage warning limit. This is a limit where
+    description: Set under voltage warning limit. This is a limit where
       hardware is assumed still to be functional but approaching limit where
       it gets damaged. Recovery actions should be initiated. Zero can be passed
       to disable detection and value '1' indicates that detection should

base-commit: f338e77383789c0cae23ca3d48adcc5e9e137e3c
-- 
2.47.3


