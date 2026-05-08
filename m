Return-Path: <devicetree+bounces-294580-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLMwFA8B/mkTlwAAu9opvQ
	(envelope-from <devicetree+bounces-294580-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 17:28:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2474F8ACC
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 17:28:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A0ED300FED9
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 15:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A873FCB2A;
	Fri,  8 May 2026 15:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O9LjUVpb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730FE3FBEDE
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 15:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778253982; cv=none; b=oc5NaJMhcNEh3eARgzU9gyrCuCxFsVNfAmhWlZU34edcAeTGlED1TyBxQNZUZftlLuXtd7fnIgwITeYqLTIwbBjRbpelUmcb8UL0IFtNCgye1mskZOTWgvtT+q6eeG1ZrQ3MIRN+ZnPxzTnjS+/c8D4KgCLN++bXJqt1OCzgaQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778253982; c=relaxed/simple;
	bh=EoHemNj4QSlc7oh17Do0vLZXi/sFzhKmgdTFTFanNME=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mkU8Nfu/+sdl8ZH/oFXn6CiF7zmE8xXx9mBiJ7ogDHDXLeHn7ECrbt8AgUQlRlglcHr/UVTr6LKHOFQf4bvf5QiU03Vlb1q31EFpW2ACzNn/mpPEVy6DmQntJB7Uyioa0DnZo1s6ZivbWY1w9FcsZR2j052Q8mvlB9SvA8siLms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O9LjUVpb; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2c156c4a9efso2869881eec.1
        for <devicetree@vger.kernel.org>; Fri, 08 May 2026 08:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778253979; x=1778858779; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wcF8JZ3hxoubiHdfz7A8sdhKoxTejC5I3xx0KcFawK4=;
        b=O9LjUVpbabvynlDQrujy0Uu9bsaKI6myljh60YblCbin/efVNKWIiE6jzbCjP2Qd1l
         V7AZgirWPTyBOp1v+BOU+m0QYs2kKKnYb5yik/lvh4DW0BbPbFytPc6aU0NpgJQSpdL4
         k6MFCdfcryBmAhhYi05o5SrTZr+FF8H8vetSNRDFweUEYyqHu2uYOfQlO8fWnYHI+6dg
         R2GCNt+Kk1+hGSKe97bEHco50oa1rHxJL1l1NB4Fltv7Amnm8yKW7olbOWIedWuBDfEp
         8gTMiR/hFl0/WpvBrR9XAOi4Mo1JGhkVGo+Ku/JP5FGUsp8AgmMIuLZ1wOnK232Taa3g
         vZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778253979; x=1778858779;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wcF8JZ3hxoubiHdfz7A8sdhKoxTejC5I3xx0KcFawK4=;
        b=QKrcvWabkQ2ry30Kc2OeyWzpAtACxIkF4JaZjvuDEUps2o7vcVMAuk6O7NRsHK0t6l
         ip/UNf339u83AKp3nUNrV5dc5wo7KXzm2L9gLkMoDOpGWMfA4Qb+l8MDibc0IVmmGwPZ
         GYc1asnw53xAl70VtAU79nq9TrVD3myPtEZ8RMZRCCITqW66Vz7hwyIvDsjbDBmaW1/t
         RfKEnmUTVZ18wrOK1MdDIUJKDJDC0348f2Bmttva/Us72t1Nu8hbbHSU/fZQRghly1kw
         3tYN22qMr/LeiEtXT4gxi/HrB2m6sS4wmBN9wtGF2WC7nh/yl/N+ATwhlMabFELWHqm3
         w4gg==
X-Forwarded-Encrypted: i=1; AFNElJ8coUXDxPQiUhJ5umj3qsm2wXnTbI9TSY64LxIRl1S+f/49HD9105+nc7MtQjhPrpOqCF9kxd28Sxs8@vger.kernel.org
X-Gm-Message-State: AOJu0YwMssli/VTbM7hPB7RJ9PQUou/UTvpp+XvVv8mhU3zNsw2s8H3l
	KFpld8uNn0wM51uvtqLXMoFAtwsBK/OnqWOgRl7m7JVU4QSKYbgJqLpt
X-Gm-Gg: Acq92OF/JwplwsVI7uWgxynwvzv+sHuMMnxXwBq1Wma4H4BZXeN/9s/us/82PB6JJw1
	9WpvaZXiotG7zA8CNYGsVIE2dRjB7FqqQNOrdn1UntYSDUvO++84w/aDAAt5bI7agtLJuX9bcLJ
	9Yn1qGVcV/Ta46mpM12xnJGoTmaLUYtssQQ4N/XWi24D0DBChhaVG4rAFpbydnKfR5lCROLqSVH
	QzLq6NrmcJ54al2nBXk0FBRtMICQ5ZU4MWzDGfZoYxRSjAtHSFiIsub8KcH4LGjDrfq34awCwu+
	mtiuJMJE+BimCquhSO/ratL3rTnUYptV7WVMWM6VUz/SRg8PxmYXamr8Axr6TYaQy80CB2pWS3j
	BQWqy2jI1lTOZlEI8K1nKySmwpEmUOwTIotiwVhcUOjSZETFierTJYihdvcBWtZecYKqLCV7w/2
	YvMPj87A4E37yFsG61AcFcClSlc7IeYa1Ow2RoIRfkX0DI02o=
X-Received: by 2002:a05:7300:8608:b0:2ed:e14:e956 with SMTP id 5a478bee46e88-2f550e4b212mr5939964eec.32.1778253978989;
        Fri, 08 May 2026 08:26:18 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a53:11:5d6e:9aed:ce1b:4ae9])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f8862d43b4sm2535486eec.11.2026.05.08.08.26.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 08:26:18 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Vincent Knecht <vincent.knecht@mailoo.org>,
	Grant Feng <von81@163.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Baruch Siach <baruch@tkos.co.il>,
	Enric Balletbo i Serra <eballetbo@gmail.com>,
	Robert Marko <robert.marko@sartura.hr>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	Pavel Machek <pavel@ucw.cz>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Paul Barker <paul.barker@sancloud.com>,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/5] dt-bindings: leds: issi,is31fl319x: Add description for the shutdown-gpios property
