Return-Path: <devicetree+bounces-266330-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNnYMYuClWlrSAIAu9opvQ
	(envelope-from <devicetree+bounces-266330-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:12:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D0A1549A9
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:12:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 94FF63004607
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:12:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CE4A329E53;
	Wed, 18 Feb 2026 09:12:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9754E33557B
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771405959; cv=none; b=R6sCXdAanF1u8yyk9hcAdEpG0VEa6O/uA7WLaq/A83c8rc18hHaeQBGlTAyH9Zf7wisumSdgZUd9rt6sETo2DRKDFN3nCSSJJ9c7Dl9Rlfzwl3iYaajkFLbvBDt02spr0gBGAwD5B8rfdbdtoOGqOPbbxW1Ok3mox4DWBvNjIEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771405959; c=relaxed/simple;
	bh=PfmHb1U4fP2gAkWh/YbuL5lIZ3dld6IGHiIPg/KtLho=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ozTg3NX9seGmWc1i9Iz8/94HQqMTI7zduq/CZt1fugovIp+VZugMV4kN86MqJ2KTrNvGvaZbsCDg6hnfcuqEee0R1efwGkv3/E0uuA0HyzthBuv1Glve/Tk1ok8syVY5egSUHCIlZWyn3bccw/ZkLYWDP9NDEWs+VzxjGW/Rr9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vsdbe-0001kM-8L; Wed, 18 Feb 2026 10:12:26 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 18 Feb 2026 10:12:04 +0100
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add lxd
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260218-drm-panel-ek79007ad3-v4-1-8ec448bf3ede@pengutronix.de>
References: <20260218-drm-panel-ek79007ad3-v4-0-8ec448bf3ede@pengutronix.de>
In-Reply-To: <20260218-drm-panel-ek79007ad3-v4-0-8ec448bf3ede@pengutronix.de>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
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
	TAGGED_FROM(0.00)[bounces-266330-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,pengutronix.de:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E9D0A1549A9
X-Rspamd-Action: no action

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add vendor prefix for LXD Research & Display, LLC.
Link: https://www.lxdinc.com/

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v4:
- none

Changes in v3:
- none
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2aec2a..90d5ef1f15b3 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -963,6 +963,8 @@ patternProperties:
     description: Liebherr-Werk Nenzing GmbH
   "^lxa,.*":
     description: Linux Automation GmbH
+  "^lxd,.*":
+    description: LXD Research & Display, LLC
   "^m5stack,.*":
     description: M5Stack
   "^macnica,.*":

-- 
2.47.3


