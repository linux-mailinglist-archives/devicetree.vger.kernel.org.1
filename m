Return-Path: <devicetree+bounces-154075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B53DA4EB44
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 19:22:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CEFE16100D
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54B8227BF89;
	Tue,  4 Mar 2025 18:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OBIrQNjA"
X-Original-To: devicetree@vger.kernel.org
Received: from beeline3.cc.itu.edu.tr (beeline3.cc.itu.edu.tr [160.75.25.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3F2C28D041
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 18:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=160.75.25.117
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741111391; cv=fail; b=QYinR6dFOfwKt7AZvPgb/hErgdpEENGi6VrGD9R5HUWmiClRcwllTad8uKy/LZk1MKfqG2CdLVRRhaUpqGlP8aa5ypNX6J9ykYP3439d00CT4Io/FdyJ4+CvI9uNWK10rNwy+u2n5rOPvrxy/guU3XJLaxEUQVS02Yj/nRx6Dmc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741111391; c=relaxed/simple;
	bh=4b0iC7S3I5Wxcnf0Of2/m9wu+jnIwKzjrRgmfirZtss=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sVsyScIOyZIWC132eX5P86jubcMeX1IpNihzZgeEbf3WI2FPV2ypxWMXXuMB1LFFu/J0ye0Uy75R7Ph1Zpf1g/ful8UXZiQfINW3fSUOw9tLWf+jGcirKjPVOq9jhJJyjbRjjvZl5mcVi1y2TpDSjnuH8WElXlTdy/p7fv/QaR8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=none smtp.mailfrom=cc.itu.edu.tr; dkim=fail (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OBIrQNjA reason="signature verification failed"; arc=none smtp.client-ip=209.85.167.42; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; arc=fail smtp.client-ip=160.75.25.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr
Received: from lesvatest1.cc.itu.edu.tr (unknown [10.146.128.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by beeline3.cc.itu.edu.tr (Postfix) with ESMTPS id 240A040D1F50
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 21:03:08 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Authentication-Results: lesvatest1.cc.itu.edu.tr;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=OBIrQNjA
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
	by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6hCn1h76zG3mW
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 19:36:53 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
	id F0CBD4273F; Tue,  4 Mar 2025 19:36:49 +0300 (+03)
Authentication-Results: lesva1.cc.itu.edu.tr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OBIrQNjA
X-Envelope-From: <linux-kernel+bounces-541665-bozkiru=itu.edu.tr@vger.kernel.org>
Authentication-Results: lesva2.cc.itu.edu.tr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OBIrQNjA
Received: from fgw2.itu.edu.tr (fgw2.itu.edu.tr [160.75.25.104])
	by le2 (Postfix) with ESMTP id E2022420DE
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 15:09:35 +0300 (+03)
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by fgw2.itu.edu.tr (Postfix) with SMTP id 6C9AA2DCE0
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 15:09:35 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74CF73AC5B5
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 12:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5613920F09A;
	Mon,  3 Mar 2025 12:05:17 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C294D20E03E;
	Mon,  3 Mar 2025 12:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741003514; cv=none; b=gdu3J80nI0InykgLKw2ajj6mdwY6Eyjjmcuc24SavTiU7yB6Jm+J/EJDIKSXkbV6aIjwCiy5nOq4+TRcRTIg3M8ZLPRi9071yK7z9I/S/0zg0jJ2XMXXekMg9+mtxtY65btCUfL88tlLcrKCwqQdejMfGo+bYY+zf1sjTmYgGLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741003514; c=relaxed/simple;
	bh=Yjs5VELuXzugavuZ2MYDFB7lDyQ6YMgi2xeSBBjSkdw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=txrY1ymv9qmgHPaRmBTwKhelJfU45VNQmUsNJuw1yXBpVuMvOgGhAQYd60fmDSfWjHgITA/ZK1j3LejMS00ovr5k98dEXyHCb0y5wUIrffAXeQbrUtsdTpCtKR1g6rYRuQ6S0HAPlAHBtSsQ4EcXWalil/AXuw9toF6FT1hjQL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OBIrQNjA; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-549662705ffso1178048e87.0;
        Mon, 03 Mar 2025 04:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741003511; x=1741608311; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KZbRg4EAl+//ILxj7dao5FHZeWZVMErRSC6VDwPgGXM=;
        b=OBIrQNjAy0glP8uKNyLiccTmITUEKTMxD5LjaWzFYJN+CLZD+6hDTDG9JQy5P8MBaq
         X7yWrY7Av7pWnihjOaQcRB/tPJQV/cORVGPMpHR60ABgtZbvWgANlL6cU4jbvHW77FhP
         wN3Cdjfm5OePMaI6O8o2sA6UaeVKYBJepd1xBSohCoxH6qPSWgkcbI5jx7D9CXfNibSK
         Igl9SLViz8j5eZQ+bll/jO5Pbib5KTH7tr10sPzi5/HF2XGpZqneionJ6AC36Id7NEKI
         jaaGIgI2zGfPKmg7LUY0rln6SiZt76uCxNJrGGpvbVgpIbC2LmvOl0uAyxLo474U7ETP
         0nQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741003511; x=1741608311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KZbRg4EAl+//ILxj7dao5FHZeWZVMErRSC6VDwPgGXM=;
        b=J26PZXQkE/FgJ7wqyl0CePiJPUAqI/7eAxKWVOgriYr3Y8jdJ8LCy3RsFOvHBjoZY3
         owI1DHJNlgSTvyHWsjmdGFp8aYCNWlN2Ey8AGHfBStj9Z5CzVPDhNBboegMiXtRQHEj0
         x4Q9vxVF1hkLjuzwUEtBcPDGDAqMqaw0HOhyhj/3U1193pyEWx7PE/a1HqWnq/5m+YPO
         U4yLJYF6yYEIwitb6+xXGVTYlZLMF2KUCf15e6/7akg57+XmtCa86OsfEWkGeuj9owFP
         S8OW7VyXseXSlxn0oG+y1jINmHgfxlbLs3NmM8HsobyMGtbTP1onk+Kps9sS9Of5ohex
         xaoA==
X-Forwarded-Encrypted: i=1; AJvYcCUwOMe1XjiI/9dGMmDUwY3mmE2a/7X4C3PwMidIdykzkRFnE2zykJL6AtpEdKLXSmdm5NP4aGXsOCCG@vger.kernel.org, AJvYcCWnNP5jSEHjZ9Wy6unLFQavnSWmNHtSSbIsnrZT2qEnXdXaWWxBDkG8Jx/rtIHRkbwT3cUUhhB//n4grx+R@vger.kernel.org
X-Gm-Message-State: AOJu0YxvPe1cNo+Oi7dxrSy4hPTX/jg6E7qxec+26GgpWgtCCHC3+Axp
	SRU8VXaH1DzPbTGHm0yAQ+nse/ZuIdGOqwSCPOj33SCGi8htkecg
X-Gm-Gg: ASbGncsb3hxlHYD8soWXgnxZ63SEZQ4s+bakqFcmkvfm3pV4tueckd/2kOUVf9I5gmf
	NdwymN0y+46A6H940tGGoYMdvjv1TIU55zDi5A7Vg46l/zyZYY03mekW+G2PTEF3pnRUfc8W79g
	gPzLDr4qs9qnh6+M64D/TP/ybPflnKgiq7C+rua8juzR2pAbpAJY0gnX2ffDpwE1l6I8+uN+mBD
	3JKdMTMcWsT5uluiH1qPK9KaGmFl3Uw2bFI8487et4GVIvMJrbk3HhvAa5J1RzEMy0k7Mpv425t
	h/mgoK0nEH9AKRSmB1ven8xNICvjvoncC6QW
X-Google-Smtp-Source: AGHT+IF/Q0oGm1Q9MPyNXdByKkwXSQ32YjxUslcjcvqDeHAcJMc0URzg5RQfPoQyXKBi8STKc7rvQw==
X-Received: by 2002:a05:6512:230c:b0:549:66c9:d0d9 with SMTP id 2adb3069b0e04-54966c9d394mr1256627e87.53.1741003510684;
        Mon, 03 Mar 2025 04:05:10 -0800 (PST)
Received: from xeon.. ([188.163.112.51])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549576b88d9sm869095e87.12.2025.03.03.04.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 04:05:10 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Maxim Schwalm <maxim.schwalm@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: display: extend the LVDS codec with Triple 10-BIT LVDS Transmitter
Date: Mon,  3 Mar 2025 14:04:53 +0200
Message-ID: <20250303120455.90156-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250303120455.90156-1-clamor95@gmail.com>
References: <20250303120455.90156-1-clamor95@gmail.com>
Precedence: bulk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for more information
X-ITU-Libra-ESVA-ID: 4Z6hCn1h76zG3mW
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741716100.78956@6qtaYfWccEZuqcEZANlHHw
X-ITU-MailScanner-SpamCheck: not spam

From: David Heidelberg <david@ixit.cz>

LVDS transmitter used in the Microsoft Surface RT.

Signed-off-by: David Heidelberg <david@ixit.cz>
Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Robert Foss <rfoss@kernel.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.=
yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 6ceeed76e88e..24e89c1d0c76 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -33,6 +33,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - idt,v103      # For the Triple 10-BIT LVDS Transmitter
               - ti,ds90c185   # For the TI DS90C185 FPD-Link Serializer
               - ti,ds90c187   # For the TI DS90C187 FPD-Link Serializer
               - ti,sn75lvds83 # For the TI SN75LVDS83 FlatLink transmitt=
er
--=20
2.43.0