Date: Fri,  8 May 2026 23:24:18 +0800
Message-ID: <20260508152435.21389-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260508152435.21389-1-jerrysteve1101@gmail.com>
References: <20260508152435.21389-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: EE2474F8ACC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,ucw.cz,kernel.org,axentia.se,linaro.org,sancloud.com,vger.kernel.org,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-294580-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,lunn.ch,bootlin.com,gmail.com,mailoo.org,163.com,arm.com,axis.com,tkos.co.il,sartura.hr];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email]
X-Rspamd-Action: no action

The IS31FL319X series features an SDB shutdown pin.
Driving it low (active low) places the chip into hardware shutdown
mode for power saving, while all register contents are preserved
and registers are not reset.

Add description for the shutdown down (SDB) pin and fix the example
device tree binding.

Fixes: dbc801b472c1 ("dt-bindings: leds: Convert is31fl319x to dtschema")
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 .../devicetree/bindings/leds/issi,is31fl319x.yaml        | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml b/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
index 906735acfbaf..ebf2bed51e7f 100644
--- a/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
+++ b/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
@@ -39,7 +39,12 @@ properties:
 
   shutdown-gpios:
     maxItems: 1
-    description: GPIO attached to the SDB pin.U+U+
+    description: |
+      GPIO attached to the chip's SDB pin.
+      Driving this GPIO low places the chip into hardware shutdown mode
+      for power saving. All register contents are preserved and registers
+      are not reset during shutdown. The chip exits hardware shutdown mode
+      when the SDB pin is pulled high.
 
   audio-gain-db:
     default: 0
@@ -174,7 +179,7 @@ examples:
             #address-cells = <1>;
             #size-cells = <0>;
 
-            shutdown-gpios = <&gpio0 11 GPIO_ACTIVE_HIGH>;
+            shutdown-gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
 
             led@1 {
                 reg = <1>;
-- 
2.54.0


