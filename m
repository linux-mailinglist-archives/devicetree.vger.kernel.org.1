Return-Path: <devicetree+bounces-270713-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOqbM/kxp2kjfwAAu9opvQ
	(envelope-from <devicetree+bounces-270713-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:09:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BF91F5AC7
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:09:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 686FB303C4EE
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E564536DA17;
	Tue,  3 Mar 2026 19:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDnLgV/e"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A6F30EF92;
	Tue,  3 Mar 2026 19:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772564705; cv=none; b=mk3kMoJGEIOkbsmhKMig2QK37cdosltbC+7hToJxvqLymRQSZMnZTfqo6hCQMS2YrAzhimHZtcreQD9rjBos+h7WQ78ftLps87mGPaDp/aVM0aCFgyEfI4lqvLt6Bz1peTPNBO+4nshq9SVgb77nHV0oMfhnnGmeNjduGmSXrdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772564705; c=relaxed/simple;
	bh=I3C57r6azO48yZzyNuNe6/kxRiFpeGaZXr+2V6WEkW0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=BSrcxVzv2t4FR43dg4KOCO9zeDyITp81R77PDyURgSkidphoq0hjBZlrSOTPXwIu6rApzmL78jQ1aeM/ayg4xWYJdeJd9I7g4J+NXFsFTCspuFnyvqTxsqhWsrCLrUR4EYP59Jr6rMAPk0gjFveAFyTtKXFg5VkAZJgLrlJ3Bjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDnLgV/e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 487AFC116C6;
	Tue,  3 Mar 2026 19:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772564705;
	bh=I3C57r6azO48yZzyNuNe6/kxRiFpeGaZXr+2V6WEkW0=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=pDnLgV/eazlr7UIzXY5QmohbXFxsQJxtz7+ZZPC38mYnSoGp8GFSzzuJ2qaBqHzcz
	 7C94DJji/wKEVqXfvrzBroc3S3nXCrjAcwfqle970eHfTu5lz8noGePIGu38uW8etC
	 6HzqB+bAK8HkOn90Xls2p33QM/BAIMRroKre/oCxFuNTpPAxRoALpdobcsusWgV6D8
	 dG3LuKiyWeOuAH+kUYDh9iWhCmZQXdTttq6fC+B1yHs1fkaSRck9DwScBs/KHQjPQU
	 zGsP4VARUR1UQ8/uI6nrdJvJvHIscpeuNjmSmZJ76ySdambQHviyujZG9xhfBq2Yxz
	 aFDuPDQQffUoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D380EDEBE6;
	Tue,  3 Mar 2026 19:05:05 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Tue, 03 Mar 2026 20:05:00 +0100
Subject: [PATCH RESEND] powerpc: DTS: mpc8313erdb: Add
 timer@*/clock-frequency properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260303-timer-clock-v1-1-68336d3161f3@posteo.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772564704; l=1719;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=wToNi3p+7oH/fZkL7rybDw1OVJ8Mht3DHd2zANSoxwc=;
 b=1Y5vaGMTDSwDyTMDt6bOuEi0MTG9ayKBdBMjYkAgwux3aVe+bMocyRNbMftjIT1i5M06PHR/u
 RYochVODplxD1OWG3jKHme3675+QXAlXsjdItXL+fq+xU5SFOARPLdr
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Rspamd-Queue-Id: 30BF91F5AC7
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-270713-lists,devicetree=lfdr.de,j.ne.posteo.net];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.1.244:email,intel.com:email,posteo.net:replyto,posteo.net:email,posteo.net:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.2.88:email]
X-Rspamd-Action: no action

From: "J. Neuschäfer" <j.ne@posteo.net>

The recent formalization of the fsl,gtm schema has shown that
mpc8313erdb.dts doesn't provide the clock-frequency property on timer
nodes. A few different expectations collide here:

 - Both the binding and the driver for the Freescale global timer module
   (GTM) have always required clock-frequency, since their addition in
   2008 (v2.6.26-rc5-236-g83ff9dcf375c41).
 - mpc8313erdb.dts never had the timer@*/clock-frequency property, since
   the timer nodes were added in 2008 (v2.6.26-3343-g574366128db29e)

I suspect the way this worked was that the bootloader filled these
values when booting on an MPC8313 board.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202505300136.HOpO5P6y-lkp@intel.com/
Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
 arch/powerpc/boot/dts/mpc8313erdb.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/powerpc/boot/dts/mpc8313erdb.dts b/arch/powerpc/boot/dts/mpc8313erdb.dts
index 09508b4c8c7309..0bddc3be9e62f8 100644
--- a/arch/powerpc/boot/dts/mpc8313erdb.dts
+++ b/arch/powerpc/boot/dts/mpc8313erdb.dts
@@ -308,6 +308,7 @@ gtm1: timer@500 {
 			reg = <0x500 0x100>;
 			interrupts = <90 8 78 8 84 8 72 8>;
 			interrupt-parent = <&ipic>;
+			clock-frequency = <0>; /* filled by bootloader */
 		};
 
 		timer@600 {
@@ -315,6 +316,7 @@ timer@600 {
 			reg = <0x600 0x100>;
 			interrupts = <91 8 79 8 85 8 73 8>;
 			interrupt-parent = <&ipic>;
+			clock-frequency = <0>; /* filled by bootloader */
 		};
 	};
 

---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20250625-timer-clock-e03fa9e835c8

Best regards,
-- 
J. Neuschäfer <j.ne@posteo.net>



