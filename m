Return-Path: <devicetree+bounces-275106-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PEDHmHks2ktcQAAu9opvQ
	(envelope-from <devicetree+bounces-275106-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:18:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DA889281500
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:18:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4321130CCD77
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F286A38D01F;
	Fri, 13 Mar 2026 10:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krF9kX/b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79AF038D00C;
	Fri, 13 Mar 2026 10:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773396882; cv=none; b=LWKYxy4CKv2V0z88z46YQLavDW/ZjOi40rvsme9jMCav7r44QhJlnM66QOHMrQNSZKa1wlAaBh2MspmT9A0PWT+8RsiQgvIdBNhCH/0yYb2Oa1OpLwXqHgnq4FNqu6JAH8BS1EhXoeiDaIPPPrgeV4bzMBt18YCb0XpuhTEIb8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773396882; c=relaxed/simple;
	bh=gDumIVv2RR3qsw/ZjdbEy9pmhUNNs186HjaeGl6tevQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OKvssS5eyxyH/hrQC0LgXhANabw1S5+9pkgZDiIwK1nPOTjTmi8EgyRtZFE/Z2wprhm78x3My+yB5J68jGWmLX97PuG7vX7GNDtri3tl/RjZvWLTYy5ntrz4DCI0ywUa3piydCmvF78tU0ZapuGOiWRmPkB7VMaTlSnWwNoyJwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krF9kX/b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 32910C2BC87;
	Fri, 13 Mar 2026 10:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773396882;
	bh=gDumIVv2RR3qsw/ZjdbEy9pmhUNNs186HjaeGl6tevQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=krF9kX/bhbfUiId287+ErRL6HlUVHPpzYfTgRXIPVQO1NJFtNEukxqU1UIw52z5vK
	 d+8vJ9nDo+78IAjPUZyMGHmRuU7H4eJr3N/vFbOgakbMj3z36mTM0ZU+JhI9AGr2iH
	 CAqkNEWRP1j/WqVQJ3YH67vUOWIfQc+4AtH2VUWQuaS5sCUnsN+FtiPajQNvufmGJr
	 /9X7e+SXzP+iHSJpMTNCgkJ5loBgru5R+2ZbHh4Ggv6sGfAu3GB9O+nM3zmnjAXytT
	 zY2NBxLCjk+cDFoGDebpTiEP97DlDVIpbU/2X9ZU68pFD/ojJ57+S+y+ofuBCBn2XS
	 sqLDRzNZW4TBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 250B7105F791;
	Fri, 13 Mar 2026 10:14:42 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Fri, 13 Mar 2026 11:14:24 +0100
Subject: [PATCH 2/2] powerpc: dts: Add missing model properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260313-ppc-model-v1-2-bf19b3d1b65d@posteo.net>
References: <20260313-ppc-model-v1-0-bf19b3d1b65d@posteo.net>
In-Reply-To: <20260313-ppc-model-v1-0-bf19b3d1b65d@posteo.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773396881; l=3236;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=qyXxRV38xWkpDO+hT68IGUbfYPxG01yo3fihfYhDmgU=;
 b=MGt01luTb+JtIHA5onvF3/Xiuo5FxKvu4GNC6SUJCflpd0lvLCTUuURz46iyDEhNRvlL18oMI
 nebfhkFGMQ1Bud9z7D1Vu2OPt30215o7ucVsq+aqJGjg0V2dtd9wlFW
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275106-lists,devicetree=lfdr.de,j.ne.posteo.net];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,posteo.net:email,posteo.net:replyto,posteo.net:mid]
X-Rspamd-Queue-Id: DA889281500
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "J. Neuschäfer" <j.ne@posteo.net>

These are the remaining PowerPC devicetrees that do not have a /model
property, even though it is required by the devicetree specification.
Fix them by simply copying the compatible string.

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
 arch/powerpc/boot/dts/mpc8308_p1m.dts  | 1 +
 arch/powerpc/boot/dts/mpc8308rdb.dts   | 1 +
 arch/powerpc/boot/dts/mpc836x_rdk.dts  | 1 +
 arch/powerpc/boot/dts/mpc8377_rdb.dts  | 1 +
 arch/powerpc/boot/dts/mpc8377_wlan.dts | 1 +
 arch/powerpc/boot/dts/mpc8378_rdb.dts  | 1 +
 arch/powerpc/boot/dts/mpc8379_rdb.dts  | 1 +
 7 files changed, 7 insertions(+)

