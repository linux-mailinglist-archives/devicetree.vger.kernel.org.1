Return-Path: <devicetree+bounces-300303-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEjiC33jDGrIpgUAu9opvQ
	(envelope-from <devicetree+bounces-300303-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 00:26:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C4A585949
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 00:26:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E5E243091A26
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 22:25:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D1243EF64C;
	Tue, 19 May 2026 22:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bqbO7TpH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A534C3EE1EF
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779229495; cv=none; b=QFeV0pjmr7RkRuaBrIoSvGb9YAe0FWUrEynRSSSelhuaRrOkx2dsZG0YS31fkB0wIHWW89PVwxAC2O8xAmiIuu0np5twD5cz0bk4XO5bkD+PlAQCZ8/0KJv1ekcgFPKVgjDNBs3DYVzN68/PSX48cDdF4eQerSPEZWqo/LqvQcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779229495; c=relaxed/simple;
	bh=7KRlzQ/CYy0m0GRFXFkovzRgNDiKVQyaq7IP7YBW5eU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Lhg2iZBjoy5XLcAA5xKkXBpjDlLWU6OHfv2e0O0ov9ETUCk39PQMvazIErHRgE5rCuGpEk1TUbJS3ziGlKnyurySm0oeIku0VDpXWKdMYtEzCHa3PHsU8/4N7saguHqJRt4oOyuRUxLzTEyc27I/dIgaxUEPzh8bFCVwJ0PkQM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bqbO7TpH; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-48a563e4ef7so34460425e9.0
        for <devicetree@vger.kernel.org>; Tue, 19 May 2026 15:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779229492; x=1779834292; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b06Obgvy88lKtCoTzccRlIplQ4+h8fmj3ZHd9P9fJhI=;
        b=bqbO7TpHQvMXjVuO5pLHhPQ79Fk7Qpq/wKfrshkkNI27kf373/AkVhUrIuU57wX9ng
         VYAh8j2vevvBqXhE4g9ttiYjOECCwsdaKMsx6KnIIxmXP2Ymjatl2rgReVk02w/ievZW
         P1Egacr2H0xYoVrpWVyDrq+Vm+K5o6yElYn2th658PKirPpHElmhkxZC0vayauRIWzlC
         4EPatbU1Vh4TJpU0z9fjVfjJm4yudRqpdGDLHN1lxhpsjKAkMTb3uEwSWhJ5p2h8Cu61
         kUaP0KpmtHpxv85yEzwK6nG9+HmL8OKgl1+jp0w8fTc579wdCQLqrtuFlqh3LF2esJKH
         tnug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779229492; x=1779834292;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b06Obgvy88lKtCoTzccRlIplQ4+h8fmj3ZHd9P9fJhI=;
        b=nGocxB6hB0+rrH3x+P4LxMpaNHhEeYJvlGwOERi3/B0eyor8nDfx+x+5HV8EL2wa6v
         9qv6ZCeuQG1P6qHhYUT2GirGih3M8VszH4VH/ZswrtfS/rQoGfnwaei2EMDT6Qqcbf2r
         Fhnrtb4m/5rW50uWuRIibUofszvAGnzygWNlP1IK8kBA5sWQZpdLFUsM8Zb/0DnlHXQx
         +CyfFawtREh+FjrgeIPyQw8kkbdKASVY2qGJ+fYtXzBCAStuKDXfT0PcKPp+aWUv5Jw9
         GDVe1ZPvIkzhw2EZKlwRkCbcztRu4HDU1A/NeLje1+tyUuQbRg3GEqlv6UG041pkj4pT
         qMzg==
X-Forwarded-Encrypted: i=1; AFNElJ9wZxzUEpbFrhpKz+pCYkH6AsOS+iHIM+vifb8sgABTDxshQ421ENUJsuBOuS2vDIUp8CAkZ4ewyn2z@vger.kernel.org
X-Gm-Message-State: AOJu0YwWVMuRKm9TihiXdosEpZqmrx6k+8a5aCH00Q/2ZOrryt+2k0Vr
	BPc5DAbMTLJNesD2kAwK4pjecgC1o/Lf7lOzsbiEqM7aGyaIfWyRkDfE
X-Gm-Gg: Acq92OHqlqLxZPBZDhO1Wqxa1td77Sd0U+JK9FFO5Tp3POe3rgCBz8vevGPcfQ/4shT
	YwVOea92XfGt069X7KHxcBHXcTBaXkQEDvh9YXuIPMn/NXptG2OU9NMXtF2DR2Nd+Z1HsyexMAZ
	ZF85RY8d5YV1XR7QwXXxqJtTUJKtu9+nQBo3dGRWB5JPE0S7qOVL5ZPUa7+LfIROqph9YXwxJ0a
	4Xote/zsZqpoCxl19CEjy/QZfBzlIGFY7kwKAQT3t0t+oY88wTZYEFWv2XBh4/8OzCNhL4Q7H3G
	nGHAyyWTFarFcAlxUY/XlRplpo4z6ldCZ6Eka2gzqeINohS2QqUk3Uzjqbdz3uZ23/UA8j3aZXU
	v2d96moWebE9umYInlHC6yXh/m1hthBNAZIA5xO4FEhajVRphR+C1l2XWizVP8hWcD0Ky00TZW8
	qUHdtfikIVhymVytBAg7bofG6GV/Y4kIYv5YPJKIq0mw59LpOHCzi7B3fTB38Mtc119BGLShM=
X-Received: by 2002:a05:600c:34cf:b0:48e:5990:9698 with SMTP id 5b1f17b1804b1-48fe651588fmr340150505e9.24.1779229492142;
        Tue, 19 May 2026 15:24:52 -0700 (PDT)
Received: from Ansuel-XPS24 (host-82-55-252-101.retail.telecomitalia.it. [82.55.252.101])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-48fe4c834besm381097435e9.3.2026.05.19.15.24.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 15:24:51 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v4 4/5] dt-bindings: arm: airoha: Add the chip-scu node for AN7583 SoC
Date: Wed, 20 May 2026 00:24:25 +0200
Message-ID: <20260519222433.29684-5-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260519222433.29684-1-ansuelsmth@gmail.com>
References: <20260519222433.29684-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300303-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,arm.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: A4C4A585949
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document support for Airoha AN7583 chip-scu node.

This is similar to Airoha EN7581 with the addition of the presence of
thermal sensor in addition to controlling HW PIN and other miscellaneous
pheriperals.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/arm/airoha,en7581-chip-scu.yaml       | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml b/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
index 67c449d804c2..0d042fb90a78 100644
--- a/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
+++ b/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
@@ -18,16 +18,30 @@ properties:
   compatible:
     items:
       - enum:
+          - airoha,an7583-chip-scu
           - airoha,en7581-chip-scu
       - const: syscon
 
   reg:
     maxItems: 1
 
+  '#thermal-sensor-cells':
+    const: 0
+
 required:
   - compatible
   - reg
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: airoha,en7581-chip-scu
+
+then:
+  properties:
+    '#thermal-sensor-cells': false
+
 additionalProperties: false
 
 examples:
-- 
2.53.0


