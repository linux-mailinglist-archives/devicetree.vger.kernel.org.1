Return-Path: <devicetree+bounces-274261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YA1nMBKosWn4EAAAu9opvQ
	(envelope-from <devicetree+bounces-274261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:36:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBC6268148
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:36:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 60CF03030D3B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8D743DFC99;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9nGHw3C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49A53603D0;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773250575; cv=none; b=FS2vXgVsgCKA6AB6PQ67m3uyPveucRt/QdzO+A1YVJrfg4pBavH5GROn7lxxWE9VkuVK13aboyIxE6cJivnJ0siWLMEEIydRNaoPrSfR7+OiQ6Zkx90w08gV/R06w4vCWpPg2AL765xMOG9FhG+soqAwif7EmW8OxrOJZediZJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773250575; c=relaxed/simple;
	bh=xIP+bku3p7uRvClBiGIRSu+b/UukBTARuX0THvtBZGI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FfTVReRwVmn7k44+in6YciryMtSEta+ZFbb0gKYZYbKgZFJDf66lXlqTv1fESp+1/ZpGh6xyuWSibXmFXfKRgadWAslHNSHk/W5Bv7ZN0YqDw9kIwPRE8ncukbJJXcvwT0lj18yXpviDNoo6QN7N6NszTooXIRjWPJDaXOJSuhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9nGHw3C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 920BBC19421;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773250575;
	bh=xIP+bku3p7uRvClBiGIRSu+b/UukBTARuX0THvtBZGI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=r9nGHw3CVNLZW8IXKb8zX2WWPx79PPbhI9p3KH3CBzj/XmQOwyjI1CjGahnO0r1ek
	 AHCpPHooZaFI9Ryr6W8Jm6eWU/ys2+SSZi0zCN5KuUlz280ITevmQAunI6C4pSFHhb
	 tlGq2POgIkGvOWdVNjVE1NIKsI6m9bu867+Tt4zL1Ezk3UErLTN02tLbOVLMd+4yZi
	 gyIaS7HZnIwqmo6nW3bW0PY5Yy5mweK2dTbWqJkP9hqiEldX+VSZ0APQ3cqOTkXQR5
	 ZmMjmrjt6A9OponSAdRReOKtQYqRK2CI5sp2wtd4HioEgKwOEiqcHujmSFkS5aTbco
	 rJG9WDIncSgOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81C68112585B;
	Wed, 11 Mar 2026 17:36:15 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Wed, 11 Mar 2026 18:35:58 +0100
Subject: [PATCH 3/3] powerpc: wii: Fix LED name pattern
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260311-wii-schema-v1-3-1563ac4aefa8@posteo.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773250574; l=871;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=dxb0z+bZ6O263uGIQqre6Tj1enaP+WCL8KxxI5d4cWs=;
 b=/DY0cdSzCp+gX0zwhnW/DRGuhSs6t4aMpw8W11d0LWq3iAuY1blw7ZZz1vd1oIlFVAj6gYZsm
 TZErN6bNY7iCXITcJLnMMEvkwmrAYDDM1p83HUi9jzS5WW9mpok8FV4
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274261-lists,devicetree=lfdr.de,j.ne.posteo.net];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[j.ne@posteo.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[posteo.net:email,posteo.net:replyto,posteo.net:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7CBC6268148
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "J. Neuschäfer" <j.ne@posteo.net>

Adjust the name of the drive slot LED node to comply with the schema in
Documentation/devicetree/bindings/leds/leds-gpio.yaml.

  arch/powerpc/boot/dts/wii.dtb: gpio-leds: 'drive-slot' does not match
  any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
 arch/powerpc/boot/dts/wii.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/boot/dts/wii.dts b/arch/powerpc/boot/dts/wii.dts
index 57d428b1f78740..473d9feb9cdb83 100644
--- a/arch/powerpc/boot/dts/wii.dts
+++ b/arch/powerpc/boot/dts/wii.dts
@@ -246,7 +246,7 @@ gpio-leds {
 		compatible = "gpio-leds";
 
 		/* This is the blue LED in the disk drive slot */
-		drive-slot {
+		led-0 {
 			label = "wii:blue:drive_slot";
 			gpios = <&GPIO 5 GPIO_ACTIVE_HIGH>;
 			panic-indicator;

-- 
2.51.0



