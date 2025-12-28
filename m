Return-Path: <devicetree+bounces-249959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AABD4CE5279
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 16:59:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A80F30198C8
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 15:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 250BE2D59E8;
	Sun, 28 Dec 2025 15:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FM9Fdha7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DADB185B48
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 15:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766937544; cv=none; b=Aq4kuVg0t1UZwN/MZa0N2SYVzFUCzww7UBtj8r90E3oRAKIXr7LJ3033h2VMfzvaLNOnDFTyzM3V3Jk92zSEabVf0JNnuF6ET5Y2DnSBL0zD92Hygx7nTliuQLc1wXowmz+TX8mcrejQaGWgAZY5Rge4fN4Cv/Mgf1Vn3WqabWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766937544; c=relaxed/simple;
	bh=9oPJ6wBogJ27L2Efz8cYH5dPIPPRoLhiTe8zOz6dMcA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cuw95Jkx0Dzz5eBgbXjnskPW6QZdJu4FD6BtdCg1x/u40FV72/Gt9geJAv6vDsV3d4FEsUv5VrIFsRUEjhNAtsLUcd28pFfwIbM180f26eiZcYtncSqwmc2AXyMZjD7A6Aqc15+vi9Vs6rK0qUyXnpvXShk1UcdIDVrMsf4jU/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FM9Fdha7; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7c7bfba3996so5054028a34.0
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 07:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766937541; x=1767542341; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YP3c0TfYURBai4VYDxBCeRIp2KUlF60Zf3Z4JdQhSd0=;
        b=FM9Fdha72RUQ3a2FVDMMkfBGadJAtCtGlNbwo7Sk89KiXWzuDlocPFW2Q7uHPm3jXE
         VUQtgqf41Qrc9LIcq7yECYiTCsOCsRxRokzYqqzhVnoY5E9qvSJX8Qn6HZkNAx0HsQ+H
         470yBMHeJMZsM4i+FH3+MXAy6zftRUdkHhLO5czOL0t7iT/9QKwTV0CQFqE5l2zyKAyc
         6OrG3vWpGGvY/5EDExPcKUX80PHeQ68Y0MLOtvuXF0l0HClraB05WSrSEA4NVbEmEHpL
         N0MfoXbaez7AAdfkJ1QVprd3gowD4l365aIzzV/DmtIiEyRMdQ7QdOyKkQJwczmG0Tm5
         a8Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766937541; x=1767542341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YP3c0TfYURBai4VYDxBCeRIp2KUlF60Zf3Z4JdQhSd0=;
        b=nJljoIYqjthXTqOoxmODySkqHbgpToWOvIdQjdA2AH61Oid7/sfCdXZBFHDRtFxflY
         3cEgQAmYbmtmYQFI/088PjQr5gOKt7sRPc8CRCA/mvLBrPj11LIhXC5Iom3lCvP6RONS
         NCdB/vkVCgkC5TzpuaIBNyqrQAL5U9XlTOSkrmypqMHZXXVNBi8C5zgWmQ4rBF7Hn0md
         UGg9lv08nv01lR4IU9+JgBHLdRkXMndHCZFSitpPzYBtGPnB39ATv8LNyDQ4Z+aE8ym3
         +tZ4zarLGHyf0veO4juoR9DquF89yJG0mu1ggOMjBnk9uqyxvNARh5/6prj6U21VRVmp
         08XA==
X-Forwarded-Encrypted: i=1; AJvYcCUVvzYI47ymSCzY0nmbuQBnqfjqEanOGz3fONp8AC0E9zCKINYEXzjwl/zRYU77ZFTBBjFw/oVN9dI2@vger.kernel.org
X-Gm-Message-State: AOJu0Yxfhv5E3JbfbieRfebbJCxP4PRy1fkg9NWHExcm8GSSx/uai0Qp
	hLz9XTdp3w3clehJRaA1pg2niErCFoBlO+ncMpK07s6nMiXktryE3Use
X-Gm-Gg: AY/fxX6AFSBRP2KG4w4iH3CxlaWirqT9iMgmJZWaN3VbmCmC7/cO1PyBHNgYP5A+Qli
	fw4byWTsLaRfUMqF2bxzIfPEAsctqxurRz1MZY++9OaH7sGw2AUaSvJIm0L2t2nWjtkZxPwIMji
	NeG6X4OUsuYNsik2p51WWzDMLHFCaRAkLZMm0kAne/DN/ZnwzXZ6lQB+i+sng4l6p7BHCts3Bwx
	/09KyvfoRNobm10W0LoCIE7DgDQgVRpRS7VBWak9/EljraspzMs9/kJA05B4mzR949IcgMegY8w
	JpgM2NU3BRV1NGV0CO72JE7W5W9zvdd5qTc3ny8mkRusEnzEUnxRclisdKliTXHqQRXDmL6Ixsy
	/6vwVEhQkWXBsox9M1TeVpTysP4rLP1Qk5o0VVbGzBOiagghQ7n5xDnpNmghHP2rHNrRlntqZJ7
	d+CiNiz/c8bh997dTDI7UZrCsf+fgdG/qEtPHd+clkVQHqimYrqSaP9GmwIaN1d9gVoOy0Aydr3
	Ogh2m2FbfaYVrdLWkG/cfACJPYH
X-Google-Smtp-Source: AGHT+IEh9nd0qc+nLomD7TlSHUU1Fad3h+pjFahI0ZbjYkMUhS1mnTBKtoHTQC3urWigQnTZxXGkbQ==
X-Received: by 2002:a05:6830:6619:b0:7cb:133b:c07f with SMTP id 46e09a7af769-7cc66a959admr14336907a34.28.1766937541462;
        Sun, 28 Dec 2025 07:59:01 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cc667ecd6esm19004434a34.25.2025.12.28.07.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 07:59:00 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jjohnson@kernel.org,
	ath11k@lists.infradead.org,
	Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH 1/2] dt: bindings: net: ath11k: add IPQ9574 compatible
Date: Sun, 28 Dec 2025 09:58:51 -0600
Message-ID: <20251228155855.2118792-2-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20251228155855.2118792-1-mr.nuke.me@gmail.com>
References: <20251228155855.2118792-1-mr.nuke.me@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add IPQ9574 device support for ath11k. The schema is identical to
ipq6018, so add the compatible string where needed.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 .../devicetree/bindings/net/wireless/qcom,ath11k.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml
index c089677702cf1..8293ea29b723e 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,ipq9574-wifi
       - qcom,ipq8074-wifi
       - qcom,ipq6018-wifi
       - qcom,wcn6750-wifi
@@ -102,6 +103,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,ipq9574-wifi
               - qcom,ipq8074-wifi
               - qcom,ipq6018-wifi
     then:
@@ -220,6 +222,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,ipq9574-wifi
               - qcom,ipq8074-wifi
               - qcom,ipq6018-wifi
     then:
-- 
2.45.1


