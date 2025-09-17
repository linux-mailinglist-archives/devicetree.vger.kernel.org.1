Return-Path: <devicetree+bounces-218344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9683B7DA2B
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:32:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B9E518860B6
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 11:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96EBD2DF6F9;
	Wed, 17 Sep 2025 11:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="Wh0bEuct"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4D92C0282
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 11:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758107620; cv=none; b=ngnQf6MP0D+vyXTBuzLJAIAJCwHbuMcMmLFvik3bmBKTzHQ+UdBfWoUl1exGEl3X1zv2+Kr4SGeAecP4nDNHKT0NChrfYy8F87B7+FoN6ywOZJozvKCVET1GeKjLXufkojUxjNwLmHuzzJCqH9M2/T4SJFVaLd3aRxG6HTbFR28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758107620; c=relaxed/simple;
	bh=eG+anZAs6P+Glc2UxgKY37GDZ4SxG7Px6jdpQoKTKMo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gBsxB7CCE4FIRDq6+xQ4doDOrxj+9ov4FXDkXG39Y6IFlKBh+9pv/5qG07Qm5q/EDn/AVntjA0fGoITglHT7FA4ogtkSF2wkQ4kWKTcRdlvc+xfP4B/on+ia35N65HsZ2DpvjSFnKw9Yqe4JMSNH++B8QfC6gFYzI2AR44W6ngc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=Wh0bEuct; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2570bf6058aso84212965ad.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 04:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1758107618; x=1758712418; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZaGycjt36+NJT+7JRNn303P5y+ponQJAIIaK3c+nUEw=;
        b=Wh0bEuctkcn7dV2S0DWX9kClXp3ax6W3PRWLzV29X2irsjBgjRmzASo3HkMs52GvMN
         jmtp9y+mky4b3EwihCZVJOQpvOFIwdU9WC2j1V6UAM1x+/66U5GVK0W3/EDMhQfAhQWR
         9ARI9aqb8Y2i6AYwsNIz/8K9vo2SXJGGis1R6E+Q8BsCRMN1F7909MZgUh7SP0ylfxK5
         0PZ0G+Gr5EzW6kxEf58uyFmeYxbUXD17bYjxkaxFfIjYKyjTQHId0GeAP/VpKWHiMQZA
         pfi6uWxDKhMS3sC5g17+a3AOsZjrojlyKD2aD8Zfl5KrwqPdh8DMPlgpSvPnLhMIipQ0
         hEnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758107618; x=1758712418;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZaGycjt36+NJT+7JRNn303P5y+ponQJAIIaK3c+nUEw=;
        b=LiVopVuDNF+z8tGVp8GAxsuj0kETRGNBsQsCsyFnPQxZ43ssg5u90jmgngqyy7PhQs
         oVkw2lx9SzeUDAYwYdpI6qUqfLr83L8AG4BOywp6eB/Isog+dYfYV6yWi12CyGKecZum
         pVaPCq5V8HglDUEb3+0S5WjKW5FMxil/omtrB+NDyfUjkVqZm53CsEbYTkKacOI3HSow
         0dQIAm/2+5ZSMI8STreDgR4zHxodwmYJHz+tgKzr3tnk/Io6vlVdiKUBF3VsdQ2VEXRk
         SSKWGsqzFEYwVDJ2hZdCQSfug9iWCKjmObDpFhIjaz/4S+f5xPlKdYcKlilwBLMTNVTB
         MQRw==
X-Forwarded-Encrypted: i=1; AJvYcCWrzRetFqVph2opXCbsr9SPah64y/zDW52w1N9kIi9kILgyk4Jh2NI5zEK4ZsGk+H/dzzSSh9ch7BJg@vger.kernel.org
X-Gm-Message-State: AOJu0Yyp9S/07UNxjeyNuguKuk5oEGNng2I39AagNHxHonQz+X+zqyCO
	0b/uHyCp9Y3YkSTLvRriWMGj4PvgKmhpKwC7+qsBjeMvkClLrOjBSe7135aBSYDwNnc=
X-Gm-Gg: ASbGncv4DBEKltoFV42NPQ6AxJMnpbzcZJW/dIv4mj2/XPbHevtOZkKNa+p1M87LzMh
	bxVtdCfcZ6LBCJjIkbPvUjMhxCjcJF4s2Ichsuu6iTZV3uA/5zfpXCXgHP955y4+a0gfmSuOAbP
	GRy01u3Z4wBVnX+hPLXOh8GbuLbdhdpBpm/IxJmpcyshF92wzDNkETkss+GMIJxyq+mEi66bMWo
	2E9WntOI1Whbtw4mR79JZi2d/d32k0aiaoVtlTYSU2s3RabNX66V0lNiQw/gbOWgq//izldgyvF
	BoheuWi5BmCvCk8f6YM9SIvnRx0FJtDRvu4eb+Y2G34xWarBMMx/JNBBnc6YkIlVjodonSVExf/
	gK6P/UrCtb3MZfAbqlbEtz58q8nqyWWrATpPm6m1eslzbJQA3LQL0g84C
X-Google-Smtp-Source: AGHT+IH6X33FWxaAtcbZuf8x752Ux8OoEIl6JrI53rne57TK5RbZLOWAhZftzg4xVFvnL1vFWW1L2Q==
X-Received: by 2002:a17:903:2f03:b0:25c:e2c:6678 with SMTP id d9443c01a7336-268118b3ecdmr23173225ad.5.1758107618458;
        Wed, 17 Sep 2025 04:13:38 -0700 (PDT)
Received: from fedora (cpezg-94-253-146-122-cbl.xnet.hr. [94.253.146.122])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-267b4ae8808sm59079655ad.132.2025.09.17.04.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 04:13:37 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: p.zabel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Steen.Hegelund@microchip.com,
	daniel.machon@microchip.com,
	UNGLinuxDriver@microchip.com,
	lars.povlsen@microchip.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: luka.perkov@sartura.hr,
	benjamin.ryzman@canonical.com,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 1/2] dt-bindings: reset: microchip: Add LAN969x support
Date: Wed, 17 Sep 2025 13:12:35 +0200
Message-ID: <20250917111323.60781-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LAN969x also uses the Microchip reset driver, so document its compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 Documentation/devicetree/bindings/reset/microchip,rst.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/reset/microchip,rst.yaml b/Documentation/devicetree/bindings/reset/microchip,rst.yaml
index f2da0693b05a..4d4dd47f830e 100644
--- a/Documentation/devicetree/bindings/reset/microchip,rst.yaml
+++ b/Documentation/devicetree/bindings/reset/microchip,rst.yaml
@@ -23,6 +23,7 @@ properties:
     enum:
       - microchip,sparx5-switch-reset
       - microchip,lan966x-switch-reset
+      - microchip,lan969x-switch-reset
 
   reg:
     items:
-- 
2.51.0


