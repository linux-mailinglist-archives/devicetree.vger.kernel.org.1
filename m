Return-Path: <devicetree+bounces-148670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E97A3D04F
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 05:11:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9189117AC1F
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 04:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CBE81C5F26;
	Thu, 20 Feb 2025 04:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UtNJbVK+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA10419D067
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 04:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740024663; cv=none; b=p+yVgpkWEsGiSvIK+eRavHS7qBfVyCCffB3jH0Hdd/DtulX/5xxuyHA/KZIuaCi4Xdy2Mb/PWTJay+y0bzyqpHat+8OMUyzUOGnabWQ1CgpYokpesTRSsyb1dDblcArZjo9sJxa/I845WV+HzsmJE1cT71s7jdYnTXuPXRivR7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740024663; c=relaxed/simple;
	bh=agEi9rWha7fkcKxhZb86cbA21p3QCyurO+vPaQIHvIs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jz+SsPu7jeQGLP5WIFR8ZK9vVz4FmoDMd5opsOlcLzTq6BmVZySbVAlIANZzDYBf3OVNTpIlLfCIHYEKl/nK1V/F4rudYSg+WSpiPyEaJEKeByrjOoHs3YmaKQ15bR8L37OpPlG+/BVVEt0vvTORJzyYDkk74dHDSoEolKX6QsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UtNJbVK+; arc=none smtp.client-ip=209.85.161.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-5fa8fa48ee5so161252eaf.2
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 20:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740024661; x=1740629461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rPuaLxISPmj0zzzUfvfO0Np846HbNddwv0/P6/GTIX4=;
        b=UtNJbVK+4KXjd6l0yHh2cl4XFldeGna2Kvay8mz8w04ZITf1LnqrbNdwTGaDcMO+ZT
         G3RDmwRcVj2wr9v757Ja/Sntxr4pTY+Se3pRNpynlFr8pack97SmzRa2K2sGTcIaaj9k
         Ilb3eEodn6vhNw9y0zzmM6I+gO1kdB3SigfSVCEBNXnO4ElSJnB5J+PdQQ/ZDFPcCax4
         JHcCd3vwHU1gChOd6EDhafz4Z8yin6u+NJJZi3pTdWDoEw4294M+7J2c2y36soad9zlx
         jBy6QcDlKlS4Z+uA69Ijfy/eLtLCtHg8Heflt9A7mmcmlbk5k2NZpL16Shvyosw0UFPH
         Zjlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740024661; x=1740629461;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rPuaLxISPmj0zzzUfvfO0Np846HbNddwv0/P6/GTIX4=;
        b=MF2rriwAcdKLUUTbbBVI6/s4DALvgTfFqIJo8r9t6PqC0XHVeBhhm+j7hsYtnpkGo4
         pBGNRvuVAZqPuto+3aSnZ/GzQtRt5JCKPB3uYYBK6SKKk6fkfxxzf+hH50qG+GX7y6By
         4Jiys9aC5RiGI0hkj3A6HQvTcCOJUU+s/Z80KWyJhgIXMuha10kdqeGH8AohEpVFPydI
         Mc4ADcb3iex5aa44hd8mOu/X5Wh/yrrgq1hPQGosPzlVQXmUQa9pRQ4nBzJ5NVFk/GYs
         lf9+w3FVtEVXxVA06BWBcjkRSMutYfL30gHkXl0ruRMaVHxAcTmr+4Oy2B/AxT/QTD6s
         8kIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTx2PD0jBWbs9E/LwDdV9uDKJet7Ge25pNFveZGHBpBScbHd9kYVzzcXJsD+mmNzWm57KQ8Kgi9Lvp@vger.kernel.org
X-Gm-Message-State: AOJu0YwTtMMVdfK1lSscQpEdU++hIrIgbT4BJtOKUn3Zm/tGkpj36L7h
	vRW55O0eVRFyEtaIfy5sbzZGN0PUZ+eyYWXFZR86N5HUUBAmqibU
X-Gm-Gg: ASbGncuB3zvuDl0PDt7E3dS9qxARFlFBFpnmzVR5O/+k0g20+DUSRmVlVqh4nmRPN18
	wrvUzP8wpDr/8RbjYcj/a5HPezmWJcbRws0T4NKAY8FLGi9xlVqoSm9gnB4fUy93OeDQDU5ALnr
	jMX9B9K5vZ+cq+r9SPKRu6BxWBBOIBXCbSgMgjGLEawXFLfY7lBwtjBjcG3m8pCETbqY484HQNT
	PWNnYpVv0S3uAi9NgUt0Li/WLQd68o51epbwcP//BnvdCCb8ZAuy1ywx/sxGSFUFpJDq4rX1ZlW
	l9F6LKLUzgrIMp0uLTTt8egx
X-Google-Smtp-Source: AGHT+IGnrMPHEBhIseSfxk+zly0/RwbQFSYtQKi5ZDgXJW6nGSRe0jULV1zSvgb1Ee1GPJb5/89C8w==
X-Received: by 2002:a05:6820:1622:b0:5fc:f3b8:78c1 with SMTP id 006d021491bc7-5fcf3b87fa2mr6831438eaf.1.1740024660702;
        Wed, 19 Feb 2025 20:11:00 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:20f3:777f:5ae9:b018])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-727378237e4sm1025875a34.47.2025.02.19.20.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 20:10:59 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH UNTESTED v5 1/4] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Ultra
Date: Wed, 19 Feb 2025 22:10:07 -0600
Message-ID: <20250220041010.3801-2-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250220041010.3801-1-honyuenkwun@gmail.com>
References: <20250220041010.3801-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Xunlong Orange Pi 5 Ultra board.

The Orange Pi 5 Ultra is a single board computer powered by the Rockchip
RK3588 with similar board layout as the 5 Max but with the HDMI0 swapped
for HDMI IN.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 522a6f0450ea..48b27f28a3d7 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1136,11 +1136,12 @@ properties:
           - const: xunlong,orangepi-3b
           - const: rockchip,rk3566
 
-      - description: Xunlong Orange Pi 5 Max/Plus
+      - description: Xunlong Orange Pi 5 Max/Plus/Ultra
         items:
           - enum:
               - xunlong,orangepi-5-max
               - xunlong,orangepi-5-plus
+              - xunlong,orangepi-5-ultra
           - const: rockchip,rk3588
 
       - description: Xunlong Orange Pi R1 Plus / LTS
-- 
2.48.1


