Return-Path: <devicetree+bounces-306793-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gQMRH05qIWpcGAEAu9opvQ
	(envelope-from <devicetree+bounces-306793-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:06:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF27963FB31
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 14:06:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=netcube.li header.s=s1 header.b=OLX4n7Lt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306793-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306793-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=netcube.li;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE22C30AC60E
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 11:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFEE441B343;
	Thu,  4 Jun 2026 11:53:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76CC3FE354;
	Thu,  4 Jun 2026 11:53:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780574014; cv=none; b=OaUeiHcOo1TIRZNsBjx0XK0Hlj80EuKP+jEhf5xiZgPVVc7gzJBOkL3ACN8R4VAkvJAjj8ZSThekTB2pQZHteuJ3UKzCpVUhAcxIqgg3Fi1OY0DTghGKDEbrn7qGM2NXIfRRSstI6wPbMv8rhsMd2oaMO6c7t9y8cbzVozTTYe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780574014; c=relaxed/simple;
	bh=eLLiKQ+DHg8qJM7tuSQi4gAiRLDVVDWjctez4raIDnU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T3/dZJ1O09JQ0WnvaYayCgElAIlBOapgHIzgNMtDXBWCJdptoIw4DP3Peh2uTmVMSlJZ64svH2epO9m86AsZJU46c7HekbhXiUvysDE9jaWCaib74/0Cdlxk3PdNmrbVH1Qm4ZZoiDdXsB6Kw9NRIHEZKJsi6rItbE3ir6wcNvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=OLX4n7Lt; arc=none smtp.client-ip=173.249.15.149
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding:In-Reply-To:References;
	bh=TwoEO3Tf+vvUUTkmGVG435GOHfh4xwRHfhvZMdsM34s=;
	b=OLX4n7LtUTcS+QS2wughlOG84IJUNREBi1crLrkr+a+ff3aGWZMO1bP2Lt90fmRm5e+V4dnkPgyS1Hhnle3N8cpc81qVHAhokvH7eAbnuu5tlHXPYRUXtRrR1eFgAVS5l6wir8i+Yyxbm6w387+UYprJE3MudiNjhHpUbbRCUQ4=
Received: from lukas-hpz440workstation.lan.sk100508.local (194-166-56-114.hdsl.highway.telekom.at [194.166.56.114])
	by mail.netcube.li with ESMTPA
	; Thu, 4 Jun 2026 13:53:08 +0200
From: Lukas Schmid <lukas.schmid@netcube.li>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Maxime Ripard <mripard@kernel.org>
Cc: Lukas Schmid <lukas.schmid@netcube.li>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v1 1/3] dt-bindings: arm: sunxi: Add NetCube Systems OpenNMC (dobermann)
Date: Thu,  4 Jun 2026 13:52:32 +0200
Message-ID: <20260604115241.1358528-2-lukas.schmid@netcube.li>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260604115241.1358528-1-lukas.schmid@netcube.li>
References: <20260604115241.1358528-1-lukas.schmid@netcube.li>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[netcube.li,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[netcube.li:s=s1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306793-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:mripard@kernel.org,m:lukas.schmid@netcube.li,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[lukas.schmid@netcube.li,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	DKIM_TRACE(0.00)[netcube.li:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lukas.schmid@netcube.li,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,netcube.li:mid,netcube.li:dkim,netcube.li:from_mime,netcube.li:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EF27963FB31

The OpenNMC is an open replacement for APC SmartSlot management cards
based on the Nagami System-on-Module.

Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index e6443c266fa1..8e2c9b8fe121 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -600,6 +600,7 @@ properties:
           - enum:
               - netcube,nagami-basic-carrier
               - netcube,nagami-keypad-carrier
+              - netcube,dobermann
           - const: netcube,nagami
           - const: allwinner,sun8i-t113s
 
-- 
2.47.3



