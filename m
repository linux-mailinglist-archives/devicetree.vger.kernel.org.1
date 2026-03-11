Return-Path: <devicetree+bounces-273767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id BOoxGS21sGlvmQIAu9opvQ
	(envelope-from <devicetree+bounces-273767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:19:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 011E8259A9B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:19:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5BA03302B19B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 00:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B39731717A;
	Wed, 11 Mar 2026 00:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HjETSn+l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92047317152
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 00:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773188391; cv=none; b=UOhinMjD2SqPVA1gA74+tLZBk0XAEgwrYcDZl9OeSLP7C1wtx97jvdTUOkRkCLsKpdpVt3va6NBdVRiySlepRZIuhcM69822YhPIcZgzUdUEtk0YqfjI5SfsXkAuD0AP4aU5EqGYfXYt/H0TppnF/CJurvZzYgNLfWr23T0h9Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773188391; c=relaxed/simple;
	bh=W4xSkkVIycg+yElDAfB07bsC758UPlh9LzCrHeiEG6A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WFTJ3DBMvh2Y2llxCVK4KHsoYyx3wHng1kdN7q31cKVo+7KDWSXlKZUF4Hfnyrm3cSolRTlHzYQ4A6j23GFv09Jy7n/KKLWTj1aHqAMib3R3NU8vjLbAI/s/EGlJXa69eR8tQ1pClS0flKMktor7wdbQ1X6sKbPjm+3EGqzdpO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HjETSn+l; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-359fea895b5so276810a91.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773188389; x=1773793189; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wRPHMWr3RYeq2LdlKWsQydyKI1DDcq+bxSSt+FcIkkg=;
        b=HjETSn+l9Y2pMksal9A4mPHKvr0YGzYlTh5OfX5qPjsJYuQU/h2WafvzK/b0oXVYlP
         xX8nizJD4v9r1uSLPVNePh7cquSGNLnf3Bu78+qoxPh49wS4emBSSxP+p9BTFrTq0/do
         gfqA0AXmm7hi2wqCn6JmIQ+ojy2MYCTO+7APpaDDQvwcnG2PDuXrXRbcrLph8XiFy9sa
         xcZZOeU4cJrE6wvVnxEKh9jaz1WdTMkT/k0svZspmGaqklsWvFcw3zOkzu2suA9Zai68
         PPg6+xcftZ2qz4KMLASVAuhETWIuj2WtcrS+lQqS9ZJem/vL2uhZ6V4tAIJjjNYac6t8
         IoDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773188389; x=1773793189;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wRPHMWr3RYeq2LdlKWsQydyKI1DDcq+bxSSt+FcIkkg=;
        b=IBKcWZeorTMRgBguf7kFtHZmUrLC6Bz2eH0XXuLOH6Oqyz0tLoP2YIRL9Ueg8Ri4S1
         s6+P07c08GVJUViuS2m039s0/GMJGwN5TGvzjJpYWa1r4Gcatiz6IoczXczG10TEH8QC
         4Zo/Z2AAYRUFZUOKvpqhsPNTDAAgKQKVQgFpW0WJySJaDhA7Wl+pGuXJWuiJjZGYUKt1
         6UTwPvEQaud1SQWCziVb1CETmlK7u7klhq4Zsz33yrhz0KukCHVoUoZaKjIywu5KJRLx
         tDtPRvVVTtSMEUYaimnNZaIJaRpbYW+WThXTqkEIbMMSxQDeJJPfXp5MAC6NRvp4c9ua
         BOzw==
X-Forwarded-Encrypted: i=1; AJvYcCWtdYhTTijhK7XioLngBU1Mtx0Gq222BPQqAKPDWm4QU+NkT7QD91L0et65orDdmFQUXUgnUoWi9j7X@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3CA+FxvL4ExoD1yoF48OchSWXuYQ74yG48UxyrES1CDPnYSK+
	QrqUaYCzfk20g/EitUYeABXvUgaY5oIVbEV4kXJv5OyXzjE2cbk6toWBE6UGMSmENdA=
X-Gm-Gg: ATEYQzwXSZDdGSeK6yON4J2nJNUIml3u1qEwYGnLvR+LGFQ8dMnxhGG/exPAvss5HZI
	+SzzS3Y53TaC4X+eKO5mRGOxiy9WMjg6zxrlYYdElMxwLtmT5jJS2a0W1w+XzkMSELzWCD4p5BV
	mtiNqNRmlAFmp5hPj1n5qCBB7GHsPheLcn8+dqWIHxhXXdfB9UlPN1b6EPPtRuN2slENGspFtWp
	YfUZX9WHbcZrSy1oLp3aILrFaZm4UN/iiLv30C4WsvbJoFCTD8kYcETIWJeySLPx+YlsUo4ndXs
	Tuqhbxh5R0liTTX9S/oaifFIuDQQ4J7DDGuAgGs+dwlOUsAlqxVL9xJ1thy/i4qw09VRsrgACe8
	ZjI9SOZmanRPIGwdqJlVWaddn1dwZQKs3vIq3sAuGA9JiX0MrLF8JcrVY0BtmIg/CYx/RqAeJ5G
	SmdOxY1gf6HN/18yGrjhtL
X-Received: by 2002:a17:90a:ec85:b0:359:f8c3:dada with SMTP id 98e67ed59e1d1-35a012cabc9mr688568a91.13.1773188388912;
        Tue, 10 Mar 2026 17:19:48 -0700 (PDT)
Received: from localhost ([71.212.200.220])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a01b174ebsm174134a91.1.2026.03.10.17.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 17:19:48 -0700 (PDT)
From: "Kevin Hilman (TI)" <khilman@baylibre.com>
Date: Tue, 10 Mar 2026 17:19:23 -0700
Subject: [PATCH 1/3] dt-bindings: power: Add power-domains-child-ids
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-topic-lpm-pmdomain-child-ids-v1-1-5361687a18ff@baylibre.com>
References: <20260310-topic-lpm-pmdomain-child-ids-v1-0-5361687a18ff@baylibre.com>
In-Reply-To: <20260310-topic-lpm-pmdomain-child-ids-v1-0-5361687a18ff@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.15-dev-53144
X-Developer-Signature: v=1; a=openpgp-sha256; l=2801; i=khilman@baylibre.com;
 h=from:subject:message-id; bh=W4xSkkVIycg+yElDAfB07bsC758UPlh9LzCrHeiEG6A=;
 b=owEBbQKS/ZANAwAIAVk3GJrT+8ZlAcsmYgBpsLUi4DwekAQDifoz6ARcFx1D9uf8ysPKH/4U6
 vky1ASsKDaJAjMEAAEIAB0WIQR7h0YOFpJ/qfW/8QxZNxia0/vGZQUCabC1IgAKCRBZNxia0/vG
 ZYGFEACckVcCs/uQxZ/ASYWG2Okj24RX8PZGa/Q2bO9XBt+1kSdS0YnC1imfvCon3WKPZ+5/lX8
 K/h0jB3AX23jBP0sbB9ihDlFHl8NSt79A4R/Fj+RHLkHwqr6I3wJCBApPbhRbm51OWvPVocCUk7
 BdUpZaFVX/YZ2mlmedt6g1t6uOA9GRgwMbn9vSXYCjrEa7fdf+/eojIBzgJGYstukKyehLvPvUR
 t1ULjrmjCBPrVdZqEb9NyKnX7vMjRqyZZ3qEJt/JqxrMHH89v49u9MVH1WoRvU7Yl2lrzpnAHhQ
 wwfvo1Avopvsy4jgjxfCUEEuo+SAwauxQ0PCM/TWNKZ7/xBYcoKgA25cy76nWua/oHzbpoBHJpV
 zbj6gF0AstTdZNcdiNXkLtZtHIJjBf9hA5Oz7C/9qpec+1lobL0fQLzrWfUYBFkqPXzdHLkpXBb
 xn4SyFKvv76YymCTBlQgHN+9+aa6SJs6XM37pa7Cl60LcddnLIyp57NwJlP3d78zjGDfYfTLSyF
 3zxi0VrF4XO58kCZG6D+GxBSNfpeZPP8OLlugM2ftq1gzpDx3tSjHHcCUqpFSc8/IOsbVKACQgY
 /g7/SLGeKw1gZYKaSU4ZWi1Rxnn2ya8xY1KO5ioZ79wlrkBRuE7hx3GJ6w4HdXaG/4EakIz4O1S
 Em9fX2MDKctxdag==
X-Developer-Key: i=khilman@baylibre.com; a=openpgp;
 fpr=7B87460E16927FA9F5BFF10C5937189AD3FBC665
X-Rspamd-Queue-Id: 011E8259A9B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-273767-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,baylibre.com:mid,baylibre.com:email,baylibre-com.20230601.gappssmtp.com:dkim,0.0.0.11:email]
X-Rspamd-Action: no action