diff --git a/arch/powerpc/boot/dts/mpc8308_p1m.dts b/arch/powerpc/boot/dts/mpc8308_p1m.dts
index 2638555afcc454..2b24efd944113c 100644
--- a/arch/powerpc/boot/dts/mpc8308_p1m.dts
+++ b/arch/powerpc/boot/dts/mpc8308_p1m.dts
@@ -9,6 +9,7 @@
 
 / {
 	compatible = "denx,mpc8308_p1m";
+	model = "denx,mpc8308_p1m";
 	#address-cells = <1>;
 	#size-cells = <1>;
 
diff --git a/arch/powerpc/boot/dts/mpc8308rdb.dts b/arch/powerpc/boot/dts/mpc8308rdb.dts
index af2ed8380a867c..37b785dc787b7c 100644
--- a/arch/powerpc/boot/dts/mpc8308rdb.dts
+++ b/arch/powerpc/boot/dts/mpc8308rdb.dts
@@ -10,6 +10,7 @@
 
 / {
 	compatible = "fsl,mpc8308rdb";
+	model = "fsl,mpc8308rdb";
 	#address-cells = <1>;
 	#size-cells = <1>;
 
diff --git a/arch/powerpc/boot/dts/mpc836x_rdk.dts b/arch/powerpc/boot/dts/mpc836x_rdk.dts
index 4ff38e1a2185f8..d3d36fbf4e8695 100644
--- a/arch/powerpc/boot/dts/mpc836x_rdk.dts
+++ b/arch/powerpc/boot/dts/mpc836x_rdk.dts
@@ -14,6 +14,7 @@ / {
 	#address-cells = <1>;
 	#size-cells = <1>;
 	compatible = "fsl,mpc8360rdk";
+	model = "fsl,mpc8360rdk";
 
 	aliases {
 		serial0 = &serial0;
diff --git a/arch/powerpc/boot/dts/mpc8377_rdb.dts b/arch/powerpc/boot/dts/mpc8377_rdb.dts
index f137ccb8cfdedf..45f78da31da182 100644
--- a/arch/powerpc/boot/dts/mpc8377_rdb.dts
+++ b/arch/powerpc/boot/dts/mpc8377_rdb.dts
@@ -9,6 +9,7 @@
 
 / {
 	compatible = "fsl,mpc8377rdb";
+	model = "fsl,mpc8377rdb";
 	#address-cells = <1>;
 	#size-cells = <1>;
 
diff --git a/arch/powerpc/boot/dts/mpc8377_wlan.dts b/arch/powerpc/boot/dts/mpc8377_wlan.dts
index ce254dd74dd06b..318e2e1f4284f2 100644
--- a/arch/powerpc/boot/dts/mpc8377_wlan.dts
+++ b/arch/powerpc/boot/dts/mpc8377_wlan.dts
@@ -10,6 +10,7 @@
 
 / {
 	compatible = "fsl,mpc8377wlan";
+	model = "fsl,mpc8377wlan";
 	#address-cells = <1>;
 	#size-cells = <1>;
 
diff --git a/arch/powerpc/boot/dts/mpc8378_rdb.dts b/arch/powerpc/boot/dts/mpc8378_rdb.dts
index 19e5473d4161b5..1abec806525844 100644
--- a/arch/powerpc/boot/dts/mpc8378_rdb.dts
+++ b/arch/powerpc/boot/dts/mpc8378_rdb.dts
@@ -9,6 +9,7 @@
 
 / {
 	compatible = "fsl,mpc8378rdb";
+	model = "fsl,mpc8378rdb";
 	#address-cells = <1>;
 	#size-cells = <1>;
 
diff --git a/arch/powerpc/boot/dts/mpc8379_rdb.dts b/arch/powerpc/boot/dts/mpc8379_rdb.dts
index 61519acca22804..b1e6a85624bef8 100644
--- a/arch/powerpc/boot/dts/mpc8379_rdb.dts
+++ b/arch/powerpc/boot/dts/mpc8379_rdb.dts
@@ -9,6 +9,7 @@
 
 / {
 	compatible = "fsl,mpc8379rdb";
+	model = "fsl,mpc8379rdb";
 	#address-cells = <1>;
 	#size-cells = <1>;
 

-- 
2.51.0



