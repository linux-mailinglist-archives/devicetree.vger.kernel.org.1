Return-Path: <devicetree+bounces-279571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKZkFvkhwmnHZgQAu9opvQ
	(envelope-from <devicetree+bounces-279571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 06:32:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D9518302490
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 06:32:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 186DF30E8D23
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 05:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4EB3280309;
	Tue, 24 Mar 2026 05:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YU9BRek3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7143D23BD06
	for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 05:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774330249; cv=none; b=h8VWo57oG6fhXg+wLa2tdzPbsPVgbWZLQYmQeePIlPNlL0Ss1HNevqflotUHdRqETcwuWm89MMiE5LoJhRauZfkAN1/N30B/atN4MUBfY3LGMbZWHAwJwSdbJex9RQBLD4RCXxD7XJ+eo8tGGWy4iyv6qxtMipgxSFXf+ImB0J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774330249; c=relaxed/simple;
	bh=1TjlTYrrLl+89UeZu4Jz5IGs2OEBORejcJFm4ALhNJw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d9J2OskVFqg80aZjldlQM0cJqGfas2daaVJ7i6lrwCDmSaIcUYJnX3GTOxDoHg8ywuudg278KnTjqmO/tAZhU2AMJ6Wj1TNjkL/1ggr01AzXz+mnyGswFuLrUkhJ9/80V7oaFI9PlnBsMH+3NVQncM3rkyI/3lKjKMe8NV3yiP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YU9BRek3; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-35a094cc3e9so3378094a91.3
        for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 22:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1774330248; x=1774935048; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WE9EB/AJhGsAQ2IQOKEBwLjZmu9qCQYkTkw3Ul7ABII=;
        b=YU9BRek31c9Cg1Ed6OFJgEWEsiyTm1cWm1BUUDehOC3yITkSFkSZRt2P2GYrD1eZ1g
         7J1OACu/B+WIvdVy0WyUfdQJI92v9tcDfJGoJpLACshqgB5xNAaaOykciM9mTfRNMCWt
         9FvD71ry4zOQ2/RJsaZIwoe6J5dAWhZT0tX0U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774330248; x=1774935048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WE9EB/AJhGsAQ2IQOKEBwLjZmu9qCQYkTkw3Ul7ABII=;
        b=huVRVfWmG5Yjo3UromTN4QN4ft4n9yjzc0B5MrM/WbJpFSSBwGxAoVp5TAVC7XgxbD
         GQU/FDZ4GU/MSyU7CuFoiWyJux7c57PR+lNAkXnzEfCl+GM1khkGvjCc4Tp7rFKa2xGJ
         dcXRv8C0gMhLeZ8r1DBvH36uzH1uvE4nKiB4AKutgfzYttImuMbzXw4hqyyVTKT8BMWa
         6EijTEMAYasdL54QL/mOhzTrAQIJvCFZDcw4RzYVVfnzS3GUOQlI9J1IDDO+EWKvWVbD
         02eo1YM29gBzxaR6GuKuOcCcidwX8Yykt1wRi6gOFXlANBITTgu1pIOaL81jDNtzTM4d
         0Rvw==
X-Forwarded-Encrypted: i=1; AJvYcCUW+6Vvl0BZjwvnYtNP71m2/SnOjJ62SAkdIE4z3D+UTwQ/GHFn3A2+wEIu5ujhIfNxbn0mxFd2tjVW@vger.kernel.org
X-Gm-Message-State: AOJu0YwjWCkaPqwKVN9hCTbT+DGi3cEJMOayG2lhePUhG2jO+CbLSNwJ
	9GIkAB3X4a2FkaX/w+tv7Gtm8aim8FiQfcqBB5e3sqPRgQ71PVnEh4kmdO0vPtRLtA==
X-Gm-Gg: ATEYQzxKUq2oOcqf+Dw0gJHc0muwgBlJDuvJuYipTdgljP7+/JRINzbs5ywpE053E8a
	Ly+IIFN+pSG326N454DoFIUd59gpTuTZ+eiHyrN419ZPSTqXfRp/qiaGc3C9FwHOsQsrLvDvFqT
	f6aNTPYQ3wFollBbH6wM/OSvSixYRJ18sgbkAx7qwVPYGQ2qA2GIL2jV1Ra/kSG5A4dodpBp8iY
	cQS2WcMHJJTKnJdVXHnuGFKHxw2Nzfmlra15q0rG9UQH/ysS/k+Tqf1Jp4srCYP5cK8Yxg7w7j/
	tvJ6Z/GKMkh3ThWxvax3OBYf1nb7usvkVznJqOajd7z3e80lKuqvXEwDTo+EtxffrMNpvxudcZ3
	vmu3Ns4HbT3F55HhC398R36B6vOrKnzPl/lOqljY0uKWLHtJpWxAU0wYrlfO+1fLR//BqnJDs+n
	GMEi3JwacZFtjdMCkttaBPYggyxqVTidZYZnvnky24oBSuSj+c1SsC1PsFTaLOc1tBXWBV7Y6BE
	vs2ZkLq
X-Received: by 2002:a17:90b:2886:b0:35b:ea35:c3ce with SMTP id 98e67ed59e1d1-35bea35c476mr6485875a91.27.1774330247814;
        Mon, 23 Mar 2026 22:30:47 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:19a5:8f2f:d584:8078])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35c03211351sm953507a91.15.2026.03.23.22.30.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 22:30:47 -0700 (PDT)
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
Subject: [PATCH RESEND 1/2] regulator: dt-bindings: mt6315: Add regulator supplies
Date: Tue, 24 Mar 2026 13:30:28 +0800
Message-ID: <20260324053030.4077453-2-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.983.g0bb29b3bc5-goog
In-Reply-To: <20260324053030.4077453-1-wenst@chromium.org>
References: <20260324053030.4077453-1-wenst@chromium.org>
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
	TAGGED_FROM(0.00)[bounces-279571-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:dkim,chromium.org:email,chromium.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D9518302490
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The MT6315 family of PMICs has 4 buck regulators. Each regulator has a
separate supply.

Add these supplies to the device tree binding.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../bindings/regulator/mt6315-regulator.yaml        | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/mt6315-regulator.yaml b/Documentation/devicetree/bindings/regulator/mt6315-regulator.yaml
index fa6743bb269d..ba99a0d02bc7 100644
--- a/Documentation/devicetree/bindings/regulator/mt6315-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/mt6315-regulator.yaml
@@ -29,6 +29,16 @@ properties:
     type: object
     description: List of regulators and its properties
 
+    properties:
+      pvdd1-supply:
+        description: Supply for vbuck1
+      pvdd2-supply:
+        description: Supply for vbuck2
+      pvdd3-supply:
+        description: Supply for vbuck3
+      pvdd4-supply:
+        description: Supply for vbuck4
+
     patternProperties:
       "^vbuck[1-4]$":
         type: object
@@ -51,6 +61,9 @@ examples:
       reg = <0x6 0>;
 
       regulators {
+        pvdd1-supply = <&pp4200_z2>;
+        pvdd3-supply = <&pp4200_z2>;
+
         vbuck1 {
           regulator-min-microvolt = <300000>;
           regulator-max-microvolt = <1193750>;
-- 
2.53.0.983.g0bb29b3bc5-goog


