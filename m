Return-Path: <devicetree+bounces-274857-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDHoJUR6s2kZXAAAu9opvQ
	(envelope-from <devicetree+bounces-274857-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:45:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4EB27CDF8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:45:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 41E9D3114651
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12B98346FB0;
	Fri, 13 Mar 2026 02:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IEgzJ/uM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F0D346ADE
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773369905; cv=none; b=UAI3qP3cbNZ7GKW2C6SpjsHMmoZZvOFp4FbLLZevx+dxNFzHWFod9wLc7tcoACH1hJa81BXwhliRNKi4DI00Z3F4k1bgMls/ZKYIEZ4FWtfYrSCVoVKuxwdB4Fnv0p1W82o/agNFpyJq/FEe/Zota3/bSlWX0wi0Jdme9m8rZAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773369905; c=relaxed/simple;
	bh=FeolUrDXhcJ9+H4nQyOEPh/GWkmKrVF084NYo0TpdN4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=L5w7WdIU8dh52fQ0it39DH+fJBuJHpco6ijr/DYifheI36t50MwCGiXRM/PkqVihqlhe0t4zjKnWpCkfc4d/y8QO7spcWmSuxa1HOArLg+FDfLQFYUztM91XItD7LLX9FLr1GkSG+U7a+2aHPyo7AxNa8W9pKePxUQ4AwLmSupw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IEgzJ/uM; arc=none smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2be4781d2baso4837886eec.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 19:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773369903; x=1773974703; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hoVNRCYACXUZYxUReRsznqMgq400FeHzmP65Ts9QAVk=;
        b=IEgzJ/uMDlXjLJpAv1uPxPQ50umI2NPKk8kbinm3qfMqVMEM110sUfs72MFpUtozHG
         t8vXUVEKqOZorPK+JB8EDUMqkRHcxwIcrAJz1Eec/98Qe+7RVq8c78seYCeCTAn0saaF
         UOYt23rvUjcVDKHZPLb7SkwYWy8z4gI/1Qth8ZSiLKdjWAUbCzMwN/j9ZjWx8v0D1WGn
         NHZtYd7a+jiegXtyVu28OFfyhSjfSDMnjpmYGLLiqPgLXpW/tg090YXtjS8CJi3xbgHx
         ijmEmqIMGPgsCVtZsvgRJ98kCXb8UJvg/9oLvEGhsOHPiGmpe3W2kDwYJzN81t3JFBY7
         Q4qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773369903; x=1773974703;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hoVNRCYACXUZYxUReRsznqMgq400FeHzmP65Ts9QAVk=;
        b=cD+oKeOu8YE2YX/cQ2vTo9q2/G2nxLxEp2mzBsL2NiCG7DfkNKNPoRsRhv5pEoIUwM
         7bZ66ss4lZHdDlH8kI18GBu9AygLWexSCtiec21lDHaTWWdehGZ5OTVwMQYLsJVp0Yj9
         BJySeAyvz9QFlJJoyByPmNEMJQzUXjTKu89WOboo3Xi+9r+UZ31bw6CNDSq+3WmGZ5Vp
         arhE1MavTZp3PoOvQR+VxG8bklN8fGi6yJXVRnngat9k8zYUDSj2kdWgu/xLYOTSYuEm
         HB4B4Qde4pXxCi0+L2p44Ke32U6MdPeDBqBJbH8Mu1LUe8XcuT59JJg4S1TlTeVfcRAV
         OTLg==
X-Forwarded-Encrypted: i=1; AJvYcCWcoZjLAJPvWFds5ffkD2A3z8PEzWbxXbY5Ffy6bHrye7RRd16nustj7HCJci1b+OjJpjDis1UkMHav@vger.kernel.org
X-Gm-Message-State: AOJu0YwnnkCfP5lWYKMhKy6XYhaV5XPrRnL8GZTgyvKVWwy9ccC8znGL
	oEl5jFXlDQJqJGgRopSjnXR10YuMn0QK6uQiE6MYvMUa5Z0DvKjIWUuI
X-Gm-Gg: ATEYQzx/4Inx+UZgxLuoS6nO27Ya1gFc+wfxT1CzIGCe0CS/AZnbaMA/Dt98RDVY8TO
	zv+Ue5x7HcMicVW7drEaqyRupNmoSmku2jIXVqBwRXKZp2p2K1976AXfJojZX9TscRqsbv6N2Lx
	v3zkDKR8Of26wAYveC1xrIyuGCuqFa1hr3CSE1KBUEuJvAGt1+u3LzCs0ZPmMDfGuwdAROBXFet
	qMMqZwD9VRVnysOfTV2oJUhbHa2EjNoKVjHnVu9N+2GYdMNN1YkML9iLr8hNx2fue4ug3B8/h/H
	gACnXwtNgAhNuP0QWNq7QrcAoM3oXmUD87Q4gRjpHyPzn2PYW+udDRjnf2K51IHkblUsmOXUnvx
	IMhqzY/lkJ1hHGQzObFJs0IzxflTCGvkOGZPa5Sy1OmQHcU37N1a2H1oxSiLIfpUXeSnsaT79oK
	h9RCFt/pxnXbP7vBMN+OUi840BzqXWGxUS8hirxf3NMbwIdgHDPQlJvbU3GVNsIEgRplO6
X-Received: by 2002:a05:7300:e887:b0:2b8:26b8:3444 with SMTP id 5a478bee46e88-2bea55561b2mr1021031eec.19.1773369902671;
        Thu, 12 Mar 2026 19:45:02 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:62cd:a5bc:7e0f:18c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab526db0sm947919eec.20.2026.03.12.19.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 19:45:02 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v6 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Thu, 12 Mar 2026 23:44:48 -0300
Message-ID: <20260313024452.625064-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274857-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: CB4EB27CDF8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Fabio Estevam <festevam@nabladev.com>

Add the PMU GRF and IOC compatible strings for the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes since v5:
- None.

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 0b8e3294c83e..2cc43742b8e3 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -63,6 +63,7 @@ properties:
               - rockchip,rk3588-vo0-grf
               - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
+              - rockchip,rv1103b-ioc
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
@@ -98,6 +99,7 @@ properties:
               - rockchip,rk3576-pmu0-grf
               - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
+              - rockchip,rv1103b-pmu-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
@@ -231,6 +233,7 @@ allOf:
               - rockchip,rk3036-grf
               - rockchip,rk3308-grf
               - rockchip,rk3368-pmugrf
+              - rockchip,rv1103b-pmu-grf
 
     then:
       properties:
-- 
2.43.0


