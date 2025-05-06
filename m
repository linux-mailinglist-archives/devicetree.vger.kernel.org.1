Return-Path: <devicetree+bounces-174137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 68928AAC2E4
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 13:41:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B86987AC0DC
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 11:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B616B27A936;
	Tue,  6 May 2025 11:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N2QV20XZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2818B27A457
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 11:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746531687; cv=none; b=Hv/bLr5nu4yQIqVepG1Q/d08GjEehPFlnf5IItX45uYlE9sS+TVgSrMkR7GmMTIlDtNtjV7kvbtkMemcyGlnxiRMDxuSJRAej2fNKPCEO3GufMWHJqgFDTe7XVkBLlUBClOfXryIxhVf2HG7fzBzG6kqwz+FWb60zSb0G372N1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746531687; c=relaxed/simple;
	bh=x4bodK6PkM4sgKKN0w3z2Q5TkD0OH9WR8BzGNXKMkUk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UbwbIb/auLd+Ib/hMUuN1BXS9mLCB6EA8wJWHS4swZ1SgMZgrG4oj+12GcJnACULn4zYmKYjVWiAQVv3Wg6oyN8Lh4tQgelSYJjvb45n++vmlRQQopMR+Prt9q9FChyT1oHVLTVaDGKXx3mNTUdq641LU8onI0WYSohdOFGUKTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N2QV20XZ; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7c9376c4dbaso635480485a.0
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 04:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746531685; x=1747136485; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QN5rI0CgLZpq9/Ji79Ve/NM8Bwk/JPFOjTpmttwdLzM=;
        b=N2QV20XZkG5ucchF55n1UASP3eJ+vTgDupoJPPohreewyDMCtv2B1ESqHIh2c5nNf/
         uqHScZWQPmVqiK7CS9er/RCFltVBHqYIpDE+HUbFBgaY6Hb2hQC+GhOnI+JMqk+aSFl6
         qfFZWL/7k4LXXa6vLYPs3rG+Z+z7fzzK4jf75XA5++QZIQVLDf1sbyVJ7ZhiQ4V1Klm0
         UTdi9L+tlQllI3I9o4cpEfXe6s1xHP+BvO+fgP5T0LFhC6ya0Mp6ea4koYR5DhA2nnA5
         SVfeLcAiSLsTGzHUz/WEpytB79iOURFbvV5xCe+FfItcr6tRYoP2JU0KZ7pe1o5BXgu3
         BX5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746531685; x=1747136485;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QN5rI0CgLZpq9/Ji79Ve/NM8Bwk/JPFOjTpmttwdLzM=;
        b=nwYWspHAVkN+OokzSqdiYZwD3CLKDVO5uK0grWbJieNndUlLymiqbAkraVw7/bQFI1
         Exsd6+LBVg7qL4emvXbzDqLky0jYF4OssKN7Lh2ktjZ1Tiu0mrazmDSR4aVtqh93Fmoo
         IArajkxGKYptL3k/yUc7EQAjG8NS5//uNxQbPOVK2LWw/W4l49wwZrIoKnA6rjci0Y4f
         1a08FkBO3tqpK+/3tDxgIlx1maCSo9c24bIMCZjc9A3SmtVQEosympd6fMccO2nD84kV
         JmqQy+JR7daCEY6YZNNWJZ22KkwUh4M8tYpYQVrugnSlUr0FDmDpXXnGq5RQFdf6S60P
         XTpw==
X-Forwarded-Encrypted: i=1; AJvYcCWXp3JvxufV0yDaogxkrJsV/MmqoLXcQTPEzDIZPba7kCB2S6UU2fJVzhQ80RkEFleD9ozguy3A03il@vger.kernel.org
X-Gm-Message-State: AOJu0YzRwclaky+vmRQbTcaopg72LfY8oQq33aRI538qIxRjrjjLDjcW
	dlrTTwxrxbJcBjjBcyUGHFv0hGWdhMvq4a9BDocoIZQzQBpOQL6J
X-Gm-Gg: ASbGncstzZy/jXog+tIwiooi9nPDCECus11a3t0V/P8yljeoStSF6tX0sUp7Br/im8c
	HQNMH5RDe3GaZ75PDf/c69dadpvkni3Ubgm+v0ZNkJ/gSd1aTDYdh6mtQhxHnLqKwLek5DHcw03
	XVU5TYc2BU0b/894PPD3H8XC10tegzbxqLm6udDkcEeH3yCbQXhjcXX1ax5ovY/ly2N+xmMT/Wg
	jy+0abEOp60R/s51+3OH2cajfhBuwEHO6d5y/aaQEfd3WAdUXqSxwszlye2RK0yO1zOmqKfS8va
	BxjBQteBhZk321GVCdHVGNvDa1YGw9VLocck+Xx9A8RSwOkznswk
X-Google-Smtp-Source: AGHT+IEjFLZCSLotYuzVY2pBtkU5bzYaL7j+EE0hhEiJ+gFO0I07P1NMKS/uyWME7wRiKdFGKseMAQ==
X-Received: by 2002:a05:620a:3192:b0:7c5:a20f:a091 with SMTP id af79cd13be357-7caf04a7bb3mr560350585a.2.1746531685020;
        Tue, 06 May 2025 04:41:25 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cad23b51f9sm697408485a.21.2025.05.06.04.41.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 04:41:23 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	krzysztof.kozlowski@linaro.org,
	conor+dt@kernel.org,
	jonas@kwiboo.se,
	frattaroli.nicolas@gmail.com,
	andrew@lunn.ch,
	John Clark <inindev@gmail.com>
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Luckfox Omni3576 and Core3576 bindings
Date: Tue,  6 May 2025 07:41:14 -0400
Message-Id: <20250506114115.613616-3-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250506114115.613616-1-inindev@gmail.com>
References: <20250506114115.613616-1-inindev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree binding for the Luckfox Omni3576 Carrier Board with
Core3576 Module, based on the Rockchip RK3576 SoC.

Signed-off-by: John Clark <inindev@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 455fbb290b77..826dede32145 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -715,6 +715,16 @@ properties:
           - const: lckfb,tspi-rk3566
           - const: rockchip,rk3566
 
+      - description: Luckfox Core3576 Module
+        items:
+          - const: luckfox,core3576
+          - const: rockchip,rk3576
+
+      - description: Luckfox Omni3576 Carrier Board
+        items:
+          - const: luckfox,omni3576
+          - const: rockchip,rk3576
+
       - description: Lunzn FastRhino R66S / R68S
         items:
           - enum:
-- 
2.39.5


