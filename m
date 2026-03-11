Return-Path: <devicetree+bounces-274258-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CBfKGxKosWn4EAAAu9opvQ
	(envelope-from <devicetree+bounces-274258-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:36:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC56268141
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:36:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C55603014749
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDF673DC4BD;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hD+N6huC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A39A2C326F;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773250575; cv=none; b=KGK2kQ3/8gNeXpfVZKuus1dbZZSLObh5rGuZk3pVkJReMe8TQGBcv2hk2GI6AruoL4kINHI9HRnbQQFBwACFZPssNH5D+qtoRb7sTHooBCKm5Lj0rt4reUaCa/0vP4FvZOJDF13tBtfCtUK6ig4E9y4KPK7LQygFV9dqm79JfaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773250575; c=relaxed/simple;
	bh=xjKTDTd8ojlA8FfIUmj0qcyQ4/gIsPJELfOQhU0E5aQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VbzMmfXucQTgwssfL+CHYXRDzb7u1CZb7cCZ2RGxEAdgxbYfZKpqeDWF9Oe0ajtsnEIN7+Gt6CE1P03/0xRPCTbSFoHsCz0p3INMcAmuQz6nOj6/fu5B1rSTOe8U7pJjqXzqzP74I8xCNFUigDaQ9GQpSzD5k2LIKjarg2Ocapw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hD+N6huC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 50357C4CEF7;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773250575;
	bh=xjKTDTd8ojlA8FfIUmj0qcyQ4/gIsPJELfOQhU0E5aQ=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=hD+N6huCGVpA94OuTRFfz+OQZwF0c1V89jFdwN0lqNGJLyqOFHBVok/JJx03aMYoy
	 VvDb08YDTb+yYTvzDnkEgEc1mPCjgMB7zP2OiZIJF6y6OPIrr/otto2pI/VKb+Ytnz
	 ITeVcow0EgEKnI2aTStmFsSth4Mxzud4tW4ZC/3D9lOMw3mFHvcjEmcWYpxcEFqU1K
	 Pt84v6sNfN/YJSSgyhe42vX1f29MyBkEYV4Zpn2V8knwGUFYgPJJoJgc1ivi5BxQdD
	 AEZA701uudzFrCUMgo9AxowAiH9fubXZ/zbSEOQbJ1t2YTeDkB7dRVTOjh9JPfxW/j
	 wzGuiGcKyyqUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 418991125811;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Subject: [PATCH 0/3] PowerPC/Wii: A few devicetree cleanups
Date: Wed, 11 Mar 2026 18:35:55 +0100
Message-Id: <20260311-wii-schema-v1-0-1563ac4aefa8@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAPunsWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDY0ND3fLMTN3i5IzU3ERdkyQTg2Rz8zSLZMtEJaCGgqLUtMwKsGHRsbW
 1AN6YVydcAAAA
X-Change-ID: 20260311-wii-schema-4b40c77f8c9a
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, Link Mauve <linkmauve@linkmauve.fr>, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773250574; l=575;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=xjKTDTd8ojlA8FfIUmj0qcyQ4/gIsPJELfOQhU0E5aQ=;
 b=zhOibk57Sy5roTUBK9nE4MIkOyWyEqD34XxRVVNfbYQWWc+tDK26S9c1UQSMK+MxO+zpyAUb9
 7UVSXf+7ErzDw7eZ57HKw/M1HVBeW+/0UfquAISraqRVWUdU/ae8n5x
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274258-lists,devicetree=lfdr.de,j.ne.posteo.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,linux.ibm.com,ellerman.id.au,gmail.com];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[j.ne@posteo.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,posteo.net:email,posteo.net:replyto,posteo.net:mid]
X-Rspamd-Queue-Id: CCC56268141
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series contains a few minor fixes to make wii.dts somewhat more
compliant with the DT schemas.

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
J. Neuschäfer (3):
      powerpc: wii: Add unit address to /memory
      powerpc: wii: Fix GPIO key name pattern
      powerpc: wii: Fix LED name pattern

 arch/powerpc/boot/dts/wii.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)
---
base-commit: 6af06d984685645b4f80132a8defb09747b10989
change-id: 20260311-wii-schema-4b40c77f8c9a

Best regards,
-- 
J. Neuschäfer <j.ne@posteo.net>