Add binding documentation for the new power-domains-child-ids property,
which works in conjunction with the existing power-domains property to
establish parent-child relationships between a multi-domain power domain
provider and external parent domains.

Each element in the uint32 array identifies the child domain
ID (index) within the provider that should be made a child domain of
the corresponding phandle entry in power-domains. The two arrays must
have the same number of elements.

Signed-off-by: Kevin Hilman (TI) <khilman@baylibre.com>
---
 Documentation/devicetree/bindings/power/power-domain.yaml | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/power-domain.yaml b/Documentation/devicetree/bindings/power/power-domain.yaml
index b1147dbf2e73..a3d2af124d37 100644
--- a/Documentation/devicetree/bindings/power/power-domain.yaml
+++ b/Documentation/devicetree/bindings/power/power-domain.yaml
@@ -68,6 +68,21 @@ properties:
       by the given provider should be subdomains of the domain specified
       by this binding.
 
+  power-domains-child-ids:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description:
+      An array of child domain IDs that correspond to the power-domains
+      property. This property is only applicable to power domain providers
+      with "#power-domain-cells" > 0 (i.e., providers that supply multiple
+      power domains). It specifies which of the provider's child domains
+      should be associated with each parent domain listed in the power-domains
+      property. The number of elements in this array must match the number of
+      phandles in the power-domains property. Each element specifies the child
+      domain ID (index) that should be made a child domain of the corresponding
+      parent domain. This enables hierarchical power domain structures where
+      different child domains from the same provider can have different
+      parent domains.
+
 required:
   - "#power-domain-cells"
 
@@ -133,3 +148,23 @@ examples:
             min-residency-us = <7000>;
         };
     };
+
+  - |
+    // Example: SCMI domain 15 -> MAIN_PD, SCMI domain 19 -> WKUP_PD
+    MAIN_PD: power-controller-main {
+        compatible = "foo,power-controller";
+        #power-domain-cells = <0>;
+    };
+
+    WKUP_PD: power-controller-wkup {
+        compatible = "foo,power-controller";
+        #power-domain-cells = <0>;
+    };
+
+    scmi_pds: protocol@11 {
+        compatible = "foo,power-controller";
+        reg = <0x11>;
+        #power-domain-cells = <1>;
+        power-domains = <&MAIN_PD>, <&WKUP_PD>;
+        power-domains-child-ids = <15>, <19>;
+    };

-- 
2.51.0


