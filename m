Return-Path: <devicetree+bounces-278093-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHsPIrv2vGkt5AIAu9opvQ
	(envelope-from <devicetree+bounces-278093-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:26:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DB22D697D
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:26:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB3233085832
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7257A3590C3;
	Fri, 20 Mar 2026 07:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IqLTlbFM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FDD271476
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773991504; cv=none; b=DCQ5zdKuabdsi6O5lwJp6D5slPQwSy8UW2PGdy5IU+qlNlo3/CI4ep8fTvhO7noqeJjdwyWARkiuftLBeQ+yWjG8Y1LYLQDqxYM1X3yaa6S7j32ehheB+t9T/TpWKw0dTXMfTWsETaV+Q33r2sBrHkzUDrmw+KgQQ47qpFn8pPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773991504; c=relaxed/simple;
	bh=eAtf1U9sEAxu2tHVEQNjE0Nieq+nwxacp8kPsQamx/M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oeuY0Pn/iECO2mk8VPu1FzCBdu97MJt+I9OV4mBGQ9Lq7TZjZxJAFsk03clSKte5yAWwHThzgn1cm0F3zZx+ARuNR9wtDlc1dHbYas9n+/3eCoafivwUhF2y/rtGVE+oTVUulu8EGteMXTmgWcSwvKh1R68FVxDj5GsPAwBVJQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=IqLTlbFM; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-8296dabef74so1286473b3a.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 00:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773991502; x=1774596302; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rt3SxBW0V55mE3ZmJ8qpfzk3BnmJicdPxBkCzXkfF2Y=;
        b=IqLTlbFMrQ1Lm5X8T9yAJIG38g45ZPm7T5fzRQMT0BN1RZVSS4Gwo1hkOxBT+NSvfN
         uFhm0llDDksCY3MPN6eqk/eoLFplXvrgCaeoYYW6kdPU/fFCtse8El6FJcKprhILZXw/
         okAYNmHye3R28lrsVS7bSCs6mkGMmjllUUpl0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773991502; x=1774596302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rt3SxBW0V55mE3ZmJ8qpfzk3BnmJicdPxBkCzXkfF2Y=;
        b=Prk6pSq9KyULNwUDMrHz0KpJ87tWa7XSFdlYGfsaqgvdKSHKlN8HPeOX69lwCCXADh
         s9jqGQAeVJfCpAq/XQBXf3JyUXZHTjySy/h2M5hC/Hi+5uFVVJ6GfwEDqu5Vet0VBCYL
         sSxdsVbYHVTzDaCCZmT1nfxKU9cbfHwvGVfPfSVXOBF7oCNufV4Y3/2HcP2Rosu6DW10
         Eutr7hZlPox9aoN37sGXO03GhxdTdwqgXCC08HTtxnUhHFaUXwAxIfqpfNwvBg2Dd5zF
         8dTl4M5U4dh4DjBL6F+lcSOyAhBitt5GbkWwYB4ua+IZmCeKXwh0NRIl5lcW//QGgmnm
         aHEQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8LHLGi7e7YXdKjOjrJi6vdqcs5yEYMAQsPUj0LRSxzHiVMIrFr2qkaNMlEo3B7JVkQTl+LqBxAvqr@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7EMvqHFvTC9K7Z9obLa9RWkPIXMStneKc2XjqztX8JD1S0GqV
	mYKeZ7omplrrebCiDgx6RFOeiAxcP2j/Zx61YOomUeKJXjuTd0Muaml+UmYKO1uvgg==
X-Gm-Gg: ATEYQzycmzfkp2oJD9jT2Tfhnb/P2ZAbQ+I7PF8TY+42DlXQZc0IW0taxcZIMuJz579
	2uk7H8/KMnKqZm7qFg8fH/WClQW6EZPUph0xJUtcRAltawabQ9OvrdNscd+3tBQ0XvWi9fJnIC9
	o7m3qzO9fbB2ZlrIPpJM1ByMOu0qPU9gsArLq4D+KXxkk7MHkG++CBBtGV/p8NUtR9PByYSkAXt
	j8vJoD/zbpB5oKJJAxlJOdAzrvWmC8SdtOqUf6QWH3Zwiktzj9+GsPDTCarAXJtEvmdPVm2CTgo
	X1KOW+nXoY8NgB69PH+Y4cClHfSbcq5JHfioucgmAXflxNECxcg2LUsdRcMwwqWO69zVTArpG/E
	OAwsa6fMdo1knD8F2AbRfgKXE0csLDhE5nzYKdUkXZ9UKTwQe45YKtyspXBko0bj6k8qB3+weLn
	e7kNHu7TpjUVCwkdhvOjNFMEOgB5mOnozSYyqLmSvRhA0CjwLuHYtPBYyWAclLTEb2Xvy2Tdx1r
	1iUDa9C
X-Received: by 2002:a05:6a00:2c95:b0:829:924c:348b with SMTP id d2e1a72fcca58-82a8c337596mr1620097b3a.45.1773991502417;
        Fri, 20 Mar 2026 00:25:02 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82b04222f42sm1452447b3a.61.2026.03.20.00.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 00:25:01 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/5] regulator: dt-bindings: mt6359: Add regulator supplies
