Return-Path: <devicetree+bounces-217552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD3DB582D7
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 19:09:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9DF42A2401
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 17:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9571F27FD6D;
	Mon, 15 Sep 2025 17:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gtxXbx+7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03081B0F23
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 17:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757956109; cv=none; b=sHrMbRqeEBkKFElgBNQ/ucXi0VHw1iFb5jFoIEeVpSKlWVAoLGhqiBfCafdBHAXdNl7fH5K0PKDynyFdKqKG4YIzQhFY6luGQPcrh2FqidR89tccY34MBf2hb+jwxiuuPW/Wp6nLbTwDSjFezZdUPYD57k9SvHD8l15vFiMwpMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757956109; c=relaxed/simple;
	bh=6/3PflTmrV9uSqqc+QMoNPcCJMQr4fm8X+Go430Uko4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lafDaJE2yEEYyP2/i9eWi1u5662kbaAp8JENf/w4YZ/twA7/Fa2V/CyjfSGEUlelwMXZF9kcdJo/R/YN4EVZREmHxzo62WyfUkxihTYMp2wItuhdRjPG4ddGShO8HF6stiE74IyIpbYHMVMuIgUSdkia/ogDhNvbK8rEbPBvzag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gtxXbx+7; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45f2cf99bbbso9099055e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757956106; x=1758560906; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QKNfUY78UaSDAPVosHrpMbpy+iAC7g79ni69WixhiFc=;
        b=gtxXbx+74NAL1mRQyYbHL8sy1BmDXBgvn1GT24jfIVcF9NjgaHVRYjDjG2QOXGYSB4
         RSxA1VSmhycFBaNiMxxu4o+J54LiiKO9OIAABQ81IzfoR/8afyOB4HaqHEYDM2pNkNP/
         E+Z9Ee4KRtCOh8vyj2e1kYKZMnqIAcSrVCd7m2jHgzkS6v3W46SpEN7HquyQPs3vIZhk
         AHlTvQDCKXZHocPgaaEpc53UFffadM95FZGAeEBwXpbdZyX/jnLRlsU6OqBKgLRt11K1
         UA10w9ZU2ob5azk9aaHZxpp/aoaK6cMwUmI/usP+47wFSubgXFb6wEON1MhlTwsUhpQw
         lrRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757956106; x=1758560906;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QKNfUY78UaSDAPVosHrpMbpy+iAC7g79ni69WixhiFc=;
        b=bCxpypwepxniR6mqkAyzMM7/7B8nVrKbm30pKZoSoyl1BORc4ahEkz35IRpvCy4mYX
         n+Tqr+XV95wounlZYTsthMLhifW5faZB2mDQtfl+c2rgwIHRXBmio+/SJVwXaddY407L
         rI8/08p7O3GZUr35ccxhBQDqPnqbVn+NC939EDt0a3QgHRs0iHgOsa/Y4NgWBDQ3Gz5Y
         rp9vZS5mDyFZvjJ8hHGsvfC9G2e85h7SMGlDtF7Ce+/CrQ1FKB2ofIXiTLOssuJf6Z+c
         C9FOZAuaMVl8bE0cMy97L3xwMuZwOykvxuaLqD7+VkRkKeHxTTupuOYZsW3C4QOgun/y
         ZSLg==
X-Forwarded-Encrypted: i=1; AJvYcCVjk739rYw0BWwXCJq3UwZVnZigqMTPbguVLQUnp3X49sOe7a9i/qWoMFQhh+EBgbL8dDD8sOO4izUY@vger.kernel.org
X-Gm-Message-State: AOJu0YwoPQn2zAu8LOth7evyCKnMMX1+4dDZS9tkh4BU0S/oeGHLCrkT
	5HnuuO/UYxGHVWm3wqw2qTkGUOCkA07ORSW4H1KSeQqYQWkVmmLS8vayQHz7YLae
X-Gm-Gg: ASbGncvbl+vYUF9WQy8sGHhGLASZpOCLHa9PetN2zzecsGuOCIIcbctFA9ow2c9dCkc
	92COPx1h34129coX96B4FChgfaJZwDLIe66Rl7sGbnsQN5tFSuO4KCuaCMF5uZKEqgxvzPDq+SK
	4X+ezPIZOUfxaNbS7ZP0fqTeha8TJqmQFYf7zByWFgtwy7YQ7wt9+kBaU3cm5nF9rlNCgllZ6T6
	TdJDddgbDS6fNQljdYVUQ0uCYPXpfK6nckiwMQC4BF/hOY4+TuLcK8jB9FKILRbKl24BfErxeZw
	c6R3tL6UjdAG0xvgyLRQxhrri9iXDtGSBxtbE0Y6uTztkybH6IqMYnDJDTEtFmIdPN8Pq4NwY9Y
	hrxP+wT/HLdxKSvUMCTllS1O0sFHD2VOoJ/YkmZuWswxhr5ydWTB+qeXIdoLdBNT31sDXPQ==
X-Google-Smtp-Source: AGHT+IE+G13sfmVz9goh550EgB9md8VuCM2m11aMEfOcLfVAOWhOadBKdJLLzNbmapPvAfQb9eUrpw==
X-Received: by 2002:a05:6000:2212:b0:3e7:471c:b11a with SMTP id ffacd0b85a97d-3e7659c44d9mr9235744f8f.19.1757956105745;
        Mon, 15 Sep 2025 10:08:25 -0700 (PDT)
Received: from flaviu-Aspire-E5-572G.. ([5.15.80.80])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7d369ea3bsm13146383f8f.0.2025.09.15.10.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 10:08:25 -0700 (PDT)
From: Flaviu Nistor <flaviu.nistor@gmail.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Flaviu Nistor <flaviu.nistor@gmail.com>
Subject: [PATCH 1/2] dt-bindings: hwmon: tmp102: Add TMP110 and TMP113 devices
Date: Mon, 15 Sep 2025 20:08:18 +0300
Message-ID: <20250915170819.126668-1-flaviu.nistor@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible string for TMP110 and TMP113 devices.

Signed-off-by: Flaviu Nistor <flaviu.nistor@gmail.com>
---
 Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml b/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml
index 96b2e4969f78..840b5306a8cf 100644
--- a/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml
+++ b/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml
@@ -13,6 +13,8 @@ properties:
   compatible:
     enum:
       - ti,tmp102
+      - ti,tmp110
+      - ti,tmp113
 
   interrupts:
     maxItems: 1
-- 
2.43.0


