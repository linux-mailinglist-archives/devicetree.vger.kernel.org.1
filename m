Return-Path: <devicetree+bounces-275228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJX2EqUNtGlvfwAAu9opvQ
	(envelope-from <devicetree+bounces-275228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:14:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD262838A8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:14:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0D68030C995A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ADB631D759;
	Fri, 13 Mar 2026 13:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NaZmOqeI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC705371874
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773407486; cv=none; b=GTXfxwYCzhRCXcQmp41c8mKjgcRMMRZgQ8f29/JwKUJL4hZr/k8eR14rec+BHmM9I2eaTyHQHVBMC7wVERlJ9O/NtVzSyylTaiH5GrLl+C+H/FbTOUcP1PEG2q+VyUZRE1x4GybELYXheaWmtHzH3fbbFV65ClhrCEXieuaoYLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773407486; c=relaxed/simple;
	bh=+ldAzBAgeC1ZCuq9rIBHbM09TlScSEnu1RljmjaT5MY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lD1vnfBEN9if+oNxVSsBp0daxOOaqckyX2BPRQsar29mFV6PcfIU3dkmgP88QsC84eOoIVqlySGMinRCK1Wi5dQcPgB5ft9+JXP5vWm2oOl9QelKmVAGx2as/Qdyo+uohB347PppfPuQEUizOZXQ/F5gSAnOFrEddc4WGQFbukI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NaZmOqeI; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2ba9c484e5eso2651066eec.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773407485; x=1774012285; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dX6awnM4LP0GNDRiHh+rtw/bMTX5xX0dYocQAg/Nrfk=;
        b=NaZmOqeIPWyVxmjvHRy2owmXC+sA47lE4ZZal295pET3xo6J8wUVRtIWmh0T115MeH
         GExw58GW9YurkWqv7xPSfT8twNknbPZz6CLn8DR29YTMOgKzcsZpZajwDEU7To0xd1K8
         DKxYsKeAcAmtwxpUUdgY1f+vauACeWfv7EvxOtPyfoam+gp0AxVhkeywLt1qv8UwmNff
         GCtkYJRkGk6yaQEwYP/mS6rFQy9QPzjxuoC/O7ORVwYHnEoyrQ8xltvMdNqlrFUpOXBf
         maC9gs9UKjTjdq6gf2DouJ+hqbjDBX125FNCEsDZxEwqYpfeJPp2FJdwY98AIhnguVZI
         YfEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773407485; x=1774012285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dX6awnM4LP0GNDRiHh+rtw/bMTX5xX0dYocQAg/Nrfk=;
        b=Kl7SYQBp7p2O66VaiMPYCICF5a7QO1jVUZiZYR2sUw4q1CZ3cf0Fs3jwPavQveP91S
         QdJsAmmUUtMUhgTDKRNlnz/eHOId40o4itAFPPX5qIsNFHVi98krIqxBelojSF7SVc4N
         4ACU0OQdKHdJ7E1CL7DOnnEZ+L74KZswI8nUs+hPPsNc/AkFxaTvIi45iDTLPRB3pEYZ
         PoTcomF3gXJvd8gpEQD3g3e+9YRzNaCRfmQvnVJsbSt1jXvRwq3KwpXFybQmfMhQYzB0
         U7g8hLvJSDwb3LEkty+5GWHNKPApShKe61cABIxTUZOD2MHfO1H84Z7lRQAT+ONXvVTI
         ayJA==
X-Forwarded-Encrypted: i=1; AJvYcCUs5NQCaBmCjKwsEGDridNYISv34DysFe28PBZBqtbkYACDIDGNmcNZ010Xg/XTD1kVVwlhxMOJWDCe@vger.kernel.org
X-Gm-Message-State: AOJu0YwvKNH3WYRWn4BRSea++DJNRXkMT5Jx+QnAQFhhbr1sr+02Ne3I
	AXpj2xtDUO44/UR/9ZoD/OQDsbMDaTcWXXAcGdX83jOiE2ue46yI6R21
X-Gm-Gg: ATEYQzx6PkrUJMwph1QHvfG0fMgZ4i+VmMOknJ85nKseg55HO41YNPYL4Garmj5jtlN
	m8ucU7A9+3Ia5tPXp/JFZvfJlRQ6EQaBWO+PyPJDxa+8VP5PrhviE5gRoIXs4tTtHNo13bLXj72
	XGB/Mt15OV1InbepqznC2b9iTyx6ytNJRqMnNPmgOaWogjRGqQkxpHUI/OvKQ/8y2d3+Tg3/6+m
	gJMGykA9YqohMbMf3N+9i4EYyZWK609Zc8vcIDGaOs7jPsResPI0UECcaBNbdWVo34zXpf/JpSE
	X4PoLQivFhGfBxXt+3ENXIzjcPKpszG7XnfNm6LGXS2mJjlu/k952k9eu07xKYCbs2gaHfXZgnY
	IVHDmK/NFKmERUoe5HP/MXv4TO2lVf1KvvCLyLFZ57iXkhJXoXJi5y4ZBtPvoNaf4DYTJBRKxwB
	njp7ipTtCMbDiGANX4u40/xqy9gKsLde3VUvT+3D4RpGO+dENSztewkkk8RKZhnl9DyxFcN/LzY
	goN
X-Received: by 2002:a05:7300:e887:b0:2a4:3593:c7d3 with SMTP id 5a478bee46e88-2bea54ff553mr1560973eec.19.1773407484713;
        Fri, 13 Mar 2026 06:11:24 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:b6b5:4:db6e:9a2c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab5702e5sm2602315eec.29.2026.03.13.06.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:11:23 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	shawn.lin@rock-chips.com,
	Fabio Estevam <festevam@nabladev.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v7 3/4] dt-bindings: arm: rockchip: Add Omega4 Evaluation board
Date: Fri, 13 Mar 2026 10:10:57 -0300
Message-ID: <20260313131058.708361-3-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260313131058.708361-1-festevam@gmail.com>
References: <20260313131058.708361-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275228-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nabladev.com:email]
X-Rspamd-Queue-Id: BFD262838A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Fabio Estevam <festevam@nabladev.com>

Onion Omega4 board is a board based on the RV1103B SoC.

Document its compatible.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v6:
- None.

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 91a387621bcb..1e5be6c809fb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -808,6 +808,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Onion Omega4 Evaluation board
+        items:
+          - const: onion,omega4-evb
+          - const: onion,omega4
+          - const: rockchip,rv1103b
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.43.0


