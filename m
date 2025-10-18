Return-Path: <devicetree+bounces-228376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E59BECF48
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 14:14:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E20C3AEBF0
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 12:13:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C25A2FC02C;
	Sat, 18 Oct 2025 12:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AOwblmpZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C178F2D781E
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 12:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760789533; cv=none; b=I9U6c7TTGmtzjGR8pAYiWBFwWACEK2uDbm1j7nagZbkJ5jOO1sNI46x9duilP+a3W4px99esvLm572LL9Q76oYVBlbSoHtufxa9UMddNSNPhGI4ITPglX3EXl3+xtvkb8/OmCSKKKmOrWfTCt8Cf8S+ZL3Y4EqvxKK+c6RoxjJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760789533; c=relaxed/simple;
	bh=DgZps663UDZN5epdnEzCbjtCIn6+YBKEMEwNs6f1LhI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AMwuJcWTLYfvz5LiVAyhmJCPP22eLdhD2JWpXQ5KtouNA4+MG0O53pIaiUHOx4j5hricA/j4tnyaTIHYs8CqNrKnGkXQvLHKgVW32hovLbyUZDJaoYXFnFXvjWhX9JYZwU1mwhuC6qg1E52mg0y8e5hSmhPtx0o+FX5heHOXhn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AOwblmpZ; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-426ff579fbeso322011f8f.0
        for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 05:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760789529; x=1761394329; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZxpK3WEFRP24pO6er2HLu1PilAUDMnnv6oX193o3fM4=;
        b=AOwblmpZ/IcleGqeSoXhSL4y5BNIMc0z3QsztL141FAs0pEWD3wrayU7YgKS00yUay
         lIjOMkAQvK09w16r3npYGEyAAcsa0PS4yTqupkmOsHqXilCC/c6ciS+vvp/b72AhnXRh
         7d79SdCbo+QO0BQWgmpH1JS3E3AEx3xkJkI7hXPVRvojh2ZX+c/Q+JdFPsrcJVeSPdsZ
         JB75vZz32P48t9ty8tQZ4sxSUP5/5NHLK4q7iKl1rDPFBG8brUN6uBoNY6yxYznvFUgI
         nAUKRFsIUkfMOVdsS8kXTeURL+76VOdCA/Lgb11n4KJAIXbU1bUG44j3C/Ek4G5bVGeq
         GJOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760789529; x=1761394329;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZxpK3WEFRP24pO6er2HLu1PilAUDMnnv6oX193o3fM4=;
        b=mxlgF4/q+0mKAE1nrNXuep94pok8VZ6A87PGhKDzafB395I0VSF4BrA0aJ/ZQWVN5G
         3hDQXHrBZUlJ2Z/HGnuxLN3J8QsbkjodPv55svwhlB+dJS1eIFp9mfWzYHrniunBopCY
         fmmmU/PGv1oKawUXTP9QpcoNKQlJe+WmMYZp/iy0IChJZT8tmCATp5ME/tAkT6fnoL08
         VTfMiy/e4LiIn0yOv2zFWOSvxKRzpIxhQqrBIkSQlT63vOHZvp9uOv3U9OuB9kIkr6MC
         H3bv+Eogx1wGL624q7V2ODLenSfG8G2V2WG+TvoMxGs4SAUUHAie/cdkZSD+Y9LUcSgN
         9BSA==
X-Forwarded-Encrypted: i=1; AJvYcCUN+QvyMpNeOuSr63cdk8egIj+ywSRhl2lTPKYiiEzbqgz4SuCgT6p3M6B8meQQ2YU1ZO4cCHeNxqlZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxBgODjNGKiAm9z7LFcHgrVeZnttV7QZYbAp3lYMgWGgIZwU2Zy
	LQrQ/uQ7p1hIi/tbyRyBcnwmPyPbJD12eYeQuX1XP15WpcgsIltd9dzdGNrqe3pv
X-Gm-Gg: ASbGncvcgKKuVOZtqgAyr2kBW5V6EJVfmly5wp/q0WhtTTfoiWj1TOTZN8OSMXYOHLM
	yPvb2JNSqhRh5chkJKZHtjyBJVtQXCeLKMQPOEkNqJxVcePv5ktvwyHqJrPuwXT0gPk2EwIByYz
	DtIYTDn+PsDNZXHY3758yxyw/o0+13m5+xNgPoPoMhqYi6dVqk9N3xpj92ddbhBmphxqo/uQKai
	c25pTF+VaNQKZ/eU/iEu+G+nB0TsstA60V37JpWuXQKaN0RNWjyQKay0zWNGirE2vBvjBVhMaJ7
	KuB9pt7BT+zfo8aUjhlrfwJWXzMRVL/1e9ixmIuxCf+ACrHpcYJiCWWC9Ve+e7GSChxMpP8dBmw
	gycHdxf1UYF82ee5QID4pHjW/yAsFReaSsS41ceDUh4805ydL/DHvji+JOE5CofMYMYGkuAfxx1
	hQBZ2CqCAqIdNd//zStf5zkAs6DsYNoQfSarVira6X
X-Google-Smtp-Source: AGHT+IGC6LKFKhEP+nYqlEkB/aggNqEhJWaEiRHj+L9VYwOXrlGpXchMJU2/J+fkSJXgQUSdUq6mnA==
X-Received: by 2002:a05:600c:3b09:b0:471:152a:e574 with SMTP id 5b1f17b1804b1-471178a4b36mr29997065e9.2.1760789529097;
        Sat, 18 Oct 2025 05:12:09 -0700 (PDT)
Received: from localhost.localdomain (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5a0f19sm4763812f8f.9.2025.10.18.05.12.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Oct 2025 05:12:08 -0700 (PDT)
From: Lothar Rubusch <l.rubusch@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dinguyen@kernel.org,
	martin.petersen@oracle.com,
	pabeni@redhat.com,
	rostedt@goodmis.org,
	bhelgaas@google.com,
	l.rubusch@gmail.com
Cc: arnd@arndb.de,
	matthew.gerlach@altera.com,
	tien.fong.chee@altera.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 08/11] dt-bindings: altera: add Mercury AA1 variants
Date: Sat, 18 Oct 2025 12:11:52 +0000
Message-Id: <20251018121155.7743-9-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251018121155.7743-1-l.rubusch@gmail.com>
References: <20251018121155.7743-1-l.rubusch@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update binding with combined .dts for the Mercury+ PE1, PE3 and ST1
carrier boards with the Mercury+ AA1 SoM.

Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 72cf04b22a08..227665d0016f 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -31,6 +31,9 @@ properties:
       - description: Mercury+ AA1 boards
         items:
           - enum:
+              - enclustra,mercury-aa1-pe1
+              - enclustra,mercury-aa1-pe3
+              - enclustra,mercury-aa1-st1
               - enclustra,mercury-pe1
               - google,chameleon-v3
           - const: enclustra,mercury-aa1
-- 
2.39.5


