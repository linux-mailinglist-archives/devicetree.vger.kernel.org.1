Return-Path: <devicetree+bounces-323180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZXB+B73ETmrjTgIAu9opvQ
	(envelope-from <devicetree+bounces-323180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 23:44:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 899F272AA0A
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 23:44:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=EN8ACZrD;
	dmarc=pass (policy=none) header.from=savoirfairelinux.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323180-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323180-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4BC5130120EC
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 21:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B3B73F7885;
	Wed,  8 Jul 2026 21:44:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B97370D5C;
	Wed,  8 Jul 2026 21:44:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783547051; cv=none; b=Wh53lSYjQoCgnO5xA+BCHPCG/TrYypvIzbYUHJCG/SwqF4I8t5/zAN1hXWLvBKw7fAo7kK5l7auESFTuhp24CPNTlN5fYCD3aYMHjDX3xEPLvN3PiY/RLmtCBZ38b+7EvLTzgExpJO2w8V6sCjXyffwQd0PuKLkvRFvom35Rnkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783547051; c=relaxed/simple;
	bh=P5w6nBLIfSgoG42byLNNWj64oy4ggmzq0k5iMbqaByc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lQ1/b6szdouiqk1uNFYt8dRu2JRdHAjqyetJ41SXtGo3oPcAx0w4+yWvYCivD+pP3raXdd/Ca59RZ2LbFFOFuPmybBTkALpU+52uMXMGX7j2vk0YqW0B5JQ/SwHEw1xuoAiTDvNDVCp01egCBRoasOdDH8Jrsmz1yLbo3SDwP7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=savoirfairelinux.com; spf=none smtp.mailfrom=mail.savoirfairelinux.com; dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b=EN8ACZrD; arc=none smtp.client-ip=208.88.110.44
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id DA2683D81926;
	Wed,  8 Jul 2026 17:35:02 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id PRHTeE2vnNiS; Wed,  8 Jul 2026 17:35:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 13B983D818E6;
	Wed,  8 Jul 2026 17:35:02 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com 13B983D818E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1783546502; bh=n2HT/0Cc8bpQ6Vc5tj0jzjyw+BSNOfjpKWFBjNjy9UQ=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=EN8ACZrDUpLbuhJiK40D+WaWTHIPO1CywDXBZ/lcL471g4GSglc1MTa/vjRsOu0cc
	 pE13EgwGxIlf1AfnlMcAANvjJiJB82LBlZdAgPk1GIZ5D1ycXXwrS1FaxzNFTJuWQU
	 qVcqt4RnIjvc71k8wSvMwXM6kzzx46/4tMPLLouirKJCprvHAS2184F64jCfIKWqoL
	 e94M2nR0hYbnh7K9ck1F4esnC0y/ldV02UuwJ6nH1YuRKEUdspA3RHO0npDOUDz0hM
	 CdrCHOslPqG8ddNqLpWr6z6YungAedrUOEpz00U38LqVrVOeJsSRNXGrsWoon8G6XY
	 v9jBfvDRNqctQ==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id nNxDuQhANAyk; Wed,  8 Jul 2026 17:35:01 -0400 (EDT)
Received: from localhost (unknown [192.168.51.254])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id D30BA3D81902;
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
Subject: [PATCH 4/5] dt-bindings: display: panel: add compatible for DCLTek 300250 9.35in panel
Date: Wed,  8 Jul 2026 17:34:59 -0400
Message-Id: <20260708213500.1867092-5-marc-olivier.champagne@savoirfairelinux.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[savoirfairelinux.com:s=DFC430D2-D198-11EC-948E-34200CB392D2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323180-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[edgeble.ai,linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jagan@edgeble.ai,m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hvilleneuve@dimonoff.com,m:marc-olivier.champagne@savoirfairelinux.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jerome.oufella@savoirfairelinux.com,m:felix.boucher@savoirfairelinux.com,m:quentin.lehoux@savoirfairelinux.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[marc-olivier.champagne@savoirfairelinux.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marc-olivier.champagne@savoirfairelinux.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[savoirfairelinux.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,savoirfairelinux.com:from_mime,savoirfairelinux.com:email,savoirfairelinux.com:mid,savoirfairelinux.com:dkim,vger.kernel.org:from_smtp,dimonoff.com:email];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 899F272AA0A

The DCLTek dt300250 is a panel using the jadard-jd9365da controller.
Add a new compatible for it.

Suggested-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
Signed-off-by: Marc-Olivier Champagne <marc-olivier.champagne@savoirfaire=
linux.com>
---
 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd936=
5da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd93=
65da-h3.yaml
index 4eae802de9fd..9e20e2faf82f 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.=
yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.=
yaml
@@ -19,6 +19,7 @@ properties:
           - anbernic,rg-ds-display-bottom
           - anbernic,rg-ds-display-top
           - chongzhou,cz101b4001
+          - dcltek,dt300250
           - kingdisplay,kd101ne3-40ti
           - melfas,lmfbx101117480
           - radxa,display-10hd-ad001
--=20
2.34.1


