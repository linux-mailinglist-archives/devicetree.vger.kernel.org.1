Return-Path: <devicetree+bounces-254258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5787CD16965
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 05:04:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 37B6B3046402
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 04:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8BF915624B;
	Tue, 13 Jan 2026 04:03:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD7334F479
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768277023; cv=none; b=WDa5D1hdDkpd1IMl4YVPqjMzexqSpGvNYy2EP4RTmIhkXJRnl+LCKkqMTtdCOZF+eIvPCM78hHDdlLZLyIGlmy6MUbv4wPxwWTDU9DHt0s88T3Vd56ZgS/oCGwuc936O16RXm5TJmPLUQrDgu/AuNkEdzyPF5qUhl3Hg+ohDLBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768277023; c=relaxed/simple;
	bh=oZULJrlgDSgOoNwWKrAHDNNNKQll5UM5MKUNZDAne+A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mjesxnyOA0HgbI9s67X2+P6VwC/C9i8hY4+5MjLSqmtyIIrP8khITA/8l7AKLMWw8itYffyzXA0/uf7QJIxbw42iD3IOxrUedbY22MCTKQcVxIbGPhCCryBM3W5bf9fVe23duePqCBCql9T7SRSb3ih7Yi6RNALBfHdoCW7qtQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-81f478e5283so1885977b3a.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:03:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768277020; x=1768881820;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4F3mVzjcjfaGJ6kUxVWxBLjChOEXO+b4aTG7bNc+CiQ=;
        b=SLpBnVt3ICW6FwgYdlIyTpSXv6E1q6liZQUn8kP4HL9goRv/PGB4r4mxJ4XmpdGJ+9
         X/HZMEg4kJb8S29SGMNWBoheMXdVMG/8cYFIs+hm4IB1k1Dz5BpqE5xKjWxDndKPXxfK
         xi3QuKbldCN10pZWms6U3PnlzW8qMrjB5t+xci7EsAce4atJswjYoiAz5lOoUopoz3Do
         dt/zNSwxHWwh1X62FGcN6PzKavIIjkxENhZ7mSRGUBCgdR7w0gCi+vjWeHQ2jzGq2pOq
         1OoUwY+8RyScLTYqy9MIkZ+zfgrMLMsITjsPdLhOh5MPkRf5WGCtjCaDMyII2Jwdu7WE
         gDdg==
X-Forwarded-Encrypted: i=1; AJvYcCU9XZSto6+ksMULC8dBQqY/XIuZmIZhopdP083op46zs1OLpbLTS7J+L/6cjVmMhe8TtQ3KctL7cgXO@vger.kernel.org
X-Gm-Message-State: AOJu0YzfnNHe3L5stgmYajWaz9VHNwBfSGCcK7pt3cvN455iGJOcfgw+
	rqYZwE/2kwjyUpir5jJSSRDcejrQiS9UO+QqAqwgL2g6AOQwg4LV+L7E
X-Gm-Gg: AY/fxX7pYP5U/VqgV2/8t83r/umUHPnh7ZWXn6iGbmCsPZ5YN/RWY/fhsudcbyMiF/Q
	Ogkq7F+dTUgb8oOiXwGiRTbYdMMMVvIo5l7Q4zuGV9EMC24nvA7qLVnh05tD8xF+fr9GzIYP9Tn
	pMb4lrdDJo8l2LRgeyFHPJRgCaN45aDJyUdODJiCgDoU3CC7P26CUbvrs3xmnNp7qwir5+x2T1i
	8n70PN3icI43k0j94Y6k6o3fmCVHxfc2BzuRGBY5of5aYJvNXNGNrViSd9JVcJ9fAhPbujGFQ2w
	YB6uc2ROJLSP3znKQuxg8Auo7+vtm8pPtkk6ii8EakAMLGzxu22KOolWH4t3D+MGB14wkKpibbR
	FFdHS6b5uESZFMU3BZIu2fbsaiDUX+6hIjmD/Owfl42LJxpBSKEyN7QjaeTr4qF8wsT+4SaZ9BM
	VWGM9UEH8NI0eKg6wtLX/woEM=
X-Google-Smtp-Source: AGHT+IFWO7Sr2vKPx/3xFEstC3vpUB/A9iKGkyvfjC7nE0lCjaEc2ow5E98iieH9zOZQGyG9Egx28A==
X-Received: by 2002:a05:6a00:6087:b0:81d:a1b1:731d with SMTP id d2e1a72fcca58-81da1c0baf1mr12666295b3a.53.1768277020340;
        Mon, 12 Jan 2026 20:03:40 -0800 (PST)
Received: from DESKTOP-LUHV3PD.localdomain ([59.152.111.50])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81f3ce8df8bsm7776016b3a.40.2026.01.12.20.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 20:03:40 -0800 (PST)
From: Siratul Islam <email@sirat.me>
To: andy@kernel.org,
	geert@linux-m68k.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH 4/4] MAINTAINERS: Add entry for TM1637
Date: Tue, 13 Jan 2026 10:02:42 +0600
Message-ID: <20260113040242.19156-5-email@sirat.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260113040242.19156-1-email@sirat.me>
References: <20260113040242.19156-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add entry for the Titanmec TM1637 7-segment display driver.

Signed-off-by: Siratul Islam <email@sirat.me>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 32b5e41d9849..4f07c7b5d649 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -26312,6 +26312,13 @@ W:	http://sourceforge.net/projects/tlan/
 F:	Documentation/networking/device_drivers/ethernet/ti/tlan.rst
 F:	drivers/net/ethernet/ti/tlan.*
 
+TM1637 7-SEGMENT DISPLAY DRIVER
+M:	Siratul Islam <email@sirat.me>
+S:	Maintained
+F:	Documentation/ABI/testing/sysfs-platform-tm1637
+F:	Documentation/devicetree/bindings/auxdisplay/titanmec,tm1637.yaml
+F:	drivers/auxdisplay/tm1637.c
+
 TMIO/SDHI MMC DRIVER
 M:	Wolfram Sang <wsa+renesas@sang-engineering.com>
 L:	linux-mmc@vger.kernel.org
-- 
2.47.3


