Return-Path: <devicetree+bounces-216954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D6CB56945
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 15:22:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD0C317CAC2
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD09E238C3A;
	Sun, 14 Sep 2025 13:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H6+UKgGD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C4D189BB6
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 13:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757856129; cv=none; b=ZAMGEhaziSum5MkhYGj3a7+gJuOzMqCN3RREclUucBT6LVJ5e5mRS6oxcEUCh3wPmpLElBC9yC8M9VVOnfFmlSn0cen1TIYkSp6skt+6a6QgHEhX3tznQideLz41E/VcvMyrjPoy2vl//pJCHJo/bqTzzVv+Sfk+czRJ9NcFI74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757856129; c=relaxed/simple;
	bh=D+jsMAX5sO7tM7JCwP4lIE5kV4IK9JY+U63ovtSevuw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bN5WtXzISa6Fr1ZfkGIUzB2d0DnwA5CPgyPCAaxY7ULSYooAAvwskfEd4PG/qqFJc3U/wugTDVxmdAO0fNobegyjYrdEQbbBXQgTCvdXatXZNzDv+I79xs1Yy14iRQTDzz6UEjD/EEuNaXy9V3QpGiEzk99AIZqAli2RK217zls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H6+UKgGD; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3dcce361897so2163060f8f.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 06:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757856126; x=1758460926; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0gwU2jvcuEz7Zmi2rF3iYuLef34+LUaEBtsQc2TxOPc=;
        b=H6+UKgGDXpBjQelfL2yrkcSgIbnVCS+reMOREteoSOhB3VOXmfwkqpmxu6Ie1x2Jlt
         fig6llTKXCF8mTRU3fqhvxdLwgTkh1rhNwlHmAggvKNNZdI6MKIqh/9iA7ZPMIaNrvsu
         6X0nQAmqwhGAG/H+jFULf5xVHCzmjRnC5aeXCaY1R51sQp4ojphTqJKVOdqwWozY1mdb
         8J3kflnotSEtcUFJfqyFKOvh9AMj5mXB4tSsMPUzZE/OEmI+XrshBMF2B1lls6hZ0vvT
         9FZezbDrWkETuSQnUS4rghdibCXtvvSQj/0i7zSXgljhX/ZVIJHAv+CeWge7mhhScu5E
         fYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757856126; x=1758460926;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0gwU2jvcuEz7Zmi2rF3iYuLef34+LUaEBtsQc2TxOPc=;
        b=m6+ms3PkY4vqP4PXhcNUHIjsCyMqpoX10p/luyZFVfZX1BvhLPbU7+7WNa1sFoT9/X
         vO9MYICmR56ab844qja6cqZ3RCrXgbWTZjXqVl/H9C3DTZ1mor59d89ZYAPiZ/eNmz1M
         zLy+O8h3ye9ljOGzP4lOLwkVZdc07jV5ZT9zedlPf3Q1kbIKq6YaEg3m/U5YrhlxFBg4
         dCeGkSUZp2/33FmfmG6JrWF0Ixjqa0zhH3vvTFCAiaexDctww5BL1wlxTw99c2Rffwsg
         gn3b/FpSGKMLcrLy5DiFA+2/IOPMSSsc4VTVhORdsOSQ7aEdCH+59JQFG7VLU1e5GUnh
         K0Lw==
X-Forwarded-Encrypted: i=1; AJvYcCUpd572bIWZs8alBA4VI4isd3SW1DBSE4pDcAPRobDQru71dTgk+4FuO+BLeMWzwE8yUS/pyv6YnWAB@vger.kernel.org
X-Gm-Message-State: AOJu0YxSR51lq9VhZwZ4GKIMB5N8gylfJxKYg6IU4OT0X5edXA6Lc0AJ
	8N2BQFtUM5XyGIQS0oBa6Krm2xavPXPDfVoJAFOzhpyyu1ALMYVLRFEJ
X-Gm-Gg: ASbGncschdvlwQ4z5AjGdJ3oiEjMDvWsYcTREcwyG7Yihz7VVXzgW9bjv5Q6z7Dhzg9
	JuCIuZnY5Xf/IiVWGPtNcRI4Jog68uTXSf4eYgGcsAPKndsIz+/vlScp/DTcDCrKNq1/1TwA419
	GK/ymNO6KtlK+ztYet98HpHsfPmtJWarhXATGPEbupU8+Ozs3QHQ8HiiJsHqsBd+Y5hwYBawQ+B
	dieFF5ficN1q2oQLil2bWWAk40g0GIGPMR5wdDbgLWzljYLLFfLN38tvOp7Xl11fzg9HYj59/HF
	p9CXSYRSAFx4WFbIaNmUzoWeaZqKX0675TY2YlfUZIcLRnCTLgn5+IiAfgQwfBSznA3TB7RXW1o
	Ha82QyQ5NT3lQt8IFJl6CzI72RySCZFWiB1y1y09zzgJ0tppmjoyQZzlfzaNnUM6yo5FE5IWKZ2
	chL6havaRI
X-Google-Smtp-Source: AGHT+IE7WXHLfVH2u4+DSdlsFQ3ngfdBOj6lQTdYHkhX00KlElTNErFlDHZmemjLFy+aNAvICL1RWA==
X-Received: by 2002:a5d:5f42:0:b0:3e8:68:3a91 with SMTP id ffacd0b85a97d-3e800683aeemr6491401f8f.60.1757856126372;
        Sun, 14 Sep 2025 06:22:06 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e80da7f335sm7274707f8f.8.2025.09.14.06.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 06:22:06 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-serial@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] dt-bindings: serial: samsung: add samsung,exynos8890-uart compatible
Date: Sun, 14 Sep 2025 16:22:01 +0300
Message-ID: <20250914132201.2622955-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dedicated samsung,exynos8890-uart compatible to the dt-schema for
representing uart of the exynos8890.

Like exynos8895, it has a required DT property samsung,uart-fifosize,
so reuse support for it.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 Documentation/devicetree/bindings/serial/samsung_uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
index 1a1f991d5..6ebe8a869 100644
--- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
+++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
@@ -49,6 +49,7 @@ properties:
       - items:
           - enum:
               - samsung,exynos7870-uart
+              - samsung,exynos8890-uart
           - const: samsung,exynos8895-uart
 
   reg:
-- 
2.43.0


