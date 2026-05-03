Return-Path: <devicetree+bounces-292440-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eC6IJuCf92lJjwIAu9opvQ
	(envelope-from <devicetree+bounces-292440-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 03 May 2026 21:20:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F244B71A6
	for <lists+devicetree@lfdr.de>; Sun, 03 May 2026 21:19:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CC64301E6C4
	for <lists+devicetree@lfdr.de>; Sun,  3 May 2026 19:18:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14F0D3A6EFB;
	Sun,  3 May 2026 19:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="drChrhXl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571473A641E
	for <devicetree@vger.kernel.org>; Sun,  3 May 2026 19:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777835936; cv=none; b=NbxAsMWyTa3Cse2phJA4CKfxS3yTIFlXMHyJG+JGOBWymqw+gH/lhoNWur4eb1bwNAlfIjmGv3ktrcCDgMkfIZL6jR/Od0QUZMkPgZKrowidxTaa2qCq9q7cC+RjMND7irNQdr7yEPm/bW5JsQH41x/ea/AhD5VEMnpNsMXw7a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777835936; c=relaxed/simple;
	bh=RMk1uYRIF1auQutDTrWqs+polxCyDFdCZCiQBLGEn1w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X6GYdw8jc1toF4pbePreqavr96CnHy6lnfCuE4OORU85lMG8WeAoHdK/1HfrKGOhwvkLlXVI1l00HF8zGU1fRSLqqzNKEtAv2DpMrafGKUCv6LlHGQ0WxAaRL3exP/i6mUBpTBywLotmwMEAOp0BhAO8gIdN0Y8vwEFekVvM1Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=drChrhXl; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-483487335c2so35326845e9.2
        for <devicetree@vger.kernel.org>; Sun, 03 May 2026 12:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777835933; x=1778440733; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/UHe+LlrtosdhK09gGgG/VkpYFGnEvDBwqP4aIDrGEg=;
        b=drChrhXlKWu3N7KiKgOpDHCiXBlCGhfpSVI3Rnn+FBABGPtbEzD4JT0fUhzPythPLt
         XQeWbCguULZsNHqaztqszf7GUmq+f+aZReQQyxDTCBV4a6YqiQt+YyGZPtgsEC1TCGdj
         RhLAhUEEFMUYqxPkp4/54JsZnF/jHL6eUOZ3KjWNK+Ce7gtiT5zsMr46KppExW2538oa
         CysY4LwTn9DwHFH38A4R4M6azQ/mTHxjY1+akzg2PqM4LWRW7wrrDLf9RsxCC8xpSanr
         psX7JSIQOV5FpiL54NKg6c2D6HKqQ5zxfzMnf7kKWZSyV2MrqPPUn2XpuMfqCef5Rs2l
         gpjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777835933; x=1778440733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/UHe+LlrtosdhK09gGgG/VkpYFGnEvDBwqP4aIDrGEg=;
        b=UelycR/5IQdxuvOwe8DMNsD1VZ05fQcyDW8VXUaARFh+B10T18qfNqPhQLdijdQzDP
         IUtW/hPguy6SHwU2QAqj9fF6gqLwrbQ589LamwRLtD+4AvEP0MjQQsqpnzMwqIjRO+pv
         OfTXME5AdpTzYK0GrhN9I/u8MKCYE/8ByhT/wNGDo3U3LCFf5CThMFNCqLs6N5TiIr94
         jpLifUwpUQ4WIgOx8zqQLMiGhCq0QFROaw/QfExqifn8AISJXc4QePFUPUZZugb9LVGo
         3+goTP5AcVxgelTw8w1WFFO7MgRaiuPMDR7gjHyHO94p7Pbr124mahTm1+lgnprt4D5b
         UfOA==
X-Forwarded-Encrypted: i=1; AFNElJ/JQ6pVgU93NfpfkElUsJFcE6PX8wn5TakuDbNEWM4nYAjJGSzvwr/Is+hMfMKMbPx/keM9LDgC2OoN@vger.kernel.org
X-Gm-Message-State: AOJu0YwgMTFDLNbbdS0xV4pBnUpR4qCGu9Pgdx5v8Rq5h1XVJAWyWty2
	Pq/tDHgnw5cTP+QfzHc9BJwkYElzkRu2q/5PAH45XBI/n8tjgDJHkiVY
X-Gm-Gg: AeBDiesTIUWBGtfctEUQFqSReeMMpG5Q/mhWKoK1STGiBQpbTBYBwqa3zHoNxN5t660
	tWexA5mlUrYn4gmZ7ez6YmW4KqdtgoCo+bOsL3dt2mLGBiel51kGQE202q+bXuajtVokcvYu1JX
	VDs24hSfrSNaLHRmNn6RCXCA/8HFTA+PhCQ+BLgDYjbpm0tlyYVzbJeFuvBYqGsenxKOUMAlF5G
	aiytF22lCsbjVDVkJVX0fKMBqaei7f45KYowqtjWbztRvBIqHAnYrWM0SmIQhKEr5UuHbNAHaQI
	PPlZtXvbH9oVjpF0kowBKf0+rFr8mvHVdJcVr4fdr2qSr2pzK0A+G+t3mTiJwUpZmrtKNMl7xhZ
	HrbRtfItbu3k+O/wgSeJvstEzl2SqXOuYxlHABBue7XB0K3v/ZRy0kV9W7PMODFosO9woC5q4Ek
	o3J32HrGe2hlP1jwQqDn1wrjGHmgHbnsn9yuaWF/twmAQvI8USPSfMIiNfZuZBLXBE6ya4YYk6+
	g==
X-Received: by 2002:a05:600c:a590:b0:48d:5e7:a5b4 with SMTP id 5b1f17b1804b1-48d05e7afb7mr22018905e9.23.1777835932707;
        Sun, 03 May 2026 12:18:52 -0700 (PDT)
Received: from localhost.localdomain ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a8fe928f6sm62230925e9.6.2026.05.03.12.18.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 May 2026 12:18:52 -0700 (PDT)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: arm: sunxi: Add Baijie HelperBoard A133 compatible
Date: Sun,  3 May 2026 21:18:37 +0200
Message-ID: <20260503191842.2736130-3-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260503191842.2736130-1-alexander.sverdlin@gmail.com>
References: <20260503191842.2736130-1-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 34F244B71A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,sholland.org,arm.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292440-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandersverdlin@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

Baijie HelperBoard A133 is a development board around their A133 Core
board.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index e6443c266fa1..52b42779a283 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -96,6 +96,11 @@ properties:
           - const: allwinner,ba10-tvbox
           - const: allwinner,sun4i-a10
 
+      - description: Baijie Helper A133
+        items:
+          - const: baijie,helper-a133
+          - const: allwinner,sun50i-a100
+
       - description: BananaPi
         items:
           - const: lemaker,bananapi
-- 
2.53.0


