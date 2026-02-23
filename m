Return-Path: <devicetree+bounces-267311-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICkCGbUcnGkZ/wMAu9opvQ
	(envelope-from <devicetree+bounces-267311-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:24:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C86A6173D8C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:24:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83FB93034E24
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7370B34EEF4;
	Mon, 23 Feb 2026 09:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRVKpH20"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE76214A8B;
	Mon, 23 Feb 2026 09:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771838414; cv=none; b=HRhYoeeuVclmQIp8Hv7Ut53S+Sbfpghkmjp+bLbaI9Vei2C1mLeerET1y9d41XZdLVPRojq6CE2/pYSiFXXolpycEcZIs8mKSjZJ9NHKftFruVmv6ghDtbBrsNROys2INGjy+smjBxEv98B7quzFp7Tmc2E7RiOOsZkY6+dCXaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771838414; c=relaxed/simple;
	bh=x5oJC0JF9ahf+RJMA/MKnHMgRb/07hrrsXN30fKx62I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CucVEw7PF3Vp0wUXiPY6aO5ynN+e+uXjKJxQX8w+H61T91Oe6aEEFaNNJYx46yw6vZYJo8JtPyETnxusG2Ue8AfBOeXUMqUkR+67zmcrOgzo1whGaJdtIAm7HtHCJdKEP4Eu/R7S8SDVONiE/2RdYVCQtTAyNGmHB0JjPQnzQEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRVKpH20; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20CDDC2BCB1;
	Mon, 23 Feb 2026 09:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771838414;
	bh=x5oJC0JF9ahf+RJMA/MKnHMgRb/07hrrsXN30fKx62I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=pRVKpH20yQ81n5c8XY9LOC/rX3GRqMFQ8EqLBGjVcYmxNF55uHTV9+plB3ce5h8Jc
	 UKK9UkcuzVwhQjs4FAYbr8DkoGPfDgif5Cc1sd0kSNdKuaEWk7irFXpO7T3F9/xiu8
	 2TxJnDEEqeL/rPpSruarRXdINCD3PB5TiJfexIi9o+dpqS4+sg0/uumLh0GGMYL4px
	 7C1ljmKn2gLBLAXhmvPlNvDUKVeKdvu08E7/KzZnr62x6Izg2fLziMfBmEj6dT3uZi
	 r7aEmnNAwjJBhBai2gfdxUpbE2C9HqU41dx4apL00rQ+5hx8pUVaeQzez4n51T5Jt8
	 1uOGKB1A4lxeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C128E98E0F;
	Mon, 23 Feb 2026 09:20:14 +0000 (UTC)
From: Hermes Wu via B4 Relay <devnull+Hermes.wu.ite.com.tw@kernel.org>
Date: Mon, 23 Feb 2026 17:20:47 +0800
Subject: [PATCH 3/3] MAINTAINERS: Add entry for ITE IT6162 MIPI DSI to HDMI
 bridge driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-upstream-6162-v1-3-ebcc66ccb1fe@ite.com.tw>
References: <20260223-upstream-6162-v1-0-ebcc66ccb1fe@ite.com.tw>
In-Reply-To: <20260223-upstream-6162-v1-0-ebcc66ccb1fe@ite.com.tw>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Pet.Weng@ite.com.tw, Kenneth.Hung@ite.com.tw, 
 Hermes Wu <Hermes.Wu@ite.com.tw>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Hermes Wu <Hermes.wu@ite.com.tw>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771838463; l=984;
 i=Hermes.wu@ite.com.tw; s=20241230; h=from:subject:message-id;
 bh=FdNsL/OMQyTMBlZBr9eAfG0tA5xv05jqhySorqcp6Xs=;
 b=0HzTZgSkEC3qmk/LtTETSg9W2/WoK9wKwZ0hreljJRs1MtiuDSESV58tmJ2Bf/GLMYjpgWdup
 Ex8tPS1RSd5Cs/+4Qpum33A6Me8ieIPAdBXFaDovncdROTYuoWdci9h
X-Developer-Key: i=Hermes.wu@ite.com.tw; a=ed25519;
 pk=qho5Dawp2WWj9CGyjtJ6/Y10xH8odjRdS6SXDaDAerU=
X-Endpoint-Received: by B4 Relay for Hermes.wu@ite.com.tw/20241230 with
 auth_id=310
X-Original-From: Hermes Wu <Hermes.wu@ite.com.tw>
Reply-To: Hermes.wu@ite.com.tw
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
	TAGGED_FROM(0.00)[bounces-267311-lists,devicetree=lfdr.de,Hermes.wu.ite.com.tw];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[Hermes.wu@ite.com.tw];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ite.com.tw:mid,ite.com.tw:email,ite.com.tw:replyto,lists.freedesktop.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: C86A6173D8C
X-Rspamd-Action: no action

From: Hermes Wu <Hermes.wu@ite.com.tw>

Add a MAINTAINERS entry for the newly introduced ITE IT6162 MIPI DSI
to HDMI bridge driver, covering the driver source file and the
device tree binding document.

Signed-off-by: Hermes Wu <Hermes.wu@ite.com.tw>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 6169bd4d7baccc6945363622b42e7286cbec7b88..8a6b5bf3f664247b45c66b37439d3debf6ee18b1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13485,6 +13485,14 @@ W:	https://linuxtv.org
 Q:	http://patchwork.linuxtv.org/project/linux-media/list/
 F:	drivers/media/tuners/it913x*
 
+ITE IT6162 MIPI DSI TO HDMI BRIDGE DRIVER
+M:	Hermes Wu <Hermes.wu@ite.com.tw>
+L:	dri-devel@lists.freedesktop.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
+F:	drivers/gpu/drm/bridge/ite-it6162.c
+
+
 ITE IT6263 LVDS TO HDMI BRIDGE DRIVER
 M:	Liu Ying <victor.liu@nxp.com>
 L:	dri-devel@lists.freedesktop.org

-- 
2.34.1



