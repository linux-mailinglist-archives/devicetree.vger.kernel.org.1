Return-Path: <devicetree+bounces-258138-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WE8lKYBJcWn2fgAAu9opvQ
	(envelope-from <devicetree+bounces-258138-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:47:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9825E40D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:47:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8F79A76E34A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 21:42:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C28D0438FF6;
	Wed, 21 Jan 2026 21:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VuSAm1U6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73DBD436366
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 21:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769031729; cv=none; b=oJSG6YIC5ipnfUC67aCYzZJ8lxPQ1DSiPdiBpif1Ze5OintRz2xm2AswO/dTMwBi5Rqq0uUToA4Jkn64YP6JFyu0DVyBllxdQfk4kDYEetZhB3fc388jOWNxTEWtnCdiIIPEs7DPv4sJ8Z+PaXO0bMMm3po4Gfu4fHbTpdHdYMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769031729; c=relaxed/simple;
	bh=GZnPKOTa1HqnzuYZeMPLeyCydNQCmNfziboE4iAektc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=itHYe0B8mQxnZuHu4ersHiY4qj6fgjl62fTTIB7fh4hzVZM11uF6vuq3pgmA4yGMpeva3TPlXn9iYkULV2FJRGvtcfrDc9djGuyjNPIVff8tydEaY7f/s2NwJFsJ+lyJjSHyYR6pzPB4gHNerQZCRIiHz0MeUmVwQDW6RxvYtxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VuSAm1U6; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4801d7c72a5so2374055e9.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 13:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769031725; x=1769636525; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sOzxOEsKJTSa9ITustjB7WD7pn8Z4/rVt4c+7xkqZK8=;
        b=VuSAm1U64NJQdNfMnHDMY18uTDhX/c5JryF0ORORbCXHjQUs5qkw6EZW4SWUSXeDcA
         +08SY90/Q4MtxqZPL9eZTKCuzlAUZ7aZXBUG+4GfM9Tl3fBJ6R4YAkuQ4W0DNf3v9fvN
         lKX5QUkDdXUvPIV4EGy26xu6CoB7jXUD1NYy2bwNeCB6X/OIpsJUNeL7AO59SCHUY0Jk
         GAdPkMgJWoLbWzJxzmEb1Kihc/Um8A3W2n/gUmGiBfT0jGgrx9uiUqTAZLjz8R1lKW5o
         bz1Sk24k6OOmp9dY/k8CbfUrmgJRHhXNyG93E2EETRKHtO4QPFWc+9MVjLhzbjACc8YN
         Bflg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769031725; x=1769636525;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sOzxOEsKJTSa9ITustjB7WD7pn8Z4/rVt4c+7xkqZK8=;
        b=vc25EpjSz8GNOmR4PwwDG4wZKQ+edlgPfIsuqbWUWv/qnK1esDUnaaRee4eQWptJvG
         b3lcBwNEYf6d79ij2JkuJoTGNUxIsmSjJ8VJD61ligr9nQVF1WHikLFnfiJybizSq9y4
         nl/WZ6eNoFRPXwjrJi9jmVyvF9JoJUHC90Rc/SX4P1u29kErOZlSu/HA2birumXq3Vy5
         MgF9fA6nMkIz4D++Dq/wenQl71zY0BkIntgvVHp4H/IbpHhpuk/PXsxcTJ+abFFRkWuf
         3aj+DDvOw6bT2eHQbVqENmxgTBrZjAjIMmr6p+ZA9ihYQgZINhvUyGyNdxEHVgjgfeD5
         EC3Q==
X-Gm-Message-State: AOJu0YwznC/ql5i/BpC6qY6pVBe7RniMiNxoDQw4LyVW/MWl3i1b+Zur
	F5X5LyYKmnJFR5Uh9YSBw7dFqOsG9qESh4Yx2DmLSRB9mq5MSmY+cl19
X-Gm-Gg: AZuq6aKEanfEPz+sZqSa69AAYC1UlOFb12yPYgI8NHm3xgT0/CnS9apkCqHMUa5ccJY
	8jHaB6ZN5V/+9Lh6MFOa2yrku5mjhxThb9XTZNThf/cjomKGej4F3oRJeaTk+7tDAUjGgnEfgyI
	TqWknF4npPYbUNicRPtRnR6VhD03Sv/mes85zd2U34KACnGilsezDvN/LFxzQn3aBj5WrVthwTc
	KaQYE/WiJPVZlFfwOcOAC8T9u2yhZohLZ3oRoPWKI8y/0SrYnIY6uSyrseEz9xiAJELDWYvmk02
	u/zilkKEvrgolM1+A/Grekc9YYSEfX4oTpzqUFG2S1j8NPH6New63CDZQyz7DmNwHQjHCTc8s2M
	PVn45KTTYWNuPFrA8Fq4c7uvX7v7xKiGGCW6JbTAhvdEIGyKOtvSqi8wQxHRnXFBh9/SbTtLz57
	iFwNRgro0NuMGR5lO+QzIptU9L
X-Received: by 2002:a05:600c:811a:b0:480:1dc6:2686 with SMTP id 5b1f17b1804b1-4801eac0cfcmr225401275e9.13.1769031725266;
        Wed, 21 Jan 2026 13:42:05 -0800 (PST)
Received: from unknown.tail46804.ts.net ([78.209.83.30])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-43569926ffcsm38351929f8f.18.2026.01.21.13.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 13:42:04 -0800 (PST)
From: Gianluca Boiano <morf3089@gmail.com>
To: linux-input@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	krzk@kernel.org,
	dmitry.torokhov@gmail.com,
	Gianluca Boiano <morf3089@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: input: novatek,nvt-ts: Add nt36672a-e7t-ts compatible
Date: Wed, 21 Jan 2026 22:41:39 +0100
Message-ID: <20260121214141.36858-2-morf3089@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260121214141.36858-1-morf3089@gmail.com>
References: <20260120193600.1089458-1-morf3089@gmail.com>
 <20260121214141.36858-1-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_FROM(0.00)[bounces-258138-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCVD_COUNT_FIVE(0.00)[5];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 4A9825E40D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add compatible string for the Novatek NT36672A e7t touchscreen variant
found on the Xiaomi Redmi Note 6 Pro (tulip).

This variant uses different chip parameters compared to the standard
NT36672A, specifically a different wake_type value.

Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
---
 .../devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml b/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml
index bd6a60486d1f..aaa9976bd65e 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml
@@ -17,6 +17,7 @@ properties:
     enum:
       - novatek,nt11205-ts
       - novatek,nt36672a-ts
+      - novatek,nt36672a-e7t-ts
 
   reg:
     maxItems: 1
-- 
2.52.0


