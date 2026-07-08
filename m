Return-Path: <devicetree+bounces-323179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3T3dHK7ETmrYTgIAu9opvQ
	(envelope-from <devicetree+bounces-323179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 23:44:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AD172A9F1
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 23:44:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=swGEO5t0;
	dmarc=pass (policy=none) header.from=savoirfairelinux.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323179-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-323179-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 224DD301CD25
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 21:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67C5A3E8C6F;
	Wed,  8 Jul 2026 21:44:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D073A6B65;
	Wed,  8 Jul 2026 21:44:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783547051; cv=none; b=eq9AWWE0z2DzTYGvUbeDRfm8NU/bUpO9pZmfF9pQoTtn7FdEWDoPl6+d7gGNWy6e1rd0qFHe4zDfUdNQxbXnPF7h5fN/jeOPnrQFUtQyZsdoLo+O/t0g20LTc+hNsKJh7zxG7ODkZyq23oQh0Qwh3RcFJP1rbWGyoKidgpFI6hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783547051; c=relaxed/simple;
	bh=z47/3k14FrOSF5XpFgkpzNryDkJoBrPIRL9v+63pmJc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IVlKQSKnCXqzoJbWNWU4itBbogdAFGDZTLhfZhfTvDPklYoGjw296eGgS2Ru3vZ3wz+fvd0OYqD42D4YS9NiZZ4rgJdpeZXAhVmwR99BJEnN8kPA9SQ3khyMeNDxQU4Nugj9LKw3f+6RicMgsuuFKKso+tW4SKMD0AVvxKYZUVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=savoirfairelinux.com; spf=none smtp.mailfrom=mail.savoirfairelinux.com; dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b=swGEO5t0; arc=none smtp.client-ip=208.88.110.44
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id C575E3D81904;
	Wed,  8 Jul 2026 17:35:02 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id NpfzsZBPhFkS; Wed,  8 Jul 2026 17:35:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id E6CD43D8171F;
	Wed,  8 Jul 2026 17:35:01 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com E6CD43D8171F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1783546501; bh=4wrXRylHGc2qd8KGLuqk0LTwojaBpYvkUm9IKn1s0XI=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=swGEO5t0Qq5CqcaBE2MtHfwoLnmYn3DrVApSUXjFBZhHre5G91EWemSBvPnr08ZsQ
	 +8cWGGAcjs6thMHsMirnVr/jqYIa+kpKLCpQEZJDxzstyfCTAeIRgn/1XOB4hAvmAj
	 hzkLxgdcH+rqwT2baxGYYPtG2Ys/EOMxyrdpmkrAL/p22NPnffuS6cUS9MQNOcp1pL
	 BraawzFwEoJHmuCF7Wh4FaG3YtnFVEGlww9VSuZUzaa0vWSUSrhEJVmRmPMYmQ/fZs
	 HTxhzSl8G0sK71IhwezOFgLEf28wmZ8D05p7Tgt9Z6oL2G9W3KthG+sbzMiBic9RfR
	 mB0QIOOlK1HQA==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id lBcIyIKPO6YU; Wed,  8 Jul 2026 17:35:01 -0400 (EDT)
Received: from localhost (unknown [192.168.51.254])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id A7A723D818E6;
	Wed,  8 Jul 2026 17:35:01 -0400 (EDT)
From: Marc-Olivier Champagne <marc-olivier.champagne@savoirfairelinux.com>
To: Jagan Teki <jagan@edgeble.ai>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Marc-Olivier Champagne <marc-olivier.champagne@savoirfairelinux.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jerome Oufella <jerome.oufella@savoirfairelinux.com>,
	Felix Boucher <felix.boucher@savoirfairelinux.com>,
	Quentin Lehoux <quentin.lehoux@savoirfairelinux.com>
Subject: [PATCH 3/5] dt-bindings: vendor-prefixes: Add DCLTEK
Date: Wed,  8 Jul 2026 17:34:58 -0400
Message-Id: <20260708213500.1867092-4-marc-olivier.champagne@savoirfairelinux.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260708213500.1867092-1-marc-olivier.champagne@savoirfairelinux.com>
References: <20260708213500.1867092-1-marc-olivier.champagne@savoirfairelinux.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[savoirfairelinux.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[savoirfairelinux.com:s=DFC430D2-D198-11EC-948E-34200CB392D2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[edgeble.ai,linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	TAGGED_FROM(0.00)[bounces-323179-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jagan@edgeble.ai,m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hvilleneuve@dimonoff.com,m:marc-olivier.champagne@savoirfairelinux.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jerome.oufella@savoirfairelinux.com,m:felix.boucher@savoirfairelinux.com,m:quentin.lehoux@savoirfairelinux.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[marc-olivier.champagne@savoirfairelinux.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marc-olivier.champagne@savoirfairelinux.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[savoirfairelinux.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[savoirfairelinux.com:from_mime,savoirfairelinux.com:email,savoirfairelinux.com:mid,savoirfairelinux.com:dkim,vger.kernel.org:from_smtp,dcltek.com:url];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 07AD172A9F1

Add DCL Technologies Inc. (DCLTEK) to the devicetree vendor prefixes
registry.

Link: https://www.dcltek.com/

Signed-off-by: Marc-Olivier Champagne <marc-olivier.champagne@savoirfaire=
linux.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
index 396044f368e7..1e7af6de2afe 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -407,6 +407,8 @@ patternProperties:
     description: DataImage, Inc.
   "^davicom,.*":
     description: DAVICOM Semiconductor, Inc.
+  "^dcltek,.*":
+    description: DCL Technologies Inc.
   "^deepcomputing,.*":
     description: DeepComputing (HK) Limited
   "^dell,.*":
--=20
2.34.1


