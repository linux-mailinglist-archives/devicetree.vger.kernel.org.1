Return-Path: <devicetree+bounces-270620-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNWdD7kDp2k7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270620-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:52:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F5F1F2FA6
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:52:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DDFB6305B35A
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F715492516;
	Tue,  3 Mar 2026 15:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kp/TyFy3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97D84921A0;
	Tue,  3 Mar 2026 15:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772553063; cv=none; b=KPYKMJeNOz9lKqmNtYrl6/BqXp21LrUnH+BHn9majAPxHFOfRXmb+u2JAKwSyIX2Dhvc6+rTu5lX9WxJApKTulSRKuPE78P5BRJAyHLU9/0XlYayLhKh0Tk45uGyizVGuBtjrX+s3W8dYTYbK7x8w8I57H/ndGqR81LM7YRnPKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772553063; c=relaxed/simple;
	bh=53CsSpZsyc7xs+AdaMCHhS93fwYu+PSSE3vaZp2mGiU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uyUTM/bzSoM7AUfH52TpFn3BHB7M28KN/dY1JNs3cI+Qf3Km82OU5L+zPbBG/ZxgE2A34y0cq/061vaT7Mx3irc45hy+tXXCQ2OYZssVFEe0B46924AnM7RS0lJyfj3rDHTaG7pSWapDvGv/J5lVX7eU46P2Q1s3OKrEo2Vs2rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kp/TyFy3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3DBC2BCB3;
	Tue,  3 Mar 2026 15:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772553062;
	bh=53CsSpZsyc7xs+AdaMCHhS93fwYu+PSSE3vaZp2mGiU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=kp/TyFy3g0TYycraCeUU/AJDhJ3DfytSRQlkjvU3n0vQNBeTo1Y4RWwMbKDRTJIm6
	 1RnDjQQNTmTGjYuInSU/65K86yuGsq1+V/ACY0AWEl12yKmiHKCiaiM9zKLBUEqkQO
	 0n058+g1zi+2ka1SQF+RQOwe2ziynmkqCzjwKulryu5bp3RoqzvRwzOwfOHlypxZ5f
	 KXhZFxlp2E2t2raFpse2zMuJ0qM1ZsYnugIK0LkAvaQX2acPngV+LKulcFS2dV9SmB
	 uMWx2aqKPKelYBWwS8U9Zty4440Jg4KKA34q3c4V+PvPGrMtK4fsTM618Pzu24oJg4
	 OINqtPOTLS+Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA5FEDA68F;
	Tue,  3 Mar 2026 15:51:02 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Tue, 03 Mar 2026 16:50:55 +0100
Subject: [PATCH RESEND v2 5/5] powerpc: dts: mpc83xx: Add unit addresses to
 /memory
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260303-mpc83xx-cleanup-v2-5-187d3a13effa@posteo.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772553061; l=5576;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=t9Y71lb+NmFSZt3uA171w86/UdO38JD0i35P7z+18Q0=;
 b=IxOaMiqBi12tObxf7a9xs73qThqTLmT65EEm24vxL3OWI1bfEnegliAO5JGLldmAxqfgHogTq
 CFctZjYT3I5BFD64hm1bwMZgXBESpXGpeVxSZoJ+cLzAb9ggPc8NUv/
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Rspamd-Queue-Id: A8F5F1F2FA6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270620-lists,devicetree=lfdr.de,j.ne.posteo.net];
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
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	HAS_REPLYTO(0.00)[j.ne@posteo.net];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,posteo.net:replyto,posteo.net:email,posteo.net:mid]
X-Rspamd-Action: no action

From: "J. Neuschäfer" <j.ne@posteo.net>

This fixes dtschema warnings such as the following:

  arch/powerpc/boot/dts/mpc8315erdb.dtb: /: memory: False schema
  does not allow {'device_type': ['memory'], 'reg': [[0, 134217728]]}

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
 arch/powerpc/boot/dts/asp834x-redboot.dts | 2 +-
 arch/powerpc/boot/dts/mpc8308_p1m.dts     | 2 +-
 arch/powerpc/boot/dts/mpc8308rdb.dts      | 2 +-
 arch/powerpc/boot/dts/mpc8313erdb.dts     | 2 +-
 arch/powerpc/boot/dts/mpc8315erdb.dts     | 2 +-
 arch/powerpc/boot/dts/mpc832x_rdb.dts     | 2 +-
 arch/powerpc/boot/dts/mpc8349emitx.dts    | 2 +-
 arch/powerpc/boot/dts/mpc8349emitxgp.dts  | 2 +-
 arch/powerpc/boot/dts/mpc8377_rdb.dts     | 2 +-
 arch/powerpc/boot/dts/mpc8377_wlan.dts    | 2 +-
 arch/powerpc/boot/dts/mpc8378_rdb.dts     | 2 +-
 arch/powerpc/boot/dts/mpc8379_rdb.dts     | 2 +-
 12 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/powerpc/boot/dts/asp834x-redboot.dts b/arch/powerpc/boot/dts/asp834x-redboot.dts
index 33ddb17d18760d..c541bd3679831f 100644
--- a/arch/powerpc/boot/dts/asp834x-redboot.dts
+++ b/arch/powerpc/boot/dts/asp834x-redboot.dts
@@ -37,7 +37,7 @@ PowerPC,8347@0 {
 		};
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x8000000>;	// 128MB at 0
 	};
