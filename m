Return-Path: <devicetree+bounces-324451-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vD+SNx3sUGry8QIAu9opvQ
	(envelope-from <devicetree+bounces-324451-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 14:57:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB4273AF84
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 14:57:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=kZ2Iaenm;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324451-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324451-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3BC73093FDF
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 12:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7639A42983E;
	Fri, 10 Jul 2026 12:50:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FEF42849C
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 12:50:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783687826; cv=none; b=pbCfk3FWXcW+9dWxekxPOgqHwmB11uhmGXwcElDjp/7XArsHjltimESpQkDXPrpSpjTkDK9Qe4BLEwpkvmS+hBhycmEdOge0bEjf3Qyeb7UeL6Nqrcjg0NyhsGmZfuSeBi+p9Nnt3NoFbA4bamY39TY988y7LiS8UAfZv0m3Hd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783687826; c=relaxed/simple;
	bh=Lk86yqFjkgIfO5BnDXZ6MVCY720AO3EkBAlvNM1pHPU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KQ0w2qLd0c0riUtlc4IZkbX06zI56M9BUAfq+hTZ8wZ8qbjOuQ2x9W+8UxkPK/Cl8HKSH6Q0yV3XDlkyWHfsQCvJgZqLzdGLz0UQkVSwGGH7YxQbnuTUkrkPINL6BDfTaL6h//V4f1EJqGFZxLf+PUhk32A2mKBmLHVvpP54YxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kZ2Iaenm; arc=none smtp.client-ip=209.85.221.51
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-475417f010dso439094f8f.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 05:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783687823; x=1784292623; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=L2I+f3goa7Ji4rR8sSSVkVPqFWsAO6xlq0mM+CBWobo=;
        b=kZ2IaenmHyHUBRQXRqtCe3cWmBdwGAblf3d1AyFd0IgoR24aBcdAREqX7tmVYx0pYk
         ZL+pTm2r0krMtMeuptsodYScjmb0LhVUhNjuJnTT1EFrZbyBSlsnwzOzi9J+cI2bOsmh
         h28umCoISAO/UHuaSikXykjXf0PKdDMm48pgelM55Y9v9CCO/S/DBpdrexHbipQFc3YU
         FFPCq4AsUGvL86gLvaSxAztGmKsES7ZG9x4+2uftcqaMxiQP5UL24cnPbOfpTgw8yK3n
         FldLfJPb8PMHZ0PouNbPs9M5TDDE409oPQbVNgGHL97S4TJhQ4xUvjMSbNFsjqpZrPOw
         QMDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783687823; x=1784292623;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=L2I+f3goa7Ji4rR8sSSVkVPqFWsAO6xlq0mM+CBWobo=;
        b=d0rj4IbeYoUvsO/K/WIQI8I7u2Wgw5soTionvCap0qeE45AP4z2mBx2cl/f6xwXM3J
         aW8PiKsWzYYSgWm39X9ls4A5YGJlaistf9UyW/3lmEqT4R+J2SLFQrJ2PTNnpbAaLT6C
         2Q6aAim0kB75FxXxBRUVlGH4/MySJVExxw6eOfdBD8hlJlVENffkvn8KpRjT+rFjtdCz
         cVO71KrMaKv+K1dlxnU/jOFtjZQSz5+KyDsga2J3RIkhKHa+AUAYSicPtmbq7Bh8alka
         pksMkc8uX8BElVuiX6PrpReoWQ78YtwORh/Vt0hcKbX3Izn/MffTCKcvoOL/3/s9ITOV
         ICNA==
X-Forwarded-Encrypted: i=1; AHgh+RqWbr7XC140q7IXwJ8CczBNQT7hc9e78JrN3uycASSU2iwhE5hNGxFQHUcTUEMUCgHE8wxDOXNC6G5M@vger.kernel.org
X-Gm-Message-State: AOJu0Ywake0pL1BqbtRUahPTAhOzEbK/AxFQL1mKSwr1FB6jwASHnZh+
	mTn9V0/wDKBJpDKZbVG1Cx5WMYre76vVtsiiczNuFz3T8fu+xf8+0CSy
X-Gm-Gg: AfdE7ckrPIC6APW1LAJcbmQdJqvDW3G5epcE/WdlCCEjmQ2X9BCwnzeLqgcDUbKCAfS
	LictWn0oF0J29+ME0tt4u2N42bPxVWZ48a3rzpo79qQ2MPJ7isnfSNRCe2rFBhBIyJmsGegcYT5
	oohwfK3KF7xr92Tn0cwfcdwTaEWyvm3NaZ47aceAWG96BqtIHS61lVEXwqkpDtmUkKebBbx+2kk
	1z1mauikUk4GHESxG3KqR3XpviACNvUiHpyeVdCaJgMUIuaAMn8bB8IpJw9Wqmed2NPVNJdLAyo
	ps/Ay3Bmb8nz2WAR0uceEYqzTS4GTEG4OFe0pcd4wA0MqchRR7nJIM+m4HMucSoA9nLIth3ycR0
	vRrrJ0MhT7Dui/hGmV+Ec7PhWHm92orkmL20x0BK4LdHgI/vmoZUK67xTHSw9QYXp8NW9rPZDsF
	Bab4ooFleWB2sPKSNVHl7FFXTvx5jLSdYqiiD0g5N/mwQKGWLHULVv
X-Received: by 2002:a05:6000:2013:b0:46e:624e:3c2f with SMTP id ffacd0b85a97d-47df077b2e6mr12376131f8f.47.1783687822970;
        Fri, 10 Jul 2026 05:50:22 -0700 (PDT)
Received: from GLaDOS.station ([185.81.127.246])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa0960634sm61218665f8f.26.2026.07.10.05.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 05:50:22 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	matthias.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>
Subject: [PATCH v2 1/3] dt-bindings: arm: ti: Add bindings for Variscite VAR-SOM-AM62
Date: Fri, 10 Jul 2026 14:50:15 +0200
Message-ID: <10775b12b801255546c9cdefdb153e421aedf910.1783687321.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1783687321.git.stefano.r@variscite.com>
References: <cover.1783687321.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-324451-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:matthias.p@variscite.com,m:stefano.r@variscite.com,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kees@kernel.org,m:tony.luck@intel.com,m:gpiccoli@igalia.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:mid,variscite.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3FB4273AF84

From: Stefano Radaelli <stefano.r@variscite.com>

Add devicetree bindings for Variscite VAR-SOM-AM62 System on Module
and its carrier boards.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v1->v2:
 - 

 Documentation/devicetree/bindings/arm/ti/k3.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 69b5441cbf1a..b9da6e62ab79 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -104,6 +104,12 @@ properties:
           - const: tq,am625-tqma6254
           - const: ti,am625
 
+      - description: K3 AM625 SoC Variscite SOM and Carrier Boards
+        items:
+          - const: variscite,var-som-am62-symphony
+          - const: variscite,var-som-am62
+          - const: ti,am625
+
       - description: K3 AM62P5 SoC Toradex Verdin Modules and Carrier Boards
         items:
           - enum:
-- 
2.47.3


