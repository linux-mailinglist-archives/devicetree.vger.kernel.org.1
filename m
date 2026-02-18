Return-Path: <devicetree+bounces-266328-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFDGIhyDlWlrSAIAu9opvQ
	(envelope-from <devicetree+bounces-266328-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:15:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FC8154A1B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:15:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FE043010BA6
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08EE73370EA;
	Wed, 18 Feb 2026 09:12:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE42336EEE
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771405957; cv=none; b=qCiyT3RnMyuUSN5/5AV45aEhvdQUv4TXAbcRwL0fKrUtP24NZl/4YC3q6h9BwKiJ3KCbqDEJrnLbrmRLvGpLxzwzzUTKXnSl50HJA9p2MhVu3prG8vD50TsQKGDkNfLYqdrRXN0GJk77Nop+DKnpx2wx6pCVEqjRPpcNdTkrixQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771405957; c=relaxed/simple;
	bh=YfzYLYX87+vZBN8wNKPw8DRiW4B2O76+ukhW/1Ghc5w=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qs8KruQdCtWSjh8FmsGYlSEwFcEggOkBvDN1In1u4oZn8nJERva63+9k516jcStvAmpPqv7fe/ROPfdtgJxQdeWLEaEdHm6hc+vypVhXiEDNvEZCJm02WjMpqhuSv00pJz/gtkXZnL5BVtwt3CHvmfC8cJ33J0cIFj3UjQXpGRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vsdbe-0001kM-0u; Wed, 18 Feb 2026 10:12:26 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH v4 0/3] drm/panel: add LXD M9189A
Date: Wed, 18 Feb 2026 10:12:03 +0100
Message-Id: <20260218-drm-panel-ek79007ad3-v4-0-8ec448bf3ede@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGOClWkC/22NQQ6CMBBFr0K6dszQIk1deQ/DomFGmKiFtEgwh
 LtbiUuX7yX//VUljsJJnYtVRZ4lyRAyVIdCtb0PHYNQZqVR16jRAcUnjD7wA/huHaL1ZKBGdNa
 Vnkgbladj5Jsse/baZO4lTUN87y+z+dpfsMT/wdkAQkva2YpOtTP2MnLoXlMcgixHYtVs2/YBu
 qpya70AAAA=
X-Change-ID: 20260209-drm-panel-ek79007ad3-6009791add23
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rouven Czerwinski <r.czerwinski@pengutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 kernel@pengutronix.de, Michael Tretter <m.tretter@pengutronix.de>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266328-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:email]
X-Rspamd-Queue-Id: 01FC8154A1B
X-Rspamd-Action: no action

Add support for the LXD M9189A panel based on the EK79007AD3 DSI display
controller.

This series is based on the v2 by Rouven Czerwinski. Since I took over
the series, I changed the maintainer for the driver and bindings to
myself. Furthermore, I updated the device tree binding to use
panel-common.yaml as a base and fixed a compiler warning for the driver.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v4:
- Fix subject of dt-bindings patch
- Make backlight a required property
- Fix typo in driver name
- Link to v3: https://patch.msgid.link/20260210-drm-panel-ek79007ad3-v3-0-cd2974d56937@pengutronix.de

Changes in v3:
- Add cover letter
- Change maintainer to myself
- Use panel-common.yaml as base for dt binding
- Fix compiler warning about uninitialized variable
- Link to v2: https://patch.msgid.link/20241025141130.3179166-1-r.czerwinski@pengutronix.de

---
Rouven Czerwinski (3):
      dt-bindings: vendor-prefixes: Add lxd
      dt-bindings: display: panel: add LXD M9189A
      drm/panel: add LXD M9189A panel driver

 .../bindings/display/panel/lxd,m9189a.yaml         |  64 ++++++
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 MAINTAINERS                                        |   6 +
 drivers/gpu/drm/panel/Kconfig                      |   9 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-lxd-m9189a.c           | 243 +++++++++++++++++++++
 6 files changed, 325 insertions(+)
---
base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
change-id: 20260209-drm-panel-ek79007ad3-6009791add23

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>


