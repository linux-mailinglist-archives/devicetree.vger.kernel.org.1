Return-Path: <devicetree+bounces-278091-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OaqFrf2vGkt5AIAu9opvQ
	(envelope-from <devicetree+bounces-278091-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:26:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B1B2D696F
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:26:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0F4E3033D14
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:24:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63EB6359A9B;
	Fri, 20 Mar 2026 07:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NriMh7vF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8B83590C3
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773991499; cv=none; b=NdrdY1WVp1+Er/rgewxnUUl2TqkqBg6ItfsayTmPiVbU054FN+aiBslRA2Wmn1ctEDcyN43286cu3LuDY37peFwuIR56s7IdOw2MpJAr0EWjyCAhnN3nMDK0VZ8iVxTJU2hiCGX2b6QlY2pejmwp74FPn2/VmicLmSP9FL3jbR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773991499; c=relaxed/simple;
	bh=b4FFhD+2nqonU/1HYddhUX1NzMA+FiGiTEp+2obzkws=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WFIk7PZtPILfoFBybiU3+lPz+RcHfAyM2VB8scdH4DT09RLkZf9IN3IY4BolJ59BFDj5XTR+2fKw+iSn9cGDDsb3S7z+i7cmj1VTi8V4IB9nr+XTMG8+bSKq0lChTzLmynzBN9Skh5wC01usXuKwl7/KvLGsYwBq7HCTeMqkx9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NriMh7vF; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-82bae83318bso146421b3a.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 00:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773991497; x=1774596297; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=99wvnBqkOMOuTm7m/8LXi4xBzDlTYHcDi1Go4VKhvmw=;
        b=NriMh7vFO3jqlnSMK8dJKrAnEdoA9mLsTxmPaYa15PW1k7A50WSZziuvN1lcw6yfUh
         1wSn+2tgo9LiVJf1l8fH8gp6K/k6lUI9HyeS9fDupSOaV/vapCcAXGqhbjVkIlh5LcOd
         As8eeNL1Dkd5+La44J5hETjpE0lyf638SaK/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773991497; x=1774596297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=99wvnBqkOMOuTm7m/8LXi4xBzDlTYHcDi1Go4VKhvmw=;
        b=h0wfmsJyyfWaHIkfNskXnCPsSfmfLohx4VYbJbzniHDtnO7BYfpZad3ft9wt6SnG9W
         kV9X093XKBuvCmv7gWNOfSWiPbUnj9JWsle5lZecWy2UZss+xzC+km4ceR61FmZ5z18C
         i2ha205LJiIFYDvSI8gv7PU5QHC6f4CKNA0w+Y7GgcdDh5aU7kcb8S7MxTEOIj5NI6G7
         61HeI9wPjK3U429b2bavekqWxMEKdGKgYxVCul3Drjck/HSJu/Xor8FjqVtiJTrCoDYV
         Ncli2F0ZryyQSa/ZF1JmdpzT10vtPxqUyBfC2FsZFOWGdIFeMCKyu2Qfq+kLE6IulsiR
         +9Lg==
X-Forwarded-Encrypted: i=1; AJvYcCVO5NqZPvk7EwDTNQ2cHZvLmHBCUTdVdZZ+HkIJHckqdeRo6cOHauT6IGbfJyrbIEkHFyBGye7B2JM1@vger.kernel.org
X-Gm-Message-State: AOJu0YyYxLIyNRGZuj9634PZXrP/jfiX+WZ7kaWDZ9nXBJicCF91iemw
	HDWjpQQZ30lguZmIny5t4SM/HArxZH+erSyDPG6Fp+uJbAw9+kfm1UAr14bMHGv0oA==
X-Gm-Gg: ATEYQzxgQKI4OcL+8Ziz4d7LoLx0J1ufzjOHRl3WSLZOidAubyUs1SBe80n45qaL+Ol
	lLvCfCWbQfdxyciNMYUJwjbLvWvZ5Qflc8CRLUIZ8KFu6O++mUdF3lZEiDa6PPLeAYF7OakXO/M
	Y0qXqH7eFwDmeJY9np69va2hD2JacdbgmkQEs9gY+RO/zC4DIhBqlvCaNogfhbsyK/+sOFuUfLi
	+c/nKP4GPqHIsBaaLsGGSdXhOHz2MuhAOj/a/gfW2cKPzi2Fcp4ZKiZpcWYEzJtK7zJ2JR9Zumh
	s/bqNzUIeZmdpiOY23wts6yB7J58spM2NB+GqfD8yeRD3yRm4OxJ2Q1CWBVsZbN/S6Yqcm8cHJ4
	T8/txMGQRh8WbxQgDP/dpqn4dV10+2hrifyg52zvA4tDxY64uCIY9RkB4yQpkZyw8rxwGIDRljf
	G5dJ4PIY3hecdmrkdWDJJx/CVwo4tPB3yXn2AaW+fgR9OT5MuQnMi79NqqQRsXw02rD/k8ePuli
	JJa+NGj
X-Received: by 2002:a05:6a00:13a9:b0:829:8cfb:df45 with SMTP id d2e1a72fcca58-82a8c2804cfmr1615737b3a.15.1773991497498;
        Fri, 20 Mar 2026 00:24:57 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82b04222f42sm1452447b3a.61.2026.03.20.00.24.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 00:24:57 -0700 (PDT)
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
Subject: [PATCH 1/5] regulator: dt-bindings: mt6359: Drop regulator-name pattern restrictions
Date: Fri, 20 Mar 2026 15:24:34 +0800
Message-ID: <20260320072440.2403318-2-wenst@chromium.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	TAGGED_FROM(0.00)[bounces-278091-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.929];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,chromium.org:dkim,chromium.org:email,chromium.org:mid]
X-Rspamd-Queue-Id: B2B1B2D696F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The name of the regulator should match what the board design specifies
for the power rail. There should be no limitations on what the name can
be, and they definitely don't always the PMIC's own names.

