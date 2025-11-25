Return-Path: <devicetree+bounces-242149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E64B8C8738A
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 22:26:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C60E34E1476
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 21:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CFE22FB997;
	Tue, 25 Nov 2025 21:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hh8ERUM8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB2E2264A9
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 21:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764105993; cv=none; b=XWSw8QHyhIlVdxtV77CslyVJuHECQwioI7yLbBUefXE4YvOTWQnjf5yuiDYL7l86dbm+HMYlznnuiQyQRP8ncGJKF28KJuTHUGyoKLi8TvJySvDYokAdhpEt4Di0f1L81r3htfWWlQ+PWk+K225Sc8bWQlS4AovUfaxQ8NYPTh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764105993; c=relaxed/simple;
	bh=77ztk+4qh7ZS6QbAc7V6wDs6rYUaAyd++plIusTMp3I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GGyoY5Swb0TdWgq+DGLCT/dlJR8SfafUkfs6H3qi2+I+VSqipabZ/m3eFOWo0ZLeKSDrlADXgSyrGGYZ5sMQly7Q2PWva9atyb2IBnG1obzSgVL4w67yCJ37nn3rOb072Tj6C0aAL0/nLUprbRW+YafaHPi1/sNukAkQnHOAhZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hh8ERUM8; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4775ae77516so56877955e9.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 13:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764105990; x=1764710790; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aUIpmmh3zCHBkUgTRjkb7/r8Rtv5eeq4uS5BejYx488=;
        b=hh8ERUM8r0OCNqsJ/O+7OUEBfK0GqSAglDTT6wVTf2mW6O9jBO2PzRsFbJXQyrd4cY
         yyiiJTQlChwrcDici7LX7vk3z9Lg8lvduLIBwKVIp9vshOtERrSRd4q4IivuGl6E9RJB
         TCkiT6xQZ3vV2wPZbtCoZSmT/+pjp2u1A9ic4mwQIKzZspklrKgRVNM2XRXlU3hhp+F9
         I2+zoE2NNBujmar3w2rrllXN5cV8zeqEwUOfV5nSzRRhERWS+obZjIKodhbPaT9b9xdo
         RKZfI6LnqW4NTn6mqTNWIVEkOe0RBLJ1p6jfOogZBZ8TwzeWKWxAoj280n/xKOPHEezJ
         ZZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764105990; x=1764710790;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aUIpmmh3zCHBkUgTRjkb7/r8Rtv5eeq4uS5BejYx488=;
        b=mLcLRy75bUIB8nxglHHs2cwu5Wqczg9IG5EVpO8hYcCgIw4VnrhboPrP3+Hh9xgk/f
         O9QH1woEcq8+buYZ8oef+q4CwgCqEcHE1kafEjdhfZiKUFg2kC8blrwpK14kk7+8/mnd
         x1CLVUp+PQQC8Ddf7uScKIyzS1Bv1VoAqbobUjiwCIWldAzQ0hztHR64xFdOJiGof+Us
         HnvafAM7J52sG8HMWEejhETRWuloaD4U8IMBV60RSpfklotK41d3XpGWsOcWSACcrTrb
         ptiFbRtagkKeDVL56FKwmk5OHcHpx3Gb3bTqe5eDaJyFm4Ak1t6rbGIOel3eX53Wh2Ec
         crbg==
X-Forwarded-Encrypted: i=1; AJvYcCWSFf2CLoDMEY37/SF4Uy1Do2ITc+mdrB07mDF+gDDcK8gTH57qtCSwqNV9B09t4CqBj6oFOEVUW+Ba@vger.kernel.org
X-Gm-Message-State: AOJu0YypY67HCPNBo2aBROb1CvnuYoWTwsmGNbjUVonHWN0lHLTW6Awf
	ntHO5XZCQCRLGL7adLihuhY4bDXb4p2EBOxe0gPS8vIuOy/vnAvAoUO2B8AkNBwzYJo=
X-Gm-Gg: ASbGncvAo4gVd947jZPfM3/dtE4QDCz7hLvjwwAlm9XcDPQmCHWfr/nVpslz+mX0x87
	kkWXbzMF0otBmHCPnmIsVtkk3cXyjeDUVyEqfqmoside5inzGI0ar/B/Rc/Owjh2ThzaLQXrchx
	EvU3XSCdnfKtFHRibmZCpxvEm4HPPrrzX4s0zqsX8ahzTGYOCfwc5YIb6dGiN0FD6kLLIYSKo2G
	9VGPxdhvS0AStCCgH7B8QMixtiWo+NWFtQE3MxEFvG6mhaeyUPHq6mzmIwq+Jjh8RB4M5V4wj0e
	xzTRUCNHjPVyRZMZ4QBThP6chBRXeH+r3q+p7BPFanPRcPK+vP7Ktl5gbOkjJPXMQqQnPG01zYy
	ik7VuIGiW9mjM2NLPUTJ9rdS39bDurcCxOJ5yH8YsYCWUe62kbdMtYH/GHQeK3AberU4bmxBQMG
	O3wb5/i890qTSBRbm2u275y1ZnMq1RzmK/hg==
X-Google-Smtp-Source: AGHT+IGINTwYKB3f6O0/4a/8uVo/WBSVTCjYyj22/LVPwO2J94ZGb1EjOdonlWG2c/DD+UhzBLngQA==
X-Received: by 2002:a05:600c:474a:b0:477:b0b9:3137 with SMTP id 5b1f17b1804b1-477c10c8886mr182927205e9.1.1764105989434;
        Tue, 25 Nov 2025 13:26:29 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:325:d7d3:d337:f08b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790adc6220sm9606055e9.2.2025.11.25.13.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 13:26:28 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>
Cc: dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] dt-bindings: dma: rz-dmac: Document RZ/V2N SoC support
Date: Tue, 25 Nov 2025 21:26:21 +0000
Message-ID: <20251125212621.267397-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the DMA controller on the Renesas RZ/V2N SoC, which is
architecturally identical to the DMAC found on the RZ/V2H(P) SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml b/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
index f891cfcc48c7..d137b9cbaee9 100644
--- a/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
+++ b/Documentation/devicetree/bindings/dma/renesas,rz-dmac.yaml
@@ -24,6 +24,7 @@ properties:
       - items:
           - enum:
               - renesas,r9a09g047-dmac # RZ/G3E
+              - renesas,r9a09g056-dmac # RZ/V2N
           - const: renesas,r9a09g057-dmac
 
       - const: renesas,r9a09g057-dmac # RZ/V2H(P)
-- 
2.52.0


