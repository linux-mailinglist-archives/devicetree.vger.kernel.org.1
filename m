Return-Path: <devicetree+bounces-311539-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PZbWCY9CL2on9wQAu9opvQ
	(envelope-from <devicetree+bounces-311539-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 02:08:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DB5682935
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 02:08:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=postmarketos.org header.s=key1 header.b=L28GJ93b;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311539-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-311539-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=postmarketos.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4CEBA3006818
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 00:08:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B32B15CD7E;
	Mon, 15 Jun 2026 00:08:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D00F145B3F
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 00:08:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781482114; cv=none; b=bFO5h+RwYpjd0BUr3yVIbQDqG4zyRKpVyquqMQOd7GRWUiZCfT4lrphvyyOxGBrDvCi2rpFO6jKgH8YEtspgUq7+zchmVbF0PboGiVjaRJC3GI1/pdQfClZ1PuguBgbqJCs40HqNNu5+HRoioe9eivUzaB/kMidqEntzWjf9/tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781482114; c=relaxed/simple;
	bh=rah64DAbHLiiCx0F8BwuF0wdHE1rPZTHNczqUGp4Doc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=sxyMrITFs1j7VDlgU4XMWkQg2JTRberjRtlGEQKiuYMbW3qbYJP4cFLD8uzJ1l0qrPNZoof0o9zxN5SvgBydagkH5qp/d/oSj5kTMiXxVNjhTxnej7tyeB8SerApFfLrhHQWUY0waTU+71hb62VamQyW0S+HKO0ctbV58gN82H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=L28GJ93b; arc=none smtp.client-ip=91.218.175.174
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1781482100;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Y5h9FupKCVpWVuTxDIclbr6vHMJHhiy3KbpUgOXtyEY=;
	b=L28GJ93btzt8er3+yRsENpn28Gxmc3VlHAvlYMkEaZNfyJ3bkgtn6Mj9bbfyP7dARsc7Vg
	8CTubhgZCxDlYlfgI9Bid9XkjkGGYLWASe5H75Apk7lu583a/QxTeW6Rz/EIfcZoQqackV
	PDoVtAa2njSgdGCdOXBzI46PafDFptqeJLC6vWAk8pf62o6eXO8AINg1TPdmHgIDgc8moD
	hCLFj6sxBtA31pNxQRr9OFR3bKFn6X3wNDIR37nS5S5TpYp9tzV6hasHk6N4Df7n0Z97Zq
	z6dDg+1N7IIusopQ61jlc243q9coZtVgMEfYJo91kPXzdBknoYdRUqeC9Ag9EA==
From: Paul Sajna <sajattack@postmarketos.org>
Subject: [PATCH v3 0/4] Add DRM driver for LG LH609QH1 Panel with
 SiliconWorks SW49410 DDIC
Date: Sun, 14 Jun 2026 17:07:57 -0700
Message-Id: <20260614-judyln-panel-v3-0-07f4134441bd@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3XMQQ6CMBCF4auQWVvTFhqoK+9hXLQwQBVb0mIjI
 dzdwsoYzaz+Sd63QEBvMMApW8BjNME4myI/ZFD3ynZITJMaOOWCSkbJ7dnMgyWjsjgQWVQtK8t
 apIM0GT225rVzl2vq3oTJ+XnXI9u+f6DICCUVF3VZFDTXWp9HF6aH8necXDg638HmRf5piC+DJ
 4MypTmTskUlfhjrur4B1sHobvMAAAA=
X-Change-ID: 20250910-judyln-panel-948f177c5c5c
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Jessica Zhang <jesszhan0024@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, David Heidelberg <david@ixit.cz>, 
 phone-devel@vger.kernel.org, Amir Dahan <system64fumo@tuta.io>, 
 Paul Sajna <sajattack@postmarketos.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781482095; l=2360;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=rah64DAbHLiiCx0F8BwuF0wdHE1rPZTHNczqUGp4Doc=;
 b=7P1CfylnRTCjbzuoMzQriGooHcWRfaxgRyYDPjahzuYssl1Xl6bUgC/OXqI/vPrDhtC+KvhEf
 ACL7F5IT8bIDHbUxr/W7e4P9vhTGc8GYd3549t754sPpceBIrn2+ACk
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thierry.reding@gmail.com,m:sam@ravnborg.org,m:jesszhan0024@gmail.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:david@ixit.cz,m:phone-devel@vger.kernel.org,m:system64fumo@tuta.io,m:sajattack@postmarketos.org,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311539-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,ravnborg.org];
	FORGED_SENDER(0.00)[sajattack@postmarketos.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sajattack@postmarketos.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuta.io:email,imgur.com:url,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C9DB5682935

This patch series adds a drm panel driver for the LG SW49410 panel found
in the LG G7 ThinQ (codename judyln).

The basic driver skeleton was generated by https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
from the vendor device-tree.

There seems to still be some power supply issues, the bottom-left corner
of the screen is dark, and the rest of the screen develops shadow-y
burn-in-like patterns when resumed after being left off for a while.
https://i.imgur.com/oJZSHzE.jpeg

Comments were added explaining magic numbers, MAINTAINERS updated, and devicetree
documentation added

Co-developed-by: Amir Dahan <system64fumo@tuta.io>
Signed-off-by: Amir Dahan <system64fumo@tuta.io>
Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
Changes in v3:
- Add power supplies
- Use full panel name including panel and DDIC
- Update email addresses
- Various improvements copied from other similar upstream panels
- Switch back to not using panel-simple due to power supply properties
- Revert incorrect merged panel-simple bindings
- Link to v2: https://lore.kernel.org/r/20250915-judyln-panel-v2-0-01ab2199fea5@postmarketos.org

Changes in v2:
- use "multi" versions of functions
- remove DRM_DISPLAY_DP_HELPER
- change dt-bindings to panel-simple
- Link to v1: https://lore.kernel.org/r/20250910-judyln-panel-v1-0-825c74403bbb@postmarketos.org

---
Amir Dahan (1):
      drm: panel: Add LG LH609QH1 Panel with SW49410 controller

Paul Sajna (3):
      dt-bindings: display: panel: Add documentation for lg,sw49410-lh609qh1
      MAINTAINERS: add Paul Sajna as maintainer for lg,sw49410-lh609qh1
      Revert "dt-bindings: display: panel: panel-simple: Add lg,sw49410 compatible"

 .../bindings/display/panel/lg,sw49410.yaml         |  79 +++
 .../bindings/display/panel/panel-simple.yaml       |   2 -
 MAINTAINERS                                        |   6 +
 drivers/gpu/drm/panel/Kconfig                      |  15 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-lg-sw49410.c           | 528 +++++++++++++++++++++
 6 files changed, 629 insertions(+), 2 deletions(-)
---
base-commit: c9b2552e124828f40d5102b146dc72b506b65de9
change-id: 20250910-judyln-panel-948f177c5c5c

Best regards,
-- 
Paul Sajna <sajattack@postmarketos.org>


