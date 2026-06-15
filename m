Return-Path: <devicetree+bounces-311540-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id atJ/C5VCL2os9wQAu9opvQ
	(envelope-from <devicetree+bounces-311540-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 02:08:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3C468293D
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 02:08:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=postmarketos.org header.s=key1 header.b=OOqHe8it;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311540-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311540-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=postmarketos.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CD39E3003838
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 00:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF93218A6D4;
	Mon, 15 Jun 2026 00:08:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B08715B0EC
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 00:08:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781482115; cv=none; b=fL1C+6SjYoli5PUTAnRGDFgOElo1dV9LPVd3rujdl/oLDT5vRJr72yGys76N285r/9zhHYbgpU1P7k+5ajpMzTG95EZfgoFcB/Ft8m9460i5hla3fe0rwFktJ2xZtXNz6MhATDuu1/M6IJjINm+WJVmQERj1zBwjBom0aOalpoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781482115; c=relaxed/simple;
	bh=BDw7Bx1ORT01TsUDlYJYJXG5JR/GfgAstzhn4sX0/hI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Bc62uGCKUux2gwUHawl29jHBTo8zokcqySy43txGGNtj5qdfowChn2qosChZSR6YQpy6tpwMlNp8jjp3UO7iY2teycoSnHwLzBWJRcS5FQrbW8JPEPh1KGbe5Ke/ROm3iwkOYk3gHDpvLWusK1fC4WabTgyvo92OICd8WCEmq7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=OOqHe8it; arc=none smtp.client-ip=91.218.175.171
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1781482112;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bEOca1jOqHZbX0GtYqdPn35QDLy7m1CGEih1VnaStwc=;
	b=OOqHe8itbNzq87k02GS7iQNhzTnmoKvwSJdT9jcvqazK56sGWrEHIV7oKhj6gBuTlwT6F7
	QCN8u1kJyPLUSMyDR7e47olx310tRPNrxaqEzYkXuuIG8nOTSSUQJIey6PUDOxK0uQttvr
	hEcTF7YUYwBihj/7o/qydrbAkN/VbZU/MxKELe0AWwl9K71niwqx3V4oRgmLMjwbf7ebX5
	KuAQN8CGf6z3Zfwox6UdjaXP9ECpC42yipb/FFka17DBoSdIAaI1jtjsGE7wzg9yfbal4D
	2B/M8SxfkdujEOoV4GQfbHsrGf4MbVdhiWhIm00L7yG0ZMGhFH8IQwPYgf4y6Q==
From: Paul Sajna <sajattack@postmarketos.org>
Date: Sun, 14 Jun 2026 17:08:00 -0700
Subject: [PATCH v3 3/4] MAINTAINERS: add Paul Sajna as maintainer for
 lg,sw49410-lh609qh1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260614-judyln-panel-v3-3-07f4134441bd@postmarketos.org>
References: <20260614-judyln-panel-v3-0-07f4134441bd@postmarketos.org>
In-Reply-To: <20260614-judyln-panel-v3-0-07f4134441bd@postmarketos.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781482095; l=837;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=BDw7Bx1ORT01TsUDlYJYJXG5JR/GfgAstzhn4sX0/hI=;
 b=duXyRGQyB3p/9b77c9i4fs3+B4Rer1oQ8lwzCtD1cTEwK21ZXaTiZhAGNNMYUb7yKceUCUXku
 CtUyO9OAjuKD/QZD6KSuWND3s+ayD0hEgvAJCJIkJLsvazYA38U6WpD
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thierry.reding@gmail.com,m:sam@ravnborg.org,m:jesszhan0024@gmail.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:david@ixit.cz,m:phone-devel@vger.kernel.org,m:system64fumo@tuta.io,m:sajattack@postmarketos.org,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311540-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BB3C468293D

Add myself (Paul Sajna) as maintainer for lg,sw49410-lh609qh1

Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index c9f2780b2d31..5c043fb66af0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8134,6 +8134,12 @@ T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
 F:	Documentation/devicetree/bindings/display/panel/lg,sw43408.yaml
 F:	drivers/gpu/drm/panel/panel-lg-sw43408.c
 
+DRM DRIVER FOR LG SW49410 PANELS
+M:	Paul Sajna <sajattack@postmarketos.org>
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/panel/lg,sw49410.yaml
+F:	drivers/gpu/drm/panel/panel-lg-sw49410.c
+
 DRM DRIVER FOR LOGICVC DISPLAY CONTROLLER
 M:	Paul Kocialkowski <paulk@sys-base.io>
 S:	Supported

-- 
2.54.0