Drop the restrictions on regulator-name.

Fixes: 8771456635d5 ("dt-bindings: regulator: Add document for MT6359 regulator")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../bindings/regulator/mt6359-regulator.yaml  | 43 -------------------
 1 file changed, 43 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml b/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml
index fe4ac9350ba0..ac925334ae83 100644
--- a/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/mt6359-regulator.yaml
@@ -18,84 +18,41 @@ patternProperties:
   "^buck_v(s1|gpu11|modem|pu|core|s2|pa|proc2|proc1|core_sshub)$":
     type: object
     $ref: regulator.yaml#
-
-    properties:
-      regulator-name:
-        pattern: "^v(s1|gpu11|modem|pu|core|s2|pa|proc2|proc1|core_sshub)$"
-
     unevaluatedProperties: false
 
   "^ldo_v(ibr|rf12|usb|camio|efuse|xo22)$":
     type: object
     $ref: regulator.yaml#
-
-    properties:
-      regulator-name:
-        pattern: "^v(ibr|rf12|usb|camio|efuse|xo22)$"
-
     unevaluatedProperties: false
 
   "^ldo_v(rfck|emc|a12|a09|ufs|bbck)$":
     type: object
     $ref: regulator.yaml#
-
-    properties:
-      regulator-name:
-        pattern: "^v(rfck|emc|a12|a09|ufs|bbck)$"
-
     unevaluatedProperties: false
 
   "^ldo_vcn(18|13|33_1_bt|13_1_wifi|33_2_bt|33_2_wifi)$":
     type: object
     $ref: regulator.yaml#
-
-    properties:
-      regulator-name:
-        pattern: "^vcn(18|13|33_1_bt|13_1_wifi|33_2_bt|33_2_wifi)$"
-
     unevaluatedProperties: false
 
   "^ldo_vsram_(proc2|others|md|proc1|others_sshub)$":
     type: object
     $ref: regulator.yaml#
-
-    properties:
-      regulator-name:
-        pattern: "^vsram_(proc2|others|md|proc1|others_sshub)$"
-
     unevaluatedProperties: false
 
   "^ldo_v(fe|bif|io)28$":
     type: object
     $ref: regulator.yaml#
-
-    properties:
-      regulator-name:
-        pattern: "^v(fe|bif|io)28$"
-
     unevaluatedProperties: false
 
   "^ldo_v(aud|io|aux|rf|m)18$":
     type: object
     $ref: regulator.yaml#
-
-    properties:
-      regulator-name:
-        pattern: "^v(aud|io|aux|rf|m)18$"
-
     unevaluatedProperties: false
 
   "^ldo_vsim[12]$":
     type: object
     $ref: regulator.yaml#
-
-    properties:
-      regulator-name:
-        pattern: "^vsim[12]$"
-
-    required:
-      - regulator-name
-
     unevaluatedProperties: false
 
 additionalProperties: false
-- 
2.53.0.959.g497ff81fa9-goog


