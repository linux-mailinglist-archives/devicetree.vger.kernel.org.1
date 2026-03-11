Return-Path: <devicetree+bounces-274260-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCHrNV2osWn4EAAAu9opvQ
	(envelope-from <devicetree+bounces-274260-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:37:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4482926819B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 201683070DCB
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB7943DDDB5;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZtIEoqG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A499C3074B1;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773250575; cv=none; b=btJkqxoZjd+B7rZ0U4sgK2JqF0D/3scUW1F3JzCENwczc4895cAjTEdLUIYHPlteqGbTuSmR1NZtku2BOTCE9R9B08WB8g8ZJsQiET2AEL5Jm1TYEJ9v6d+CVAx3nTO6QilUygqmqVbs+jPPKJa91P96Gpcbt6RFwDpXyNDL+dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773250575; c=relaxed/simple;
	bh=sYp6SDAoGDNbT6mgkoV4qYqYzFe4douGMtogxZUg/TI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h0PvuJXk/4nCmcr3vh65heEud2oeARSnQ/O7qJJRSOkC7RMzehgu3Pq0CxxZMnlkrlqlBfzwHl4aywyA3t0PFQyhKwJYnaoxIAa7fA/pMv6FlY/8mGd85nqeK3YhJXGHiBM9/LNqAqlS55OSAy+t0XTVHxTxGqYq2FF8Z4VWu4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZtIEoqG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF13C2BC9E;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773250575;
	bh=sYp6SDAoGDNbT6mgkoV4qYqYzFe4douGMtogxZUg/TI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=SZtIEoqG91q8bUKj+cVruHBbPaK25z3wGdLyYgPV2+t/vlxsG1aqrte0zYaQc6azB
	 qCbDVJgKj+ti9uV8xqrbT+ExZlDCsEYcBGE0h9IJscWZEK7ff5wzmdT6Ifm75wZ99g
	 e3e8nJxE6uia3fKMw/gJw+0FT1cZckfnZy+VecQTDTWwV4rEfi6ezgDoT3aD8rrOwm
	 jkbX/DcHbbXHz855KxHcd7Ilk5yg1zX9kl4Vfh3KNrBMw/vYbGYAnn/34rLPafLJN2
	 WFr0yaUD4ybRfTKbrGU6dWKJQW4uI/KBFGLSeF71mz2VLI67MX1rqWLvm1hrawwXKw
	 XmSNb3EgBs2yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A86C1125859;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Wed, 11 Mar 2026 18:35:57 +0100
Subject: [PATCH 2/3] powerpc: wii: Fix GPIO key name pattern
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260311-wii-schema-v1-2-1563ac4aefa8@posteo.net>
References: <20260311-wii-schema-v1-0-1563ac4aefa8@posteo.net>
In-Reply-To: <20260311-wii-schema-v1-0-1563ac4aefa8@posteo.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, Link Mauve <linkmauve@linkmauve.fr>, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773250574; l=841;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=tYdEm39DKLsN+x1RpeowsrJyD+YP6FEzuLwykYwk9Tg=;
 b=eu9NoxwayNEl+/lwzPRUx2hDf2f/CIq8ukS16+rS7u1veFXrlYg4Je6EO0OllPuFTl0P/IFJQ
 m4mqXChvjZiDuGcPr2pjiPZEde5GpJVtDCvkqzolstrWf79oQpkrfo5
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274260-lists,devicetree=lfdr.de,j.ne.posteo.net];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[j.ne@posteo.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,posteo.net:email,posteo.net:replyto,posteo.net:mid]
X-Rspamd-Queue-Id: 4482926819B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "J. Neuschäfer" <j.ne@posteo.net>

Adjust the names of GPIO key nodes to comply with the schema in
Documentation/devicetree/bindings/input/gpio-keys.yaml.

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
 arch/powerpc/boot/dts/wii.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/boot/dts/wii.dts b/arch/powerpc/boot/dts/wii.dts
index e001c4c6fd79ad..57d428b1f78740 100644
--- a/arch/powerpc/boot/dts/wii.dts
+++ b/arch/powerpc/boot/dts/wii.dts
@@ -256,13 +256,13 @@ drive-slot {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		power {
+		button-power {
 			label = "Power Button";
 			gpios = <&GPIO 0 GPIO_ACTIVE_HIGH>;
 			linux,code = <KEY_POWER>;
 		};
 
-		eject {
+		button-eject {
 			label = "Eject Button";
 			gpios = <&GPIO 6 GPIO_ACTIVE_HIGH>;
 			linux,code = <KEY_EJECTCD>;

-- 
2.51.0



