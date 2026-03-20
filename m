Return-Path: <devicetree+bounces-278088-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MNEGUf2vGkt5AIAu9opvQ
	(envelope-from <devicetree+bounces-278088-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:24:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2AB2D6916
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:24:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6C8B300F113
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:23:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8571635B62D;
	Fri, 20 Mar 2026 07:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Yc/7VEfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F3735A3BA
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773991396; cv=none; b=kVcyk8SHxyaBlmTk94vLF7bE6q+iUdW3gMNqdojfj2BB/LOcCyk3BviRJhrUV1QzZCwTjeZLISMmrFVLVTHM2ZSrNN1GP4UJ4MLZloYu61KpDDci56HNoY7sE/5oEPhI2srAk6arqHSuFZYz9sED1RAadTKS44N6WY4B1lO4UDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773991396; c=relaxed/simple;
	bh=VuVzVYYh8c7OkUtvUeysGuXqwW1qfppzF989IL1pci8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L7bkPP+ZPGtXxlYotGmCo6axqiaTxoesBHLHju8PaXkH/rIV8432kEikcIR3gaPieBdzCL5Y02nXe44rXPSQH2on1z4zWNffsJdwxbX+8g6hNCt3ohqJhVzRHzf1YOvUuBSqlkyCMg3eRtjmpLmzuNCttiqu9FfIffSQBgjRtRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Yc/7VEfy; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2aecc6b0861so9879865ad.2
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 00:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773991395; x=1774596195; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YEgOavc24y3yXgmY3844+Rp4FHSMH9wftfFqZIYfiP8=;
        b=Yc/7VEfyQCHzlXeOVL8WeXJvA7NffMhCPuZVB8tYRpkk/d4eswpFVakEWgphlHlQEF
         ufFky1TltbrzelsjtjwYbIsyxlMbQw+9LVtP+rWXjpzDNTVE/yI6IdkUxNkIp4vfPrrJ
         Mqf+UFR1DwAhsXQbV4fcOdabF3f0y6wyRAEJU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773991395; x=1774596195;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YEgOavc24y3yXgmY3844+Rp4FHSMH9wftfFqZIYfiP8=;
        b=FoZRzZiskNFDvMfOjtsNQiIrQHSF3/8ut7dP9qbWOsZmmO8m9fbbHyeVUwvAOxg+Co
         7+zcVTs/bfDNFOkfz/EQZPDwx5YNXaSaUoJ3eJ8XZU3rW0El3B3d+CGPMHU4/CJeYE0k
         IK741yo7XuIELDBYAvMFPfy4eSJHbIz8WdM+0766omfFelY1rHtsEsPqeaGlJ2kssPd4
         CuE31A7kRZI3PrFAAi3YDuyLE5EhzYadukf6OKqgPuTkKDGsGRs71SrHsMCGJd7+Kb0x
         3bdLd1N2CQSqxvnXCYCHW4C/K7+jzqoW0SAollSvlVY60Qz1aOQ3CHdoMVMEO8cLJ0oK
         Xnag==
X-Forwarded-Encrypted: i=1; AJvYcCV956FOQSi4wz5ILJZcU4HRa8MS0CtzvxTbpPciJ3BgkT94tR0LAjzOvRM1UnkljqQzIbGLse3mlfde@vger.kernel.org
X-Gm-Message-State: AOJu0YwDAHKdERIriurSlXz3GX5FNG8RrsJhHer/yQQtT+rl+s4JwxZ5
	1hT0hOqe975QlqeIUjwSRxh8grajRXXvPcnhlhNUk2LoKgqhdJP/8UYVJ9lZJns+NQ==
X-Gm-Gg: ATEYQzzO0l6FDYi6hhw/ukEbKHjQDtfOKzy4zGbcksoDDCdpn9zhQqszX1dMqhlu2r7
	4d2SqmbzUljXSQ+csS7OwO67USj2w1xx1zxEAnIYvwEL1iZKuhiR4zflH/n9QLxY1OCfawI1qX8
	ShBMtmEXsz1b8HUJDQWO69noJ+tkfNDFgLFL67+g5KzIICxeJEgI5yMH7whqgmS4e5NTjGGHgR+
	IwSBTRlA9pl39tIrIvWrbGjg5o1f/TnT6cbKllNh6fbZCtB/FqU6s38ZdO46iN8FVLa/jPyJrsg
	SuYsaViU6jFMz04Ls2Df+KZXf5W8n057/IXy3CM9sAzuZXaM9dYrEpxFHisvfMCDQJUE3OyAb6J
	HlhhNd6ErnvZzGx7jSg8THI8bywSDuXiZvV2LA/gbuBfSJ4exDjO3XSQfsr2Y23qJl81JCHcPHn
	Wkq4FJX7gcCKxdz6cJ/NGCAYRTC0eEeRP9ALfb23q+OyAqE9hMOOqa1K5Q3xePvBZgAiRsyUIPv
	vzkXG6Q
X-Received: by 2002:a17:902:f690:b0:2ae:803e:6c0d with SMTP id d9443c01a7336-2b082764904mr20104645ad.19.1773991394782;
        Fri, 20 Mar 2026 00:23:14 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b083516b96sm16728365ad.7.2026.03.20.00.23.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 00:23:14 -0700 (PDT)
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
Subject: [PATCH 1/2] regulator: dt-bindings: mt6315: Add regulator supplies
Date: Fri, 20 Mar 2026 15:23:00 +0800
Message-ID: <20260320072302.2402489-2-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260320072302.2402489-1-wenst@chromium.org>
References: <20260320072302.2402489-1-wenst@chromium.org>
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
	TAGGED_FROM(0.00)[bounces-278088-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0D2AB2D6916
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
2.53.0.959.g497ff81fa9-goog