Date: Fri, 20 Mar 2026 15:24:36 +0800
Message-ID: <20260320072440.2403318-4-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260320072440.2403318-1-wenst@chromium.org>
References: <20260320072440.2403318-1-wenst@chromium.org>
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
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	TAGGED_FROM(0.00)[bounces-278093-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.967];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:dkim,chromium.org:email,chromium.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 33DB22D697D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On the MT6359 each buck regulator has a separate supply. LDOs are split
into 4 groups with independent supplies. There is also a supply for the
buck regulator control logic.

Add descriptions for all of them.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../bindings/regulator/mt6359-regulator.yaml  | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml b/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml
index f307a7ed30ac..faa0ccc9189d 100644
--- a/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml
@@ -14,6 +14,44 @@ description: |
   according to its regulator type, buck_<name> and ldo_<name>.
   MT6359 regulators node should be sub node of the MT6397 MFD node.
 
+properties:
+  vsmps-supply:
+    description: Supply for buck regulator control logic
+  vsys-ldo1-supply:
+    description: Supply for LDOs vcn33_1_bt, vcn33_2_bt, vio28, vfe28, vibr
+  vsys-ldo2-supply:
+    description: Supply for LDOs va09, vaux18, vbif28, vxo22, vrfck, vrfck_1,
+      vemc, vsim1, vsim2, vusb
+  vsys-vcore-supply:
+    description: Supply for buck regulator vcore
+  vsys-vgpu11-supply:
+    description: Supply for buck regulator vgpu11
+  vsys-vmodem-supply:
+    description: Supply for buck regulator vmodem
+  vsys-vpa-supply:
+    description: Supply for buck regulator vpa
+  vsys-vproc1-supply:
+    description: Supply for buck regulator vproc1
+  vsys-vproc2-supply:
+    description: Supply for buck regulator vproc2
+  vsys-vpu-supply:
+    description: Supply for buck regulator vpu
+  vsys-vs1-supply:
+    description: Supply for buck regulator vs1
+  vsys-vs2-supply:
+    description: Supply for buck regulator vs2
+  vs1-ldo1-supply:
+    description: Supply for LDOs vaud18, vcamio, vm18, vufs
+  vs1-ldo2-supply:
+    description: Supply for LDOs vcn18, vefuse, vio18, vrf18
+  vs2-ldo1-supply:
+    description:
+      Supply for LDOs vsram_proc1, vsram_proc2, vsram_others, vsram_md
+  vs2-ldo2-supply:
+    description: Supply for LDOs va09, va12, vcn13, vrf12
+  vio18-supply:
+    description: Supply internally routed from LDO vio18 output
+
 patternProperties:
   "^buck_v(s1|gpu11|modem|pu|core|s2|pa|proc2|proc1|core_sshub)$":
     type: object
-- 
2.53.0.959.g497ff81fa9-goog


