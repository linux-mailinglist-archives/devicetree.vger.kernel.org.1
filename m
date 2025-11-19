Return-Path: <devicetree+bounces-240395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FCCC70B3A
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 19:53:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1B7AA4E4424
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 18:47:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 263062512FF;
	Wed, 19 Nov 2025 18:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="itnFfpwf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6C633A6FC
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 18:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763578058; cv=none; b=Xa16camjIUgZItdSmsXB7lyXyuSVA+GuOu5wF16sKvTDQ3oQUZXDX4IQFd0IRCXEGDz/xPWXCspe8RrK7BZ+lHBE4qp2+dSfqCySWKtpQXRXtjLCFcjIQH23jM8mpls+PuP2RZiZ8gOodY3i5ZtTUhVoHkmg7wc0WACpI2s4Bx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763578058; c=relaxed/simple;
	bh=1VU8vez7VAT++QNZEEkDasqzO4N4y/rnpDpzft4h/pQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Zv13K6NwhKqH3t6LRnG7udhxO1DAVpGBXikX3gduM40WMuoo/kiFhL/BpGU8Pfz/YpeOLajFaswXWM69Af+H1HwOTj6aSOgY7GSwzv3gpqcBZCwZHIgQz07soyqC4jURZQG5HbB3jm+ll7M6LW2LRO16Sw/bsX8vTtZH3I9YHBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=itnFfpwf; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47755a7652eso696775e9.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 10:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763578049; x=1764182849; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A83IouDszoOM4nYAvaeRYh1AjY1berYJB856i9pOeQQ=;
        b=itnFfpwfa3JcijLUSHrXO8GJExmWS97VaR57kpB1bf2QtkcCiizOExBezGaoLVsOB5
         WiaHiZhAWrP3imFu+dc4+4g6689srY2kUJ1qau/ifvYgNlEztmBCO4peuw33rnN8XdOp
         1BOYok1f6e4c/YOJRK884JUV4vNL6FfgofocVtwSNBKKn7alyZrLJkU6ceplL0jnR9Wp
         HA7XdQQGDE7edayBrnJF7Iwcxq7aM1B7oIQvKv3UcMwdwMhOIBD/ZWoBwCzs0Rv16qmV
         PZ5ntUUCx2i2cZ2rSK9b1aufY5lOVeK78nwnLH/WVejemPCsXrbcubcaX3qUWKLicazR
         mqkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763578049; x=1764182849;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A83IouDszoOM4nYAvaeRYh1AjY1berYJB856i9pOeQQ=;
        b=D/2zJVoTqMLVrz9yrPmWfDdr/3RtNRlPUvBuq8x2Ar7mjd3gao6zVlqQdSqYx5sxS/
         lt1u1CHiFksTUW2oZK51CZad9w9bBsL0Y5GxayBbeoAqpcMAIWQ6ZSurU9/R4UwDjSz8
         HM2rwJd2eW4zeu5Fyt6+3EmKpMxssm9tZQ/NwEscObH0366cbgdrgg9jlb67mQ/IDGFx
         9HznO2z6Rvkvwjc+KsQMtHEqTht8b+CdQ60XGBKomw1drBqpvCzEKxLcNf1/o6cLJlce
         0uaQLl/kpGVliASMQ0z3kPhLdAIwtgfhkd6b+zLAip2WIU8bRA/O67wIbT6/PbzNeHqz
         zI0g==
X-Forwarded-Encrypted: i=1; AJvYcCWbYOthAcK3y6BJ/WoiVHcOsLkl6unEc89OBAiuiSLM40S4jNwC5Dkxrom6O4h8o5XwiEiWYojGZFj6@vger.kernel.org
X-Gm-Message-State: AOJu0YwTyARyjlK8agaRZpMSKBQ7jy+RINhl/rOsKwfHcD37sgaq6do4
	qRSBbo10io/yJLt2nh+p8Zpm8q7eGr4nE/JfvpGPf0XX1rO/RA5VvtZW
X-Gm-Gg: ASbGncvnTeD+oakFWK7mmZOdmS7KSP0FQm7ckVhD7ndksLgw65KoFsT/vru80Wj4dgK
	8hClfYUDoWDpt6XD1wT6WQpjmCKuR8zJehXl8x6p2TLkNpEZZRUcDffkE9VFAfiUPOqRD4Gw113
	S0LqlobLG8MwWUK9Q+oxnKtTPNJXHaKrMb8/RVXUlp0rOcGRtduB/lBngr6NfKTiOUPn5jDtx5t
	0b2sH8c394Fovxjv0lILgFf4kGmKj+D1qdLbgH9kIYHhBNcCjq6gXXHP8kzY4uqjL5e5pwR2Iz9
	AXobgZt0DUzT12f/ypIERW1FTn26oaH7EEtWDhGl1vcjFSjBS5Kzapb8nvEZ0oLWoUQdBP0+XhN
	jv2+KVLYX7O9GOGkddfKWe5G88GH0OWmxgxT9RCQJnxyaMRGtufrMLI7ITvlZuDbvNEgFSyV+4F
	xP/a3J0n9MKXHEWVwT43fPbookNB6mUGNfzdx3qt2HFA43SDat5u/scCRrYrXhJc/d8eXz34JDj
	dQ9it9t74xsPeR6DopVk7Zm
X-Google-Smtp-Source: AGHT+IFROQbeM4xEw/+SN2gJ+GHD1xZYoJk0VErnDEBIQaVp+K4Ys8C5aaRCpGFODkSNEgs1i26mpA==
X-Received: by 2002:a05:600c:1550:b0:477:b0b9:3131 with SMTP id 5b1f17b1804b1-477b8951fe9mr2833495e9.8.1763578048520;
        Wed, 19 Nov 2025 10:47:28 -0800 (PST)
Received: from iris-Ian.fritz.box (p200300eb5f27c400b58af32dfc3cbd97.dip0.t-ipconnect.de. [2003:eb:5f27:c400:b58a:f32d:fc3c:bd97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b82e8ea6sm4909795e9.8.2025.11.19.10.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 10:47:28 -0800 (PST)
From: iansdannapel@gmail.com
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-fpga@vger.kernel.org,
	mdf@kernel.org,
	yilun.xu@intel.com,
	trix@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	kever.yang@rock-chips.com,
	dev@kael-k.io,
	iansdannapel@gmail.com
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Alexander Dahl <ada@thorsis.com>
Subject: [PATCH v5 1/3] dt-bindings: vendor-prefix: Add prefix for Efinix, Inc.
Date: Wed, 19 Nov 2025 19:47:04 +0100
Message-ID: <20251119184708.566461-2-iansdannapel@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119184708.566461-1-iansdannapel@gmail.com>
References: <20251119184708.566461-1-iansdannapel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ian Dannapel <iansdannapel@gmail.com>

Add entry for Efinix, Inc. (https://www.efinixinc.com/)

Signed-off-by: Ian Dannapel <iansdannapel@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Alexander Dahl <ada@thorsis.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d1882009ba..afe41267df32 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -469,6 +469,8 @@ patternProperties:
     description: Emtop Embedded Solutions
   "^eeti,.*":
     description: eGalax_eMPIA Technology Inc
+  "^efinix,.*":
+    description: Efinix, Inc.
   "^egnite,.*":
     description: egnite GmbH
   "^einfochips,.*":
-- 
2.43.0


