Return-Path: <devicetree+bounces-304840-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FKKMon/G2o3IQkAu9opvQ
	(envelope-from <devicetree+bounces-304840-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 11:29:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB67615609
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 11:29:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E763E301A43A
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 09:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13C3E35675D;
	Sun, 31 May 2026 09:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ORENTZ64"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 915E634B1A6
	for <devicetree@vger.kernel.org>; Sun, 31 May 2026 09:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780219780; cv=none; b=tFx283NhvzTO8sk/K015lfFIbEQuGkpHDownpHRRdlnQG08rzQwEtsp/3N7Fv83uDTfbfoFFdkPzJh9SDb7OB+/yPKhegnmfp75cYNKLGZLPFVSliEiEX7R1aGMrpTZdjHm/FeaSPN/+BP/YRGi8Vbawdn4hIrH+eQ2Gq7RoGD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780219780; c=relaxed/simple;
	bh=er0ubEXqc5SkXg9dCN53ES8cWYd71tCmkqSVLbDGaBk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jMzUFSo3Mj+dn7EAVvYB3FCjgnpz+DpWe/36ewjzANedKfRdnLugnWfkK0VTjb+zNo89isKn6MSE/vu4dtYCtyrn0cIByH+/NQMCyqty4JA1KrpGrOa8wNCqVZDfFS4lliaJelinL7sYtr/K5YBmDmm0FKIaC7+e4aR+KyS39JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ORENTZ64; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-45fe59255beso197962f8f.1
        for <devicetree@vger.kernel.org>; Sun, 31 May 2026 02:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780219777; x=1780824577; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iew4XenhKOLgBtnmmbivz3Klyz0GTJLb8N3yaWb7V4k=;
        b=ORENTZ64LfIYZyuQm1fJWTlwqVlD9VAVGS8j8uTNWNbkqm1AMPHvUngXLIvN186Nn/
         5R0PxbHTi3u1J02rH2Cf3UWHWqQE9YPWRs2yF7srzOY50LnVC01CCbgz8zgDLtmXzIsH
         lEvkM8nzh9MnWiqHh9ka1W0R6/M5FAU8AbQHL4QkJCDqnURosUGmYItw7O0Brpd7RT/5
         U0TJH6srB0vWBlX/7vYg8QRxzJOCNIJyaGkObY6qMAlqpCbife2d4A0TfpP8aT8h0OXD
         /ykzD1Xyc6krxZG7+/UPyzfbqNpcYweKI4rM9Fjlqq29Mqft+4178EfiT+JPR7FlGoo2
         mbTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780219777; x=1780824577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Iew4XenhKOLgBtnmmbivz3Klyz0GTJLb8N3yaWb7V4k=;
        b=Lo4KlV5OwJq4QHKe1HOtS4GBOKVaFPRPc7Kk35E/f1yFEoGOKfA2w+kN+VwokAvEy+
         76gLju89gSXfhbE+PVsDGWJZLX6Vyl6K8ERU/TYT1KBwFMu63f8jXkj8kCPX6+sSXhHv
         O+0tUvIRwJEcDPiQAg03LxJUNeCV9+goWidCBASlJaQTQhbLT9hUFdeMkq8tRkqENQhR
         KtavS+adg31pS4fY30rrPIU635NJ5lDcXdmwAt4KyVnfSvfzI4uKIxNFs2zoEhNCsNoQ
         oMW5S19xePnmLdACjuBzbRy++I+rcZSaDEZWWmCrOIzZot7bXHu79aBn/Kn7Gd8j9Izo
         Np/g==
X-Forwarded-Encrypted: i=1; AFNElJ9ahaj0zURREyLnRNhFdr8owXH+aJU1aw19fOJVpUFlJ+pd7Xro9G6QQnoG8LEpdJssVW/3X7/OSuVx@vger.kernel.org
X-Gm-Message-State: AOJu0YwrC/xsordf8yWed+RF5bQYH6/DF0wWL8lGOLqxRJgTuf9w/i7P
	UBpWTLbCOKn18jkNPNZWdXij90fy+JdLG35OPeIJpGciqALuZP4I0Bhh
X-Gm-Gg: Acq92OF5I8GVEQ4BvEcisRzKVFszesSYf0kiZYvY2BD6xyH6VVx0WjWR5SeKZAZj9FT
	cIqY3DO0muLGHa/cEc8WBRZPcjLgmeWTDwIEZbyRe5Za78OU5sGsDv7+4QnEYeO8a7Qh1IL+4gv
	zM5qnk5+ARBo3VAPD+nHFGtajVGwYf97/mkHn7/HeyAz1lSgAVZyMzDpUaoBLKrxD0U0FSyN5z3
	YItmfQGr8fNhj/pX1hHD6rOSd8BHPkOW3DxuNvvyWH2F5g1SFClYNfeJ15OeLGNIidBCrY3/Kgy
	a9Dd5kt8zrhocbvvDRCohAcdQRFHIyjyEfxj21zIqHtw0nK6CmjZWz9ZE3oJlI1IwgEJJFOq6ds
	jCWES3wZEZfejsXKcIUGKXH98J1PXky0eu/HcjXrr1MSsrL3iIMuR/E+r2ouk9xIE89CR+lJky5
	g8tKirHUYmn+MEd1f3cYjMSdg=
X-Received: by 2002:a05:600c:4f53:b0:490:3b8b:6ba2 with SMTP id 5b1f17b1804b1-490a290bbc9mr125178125e9.8.1780219776830;
        Sun, 31 May 2026 02:29:36 -0700 (PDT)
Received: from xeon ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45ef34a03f8sm17671313f8f.7.2026.05.31.02.29.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 May 2026 02:29:36 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/1 RESEND] dt-bindings: media: mt9m114: document common video device properties
Date: Sun, 31 May 2026 12:29:23 +0300
Message-ID: <20260531092924.12929-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260531092924.12929-1-clamor95@gmail.com>
References: <20260531092924.12929-1-clamor95@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[ideasonboard.com,kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304840-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 4CB67615609
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document common video interface device properties, such as rotation and
orientation.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../devicetree/bindings/media/i2c/onnn,mt9m114.yaml          | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml b/Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml
index e896f4db2421..2b39614f5cbf 100644
--- a/Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/onnn,mt9m114.yaml
@@ -15,6 +15,9 @@ description: |-
   an I2C interface and outputs image data over a 8-bit parallel or 1-lane MIPI
   CSI-2 connection.
 
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
 properties:
   compatible:
     enum:
@@ -90,7 +93,7 @@ required:
   - vaa-supply
   - port
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.51.0


