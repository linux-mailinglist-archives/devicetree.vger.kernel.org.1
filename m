Return-Path: <devicetree+bounces-274752-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLklOxoIs2kMRwAAu9opvQ
	(envelope-from <devicetree+bounces-274752-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:38:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5302F277342
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:38:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE955308662A
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 18:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F06263FF888;
	Thu, 12 Mar 2026 18:37:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27773DA7E3
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773340669; cv=none; b=Xqyut2NCmwH3aokk5LD/8JPeMMXwy8Oqo6cdLSnimkUOD420pp9S9+aQNpeKvon9cjHDKnJVdFbKMLmUx+PdoOAFRmfpSB/p72TKLXluYm15cJZWeOJdVpYeJmMBKQk3Q5FrFl6WI+U2tU50arO4Falb5EdR+qpbaU9J4TNzHlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773340669; c=relaxed/simple;
	bh=uELJpnMSysadI2Kpm5r/ZVI/JZrV+BrD8kTnJQ7zQLc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bbcooB9rEURIaUhwFXfq/c4pREf8aVtJFOg4KZbmQjB002hsLOTWURCFfa//PzBbhkIKpp74BPO3LUXO11EX3mqKoNB0jvLO2F+9o5/U+NiFQxztBOu6OURnMLQ4PeKVsJBkfj4kWu00mZxK7S9NCjrHZAxpq3T6fMCFjqiVV0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-359f35dfef6so792362a91.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:37:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773340668; x=1773945468;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yXmdF0x3IxYZ25KG6QGT1Bi2RMkVMfC0MXaDAqIpvF4=;
        b=wQbpevVdmVcrRueAAFtVaimVye195Nb+BUooYuW5QNZqfUdm946Za44TZ6g9qd6SLz
         0pXH6Uu2XJ/NjnlCRLhedaWhVbNaamO43ZjDpsYJNy5MiZiOeP/rHHyzjl4pW+xw/UXi
         h33GV6mlffj+dJrN3CZcvJAe3OtqKJ8Ct+iFc5oV7VCkuVWkiO/0EgdyFcBbBCMmch/e
         ZXFJL9Epuwtu6nFy2XIiVFPneWWSiH4SHiRG3BoedKAazX2sPGfuzk5r/8BbsCGr8vV5
         GIR+wYApYT5uFg+mrRqWUfLahf70lOk3VVJaU1BfTyn39dcSf8aLVgZvuFoLcn4uS7i4
         Qylw==
X-Forwarded-Encrypted: i=1; AJvYcCU0bpvOZGkU3NiCuA4RqConQn66gXh4JBrxG3eT8/jelUFsi7qJwh+Otqh6P62VBPZ6x+0v0MjKVotc@vger.kernel.org
X-Gm-Message-State: AOJu0YxTyoDpzmvh/fEuy6KZ3OecZDOrf6pN1EseI2ESqQq0QTg+2K/6
	8MF+VY9Vzdkah16dT5g9Mmj5ddORFLwIKsxn64yCSkj3yEHtb2Z7x5Wk
X-Gm-Gg: ATEYQzzXtlRDqlv5my1stv3PwztjQRW4T6UO89b39YzsZbyUOqDB1T1DvguYbyOMJsI
	eOoTuFZ1t6yzG7VVSiX1Oiau4e6FJ99NStA3DMtPwGXM52H+f+ogF67GWHjxyP+msHtJIOO0ZKY
	HCS9elEV3MY483tWka8CSc2WJW8KCCYmH8FdJjGkLwLlq4urejCnM5W9q0svEVIvczpu6geS7Z3
	eLpFWfLxNLmMYqa1944xeDNRk7bK/WgfQRatGrKnS0ml53FpLxdTm5t1e+L4kmv/HVRrYKfqsg4
	T85JfWLtJKPKqZ+QupGMA7ORUMtQSybHDPy55Xr0buO7zoi1M9+8sZQLD/rIKT4sUgLA67GV42s
	raE0jPcp2j+jNcUdMnTRmTy6tHTsGtset4Cn0ORk+7kh521VdcvmRPCN1cFL4niAy9GWWxp+Ype
	pXWEzJp+NpzwcfCg==
X-Received: by 2002:a17:90b:3c89:b0:35a:18b1:c245 with SMTP id 98e67ed59e1d1-35a21e38ebdmr575392a91.3.1773340667984;
        Thu, 12 Mar 2026 11:37:47 -0700 (PDT)
Received: from archlinux ([103.135.252.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a11b42ce4sm3645612a91.6.2026.03.12.11.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 11:37:47 -0700 (PDT)
From: Siratul Islam <email@sirat.me>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH v4 1/2] dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
Date: Fri, 13 Mar 2026 00:37:17 +0600
Message-ID: <20260312183721.40482-2-email@sirat.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260312183721.40482-1-email@sirat.me>
References: <20260312183721.40482-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-274752-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.976];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sirat.me:email,sirat.me:mid,linuxfoundation.org:email,devicetree.org:url]
X-Rspamd-Queue-Id: 5302F277342
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree binding documentation for the STMicroelectronics
VL53L1X Time-of-Flight ranging sensor connected via I2C.

Signed-off-by: Siratul Islam <email@sirat.me>
---
 .../devicetree/bindings/iio/proximity/st,vl53l0x.yaml      | 7 +++++--
 MAINTAINERS                                                | 6 ++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml b/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
index 322befc41de6..0852259754f5 100644
--- a/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
@@ -4,14 +4,17 @@
 $id: http://devicetree.org/schemas/iio/proximity/st,vl53l0x.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ST VL53L0X ToF ranging sensor
+title: ST VL53L0X/VL53L1X ToF ranging sensor
 
 maintainers:
   - Song Qiang <songqiang1304521@gmail.com>
+  - Siratul Islam <email@sirat.me>
 
 properties:
   compatible:
-    const: st,vl53l0x
+    enum:
+      - st,vl53l0x
+      - st,vl53l1x
 
   reg:
     maxItems: 1
diff --git a/MAINTAINERS b/MAINTAINERS
index 61bf550fd37c..a142a97be4cb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25093,6 +25093,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
 F:	drivers/iio/proximity/vl53l0x-i2c.c
 
+ST VL53L1X ToF RANGER(I2C) IIO DRIVER
+M:	Siratul Islam <email@sirat.me>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
+
 STABLE BRANCH
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 M:	Sasha Levin <sashal@kernel.org>
-- 
2.53.0


