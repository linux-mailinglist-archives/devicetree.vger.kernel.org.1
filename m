Return-Path: <devicetree+bounces-267309-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDAJBLIcnGkZ/wMAu9opvQ
	(envelope-from <devicetree+bounces-267309-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:24:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 640A0173D7E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:24:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2336F302296D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AFA734E777;
	Mon, 23 Feb 2026 09:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M813Eax0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469DE3BB40;
	Mon, 23 Feb 2026 09:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771838414; cv=none; b=e0fkHhZOwi+JmamZU8x9K5s5OSFoHGSgrZxoLnh6PxxGo39ZicVUWUAg4VnaQ/Qg4xGwC3gqeAG8rcGZ53RWyDTLLIzaqth0u9hzHNq+8GvbnJynP9+Je+Ey7P8T9Wbvv8nBvMq0a7lvdrmxp+OELNu6KSEiHHONPwgokVsozKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771838414; c=relaxed/simple;
	bh=a8y9ien3dgTnIN1+y6wyUKNJA/hUgzMlmJd31F1z9wM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=IuIY556RT3CextL7U4TGvsCptLyrL/LZqyK/mSWgZzwY+DSyjMw0q7b/TH6pPHiMVxuOahQlGMkB4tgN0w784mLHKAj7pz7M3M8PoVy8c+cNCb1XRefFPNE5Wl/VB0xVNXrLlqLM+sL196riHAN/kyvo/TaRzg8ElKMT0Nn9dyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M813Eax0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD00CC116C6;
	Mon, 23 Feb 2026 09:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771838413;
	bh=a8y9ien3dgTnIN1+y6wyUKNJA/hUgzMlmJd31F1z9wM=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=M813Eax046KfvZ3SZYHbdp3BAkbC2VJztwEMp1LA//8HgukqgashDevmHXvdJvciI
	 xailhyQasJBZOK/+SsMSrHuFqxjwPsXmFuRIDr/cJIwPIPT0yY1sg/FKYOumhx2KbM
	 qbSf9qxtzVMyJ37hhoIqhOcvGXljD3U6KCQDmI6KL2hpHaSHzWGtH22QV5wT/zj/v/
	 I8j3NIouHbrvcPnKWgjToGeHASjb7RkDrB+PpkTygt7oo6MdUjTX/2MV53IQWtyOND
	 sF42+ezzKw3PsH2bS9SPHgbvAl57GS7SAjUUbxv02En6mAyZYkBkbCJypidGMi9YY2
	 YP9iSKWFoBoFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DDCE98DFF;
	Mon, 23 Feb 2026 09:20:13 +0000 (UTC)
From: Hermes Wu via B4 Relay <devnull+Hermes.wu.ite.com.tw@kernel.org>
Subject: [PATCH 0/3] Add ITE IT6162 MIPI DSI to HDMI bridge driver
Date: Mon, 23 Feb 2026 17:20:44 +0800
Message-Id: <20260223-upstream-6162-v1-0-ebcc66ccb1fe@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOwbnGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIyNj3dKC4pKi1MRcXTNDMyNdY3NTw1Rzi5S05MQUJaCegqLUtMwKsHn
 RsbW1AECYdJhfAAAA
X-Change-ID: 20260223-upstream-6162-3751e78dfcad
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771838463; l=1356;
 i=Hermes.wu@ite.com.tw; s=20241230; h=from:subject:message-id;
 bh=a8y9ien3dgTnIN1+y6wyUKNJA/hUgzMlmJd31F1z9wM=;
 b=U2VuZKFI4x72JUvV8RdMVHxPXE4vHWpvZ53F3EdDBmVeKoBSHCx8jbAb5XOcfBcyLnY3XVKgR
 /60M7RfPcsHA/cxEjvBct7l3E7YEoHqrt01mHuNvVM+vFTruz8bNOub
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
	TAGGED_FROM(0.00)[bounces-267309-lists,devicetree=lfdr.de,Hermes.wu.ite.com.tw];
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[Hermes.wu@ite.com.tw];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ite.com.tw:mid,ite.com.tw:email,ite.com.tw:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 640A0173D7E
X-Rspamd-Action: no action

This patch series adds support for the ITE IT6162 MIPI DSI to HDMI
bridge chip. The IT6162 is an I2C-controlled bridge that receives MIPI
DSI input and outputs HDMI signals.

The device supports the following configurations:
  - Single MIPI DSI input: up to 4K @ 30Hz
  - Dual MIPI DSI input (combined): up to 4K @ 60Hz

This series introduces:
  - dt-bindings: Add YAML binding document for ITE IT6162
  - drm/bridge: Add ITE IT6162 MIPI DSI to HDMI bridge driver
  - MAINTAINERS: Add entry for ITE IT6162 bridge driver

Signed-off-by: Hermes Wu <Hermes.wu@ite.com.tw>
---
Hermes Wu (3):
      drm/bridge: Add ITE IT6162 MIPI DSI to HDMI bridge driver
      dt-bindings: display: bridge: Add ITE IT6162 MIPI DSI to HDMI bridge
      MAINTAINERS: Add entry for ITE IT6162 MIPI DSI to HDMI bridge driver

 .../bindings/display/bridge/ite,it6162.yaml        |  156 ++
 MAINTAINERS                                        |    8 +
 drivers/gpu/drm/bridge/Kconfig                     |   17 +
 drivers/gpu/drm/bridge/Makefile                    |    1 +
 drivers/gpu/drm/bridge/ite-it6162.c                | 1876 ++++++++++++++++++++
 5 files changed, 2058 insertions(+)
---
base-commit: 38feb171b3f92d77e8061fafb5ddfffc2c13b672
change-id: 20260223-upstream-6162-3751e78dfcad

Best regards,
-- 
Hermes Wu <Hermes.wu@ite.com.tw>



