Return-Path: <devicetree+bounces-197587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8609AB09E3F
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 10:44:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 18D8B1C200C3
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 08:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EED43295517;
	Fri, 18 Jul 2025 08:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="UFf9n5XH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08153293C45
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752828270; cv=none; b=pIibGLAeVBLvDfy507btLCZQpmZELDHNrIyv103jotb+hPUpWRj6KbKz/f9xYjRBIKlVYqgLp908IOtR15a2ni19mQUHZxOrq5SPs3PrA6mLM1ddNgZD7b8Wf7NEnosMV2Lw8SsrLP/c4ZcpWRzxAg/W/a62zNZwKnB70xCyqTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752828270; c=relaxed/simple;
	bh=Uoj/2NsPxaTTI2japwMQ43nh93mfeyzRyN0+brvXZjI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YDsZgJH1ofnAjtpe3j50BFOxGMdcetmKWMSoA1vvoUVGz5rJuCGga9QSr8CerG/1Yb5j2ZKPFrlEZqYhGfpM9w17Td7LA2w5DchiVnmw9OJ6ferr679UIjEnQWksf/fKI1aC7eIjxnbbL7w9o1HNGtCCuYnK061hn8nL5D5j/XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=UFf9n5XH; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a4f379662cso1363994f8f.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 01:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1752828267; x=1753433067; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jIjJ267yEtDnmiN+Y1fTBADY4HhOVJqHNJYRhatCK9Q=;
        b=UFf9n5XH8neSI0tY48Ff6SvIsl76S1yy9e1XB26c8f4cL+pGv80VKgWqjq1kMTGU2i
         J53XnZN5+rXGnyg0qNHtoe/aVDHdiv5BeWhkfS8cPLfm0BAVrvGKMfs/ppNXLP26ucBp
         w/gdJNSIrQXD0bEZtDWymDATPjmJ0a/GPtXCIkzBGq1nfk+SqU9gnEwjEPZoyacpfMCK
         rA+jSETsU2aN2wWL/UT0QeMx1we/lIarqk7fd9QeirHyAG3W2GueZOJaD+L/H2bLQOej
         3pwamZt9g97j8xBTj5WOPM9iXVv4EY4UtrYhdzBCR6WTTE7HyatpmzJd+XkOUVx30Te8
         8ruA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752828267; x=1753433067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jIjJ267yEtDnmiN+Y1fTBADY4HhOVJqHNJYRhatCK9Q=;
        b=Dk+GHOhSXtnQhETI3/7iI5DT/VjOmeqw86Hwf6JJZVrOr0n8P323E+KWTl7OS/uhXU
         YpM2hTaWujq0qvfZ95ROUvxzjGqukqZOBw8Q4TUgcVZU1Vzt+/zwCgK342n4mK22fQnj
         UrYrHBd+zW6v9R4jREPbh50ynWDL9s20AQIuI+Eef2Mzta88d7wekU3+qAorahE9BYT6
         YELw1Htm7w82Z4gARXBsQv9pxL1R+MrQhu0O3Dxf25Tgb9xA1uSwNMp6bdtlQ/Fzm+Jx
         hm6Q3WbnmRnAKqP4SSd1MlHrPNIekA5QDaxJZFzTTrHbu2pnp63Jd59AUFYsixzIGNj0
         VIUw==
X-Forwarded-Encrypted: i=1; AJvYcCWAfa1WpcLSVID+feFEbm8/nk1+5IfPcPV77fAqyVUhrPxSDz8Xv7G0P7Z1SQ/R0szZaQ7sg7FdYyAQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwIWIOgrG6F7ELUlkKIU/HSs+PQDCVeys7gq0OGlNZ7rLrjRCKN
	MueYTo1mbaw72jfNX9JgWnJnzOOon95dzOJ4eCG9caP+m2Y1CN5bK4uWYfQ7e8/7IeE=
X-Gm-Gg: ASbGncv2OWQ8PPCDYNlSswLVsxvMroDiYgwExdt7Y7yxF2Od/3VoXxkvI4Ee49VpMco
	5FLyZUEEKrFOH1PZ7C/bWZOxdOU3NQLE5kMgZRkE0JjgNkY00Sf3jDpRlWvySbhVAWEGFPgSXfq
	+zu59fdhEUtuNCyH21nJJoq5W3xR+OKm82N4ys/XbUPvAA/spr4uf3D3XuqSLvZCCzl7WTd2ijA
	kWrE3EtQ9oFrZy3saYIthRRhE1Qg8pMyyAKxtymtZju9jKaKf1Ri/IeBrLLW/q9WOcKAM/Ysshv
	QcOeybk5vscNY9ujCoH9594Nk2JGu1uTNYsnExKODvd2L/V8DDSoynhOe0msKux8yfKvAYmlw8Z
	V/gyO++kPFf8yJDI8slb5ic9SEnmEbkylCIJcoorM6DYaOCTM
X-Google-Smtp-Source: AGHT+IHMJeUs8RlmFkrQ9WTk0wqJZT629erQHVUIzMmI6akez7WS0GHbIEYfQ+fiZr6Q6Fy6PniGIg==
X-Received: by 2002:a05:6000:2385:b0:3a4:dd8e:e16d with SMTP id ffacd0b85a97d-3b60e4c2194mr8115453f8f.15.1752828267262;
        Fri, 18 Jul 2025 01:44:27 -0700 (PDT)
Received: from pop-os.telenet.be ([2a02:1807:2a00:3400:9aa9:dd5c:bad6:e31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45627962384sm58208115e9.2.2025.07.18.01.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 01:44:26 -0700 (PDT)
From: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
To: dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	palmer@dabbelt.com
Cc: skhan@linuxfoundation.org,
	linux-kernel-mentees@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
Subject: [PATCH v2 1/2] dt-bindings: riscv: spacemit: Add OrangePi RV2 board
Date: Fri, 18 Jul 2025 10:43:38 +0200
Message-ID: <20250718084339.471449-2-hendrik.hamerlinck@hammernet.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250718084339.471449-1-hendrik.hamerlinck@hammernet.be>
References: <20250718084339.471449-1-hendrik.hamerlinck@hammernet.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible string for the OrangePi RV2 board [1], which
is marketed as using the Ky X1 SoC but is in fact identical to
the SpacemiT K1 SoC [2].

Link: http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-RV2.html [1]
Link: https://www.spacemit.com/en/key-stone-k1 [2]
Signed-off-by: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
v2: No changes.
---
 Documentation/devicetree/bindings/riscv/spacemit.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/spacemit.yaml b/Documentation/devicetree/bindings/riscv/spacemit.yaml
index 077b94f10dca..c56b62a6299a 100644
--- a/Documentation/devicetree/bindings/riscv/spacemit.yaml
+++ b/Documentation/devicetree/bindings/riscv/spacemit.yaml
@@ -22,6 +22,7 @@ properties:
           - enum:
               - bananapi,bpi-f3
               - milkv,jupiter
+              - xunlong,orangepi-rv2
           - const: spacemit,k1
 
 additionalProperties: true
-- 
2.43.0


