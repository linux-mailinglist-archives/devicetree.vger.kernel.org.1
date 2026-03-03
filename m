Return-Path: <devicetree+bounces-270618-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHvOM7IDp2k7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270618-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:52:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D44C1F2F98
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:52:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A0CE73059ACC
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03369492506;
	Tue,  3 Mar 2026 15:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iea8njuu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D493A492192;
	Tue,  3 Mar 2026 15:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772553062; cv=none; b=sDKvk8seQ11oVIZRUzGN2URkkoXJKCiDOjbNjVRFTuRdsbvJecJ+2bT8fGyC6Pu871bpYyDwTbAFalPxGo3VL/PWLbK9WSJrIP+pA8Yk/w4KPP95xqRFl4jzWydnLogEgLEqiMYJ5IsLvHRT6YGiCm+UKoQcbOiwqbxV1qp0LCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772553062; c=relaxed/simple;
	bh=qYFS2rlOpk9olbd80sCn3U0gRL4PIsZ3YtXzt7AFweM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LeYDydDRpc+Kv1HD5eBVuaTxtH2u2Bx0gax7LSYnWIFAVl/vROfTDLB3CHh6pMcCwerx9KlFCXdH+8/TESXrqb1Y5Yfwq/Cz/TYQC6ImFSxPL+eRC1lvr9X9YTFKUXvQAxDzNZQdgR+b1I0/p5bT1Apc7PBY8y1bv+LYc56rqXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iea8njuu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B1AC4AF0D;
	Tue,  3 Mar 2026 15:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772553062;
	bh=qYFS2rlOpk9olbd80sCn3U0gRL4PIsZ3YtXzt7AFweM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=iea8njuuRp42V0z6Amfa6xL9VcQEL1KnX4BdDVV9cWZ9vSbRkl9S4/TvdfaMqngy0
	 fbF0PTjstZgdjBbsAz+vJVDG+AEMV5owL5Yc5nIL/T0pwUMef3mfUTw4nf9D29oT40
	 fApvYS4TOLzcGt5Aou71fGZfle4RB3A8fMVWO9O1Z4lqquKIPhqDItvgbKZcb/0NXL
	 Usp/+hWsyGZhuKR7vc9B8+AzLIUVwLgqc11rRm8sxxBZgVlbGM2dvJEjnHcH9gNSPV
	 qpXo5T76MZrcnFlx2C/gMcvgYD01/1sc092hIKoUFxsimR3sbM/1wWvuskublzPYIg
	 2HHEs8P93uWRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D8DEEDA694;
	Tue,  3 Mar 2026 15:51:02 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Tue, 03 Mar 2026 16:50:53 +0100
Subject: [PATCH RESEND v2 3/5] powerpc: dts: mpc8315erdb: Rename LED nodes
 to comply with schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260303-mpc83xx-cleanup-v2-3-187d3a13effa@posteo.net>
References: <20260303-mpc83xx-cleanup-v2-0-187d3a13effa@posteo.net>
In-Reply-To: <20260303-mpc83xx-cleanup-v2-0-187d3a13effa@posteo.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772553061; l=775;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=+puBlr+iszGhT8EEZ37X0Zo4jHGzrX+grKkdaghOCjU=;
 b=v00ZH6oGc73d74tAXfq3D1dQOjNn+Fgi26cIPLJ9hxzsTF6V2JeUrO3FPN2Yi1ik7vXIWCdU7
 Y8M3ZEWxWZyD0BFPyanIx+IdodBkLjeMKQ2O4wH0Na/Du2kZARXYTgh
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Rspamd-Queue-Id: 4D44C1F2F98
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270618-lists,devicetree=lfdr.de,j.ne.posteo.net];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.ibm.com,ellerman.id.au,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	HAS_REPLYTO(0.00)[j.ne@posteo.net];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,posteo.net:replyto,posteo.net:email,posteo.net:mid]
X-Rspamd-Action: no action

From: "J. Neuschäfer" <j.ne@posteo.net>

The leds-gpio.yaml schema requires that GPIO LED nodes contain "led",
and preferably start with "led-"

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
 arch/powerpc/boot/dts/mpc8315erdb.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/boot/dts/mpc8315erdb.dts b/arch/powerpc/boot/dts/mpc8315erdb.dts
index 1957b6687b2987..f4938a7292b9c8 100644
--- a/arch/powerpc/boot/dts/mpc8315erdb.dts
+++ b/arch/powerpc/boot/dts/mpc8315erdb.dts
@@ -478,12 +478,12 @@ pcie@0 {
 	leds {
 		compatible = "gpio-leds";
 
-		pwr {
+		led-pwr {
 			gpios = <&mcu_pio 0 0>;
 			default-state = "on";
 		};
 
-		hdd {
+		led-hdd {
 			gpios = <&mcu_pio 1 0>;
 			linux,default-trigger = "disk-activity";
 		};

-- 
2.51.0