diff --git a/arch/powerpc/boot/dts/mpc8308_p1m.dts b/arch/powerpc/boot/dts/mpc8308_p1m.dts
index 2638555afcc454..41f917f97dab8d 100644
--- a/arch/powerpc/boot/dts/mpc8308_p1m.dts
+++ b/arch/powerpc/boot/dts/mpc8308_p1m.dts
@@ -37,7 +37,7 @@ PowerPC,8308@0 {
 		};
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;	// 128MB at 0
 	};
diff --git a/arch/powerpc/boot/dts/mpc8308rdb.dts b/arch/powerpc/boot/dts/mpc8308rdb.dts
index af2ed8380a867c..39ed26fba41093 100644
--- a/arch/powerpc/boot/dts/mpc8308rdb.dts
+++ b/arch/powerpc/boot/dts/mpc8308rdb.dts
@@ -38,7 +38,7 @@ PowerPC,8308@0 {
 		};
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;	// 128MB at 0
 	};
diff --git a/arch/powerpc/boot/dts/mpc8313erdb.dts b/arch/powerpc/boot/dts/mpc8313erdb.dts
index 137217d377e91b..c9fe4dabc80a78 100644
--- a/arch/powerpc/boot/dts/mpc8313erdb.dts
+++ b/arch/powerpc/boot/dts/mpc8313erdb.dts
@@ -39,7 +39,7 @@ PowerPC,8313@0 {
 		};
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;	// 128MB at 0
 	};
diff --git a/arch/powerpc/boot/dts/mpc8315erdb.dts b/arch/powerpc/boot/dts/mpc8315erdb.dts
index 0b087180e1815f..7ba1159f880311 100644
--- a/arch/powerpc/boot/dts/mpc8315erdb.dts
+++ b/arch/powerpc/boot/dts/mpc8315erdb.dts
@@ -40,7 +40,7 @@ PowerPC,8315@0 {
 		};
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;	// 128MB at 0
 	};
diff --git a/arch/powerpc/boot/dts/mpc832x_rdb.dts b/arch/powerpc/boot/dts/mpc832x_rdb.dts
index ba7caaf98fd58f..06f134490d9574 100644
--- a/arch/powerpc/boot/dts/mpc832x_rdb.dts
+++ b/arch/powerpc/boot/dts/mpc832x_rdb.dts
@@ -38,7 +38,7 @@ PowerPC,8323@0 {
 		};
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x04000000>;
 	};
diff --git a/arch/powerpc/boot/dts/mpc8349emitx.dts b/arch/powerpc/boot/dts/mpc8349emitx.dts
index 13f17232ba83d5..12d33cb55b72a9 100644
--- a/arch/powerpc/boot/dts/mpc8349emitx.dts
+++ b/arch/powerpc/boot/dts/mpc8349emitx.dts
@@ -39,7 +39,7 @@ PowerPC,8349@0 {
 		};
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x10000000>;
 	};
diff --git a/arch/powerpc/boot/dts/mpc8349emitxgp.dts b/arch/powerpc/boot/dts/mpc8349emitxgp.dts
index eae0afd5abbc39..2998a233a790be 100644
--- a/arch/powerpc/boot/dts/mpc8349emitxgp.dts
+++ b/arch/powerpc/boot/dts/mpc8349emitxgp.dts
@@ -37,7 +37,7 @@ PowerPC,8349@0 {
 		};
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x10000000>;
 	};
diff --git a/arch/powerpc/boot/dts/mpc8377_rdb.dts b/arch/powerpc/boot/dts/mpc8377_rdb.dts
index f137ccb8cfdedf..fb311a7eb9f2cb 100644
--- a/arch/powerpc/boot/dts/mpc8377_rdb.dts
+++ b/arch/powerpc/boot/dts/mpc8377_rdb.dts
@@ -39,7 +39,7 @@ PowerPC,8377@0 {
 		};
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x10000000>;	// 256MB at 0
 	};
diff --git a/arch/powerpc/boot/dts/mpc8377_wlan.dts b/arch/powerpc/boot/dts/mpc8377_wlan.dts
index ce254dd74dd06b..f736a15cceffad 100644
--- a/arch/powerpc/boot/dts/mpc8377_wlan.dts
+++ b/arch/powerpc/boot/dts/mpc8377_wlan.dts
@@ -40,7 +40,7 @@ PowerPC,8377@0 {
 		};
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x20000000>;	// 512MB at 0
 	};
diff --git a/arch/powerpc/boot/dts/mpc8378_rdb.dts b/arch/powerpc/boot/dts/mpc8378_rdb.dts
index 19e5473d4161b5..32c49622b40402 100644
--- a/arch/powerpc/boot/dts/mpc8378_rdb.dts
+++ b/arch/powerpc/boot/dts/mpc8378_rdb.dts
@@ -39,7 +39,7 @@ PowerPC,8378@0 {
 		};
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x10000000>;	// 256MB at 0
 	};
diff --git a/arch/powerpc/boot/dts/mpc8379_rdb.dts b/arch/powerpc/boot/dts/mpc8379_rdb.dts
index 61519acca22804..07deb89c5a9bdc 100644
--- a/arch/powerpc/boot/dts/mpc8379_rdb.dts
+++ b/arch/powerpc/boot/dts/mpc8379_rdb.dts
@@ -37,7 +37,7 @@ PowerPC,8379@0 {
 		};
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x10000000>;	// 256MB at 0
 	};

-- 
2.51.0



