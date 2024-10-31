Return-Path: <devicetree+bounces-117632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 058869B72D1
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 04:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 633C7B24790
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 03:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A72CC12FB2E;
	Thu, 31 Oct 2024 03:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MQOT6RPy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C3C2907
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 03:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730344644; cv=none; b=oJ6oQBjf6YlZbSsagk2wXhCun+00yEj2o5IBVn8TuXI80EOQ0yJF4EQVV6xhCUvt20IsmjWtQCn5jpjc13lxCn4y/nNqBPeKbspIF3rBvoA+m1/cjBrPzdv5+pYQ9aRpgU+HTbwFQ6eEga4yrTl2rRDX8FS7v3slcUVySTzpue8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730344644; c=relaxed/simple;
	bh=XE6zo9i1eD120mpWaEnn1BFCB4Sa8+UXJ/A6sRVwORY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=urS/VEN06t93+RI22k2+gJ3yuw6dAHTk11eSPwmbL7KP7gCTrUhcTgifwSlsRV32BBNOrbitZkzcZ5ZNieltTP0jME9QCMd0L+uOyMiBS3PbbDZTV/Dp7TJMdYDdLAOIeP0OUI0Bi7SX7qQDAg9/TAWr3Mun2ARpTbymDsQtBRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MQOT6RPy; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5eb5be68c7dso307263eaf.0
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 20:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730344642; x=1730949442; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OifXa0xS72KIxES6SPqmMe9eJQY0uGb3CD2rL2OPXD4=;
        b=MQOT6RPyA1Csv4k/hncvs9UXpf8okhrcp9i6vk+N9WQJjqsAgjs6PVtb072ditC5VZ
         VYVnZBls85Lx5BIMX3lLkMYZp1og+9pvZAsRyZerW7sMKrkFM+kvwSYDy6y4c6Cq6XHt
         plZB69b87FReazhVta1IN0DCV+22T8qg6hyJiuFrcH98Ufv0b/hrA8pFx9fXETLrKKrT
         /jqgScQO8BkTnx9DoONFT9x0372LhnUN3Sbiac6qnDtEy380e6CVXPorreCyU6XykkGd
         aaQGQEcNVFhtUsymowh6OOBBfkhcazRdmPs2IjC+L0ACvTKTNcIm1gibWynHaT47TAj0
         XC+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730344642; x=1730949442;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OifXa0xS72KIxES6SPqmMe9eJQY0uGb3CD2rL2OPXD4=;
        b=AJ5sTthZ/sL2Zu0/EaLnZkTO8h+s+9mtrbGmTl5xXkJihP2YOqw7vIQhLa/VrrucNV
         oN9irUqrRR0mudUqz9l7cbqzhe1h8gf+zDT3/PR7g4W9F6Ykqud64jT4CrsbEFAFBl8T
         hxKk0CZj15tZrdBfUxO8FOU/v9vIu7izeP+U3VNKalcHTHmeIn8eYBQgKiqa1wb13Lpd
         YVh82ahb1cWBM33VRdL/qZ1NMgKU1zrQWvnyl7gUosjBrcy1ITrxfbBwvvyreFC5dS4R
         GE6jXD4Y01j7Nknpf4ACDDkaDTi5Fc/qMk6Y0PrB8VVgwcIuJXAE80q4w8GD0KWHojFM
         Jb0A==
X-Forwarded-Encrypted: i=1; AJvYcCUh7/fds53OUmgXlgNDpPGfLsC6QSuSQ/FecYCY1tiicpFgt2Xq/kF8MnQjA/2FEDieWz0ETeFpzccu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7A+jiZbSEowsEraCW1NKGUsR921Md2MgnjKzKqkNn43OIl/74
	E4BY2XJrAAqoDVbSJDvqdNeu7mqqVjJcHZZAulAiccmFVPLkaoda
X-Google-Smtp-Source: AGHT+IF7jFKllMiT2dMJxZGCD1u9cR3fwECc/YiVfwxRCZA1DiGU0BR/uVgybe5QT8Y+9LaxOlFeRg==
X-Received: by 2002:a05:6871:5229:b0:288:b220:a57e with SMTP id 586e51a60fabf-294846c7effmr1558955fac.40.1730344641934;
        Wed, 30 Oct 2024 20:17:21 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:4dca:6aa0:ad60:9b88])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2948742a0bfsm270149fac.2.2024.10.30.20.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 20:17:20 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
Date: Wed, 30 Oct 2024 22:14:50 -0500
Message-ID: <20241031031528.23428-3-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241031031528.23428-2-honyuenkwun@gmail.com>
References: <20241031031528.23428-2-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Xunlong Orange Pi 5 Max board.

The Orange Pi 5 Max is a single board computer powered by the Rockchip
RK3588.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..8998cfe34fda 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1001,6 +1001,11 @@ properties:
           - const: xunlong,orangepi-3b
           - const: rockchip,rk3566
 
+      - description: Xunlong Orange Pi 5 Max
+        items:
+          - const: xunlong,orangepi-5-max
+          - const: rockchip,rk3588
+
       - description: Xunlong Orange Pi 5 Plus
         items:
           - const: xunlong,orangepi-5-plus
-- 
2.47.0


