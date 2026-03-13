Return-Path: <devicetree+bounces-275108-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHMjJGPks2ktcQAAu9opvQ
	(envelope-from <devicetree+bounces-275108-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:18:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31307281507
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:18:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9DDF30EAB49
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:14:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DBDA38D681;
	Fri, 13 Mar 2026 10:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ux4zeEVG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90C5A38D00D;
	Fri, 13 Mar 2026 10:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773396882; cv=none; b=mVvJG+VGw56AokAHCjO/u/t0IH3FbDIgOpjZpEuCBXKWERCFzgNd0Uq/0XOhegCkLtVAIXBa5OoC75IU4XcAMb+GdcKuvDwAA/lYKeSZyEV2Lj1ebceW78wbzuI5r/05Lo7Ghlfrrmw0ISZQcAvMAkx6mYRtspTiR8ZzKmKh8zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773396882; c=relaxed/simple;
	bh=/pO5zXw/fthiQHWvwEHxiXFG2mc46C68maKdMVoO3gI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YUVJpsQxyGVIbvu0oEXlP004C+YH+ALctMOJ2EJBoS6qMG4BKtq21pJUcTTByN57qLrtaWtAVtD6dhmxgN8TY4aurQcDo/9ZmYAZZf5oKE1rCEyT0Q4Tv0Az0VtyrbSVG3tBq3DHqh5aQQgp7usaKpPyk0+JoU73mx7bANjaLB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ux4zeEVG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2AC00C2BC86;
	Fri, 13 Mar 2026 10:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773396882;
	bh=/pO5zXw/fthiQHWvwEHxiXFG2mc46C68maKdMVoO3gI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Ux4zeEVG1SAPwlqpR791eu1HaCw3k3B9Hffk/7zgO/uLtHUCbibnKRfj9C7egh558
	 LVzUUytnNsaBtHsfbW8iXwEG8qtvTTyzyqJUz+Ho97hRMQ1MkQVh832P67k/mlajM8
	 lvlXxasRC41GYyrM+NoNqhIi8/C1F/mVgTnV0C/q/EfrieGNG9KsTk4HcBiAW7OBHL
	 +EG2dwPs8qwtaFjTiJG+KN7k0Z4Jn50dlt5OR0v9XvazVwDenWISRlf3xSjumqQuWg
	 tjwe4w8/QnHsXFEV5+4QKQx5D1/EqygO4xrkZy4QOftd6DstPySeVPNpkZ3J3NyaOR
	 sOQZw37np++Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11C19105F78F;
	Fri, 13 Mar 2026 10:14:42 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Fri, 13 Mar 2026 11:14:23 +0100
Subject: [PATCH 1/2] powerpc: dts: mpc8315erdb: Add missing model property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260313-ppc-model-v1-1-bf19b3d1b65d@posteo.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773396881; l=823;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=n/fxdtwbMAquaGebzGobrDraGsEGpPXQQhSlOEczEkk=;
 b=dtJysHo1jeWHtdEVPqw0MX6RrcpcMzqlk1jHr+6f+LP/gTsarP97ua2tGpMwR0jgzcUYOShn9
 +8B3gmyhHETA9Ckmj4HeU5jvbIPXNT9xD5h45Ill/st37PxovESUZwF
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
	TAGGED_FROM(0.00)[bounces-275108-lists,devicetree=lfdr.de,j.ne.posteo.net];
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
X-Rspamd-Queue-Id: 31307281507
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "J. Neuschäfer" <j.ne@posteo.net>

The mpc8315erdb devicetree did thus far not have a /model property, even
though it is required by the devicetree specification.

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---

This patch was previously part of another series, which turned out to be
too large and unweildy:

  [PATCH 00/19] powerpc: MPC83xx cleanup and LANCOM NWAPP2 board
---
 arch/powerpc/boot/dts/mpc8315erdb.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/powerpc/boot/dts/mpc8315erdb.dts b/arch/powerpc/boot/dts/mpc8315erdb.dts
index a8f68d6e50b0dd..100717e2cdc365 100644
--- a/arch/powerpc/boot/dts/mpc8315erdb.dts
+++ b/arch/powerpc/boot/dts/mpc8315erdb.dts
@@ -10,6 +10,7 @@
 
 / {
 	compatible = "fsl,mpc8315erdb";
+	model = "MPC8315E-RDB";
 	#address-cells = <1>;
 	#size-cells = <1>;
 

-- 
2.51.0



