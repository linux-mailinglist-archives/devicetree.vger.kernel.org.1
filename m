Return-Path: <devicetree+bounces-274259-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOt0AxWosWn4EAAAu9opvQ
	(envelope-from <devicetree+bounces-274259-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:36:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BC8268150
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:36:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2D503300BEA4
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE6233DCDBC;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBEo2dAt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A4152ED16D;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773250575; cv=none; b=ojuEu75/KBnH4iX/GPU491e+l09xzP08P7BSoVXDU7mhFEHCWAw/9B6nQbmzerEuusO2yatSIdw/cb4myzzedrxBjO4iZO4lvE6z0FfoexcQwvFuvag4OGlFgoT7WyhpMegY6bxPozx2xKqKRTrrYF2p5NscSB+yOKfgWvr9Gbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773250575; c=relaxed/simple;
	bh=BX/UkU9Vtj08pcIHU3Fjvxm9lXOnjY3ihmDu95vFG+o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jBHR4uCLthrDobrcV3u+AcJ4wAF1A7BCNvGPYn7itAoFcjO/qYGmbPkaPYvTS1uM3r7enb3v8EMamJaSd2MPfXeS7YQ+f4bvkycC+2R2iRW4cclj2EzKUnpapCOMW3eqju29cBhtEOgBX/5phD/VbtwqIA92WPNK3kUKFTxjAyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBEo2dAt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B633C19425;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773250575;
	bh=BX/UkU9Vtj08pcIHU3Fjvxm9lXOnjY3ihmDu95vFG+o=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=RBEo2dAtxi1B83GuEbqsLusQGSvH3vMnfvo/N6FQFtNI5Fgax+KTnnLGAb3/2S6GW
	 8elok6L/NYg/zYoa4BNoGHLrpwzNMZ7Jd4Traggsm27Lyfli3Bc58C+YzEr5xXbzX+
	 pzXs4QawHOXT7rNOIQkqloLKWgMz9OBmQunvCpDug69T6g2zATlNDTke7enPoJ5Q56
	 FlL6iWTqZIbkrYMvrPtJWtcX9HxPcLboc5hsDe7IXBXi/AobJn3aVbYM4Zb5HnPnUf
	 skj7TlUgInuxix0BSPDob41C/llKCNRczLCPWcJLcFRwwoIgT7NJtxiPYDYCfBw+sF
	 867ptWM7KRy6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A7B1125858;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Wed, 11 Mar 2026 18:35:56 +0100
Subject: [PATCH 1/3] powerpc: wii: Add unit address to /memory
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260311-wii-schema-v1-1-1563ac4aefa8@posteo.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773250574; l=818;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=mJE8J3UROLwpIHwAWtFDUS3Blti09quatD3rOT0SWfg=;
 b=ylDvuZVLPNLElaZid8QO26o8IzgFIG7Yx18Wx4wLYXyw7WJPvg4rFnGOx2Pcm54GcqvJM8ODQ
 NeSWti1K4DiDImCVseuhM2kXLW+7sUJmumCcQ6mYUeWExL689YVUr/O
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274259-lists,devicetree=lfdr.de,j.ne.posteo.net];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[j.ne@posteo.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[posteo.net:email,posteo.net:replyto,posteo.net:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 07BC8268150
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "J. Neuschäfer" <j.ne@posteo.net>

This fixes the following dtschema warning:

  arch/powerpc/boot/dts/wii.dtb: /: memory: False schema does not allow
  {'device_type': ['memory'], 'reg': [[0, 25165824], [268435456, 67108864]]}

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
 arch/powerpc/boot/dts/wii.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/boot/dts/wii.dts b/arch/powerpc/boot/dts/wii.dts
index e46143c3230882..e001c4c6fd79ad 100644
--- a/arch/powerpc/boot/dts/wii.dts
+++ b/arch/powerpc/boot/dts/wii.dts
@@ -29,7 +29,7 @@ chosen {
 		bootargs = "root=/dev/mmcblk0p2 rootwait udbg-immortal";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x01800000	/* MEM1 24MB 1T-SRAM */
 		       0x10000000 0x04000000>;	/* MEM2 64MB GDDR3 */

-- 
2.51.0



