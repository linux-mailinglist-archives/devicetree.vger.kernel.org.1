Return-Path: <devicetree+bounces-268669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAL/JIALoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:59:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C3F1A307C
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:59:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2F3413069C49
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:49:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9E9836F411;
	Thu, 26 Feb 2026 08:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G1kEoM65"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0FE2395252
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772095749; cv=none; b=lAKY6Ll3hewzeMR5ez96K9WswYDYIARXHbzsvRd6HOtp9+N5TDuW7XmPiy7jvhxrt2e7Cb7VtoplOwHz0OYqG897oW1arRmHaZrufiivx4dGiYctl7PwpDo3SYLSQmh1vkS9yCnJPK2ngX9JgWdBzF3KudNDi7Z++QbePV/Fbhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772095749; c=relaxed/simple;
	bh=J+cfXIcPGCf4iyDA3lyicBLgipFLT90/RT9Ydsh52BQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KzzvNW/blUDxp5sC9GBHJE3v7LMUi7u/FJzdHi9FqqM47h5yCgFK7guO5YtlqyPGIjMaSbIBroPerYPQdtFKnPW6uq5/yZiKAB0qwaWYG17fnlSV5gTaIMtHikK8v8NRZo97Jux9RjX3vzaU071jEOSiXa1acpXokVaqostJMRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G1kEoM65; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c70e27e2b74so208848a12.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 00:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772095745; x=1772700545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Me6/gMTEz3PAlgU521S5bAkTbmNg6yXoSMbtj++gb3k=;
        b=G1kEoM656moJrH5d4Ny1jAqVxSprhQ3IhEoSH3cbvfcjMFGeuZ6t0+fcrwuXV83QAZ
         VAwgSSX0oJdBYukrf6bGaOXf2oCo9oHCWlwFCFGtk3Q/uMfA2hovctXu/3pvx0vsC4nt
         91PtCjUFbAUGF6Dv9kLFJlntdMU3+xVlWHF4OWd1e/taLGuNlAV+tXqOV3ry98gHuR8D
         BsRnOesfK27PLxgwMfoUU4pC7Sz+GNhAkO/9V57/GwqzSeTCPVTRTmi7VVGg5RKfM2EQ
         TpTo1L0wBWQyANxORa7wqelhw+1hSRXjAv+Iw0XESbOx1VtP2PEqRdVFKYdhXPeM8y1W
         nrGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772095745; x=1772700545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Me6/gMTEz3PAlgU521S5bAkTbmNg6yXoSMbtj++gb3k=;
        b=avqQxr2Q6bWutXQVro6XZUZBz6v5muqNPW3dPtpCd3zMG+Hx793aEBDTkDyhRiN9md
         ucTSAkW0BRJJ7+hTOgfFZcYVJmAzv8ebVpVdpwhAiMC/FTH2OE4ywh1bAKto9lU2n/o3
         fyrHH4/+KFus/V7P8dEl6bbbF4mb3OB3qyXzTV3Si+c7C/3V4lFUVzaHzkUyj5N61qGF
         b0SNHnqPNyvkNdCFY+nBi+aWhXe/A6qlLRQSC2l3LnR21F+NM8OLsA3r8T0axljlbmxa
         Y7o92hmpAArdA2ZTegCdc1OiffFgva23IRa6NUt4HcBlMrK8Ao9g+yCHPCAt5IL1fVuk
         4QWA==
X-Gm-Message-State: AOJu0YwIMfgoryr58Vqj/KGybDsITWjiYOd+CmM8uOQJCfGadwwsa41C
	SBlgtswgXDvxP7x+j8w7tmsethcaI74RL86xXWKeJ85cCWiigZhhz/sf4mW78Ql1SpE=
X-Gm-Gg: ATEYQzzyK2NDlHgviO1VMzUJBP7Xjgz5HZnNqNeTuZjqvoeeFwva63itDRv2zn4Bixw
	ckMVsVWozSEGzEs3v2KdtVi8ve28U63/EVMffdHeVulLBwP1DOZdKRnWKgzz+jn9GDv/GlaIjF1
	a53Opmqi1iF4LaN8OoffFwGamtFvjHI7hUtbt7CNv6AiYjRAcUuDbZ3JJHXYb/nxYABa1pPtrK3
	TSHDxZyc5FOJPFpVpDzxKbdboVt4dAhrvqhxs93rkRTP5dLWUOpPYHIzIRbl6bT6h1GyveXsWJ9
	t+NfRwdfvROZJkLqObvZddmQD2sT9gvDao3OAvd4tG6h224X2HZzsJ+8Dh5w9JSZg+2LBl3gpOZ
	WJRCjsdRJeIjP8kDU2mAhbff7E81U6k9rI3G6uQcGv7gCjZS5iILogrYJ+Twwd7i76Io/ENPf9N
	xZrrImkuYasITpen4wUCBlgz1+G2NYlB8SN7/X
X-Received: by 2002:a05:6a21:998c:b0:38d:ebdc:3558 with SMTP id adf61e73a8af0-39545e2f265mr18580124637.6.1772095745577;
        Thu, 26 Feb 2026 00:49:05 -0800 (PST)
Received: from arch.localdomain ([117.147.91.218])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa848471sm1342441a12.30.2026.02.26.00.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 00:49:05 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	wens@kernel.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	mripard@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH 2/3] dt-bindings: arm: sunxi: Add TaiqiCat (TQC) A01
Date: Thu, 26 Feb 2026 16:48:46 +0800
Message-ID: <20260226084850.417731-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260226084850.417731-1-jerrysteve1101@gmail.com>
References: <20260226084850.417731-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268669-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: E2C3F1A307C
X-Rspamd-Action: no action

TaiqiCat (TQC) A01 is a set-top box powered by an Allwinner H6 SoC,
equipped with an AXP305 PMIC, 1GB LPDDR3 RAM, 8GB eMMC, an AP6212
WiFi/BT combo module, one 100M Ethernet port, one USB 3.0 Type-A port,
one USB 2.0 Type-A port, one Micro USB port, HDMI, SPDIF, Micro-SD, and
infrared input.

It was released by UQsoft as a blockchain-based terminal and is
now discontinued and no longer supported.

  https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 9e4627f97d7e..8f6f30f683df 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -901,6 +901,11 @@ properties:
           - const: allwinner,sl631
           - const: allwinner,sun8i-v3
 
+      - description: TaiqiCat A01
+        items:
+          - const: uqsoft,taiqicat-a01
+          - const: allwinner,sun50i-h6
+
       - description: Tanix TX1
         items:
           - const: oranth,tanix-tx1
-- 
2.53.0


