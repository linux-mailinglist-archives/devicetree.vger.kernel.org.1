Return-Path: <devicetree+bounces-286735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEJSOFde2mlQ0wgAu9opvQ
	(envelope-from <devicetree+bounces-286735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 16:44:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E222D3E0639
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 16:44:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 04D92300B8CD
	for <lists+devicetree@lfdr.de>; Sat, 11 Apr 2026 14:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3D4E386553;
	Sat, 11 Apr 2026 14:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.b="U3TAyjyj"
X-Original-To: devicetree@vger.kernel.org
Received: from chaosmail.localdomain (chaosmail.tech [77.81.229.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B38BD36DA08;
	Sat, 11 Apr 2026 14:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.81.229.115
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775918206; cv=none; b=Ggw0Ulnd5p7jpxLtHs36oNxZqOZOnajApZAsu7SYHoQSOILE2f6oo3p9tlc+reNiNLjKKGKKXFv/BHH1nVCeR40UreR12IJwou1DgVtc/sXEo0iaOKqO6usGjrIyLWhvO4uLXqf2tLwy57/zZ5V2P6AiYl1eLbD7d1siCPk6aVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775918206; c=relaxed/simple;
	bh=xWA9tRPbt2UAwLNrmP907pWdebtRj7qMHJicLvv2LLY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=flypTDzyFwjyrKXxknff5VU1/I7+00MYzCytERHixtzsodfZB1NV5dDAQoks/LeZUUWUnMnbbNhqPxx290zc9TsnGKBUebVtBiCt20U5sFd/1vSzt0X3+3gWdD+Hs3NriQnKq2usBMt5uqFcSupVoq7XTvNU5LBjZ8okQ+HBi1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chaosmail.tech; spf=pass smtp.mailfrom=chaosmail.tech; dkim=pass (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.b=U3TAyjyj; arc=none smtp.client-ip=77.81.229.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chaosmail.tech
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chaosmail.tech
Received: by chaosmail.localdomain (Postfix) with ESMTPSA id 2ACCC1CC18F;
	Sat, 11 Apr 2026 14:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chaosmail.tech;
	s=mail; t=1775918195;
	bh=isYF04DeVAOh4RSzlFn9SyK9i3A+jI1wtH8mkn3Al8g=;
	h=From:Subject:Date:To:Cc;
	b=U3TAyjyj0YArH0WBTqgVhDL84yVi+X5lI/KH7vt3jTlU18l04OB0OjvrzG9PU3UKS
	 CB6giIXTP9tfduZpDdHhz2di1aopVPbUG6t4eX81/ueeIQVCJ/OELl9AOs422m5HHU
	 /Wc2PZ1Dlf/O56gAvP5Ao+nmGxOoSL+rgUjV2EE4=
From: Sasha Finkelstein <k@chaosmail.tech>
Subject: [PATCH 0/2] Update Sasha Finkelstein's email address
Date: Sat, 11 Apr 2026 16:36:06 +0200
Message-Id: <20260411-mailmap-v1-0-5a519f7b00b5@chaosmail.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDE0MD3dzEzJzcxAJdc0tT4yRjIyMDA4NEJaDqgqLUtMwKsEnRsbW1AM8
 D7AdZAAAA
X-Change-ID: 20260410-mailmap-7953b322000a
To: Sasha Finkelstein <k@chaosmail.tech>, Janne Grunau <j@jannau.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sven Peter <sven@kernel.org>, 
 Neal Gompa <neal@gompa.dev>, asahi@lists.linux.dev
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775918195; l=1302;
 i=k@chaosmail.tech; s=20241124; h=from:subject:message-id;
 bh=xWA9tRPbt2UAwLNrmP907pWdebtRj7qMHJicLvv2LLY=;
 b=aBCnUjhiARiHRvV7CvusupiG3TrAOIAy/5mBzNtQm9i/SDHGdpNzzaF67xdOH4fk4TjB8zCNa
 30ep5fjX34UCG+0wKVrexbrB2FmsVcK1pJHtz9NPTXrNRaOhCq1HEaS
X-Developer-Key: i=k@chaosmail.tech; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-Spamd-Result: default: False [4.34 / 15.00];
	SEM_URIBL_FRESH15(3.00)[chaosmail.tech:dkim,chaosmail.tech:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[chaosmail.tech,reject];
	TAGGED_FROM(0.00)[bounces-286735-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[chaosmail.tech:+];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_ALLOW(0.00)[chaosmail.tech:s=mail];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,body];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.564];
	FROM_NEQ_ENVFROM(0.00)[k@chaosmail.tech,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c15:e001:75::/64:c];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chaosmail.tech:dkim,chaosmail.tech:email,chaosmail.tech:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E222D3E0639
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Moving away from gmail

Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
---
Sasha Finkelstein (2):
      mailmap: Update Sasha Finkelstein's email address
      dt-bindings: Update Sasha Finkelstein's email address

 .mailmap                                                                     | 1 +
 Documentation/devicetree/bindings/display/apple,h7-display-pipe-mipi.yaml    | 2 +-
 Documentation/devicetree/bindings/display/apple,h7-display-pipe.yaml         | 2 +-
 Documentation/devicetree/bindings/display/panel/apple,summit.yaml            | 2 +-
 Documentation/devicetree/bindings/gpu/apple,agx.yaml                         | 2 +-
 Documentation/devicetree/bindings/input/touchscreen/apple,z2-multitouch.yaml | 2 +-
 Documentation/devicetree/bindings/nvmem/apple,spmi-nvmem.yaml                | 2 +-
 Documentation/devicetree/bindings/pwm/apple,s5l-fpwm.yaml                    | 2 +-
 Documentation/devicetree/bindings/spmi/apple,spmi.yaml                       | 2 +-
 MAINTAINERS                                                                  | 2 +-
 10 files changed, 10 insertions(+), 9 deletions(-)
---
base-commit: 7c6c4ed80b874f721bc7c2c937e098c56e37d2f0
change-id: 20260410-mailmap-7953b322000a

Best regards,
-- 
Sasha Finkelstein <k@chaosmail.tech>


